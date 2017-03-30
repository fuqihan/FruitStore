package cn.edu.neusoft.core.util;

import net.sf.json.JSONObject;

import java.io.UnsupportedEncodingException;

public class JSONUtil {

	public static String renderString(JSONObject jsonObj){
		try {
			return new String(jsonObj.toString().getBytes("UTF-8"),"ISO8859-1");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "";
	}
}
