package com.shanshan.service;


import com.shanshan.bean.ArticleCategoryBean;
import com.shanshan.bean.ArticleCategoryBeanExample;
import com.shanshan.dao.ArticleCategoryBeanMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by szmg on 17/9/27.
 */
@Service
public class ArticleCategoryService {
    @Autowired
    ArticleCategoryBeanMapper articleCategoryBeanMapper;

    public List<ArticleCategoryBean> getAllArticleCategoryList() {
       return articleCategoryBeanMapper.selectByExample(new ArticleCategoryBeanExample());

    }


}
