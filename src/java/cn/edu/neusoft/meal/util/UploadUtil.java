package cn.edu.neusoft.meal.util;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;

/**
 * Created by 符启晗 on 2016/12/14.
 */
@Component
public class UploadUtil {
    @Autowired
    HttpServletRequest request;
    public String updateFruits(MultipartFile img){
        try {
            String relativePath="fruit/Images";
            String savePath = request.getServletContext().getRealPath(relativePath);
            String filename =img.getOriginalFilename().substring(img.getOriginalFilename().indexOf("/")+1);
            // 创建保存的文件

            File file = new File(savePath, filename);

            img.transferTo(file);
            return "Images/"+filename;
        } catch (IOException e) {
            e.printStackTrace();
        }
        return null;
    }
}
