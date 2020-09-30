package com.tjetc.test;

import com.tjetc.util.DBUtil;
import com.tjetc.util.DateFormat;

import java.sql.Connection;
import java.util.Date;

public class Test1 {
    public static void main(String[] args) {
        Connection connection = DBUtil.getConnection();
        System.out.println(connection);
    }
}
