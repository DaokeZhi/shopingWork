package com.sw.develop.dao;


import com.sw.develop.bean.Item;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by yanzhixiang on 2015/6/29.
 */
@Repository
public class UserCartDao {

    @Autowired
    private SqlSessionFactory sessionFactory;

    public List<Item> getAllItems() {
        List<Item> items = null;
        SqlSession sqlSession = sessionFactory.openSession();
        sqlSession.close();
        return items;
    }


}
