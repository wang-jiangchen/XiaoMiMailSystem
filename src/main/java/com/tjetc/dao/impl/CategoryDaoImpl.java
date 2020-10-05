package com.tjetc.dao.impl;

import com.tjetc.dao.CategoryDao;
import com.tjetc.domain.Category;
import com.tjetc.domain.Page;
import com.tjetc.util.DBUtil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class CategoryDaoImpl implements CategoryDao {
    @Override
    public int insert(Category category) {
        return 0;
    }
    @Override
    public int delete(int id) {
        return 0;
    }
    @Override
    public int update(Category category) {
        return 0;
    }
    @Override
    public Category selectById(int id) {
        return null;
    }
    @Override
    public Page<Category> selectByNameLike(String name) {
        return null;
    }
    @Override
    public Page<Category> selectByPage(int pageNum, int pageSize) {
        return null;
    }
    private int count(){
        Connection conn = DBUtil.getConnection();
        PreparedStatement pstmt = DBUtil.getPstmt(conn, "select count(1) from category");
        ResultSet rs = DBUtil.query(pstmt);
        try {
            if (rs.next()){
                return rs.getInt("id");
            }
            return 0;
        } catch (SQLException throwables) {
            throwables.printStackTrace();
            return 0;
        }
    }
}
