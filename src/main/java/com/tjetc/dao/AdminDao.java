package com.tjetc.dao;

import com.tjetc.domain.Admin;
import com.tjetc.domain.Page;

public interface AdminDao {
    Admin selectAdminByNameAndPassword(String name,String password);

    Page<Admin> selectByPage(int pageNum,int pageSize);
}
