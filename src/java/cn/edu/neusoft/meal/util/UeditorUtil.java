package cn.edu.neusoft.meal.util;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import javax.servlet.http.HttpServletRequest;
import java.io.*;

/**
 * Created by 符启晗 on 2016/12/17.
 */

@Component
public class UeditorUtil {
    @Autowired
    HttpServletRequest request;

    public void UeditorPut(String editor, String ss) {
        byte[] b = editor.getBytes();
        BufferedOutputStream stream = null;
        File file = null;
        try {
            file = new File(request.getSession().getServletContext().getRealPath("/") + "/ueditor/image/" + ss + ".jsp");
            if (file.isFile() && file.exists()) {
                file.delete();
            }
            FileOutputStream fstream = new FileOutputStream(file);
            stream = new BufferedOutputStream(fstream);

            stream.write(b);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (stream != null) {
                try {
                    stream.close();
                } catch (IOException e1) {
                    e1.printStackTrace();
                }
            }
        }

    }

    public String UeditorShop(String ss) {
        String shop = "";
        try {
            File file = new File(request.getSession().getServletContext().getRealPath("/") + "/ueditor/image/" + ss + ".jsp");
            FileReader reader = new FileReader(file);
            int fileLen = (int) file.length();
            char[] chars = new char[fileLen];
            reader.read(chars);
            shop = String.valueOf(chars);

        } catch (Exception e) {

        }
        return shop;

    }
}
