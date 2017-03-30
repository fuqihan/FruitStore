package cn.edu.neusoft.core.ctrl;

import cn.edu.neusoft.core.domain.OrmVO;
import cn.edu.neusoft.core.mapper.OrmDao;
import cn.edu.neusoft.core.util.TableConvertClass;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/core")
public class IndexCtrl {
	
	@Autowired
	private OrmDao ormDao;
	
	@RequestMapping("/init")
	public void init(HttpServletRequest request, HttpServletResponse response){
	 	String workSpace = "";//改成自己的项目路径
	 	String htmlDir = "";
        try {
            // 创建beans
            OrmVO vo = new OrmVO();
            vo.setPrefix("");// 如果是：T_BASE_ 则对所有以 T_BASE_ 开头的表生成java代码
            List<String> tables = ormDao.listTables(vo);
            System.out.println("XXXXXXXX"+tables.size());
            Map<String, String> tableMap = new HashMap<String, String>();// 这里写一个表名 和 业务名对应的map
            for (String table : tables) {
                vo.setTableName(table);
                List<OrmVO> cols = ormDao.listTableCols(vo);
                TableConvertClass.convertTablesToClass(workSpace, "com", htmlDir, table, cols, tableMap.get(table), false);// tableMap.get(table)
            }
            response.getWriter().write("please check console : if exception ,please refresh project and create again");
        } catch (IOException e) {
            e.printStackTrace();
        }
	}
	
	public static void main(String[] args){
		String s = "msg_account_abc";
		System.out.println(s.substring(s.indexOf("_")+1));
        System.out.println(s.substring(0, s.indexOf("_")).toLowerCase());
	}
}
