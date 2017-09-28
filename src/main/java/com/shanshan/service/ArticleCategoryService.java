package com.shanshan.service;


import com.shanshan.bean.ArticleCategoryBean;
import com.shanshan.bean.ArticleCategoryBeanExample;
import com.shanshan.bean.TokenBeanExample;
import com.shanshan.dao.ArticleCategoryBeanMapper;
import com.shanshan.util.BaseUtil;
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

    public List<ArticleCategoryBean> getAllArticleCategoryList(Integer articleCategoryParentId) {
        ArticleCategoryBeanExample articleCategoryBeanExample = new ArticleCategoryBeanExample();
        //通过Criteria构造查询条件
        ArticleCategoryBeanExample.Criteria criteria=articleCategoryBeanExample.createCriteria();
        if(BaseUtil.isNotEmpty(articleCategoryParentId)){
            criteria.andArticleCategoryParentIdEqualTo(articleCategoryParentId);
        }
        return articleCategoryBeanMapper.selectByExample(articleCategoryBeanExample);
    }


}
