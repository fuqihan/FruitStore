package cn.edu.neusoft.core.util;

import org.apache.commons.lang.StringUtils;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.util.Calendar;

/**
 * 附件上传
 * 
 */
public class UploadUtil {
	
	public static String doUpload(String realPath ,MultipartFile file){
		return doUpload(realPath,"/res/upload/",file);
	}
	
	public static String doUpload(String realPath ,String modulePath ,MultipartFile file){
		String fileName = file.getOriginalFilename();  
		if(!StringUtils.isEmpty(fileName)){
			String ext = fileName.substring(fileName.indexOf("."));
			fileName = Calendar.getInstance().getTimeInMillis() + ext;
			
			File targetFile = new File(realPath + modulePath + fileName);  
	        if(!targetFile.exists()){
	            targetFile.mkdirs();
	        }  
	        //保存
	        try {
	            file.transferTo(targetFile);  
	        } catch (Exception e) {
	            e.printStackTrace();  
	        } 
	        return "/res/upload/" + fileName;
		}
		return null;
	}
}

