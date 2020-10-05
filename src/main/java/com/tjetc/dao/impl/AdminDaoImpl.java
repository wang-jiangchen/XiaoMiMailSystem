package com.tjetc.dao.impl;

import com.tjetc.dao.AdminDao;
import com.tjetc.domain.Admin;
import com.tjetc.domain.Page;
import com.tjetc.util.DBUtil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class AdminDaoImpl implements AdminDao {
    public Admin selectAdminByNameAndPassword(String name, String password) {
        Connection conn= DBUtil.getConnection();
        PreparedStatement pstmt=DBUtil.getPstmt(conn,"select * from admin where name=? and password=?",name,password);
        ResultSet rs=DBUtil.query(pstmt);
        List<Admin> list=new ArrayList<Admin>();
        try {
            if (rs.next()){
                list.add(new  Admin(
                        rs.getInt("id"),
                        rs.getString("name"),
                        rs.getString("password")
                ));
            }
            return  null;
        }catch (Exception e){
            e.fillInStackTrace();
            return null;

        }finally {
            DBUtil.close(conn,pstmt,rs);
        }

    }

    public Page<Admin> selectByPage(int pageNum, int pageSize) {
        Page<Admin> paeg=new Page<Admin>(pageNum,pageSize);
        paeg.setTotalData(this.count());
            Connection conn=DBUtil.getConnection();
            PreparedStatement pstmt=DBUtil.getPstmt(conn,"select *from admin",paeg.start(),paeg.getPageSize() );
            ResultSet rs=DBUtil.query(pstmt);
            List<Admin> list=new ArrayList<Admin>();
            try {
                while (rs.next()){
                    list.add(new Admin(rs.getInt("id"),
                            rs.getString("name"),
                            rs.getString("password")));

                }
                paeg.setData(list);
                return paeg;
            }catch (Exception e){
                e.fillInStackTrace();
                return null;
            }



    }
    private int count() {
        Connection conn =DBUtil.getConnection();
        PreparedStatement pstmt=DBUtil.getPstmt(conn,"select count(1) from emp");
        ResultSet rs=DBUtil.query(pstmt);
        try{
            if (rs.next()){
                return rs.getInt(1);
            }
            return 0;
        }catch (Exception e){
            e.fillInStackTrace();
            return 0;
        }

    }
}
