package com.tjetc.dao;

import com.tjetc.domain.Category;
import com.tjetc.domain.Page;

public interface CategoryDao {
    //增加一个分类
    int insert(Category category);
    //根据id删除一个分类
    int delete(int id);
    //更新分类
    int update(Category category);
    //根据分类id查询
    Category selectById(int id);
    //根据分类名称模糊查询
    Page<Category> selectByNameLike(String name);
    //分页查询所有员工的信息
    Page<Category> selectByPage(int pageNum,int pageSize);
}
