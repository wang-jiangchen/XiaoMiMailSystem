package com.tjetc.util;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class DateFormat {
    public static final SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
    public static final SimpleDateFormat sdf2=new SimpleDateFormat("yyyy-MM-dd");
    public static String dateToString(Date d){
        return sdf.format(d);
    }
    public static Date stringToDate(String s){
        try {
            return sdf2.parse(s);
        }catch (ParseException e){
            e.printStackTrace();
            return null;
        }
    }
}
