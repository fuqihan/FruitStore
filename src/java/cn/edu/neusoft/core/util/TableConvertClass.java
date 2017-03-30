package cn.edu.neusoft.core.util;

import cn.edu.neusoft.core.domain.OrmVO;
import org.apache.commons.lang.StringUtils;

import java.io.*;
import java.lang.reflect.Field;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/**
 * 
 * 针对 SpringMVC、MyBatis
 * 
 *
 */

public class TableConvertClass {
	/**
     * 转换有下划线的String，下划线的后一个字母大写
     * @param str
     * @return
     */
    public static String convertUnderLineToPropertyName(String str) {
        String[] arr = str.split("_");
        if (arr != null && arr.length > 1) {
            String rstStr = arr[0];
            for (int i = 1; i < arr.length; i++) {
                rstStr += arr[i].substring(0, 1).toUpperCase() + arr[i].substring(1);
            }
            return rstStr;
        } else {
            return str;
        }
    }

    public static String convertUnderLineToPropertyName2(String str) {
        String[] arr = str.split("_");
        if (arr != null && arr.length > 1) {
            String rstStr = arr[0].substring(0, 1).toUpperCase() + arr[0].substring(1);
            ;
            for (int i = 1; i < arr.length; i++) {
                rstStr += arr[i].substring(0, 1).toUpperCase() + arr[i].substring(1);
            }
            return rstStr;
        } else {
            return str.substring(0, 1).toUpperCase() + str.substring(1);
        }
    }

    /**
     * 转换将第一个字母大写变成小写，并在前面加下划线
     * @param args
     */
    public static String convertPropertyNameToUnderLine(String str) {
        char[] chars = str.toCharArray();
        String rstStr = "";
        for (int i = 0; i < chars.length; i++) {
            if (chars[i] > 64 && chars[i] < 94) {
                rstStr += ("_" + chars[i]).toLowerCase();
            } else {
                rstStr += chars[i];
            }
        }
        return rstStr;
    }
    
    /**
     * 首字母变大写
     * @param args
     */
    public static String upperCaseFirst(String str) {
    	return Character.toUpperCase(str.charAt(0))+str.substring(1, str.length());
    }
    
    /**
     * 首字母变小写
     * @param args
     */
    public static String lowerCaseFirst(String str) {
    	return Character.toLowerCase(str.charAt(0))+str.substring(1, str.length());
    }

    // 获取所有的属性以及数据库对应的字段,
    public static Map<String, String> getAllFields(Class<?> clazz) {
        if (clazz == null) {
            return null;
        }
        try {
            Map<String, String> map = new LinkedHashMap<String, String>();
            Field[] fields = clazz.getDeclaredFields();
            if (fields != null) {
                for (Field field : fields) {
                    if (!"serialVersionUID".equals(field.getName())) {// 序列化ID不需要
                        String fieldName = field.getName();
                        String colName = convertPropertyNameToUnderLine(fieldName);
                        map.put(fieldName, colName);
                    }
                }
            }
            Class<?> superClass = clazz.getSuperclass();// 递归获取父类的Field
            Map<String, String> superMap = getAllFields(superClass);
            if (superMap != null) {
                map.putAll(superMap);
            }
            if (map.size() == 0) {
                return null;
            }
            return map;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public static String insertSql(String tableName, Class<?> clazz) {
        Map<String, String> map = getAllFields(clazz);
        StringBuilder sb = new StringBuilder("INSERT INTO " + tableName);
        Object[] filedNames = map.keySet().toArray();
        Object[] colNames = map.values().toArray();
        sb.append(" ( " + join(colNames).toUpperCase() + " ) ");
        sb.append(" VALUES ( " + join2(filedNames) + " ) ");
        return sb.toString();
    }

    public static String selectSql(String tableName, Class<?> clazz) {
        Map<String, String> map = getAllFields(clazz);
        StringBuilder sb = new StringBuilder("SELECT ");
        Object[] colNames = map.values().toArray();
        sb.append(join(colNames).toUpperCase() + " FROM " + tableName);
        return sb.toString();
    }

    public static String updateSql(String tableName, Class<?> clazz) {
        Map<String, String> map = getAllFields(clazz);
        StringBuilder sb = new StringBuilder("UPDATE " + tableName + " SET ");
        for (String s : map.keySet()) {
            if (!"id".equals(s)) {
                sb.append(map.get(s).toString().toUpperCase() + " = #{" + s + "},");
            }
        }
        String str = sb.toString();
        return str.substring(0, str.length() - 1) + " WHERE ID = #{id} ";
    }

    public static String join(Object[] arr) {
        StringBuilder sb = new StringBuilder();
        for (Object s : arr) {
            sb.append(s + ",");
        }
        String str = sb.toString();
        return str.substring(0, str.length() - 1);
    }

    public static String join2(Object[] arr) {
        StringBuilder sb = new StringBuilder();
        for (Object s : arr) {
            sb.append("#{" + s + "},");
        }
        String str = sb.toString();
        return str.substring(0, str.length() - 1);
    }

    public static void sqls(String tableName, Class<?> clazz) {
        String insertSql = TableConvertClass.insertSql(tableName, clazz);
        System.out.println("##insertSql = \n " + insertSql);

        String selectSql = TableConvertClass.selectSql(tableName, clazz);
        System.out.println("##selectSql = \n " + selectSql);

        String updateSql = TableConvertClass.updateSql(tableName, clazz);
        System.out.println("##updateSql = \n " + updateSql);

    }

    public static void getJavaClassProperty(String filepath) {
        StringBuilder sb = new StringBuilder("");

        File file = new File(filepath);
        try {
            BufferedReader bw = new BufferedReader(new FileReader(file));
            String line = null;
            while ((line = bw.readLine()) != null) {
                sb.append("	private String " + getColumnFieldProperty(line).trim() + ";\n");
            }
            bw.close();
        } catch (IOException e) {
            e.printStackTrace();
        }

        System.out.println(sb);
    }

    public static String getColumnFieldProperty(String line) {
        line = line.toLowerCase();
        Integer endIndex = 0;
        if (line.contains("nvarchar")) {
            endIndex = line.indexOf("nvarchar");
            return convertUnderLineToPropertyName(line.substring(0, endIndex));
        } else if (line.contains("varchar")) {
            endIndex = line.indexOf("varchar");
            return convertUnderLineToPropertyName(line.substring(0, endIndex));
        } else if (line.contains("date")) {
            endIndex = line.indexOf("date");
            return convertUnderLineToPropertyName(line.substring(0, endIndex));
        } else if (line.contains("char")) {
            endIndex = line.indexOf("char");
            return convertUnderLineToPropertyName(line.substring(0, endIndex));
        } else if (line.contains("decimal")) {
            endIndex = line.indexOf("decimal");
            return convertUnderLineToPropertyName(line.substring(0, endIndex));
        }
        return "";
    }

    /**
     * 针对maven src/main/java|resources 如果后台报异常（由于class.forname引起），请刷新项目，再跑一次；
     * @param projectDir 项目的绝对路径 如 : D:/workspace/amp/amp2/amp.web
     * @param packageName 项目的package 名称 如： cn.edu.neusoft.yum.amp2.web
     * @param html 路径
     * @param tableName 表名，
     * @param cols 表对应的列
     * @param myClassName 自己的className，domain 和业务表对应，其他的如果 myClassName=null，类名和业务对应；否则，是myClassName 如 JC_010
     * @param onlydomain 是否只生成 domain class ，如果是：api，service，controller，dao，mapper 都不生成
     */
    public static void convertTablesToClass(String projectDir, String packageName, String htmlDir, String tableName, List<OrmVO> cols, String myClassName,
            boolean onlydomain) {
    	
    	String tmpTableName = "";
        String moduleName = "";
        String tableClassName = "";
    	
    	if(tableName.toUpperCase().indexOf("T_") > -1){
    		System.out.println(tmpTableName);
    		tmpTableName = tableName.substring(2);
            moduleName = tmpTableName.substring(0, tmpTableName.indexOf("_")).toLowerCase();
            tableClassName = tmpTableName.substring(tmpTableName.indexOf("_") + 1).toLowerCase();
            tableClassName = convertUnderLineToPropertyName2(tableClassName);
    	}else{
    		tmpTableName = tableName.substring(tableName.indexOf("_")+1);
            moduleName = tableName.substring(0, tableName.indexOf("_")).toLowerCase();
            tableClassName = convertUnderLineToPropertyName2(tmpTableName);
    	}
        
        String className = myClassName;
        if (StringUtils.isEmpty(myClassName)) {
            className = tableClassName;
        }
        String packagePath = packageName.replace(".", "/");
        
        String packageFilePath = projectDir + "/src/" + packagePath + "/" + moduleName + "/";
        String mapperFilePath = projectDir + "/src/" + packagePath + "/" + moduleName + "/";

        File packageFile = new File(packageFilePath);
        File mapperFile = new File(mapperFilePath);
        try {
            if (!packageFile.exists()) {// 创建class文件夹
                packageFile.mkdirs();
            }
            if (!mapperFile.exists()) {// 创建mapper文件夹
                mapperFile.mkdirs();
            }

            // 创建api、controller、dao、domain、service 文件夹
            String[] folders = {"ctrl", "mapper", "domain", "service" };
            for (String f : folders) {
                File tmpFile = new File(packageFilePath + f);
                if (!tmpFile.exists()) {
                    tmpFile.mkdir();
                }

                if ("service".equals(f)) {
                    if (!onlydomain) {
                        String tmpClassName = className + "Service.java";
                        File classFile = new File(packageFilePath + f + "/" + tmpClassName);
                        if (!classFile.exists()) {// 如果存在，则不重建
                            createApiClass(classFile, packageName, moduleName, className, tableClassName);
                        }
                    }
                    if (!onlydomain) {
                        String tmpClassName = className + "ServiceImpl.java";
                        File classFile = new File(packageFilePath + f + "/impl/" + tmpClassName);
                        if (!classFile.exists()) {// 如果存在，则不重建
                        	tmpFile = new File(packageFilePath + f + "/impl/");
                        	if (!tmpFile.exists()) {
                                tmpFile.mkdir();
                            }
                            createServiceImplClass(classFile, packageName, moduleName, className, tableClassName);
                        }
                    }
                } else if ("ctrl".equals(f)) {
                    if (!onlydomain) {
                        String tmpClassName = className + "Ctrl.java";
                        File classFile = new File(packageFilePath + "/" + f + "/" + tmpClassName);
                        if (!classFile.exists()) {// 如果存在，则不重建
                            createControllerClass(classFile, packageName, moduleName, className, tableClassName);
                        }
                    }
                } else if ("mapper".equals(f)) {
                    if (!onlydomain) {
                        String tmpClassName = className + "Dao.java";
                        File classFile = new File(packageFilePath + "/" + f + "/" + tmpClassName);
                        if (!classFile.exists()) {// 如果存在，则不重建
                            createDaoClass(classFile, packageName, moduleName, className, tableClassName);
                        }
                    }
                } else {
                    String tmpPackageName = packageName + "." + moduleName + ".domain;";
                    String tmpClassName = tableClassName + ".java";
                    File classFile = new File(packageFilePath + "/" + f + "/" + tmpClassName);
                    if (!classFile.exists()) {// 如果存在，则不重建
                        createDomainClass(classFile, tmpPackageName, tableClassName, cols);
                    }
                }
            }

            if (!onlydomain) {
                // 创建mapper文件夹
                File mapperTempFile = new File(mapperFilePath + "mapper");
                if (!mapperTempFile.exists()) {
                    mapperTempFile.mkdir();
                }
                File mapperXmlFile = new File(mapperFilePath + "mapper" + "/" + className + "Mapper.xml");
                if (!mapperXmlFile.exists()) {// 如果存在，则不重建
                    String packageAndClass = packageName + "." + moduleName + ".domain." + tableClassName;
                    String packageAndDaoClass = packageName + "." + moduleName + ".mapper." + className + "Dao";
                    createMapperXml(mapperXmlFile, packageAndClass, packageAndDaoClass, tableName);
                }
            }
            
            //创建html文件
            if(!StringUtils.isEmpty(htmlDir)){
            	 File htmlDirFile = new File(htmlDir + "/" + moduleName + "/");
            	 if (!htmlDirFile.exists()) {
            		 htmlDirFile.mkdir();
                 }
            	 createHtmlPage(htmlDirFile, moduleName, className, cols);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
    	
    }

    public static void createApiClass(File classFile, String packageName, String moduleName, String className, String domainName) {
        try {

            String tmpPackageName = packageName + "." + moduleName + ".service;";
            String tmpClassName = className + "Service";

            classFile.createNewFile();

            StringBuilder sb = new StringBuilder();
            sb.append("package " + tmpPackageName + "\n\n");

            sb.append("import java.util.List;\n");
            sb.append("import cn.edu.neusoft.core.page.Pagination;\n");
            sb.append("import " + packageName + "." + moduleName + ".domain." + domainName + ";\n");

            sb.append("\n\n");
            sb.append("public interface " + tmpClassName + " {\n\n");

            sb.append("	public " + domainName + " getById(String id);\n\n");
            
            sb.append("	public List<" + domainName + "> list(" + domainName + " searchEntity);\n\n");

            sb.append("	public Pagination<" + domainName + "> paginationEntity(" + domainName + " searchEntity ,Pagination<" + domainName + "> pagination);\n\n");

            sb.append("	public void add(" + domainName + " entity);\n\n");

            sb.append("	public void update(" + domainName + " entity);\n\n");

            sb.append("	public void delete(" + domainName + " entity);\n\n");

            sb.append("\n\n}\n\n");
            OutputStream os = new FileOutputStream(classFile);
            PrintStream ps = new PrintStream(os);
            ps.print(sb);

            os.flush();
            os.close();
            ps.flush();
            ps.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public static void createControllerClass(File classFile, String packageName, String moduleName, String className, String domainName) {
        try {

            String tmpPackageName = packageName + "." + moduleName + ".ctrl;";
            String tmpClassName = className + "Ctrl";

            classFile.createNewFile();

            StringBuilder sb = new StringBuilder();
            sb.append("package " + tmpPackageName + "\n\n");

            sb.append("import java.util.List;\n");
            sb.append("import cn.edu.neusoft.core.page.Pagination;\n");
            sb.append("import org.springframework.stereotype.Controller;\n");
            sb.append("import org.springframework.beans.factory.annotation.Autowired;\n");
            sb.append("import org.springframework.web.bind.annotation.RequestMapping;\n");
            sb.append("import org.springframework.web.servlet.ModelAndView;\n");

            sb.append("import " + packageName + "." + moduleName + ".domain." + domainName + ";\n");
            sb.append("import " + packageName + "." + moduleName + ".service." + className + "Service;\n");

            sb.append("\n\n");
            sb.append("@Controller\n@RequestMapping(\"/" + moduleName + "/" + CommonUtil.stringCap(className) + "\")\npublic class " + tmpClassName + "{\n\n");
            sb.append("	@Autowired\n	private " + className + "Service entityService;\n\n");

            sb.append("	@RequestMapping(value = \"/getById\")\n	public ModelAndView getById(String id){"
            		+ "\n		ModelAndView mv = new ModelAndView(\"" + moduleName + "/" + CommonUtil.stringCap(className) + "\");" 
                    + "\n		mv.addObject(\"entity\",entityService.getById(id));" 
            		+ "\n		return mv;" 
                    + "\n	}\n\n");

            sb.append("	@RequestMapping(value = \"/list\")\n	public  ModelAndView list(" + domainName + " searchEntity){" 
                    + "\n		ModelAndView mv = new ModelAndView(\"" + moduleName + "/" + CommonUtil.stringCap(className) + "List\");" 
            		+ "\n		List<"+domainName+"> list = entityService.list(searchEntity);" 
            		+ "\n		mv.addObject(\"list\",list);" 
            		+ "\n		return mv;"
                    + "\n	}\n\n");
            
            sb.append("	@RequestMapping(value = \"/paginationEntity\")\n	public  ModelAndView paginationEntity(" + domainName + " searchEntity , Pagination<" + domainName + "> pagination){" 
                    + "\n		ModelAndView mv = new ModelAndView(\"" + moduleName + "/" + CommonUtil.stringCap(className) + "Pagination\");" 
            		+ "\n		pagination = entityService.paginationEntity(searchEntity,pagination);" 
            		+ "\n		mv.addObject(\"pagination\",pagination);" 
            		+ "\n		mv.addObject(\"searchEntity\",searchEntity);" 
                    + "\n		return mv;"
                    + "\n	}\n\n");

            sb.append("	@RequestMapping(value = \"/toMerge\")\n	public ModelAndView toMerge(" + domainName + " entity){" 
            		+ "\n		ModelAndView mv = new ModelAndView(\"" + moduleName + "/" + CommonUtil.stringCap(className) + "Merge\");"
            		+ "\n		if(entity.getId() != null){"
            		+ "\n			entity = entityService.getById(entity.getId().toString());" 
            		+ "\n		}"
            		+ "\n		mv.addObject(\"entity\",entity);" 
            		+ "\n		return mv;" 
            		+ "\n	}\n\n");

            sb.append("	@RequestMapping(value = \"/doMerge\")\n	public ModelAndView doMerge(" + domainName + " entity){"
            		+ "\n		if(entity.getId() == null){" 
            		+ "\n			entityService.add(entity);" 
            		+ "\n		}else{" 
            		+ "\n			entityService.update(entity);" 
            		+ "\n		}" 
            		+ "\n		return new ModelAndView(\"redirect:/" + moduleName + "/" + CommonUtil.stringCap(className) + "/paginationEntity.html\");" 
            		+ "\n	}\n\n");

            sb.append("	@RequestMapping(value = \"/delete\")\n	public ModelAndView delete(" + domainName + " entity){"
                    + "\n		entityService.delete(entity);" 
                    + "\n		return new ModelAndView(\"redirect:/" + moduleName + "/" + CommonUtil.stringCap(className) + "/paginationEntity.html\");" 
                    + "\n	}\n\n");

            sb.append("\n\n}\n\n");
            OutputStream os = new FileOutputStream(classFile);
            PrintStream ps = new PrintStream(os);
            ps.print(sb);

            os.flush();
            os.close();
            ps.flush();
            ps.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public static void createDaoClass(File classFile, String packageName, String moduleName, String className, String domainName) {
        try {

            String tmpPackageName = packageName + "." + moduleName + ".mapper;";
            String tmpClassName = className + "Dao";

            classFile.createNewFile();

            StringBuilder sb = new StringBuilder();
            sb.append("package " + tmpPackageName + "\n\n");

            sb.append("import java.util.List;\n");
            sb.append("import cn.edu.neusoft.core.page.Pagination;\n");
            sb.append("import " + packageName + "." + moduleName + ".domain." + domainName + ";\n");

            sb.append("\n\n");
            sb.append("public interface " + tmpClassName + " {\n\n");

            sb.append("	public " + domainName + " getById(String id);\n\n");

            sb.append("	public List<" + domainName + "> list(" + domainName + " searchEntity);\n\n");
            
            sb.append("	public Integer getTotalItemsCount(" + domainName + " searchEntity);\n\n");
            
            sb.append("	public List<" + domainName + "> paginationEntity(" + domainName + " searchEntity , Pagination<" + domainName + "> pagination);\n\n");

            sb.append("	public void add(" + domainName + " entity);\n\n");

            sb.append("	public void update(" + domainName + " entity);\n\n");

            sb.append("	public void delete(" + domainName + " entity);\n\n");

            sb.append("\n\n}\n\n");
            OutputStream os = new FileOutputStream(classFile);
            PrintStream ps = new PrintStream(os);
            ps.print(sb);

            os.flush();
            os.close();
            ps.flush();
            ps.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public static void createDomainClass(File classFile, String packageName, String className, List<OrmVO> cols) {
        try {
            classFile.createNewFile();

            StringBuilder sb = new StringBuilder();
            sb.append("package " + packageName + "\n\n");
            sb.append("import java.util.Date;\n");
            sb.append("import cn.edu.neusoft.core.domain.BaseEntity;\n");

            sb.append("\n\n");
            sb.append("public class " + className + " extends BaseEntity{\n\n");

            for (OrmVO vo : cols) {
            	String col = vo.getColName();
                if ("CREATETIME".equalsIgnoreCase(col) || "CREATE_USER".equalsIgnoreCase(col) || "CREATE_TIME".equalsIgnoreCase(col) || "UPDATE_USER".equalsIgnoreCase(col)
                        || "UPDATE_TIME".equalsIgnoreCase(col) || "DEL_FLAG".equalsIgnoreCase(col) || "ID".equalsIgnoreCase(col)) {
                	//pass
                } else {
                	String type = vo.getColType();
                	String javaType = " String ";
                	if(type.toLowerCase().contains("int")){
                		javaType = " Integer ";
                	}else if(type.toLowerCase().contains("date")){
                		javaType = " Date ";
                	}
                    sb.append("	private" + javaType + convertUnderLineToPropertyName(col.toLowerCase()) + ";\n");
                }
            }
            
            sb.append("\n\n");
            
            //setter & getter
            for (OrmVO vo : cols) {
            	String col = vo.getColName();
                if ("CREATETIME".equalsIgnoreCase(col) || "CREATE_USER".equalsIgnoreCase(col) || "CREATE_TIME".equalsIgnoreCase(col) || "UPDATE_USER".equalsIgnoreCase(col)
                        || "UPDATE_TIME".equalsIgnoreCase(col) || "DEL_FLAG".equalsIgnoreCase(col) || "ID".equalsIgnoreCase(col)) {
                	//pass
                } else {
                	String type = vo.getColType();
                	String javaType = " String ";
                	if(type.toLowerCase().contains("int")){
                		javaType = " Integer ";
                	}else if(type.toLowerCase().contains("date")){
                		javaType = " Date ";
                	}
                	String property = convertUnderLineToPropertyName(col.toLowerCase());
                    sb.append("	public" + javaType + "get" + upperCaseFirst(property) + "(){\n");
                    sb.append("		return " + property +";\n");
                    sb.append("	}\n");
                    
                    sb.append("	public void set" + upperCaseFirst(property) + "(" + javaType.trim() + " " + property + "){\n");
                    sb.append("		this." +property+ " = " + property +";\n");
                    sb.append("	}\n\n");
                }
            }

            sb.append("\n\n}\n\n");
            OutputStream os = new FileOutputStream(classFile);
            PrintStream ps = new PrintStream(os);
            ps.print(sb);

            os.flush();
            os.close();
            ps.flush();
            ps.close();

        } catch (IOException e) {
            e.printStackTrace();
        }

    }

    public static void createServiceImplClass(File classFile, String packageName, String moduleName, String className, String domainName) {
        try {

            String tmpPackageName = packageName + "." + moduleName + ".service.impl;";
            String tmpClassName = className + "ServiceImpl";

            classFile.createNewFile();

            StringBuilder sb = new StringBuilder();
            sb.append("package " + tmpPackageName + "\n\n");

            sb.append("import java.util.List;\n");
            sb.append("import cn.edu.neusoft.core.page.Pagination;\n");
            sb.append("import org.springframework.stereotype.Service;\n");
            sb.append("import org.springframework.beans.factory.annotation.Autowired;\n");

            sb.append("import " + packageName + "." + moduleName + ".domain." + domainName + ";\n");
            sb.append("import " + packageName + "." + moduleName + ".service." + className + "Service;\n");
            sb.append("import " + packageName + "." + moduleName + ".mapper." + className + "Dao;\n");

            sb.append("\n\n");

            sb.append("@Service\npublic class " + tmpClassName + " implements " + className + "Service{\n\n");

            sb.append("	@Autowired\n	private " + className + "Dao entityDao;\n\n");

            sb.append("	public " + domainName + " getById(String id){" + "\n		return entityDao.getById(id);\n" + "	}\n\n");

            sb.append("	public List<" + domainName + "> list(" + domainName + " searchEntity){"
                    + "\n		return entityDao.list(searchEntity);\n" + "	}\n\n");
            
            sb.append("	public Pagination<" + domainName + "> paginationEntity(" + domainName + " searchEntity ,Pagination<" + domainName + "> pagination){"
                    + "\n		Integer totalItemsCount = entityDao.getTotalItemsCount(searchEntity);" 
                    + "\n		List<" + domainName + "> items = entityDao.paginationEntity(searchEntity,pagination);" 
                    + "\n		pagination.setTotalItemsCount(totalItemsCount);" 
                    + "\n		pagination.setItems(items);" 
                    + "\n		return pagination;" 
            		+ "\n	}\n\n");

            sb.append("	public void add(" + domainName + " entity){" + "\n		entityDao.add(entity);\n" + "	}\n\n");

            sb.append("	public void update(" + domainName + " entity){" + "\n		entityDao.update(entity);\n" + "	}\n\n");

            sb.append("	public void delete(" + domainName + " entity){" + "\n		entityDao.delete(entity);\n" + "	}\n\n");

            sb.append("\n\n}\n\n");
            OutputStream os = new FileOutputStream(classFile);
            PrintStream ps = new PrintStream(os);
            ps.print(sb);

            os.flush();
            os.close();
            ps.flush();
            ps.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public static void createMapperXml(File mapperXmlFile, String packageAndClass, String packageAndDaoClass, String tableName) {
        try {
            Class<?> clazz = Class.forName(packageAndClass);

            mapperXmlFile.createNewFile();

            StringBuilder sb = new StringBuilder();
            sb.append("<?xml version=\"1.0\" encoding=\"UTF-8\" ?>\n");
            sb.append("<!DOCTYPE mapper PUBLIC \"-//mybatis.org//DTD Mapper 3.0//EN\" \"http://10.20.91.130/dtd/mybatis-3-mapper.dtd\" >");

            sb.append("\n\n<mapper namespace=\"" + packageAndDaoClass + "\">\n\n");

            sb.append("\n	<select id=\"list\" parameterType=\"" + packageAndClass + "\" resultType=\"" + packageAndClass + "\">");
            sb.append("\n		SELECT * FROM " + tableName + " ORDER BY ID");
            sb.append("\n	</select>");
            
            sb.append("\n\n	<select id=\"getTotalItemsCount\" parameterType=\"" + packageAndClass + "\" resultType=\"java.lang.Integer\">");
            sb.append("\n		SELECT COUNT(*) FROM " + tableName );
            sb.append("\n	</select>");
            
            sb.append("\n\n	<select id=\"paginationEntity\" resultType=\"" + packageAndClass + "\">");
            sb.append("\n		SELECT * FROM " + tableName + " ORDER BY ID LIMIT #{param2.start} , #{param2.pageSize} ");
            sb.append("\n	</select>");
            
            sb.append("\n\n	<select id=\"getById\" parameterType=\"java.lang.String\" resultType=\"" + packageAndClass + "\">");
            sb.append("\n		SELECT * FROM " + tableName + " WHERE ID = #{id}");
            sb.append("\n	</select>");

            sb.append("\n\n	<insert id=\"add\" parameterType=\"" + packageAndClass + "\" flushCache=\"true\"  useGeneratedKeys=\"true\" keyProperty=\"id\"  >");
            sb.append("\n		" + TableConvertClass.insertSql(tableName, clazz));
            sb.append("\n	</insert>");

            sb.append("\n\n	<update id=\"update\" parameterType=\"" + packageAndClass + "\" flushCache=\"true\">");
            sb.append("\n		" + TableConvertClass.updateSql(tableName, clazz));
            sb.append("\n	</update>");

            sb.append("\n\n	<delete id=\"delete\" parameterType=\"" + packageAndClass + "\" >");
            sb.append("\n		DELETE FROM " + tableName + " WHERE ID = #{id}");
            sb.append("\n	</delete>");

            sb.append("\n\n</mapper>\n");

            OutputStream os = new FileOutputStream(mapperXmlFile);
            PrintStream ps = new PrintStream(os);
            ps.print(sb);

            os.flush();
            os.close();
            ps.flush();
            ps.close();
        } catch (Exception e) {
            e.printStackTrace();
            System.out.println("如果后台报异常（由于class.forname引起），请刷新项目目录，再跑一次；");
        }

    }
    
    private static boolean passProperty(String col){
    	return "CREATETIME".equalsIgnoreCase(col) || "CREATE_USER".equalsIgnoreCase(col) 
    			|| "CREATE_TIME".equalsIgnoreCase(col) || "UPDATE_USER".equalsIgnoreCase(col)
                || "UPDATE_TIME".equalsIgnoreCase(col) || "DEL_FLAG".equalsIgnoreCase(col) 
                || "ID".equalsIgnoreCase(col);
    }
    
    //创建页面文件
    public static void createHtmlPage(File htmlFile, String moduleName, String className ,List<OrmVO> cols){
		File pageFile = new File(htmlFile + "/" + lowerCaseFirst(className) + "Pagination.html");
		File mergeFile = new File(htmlFile + "/" + lowerCaseFirst(className) + "Merge.html");
		
		try {
			if(!pageFile.exists()){
				pageFile.createNewFile();
				
				StringBuilder sb = getPaginationHtml(moduleName,className,cols);
				OutputStream os = new FileOutputStream(pageFile);
	            PrintStream ps = new PrintStream(os);
	            ps.print(sb);

	            os.flush();
	            os.close();
	            ps.flush();
	            ps.close();
			}
			
			if(!mergeFile.exists()){
				mergeFile.createNewFile();
				
				StringBuilder sb = getMergeHtml(moduleName,className,cols);
				OutputStream os = new FileOutputStream(mergeFile);
	            PrintStream ps = new PrintStream(os);
	            ps.print(sb);

	            os.flush();
	            os.close();
	            ps.flush();
	            ps.close();
			}
		} catch (IOException e) {
			e.printStackTrace();
		}
		
    }
    
    private static StringBuilder getPaginationHtml(String moduleName, String className,List<OrmVO> cols){
    	StringBuilder sb = new StringBuilder(getHtmlHeader());
    	sb.append("		<div class=\"content\">\n");
    	sb.append("			<div class=\"block-nav\">\n");
    	sb.append("				<#include \"../common/nav.html\">\n");
    	sb.append("			</div>\n");
    	
    	sb.append("			<div class=\"block-content\">\n\n");
    	sb.append("				<div class=\"block-content-content\">\n");
    	sb.append("					<form id=\"id_fm-form\" method=\"post\" action=\"${s.base}/" + moduleName + "/" + CommonUtil.stringCap(className) + "/paginationEntity.html\">\n");
    	sb.append("						<table class=\"searchform-table\">\n");
    	
    	for(int i = 0; i < cols.size() ;i++){
    		if(i == 0){
    			sb.append("							<tr>\n");
    		}
    		String col = cols.get(i).getColName();
    		if (!passProperty(col)) {
    			
    			sb.append("								<td>\n");
            	sb.append("									<label>" + convertUnderLineToPropertyName(col.toLowerCase()) + "</label>\n");
            	sb.append("								</td>\n");
    			
    			sb.append("								<td>\n");
            	sb.append("									<input type=\"text\" name=\""+convertUnderLineToPropertyName(col.toLowerCase())+"\" value=\"${searchEntity."+convertUnderLineToPropertyName(col.toLowerCase())+"!}\"></input>\n");
            	sb.append("								</td>\n");
    		}
    		if(i == cols.size() - 1){
    			sb.append("								<td>\n");
            	sb.append("									<input class=\"btn\" type=\"button\" value=\"搜索\"></input>\n");
            	sb.append("								</td>\n");
            	sb.append("							</tr>\n");
    		}
        	if(i%3 == 0 && i != 0){
        		sb.append("							</tr>\n");
        		sb.append("							<tr>\n");
        	}
    	}
    	sb.append("						</table>\n\n\n");
    	
    	//分页table
    	sb.append("						<table class=\"pagination-table\">\n");
    	
    	sb.append("							<thead>\n");
    	sb.append("								<tr>\n");
    	for(int i = 0; i < cols.size() ;i++){
    		String col = cols.get(i).getColName();
    		sb.append("									<td style=\"width:100px;\">"+convertUnderLineToPropertyName(col.toLowerCase())+"</td>\n");
    	}
    	sb.append("									<td style=\"width:100px;\"><input class=\"btn\" type=\"button\" onClick=\"window.location.href='${s.base}/" + moduleName + "/" + CommonUtil.stringCap(className) + "/toMerge.html'\" value=\"添加\"/></td>\n");
    	sb.append("								</tr>\n");
    	sb.append("							</thead>\n");
    	
    	sb.append("							<tbody>\n");
    	sb.append("								<#list pagination.items as item>\n");
    	sb.append("								<#if item_index %2 == 0>\n");
    	sb.append("								<tr>\n");
    	sb.append("								<#else>\n");
    	sb.append("								<tr class=\"even-tr\">\n");
    	sb.append("								</#if>\n");
    	for(int i = 0; i < cols.size() ;i++){
    		String col = cols.get(i).getColName();
    		if("createtime".equals(convertUnderLineToPropertyName(col.toLowerCase()))){
    			sb.append("									<td style=\"width:100px;\">${item."+convertUnderLineToPropertyName(col.toLowerCase())+"!?string(\"yyyy-MM-dd HH:mm:ss\")}</td>\n");
    		}else{
    			sb.append("									<td style=\"width:100px;\">${item."+convertUnderLineToPropertyName(col.toLowerCase())+"!}</td>\n");
    		}
    	}
    	sb.append("									<td style=\"width:100px;\">\n");
    	sb.append("										<a href=\"javascript:void(0)\" onClick=\"window.location.href='${s.base}/" + moduleName + "/" + CommonUtil.stringCap(className) + "/toMerge.html?id=${item.id!}'\" >修改</a>\n");
    	sb.append("										<a href=\"javascript:void(0)\" onClick=\"window.location.href='${s.base}/" + moduleName + "/" + CommonUtil.stringCap(className) + "/delete.html?id=${item.id!}'\" >删除</a>\n");
    	sb.append("									</td>\n");
    	sb.append("								</tr>\n");
    	sb.append("								</#list>\n");
    	sb.append("							</tbody>\n");
    	sb.append("						</table>\n\n\n");
    	
    	sb.append("						<#include \"../common/pagination.html\">\n");
    	sb.append("					</form>\n");
    	sb.append("				</div>\n");
    	sb.append("			</div>\n");
    	sb.append("			<div class=\"clearfloat\"></div>\n");
    	sb.append("		</div>\n\n");
    	sb.append("		<#include \"../common/footer.html\">\n\n");
    	sb.append(getHtmlFooter());
    	return sb;
    }
    
    private static StringBuilder getMergeHtml(String moduleName, String className, List<OrmVO> cols){
    	StringBuilder sb = new StringBuilder(getHtmlHeader());
    	sb.append("		<div class=\"content\">\n");
    	sb.append("			<div class=\"block-nav\">\n");
    	sb.append("				<#include \"../common/nav.html\">\n");
    	sb.append("			</div>\n");
    	
    	sb.append("			<div class=\"block-content\">\n\n");
    	sb.append("				<div class=\"block-content-content\">\n");
    	sb.append("					<form class=\"fm-form\" method=\"post\" enctype=\"multipart/form-data\" onsubmit=\"return doSubmit();\" action=\"${s.base}/" + moduleName + "/" + CommonUtil.stringCap(className) + "/doMerge.html\">\n");
    	sb.append("						<input type=\"hidden\" name=\"id\" value=\"${entity.id!}\" />\n");
    	sb.append("						<table class=\"fm-form-table\">\n");
    	
    	for(int i = 0; i < cols.size() ;i++){
    		if(i == 0){
    			sb.append("							<tr>\n");
    		}
    		String col = cols.get(i).getColName();
    		if (!passProperty(col)) {
    			sb.append("								<td>\n");
            	sb.append("									<label>" + convertUnderLineToPropertyName(col.toLowerCase()) + " </label>\n");
            	sb.append("								</td>\n");
    			sb.append("								<td>\n");
            	sb.append("									<input type=\"text\" name=\""+convertUnderLineToPropertyName(col.toLowerCase())+"\" value=\"${entity."+convertUnderLineToPropertyName(col.toLowerCase())+"!}\"></input>\n");
            	sb.append("								</td>\n");
    		}
    		if(i%3 == 0 && i != 0){
        		sb.append("							</tr>\n");
        		sb.append("							<tr>\n");
        	}
    		if(i == cols.size() - 1){
            	sb.append("							</tr>\n");
    		}
    	}
    	
    	sb.append("							<tr>\n");
    	sb.append("								<td style=\"text-align:center;\" colspan=\"6\">\n");
    	sb.append("									<input class=\"btn\" type=\"submit\" value=\"提交\"></input>\n");
    	sb.append("								</td>\n");
    	sb.append("							</tr>\n");
    	
    	sb.append("						</table>\n");
    	sb.append("					</form>\n\n");
    	sb.append("				</div>\n");
    	sb.append("			</div>\n");
    	sb.append("			<div class=\"clearfloat\"></div>\n");
    	sb.append("		</div>\n\n");
    	sb.append("		<#include \"../common/footer.html\">\n\n");
    	sb.append(getHtmlFooter());
    	return sb;
    }
    
    
    private static String getHtmlHeader(){
    	StringBuilder sb = new StringBuilder("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Frameset//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-frameset.dtd\">\n");
    	sb.append("<html xmlns=\"http://www.w3.org/1999/xhtml\">\n");
    	sb.append("	<head>\n");
    	sb.append("		<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\n");
    	sb.append("		<#include \"../common/res.html\">\n");
    	sb.append("	</head>\n\n");
    	sb.append("	<body class=\"bg\">\n");
    	sb.append("		<#include \"../common/top.html\">\n");
    	return sb.toString();
    }
    
    private static String getHtmlFooter(){
    	StringBuilder sb = new StringBuilder("	</body>\n");
    	sb.append("</html>\n");
    	return sb.toString();
    }
    
}
