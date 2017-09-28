package com.shanshan.dao;

import com.shanshan.bean.ArticleCategoryBean;
import com.shanshan.bean.ArticleCategoryBeanExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface ArticleCategoryBeanMapper {
    long countByExample(ArticleCategoryBeanExample example);

    int deleteByExample(ArticleCategoryBeanExample example);

    int deleteByPrimaryKey(Integer articleCategoryId);

    int insert(ArticleCategoryBean record);

    int insertSelective(ArticleCategoryBean record);

    List<ArticleCategoryBean> selectByExample(ArticleCategoryBeanExample example);

    ArticleCategoryBean selectByPrimaryKey(Integer articleCategoryId);

    int updateByExampleSelective(@Param("record") ArticleCategoryBean record, @Param("example") ArticleCategoryBeanExample example);

    int updateByExample(@Param("record") ArticleCategoryBean record, @Param("example") ArticleCategoryBeanExample example);

    int updateByPrimaryKeySelective(ArticleCategoryBean record);

    int updateByPrimaryKey(ArticleCategoryBean record);
}