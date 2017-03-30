package cn.edu.neusoft.core.util;

import java.util.UUID;

public class UUIDGenerator {     
    public UUIDGenerator() {     
    }     
    
    public static String getUUID() {     
        UUID uuid = UUID.randomUUID();     
       String str = uuid.toString();     
        // 去掉"-"符号     
       String result = str.substring(0, 8) + str.substring(9, 13) + str.substring(14, 18) + str.substring(19, 23) + str.substring(24);     
        return result;     
    }     
   //获得指定数量的UUID     
    public static String[] getUUID(int number) {     
        if (number < 1) {     
            return null;     
        }     
        String[] ss = new String[number];     
        for (int i = 0; i < number; i++) {     
           ss[i] = getUUID();     
        }     
        return ss;     
    }     
    
    public static void main(String[] args) {     
        String ss = getUUID(); 
        System.out.println(ss);
        /*for (int i = 0; i < ss.length; i++) {     
            System.out.println("ss["+i+"]====="+ss[i]);     
        }  */   
    }     
} 
