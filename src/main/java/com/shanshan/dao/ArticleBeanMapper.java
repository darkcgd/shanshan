package com.shanshan.dao;

import com.shanshan.bean.ArticleBean;
import com.shanshan.bean.ArticleBeanExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface ArticleBeanMapper {
    long countByExample(ArticleBeanExample example);

    int deleteByExample(ArticleBeanExample example);

    int deleteByPrimaryKey(Integer articleId);

    int insert(ArticleBean record);

    int insertSelective(ArticleBean record);

    List<ArticleBean> selectByExample(ArticleBeanExample example);

    ArticleBean selectByPrimaryKey(Integer articleId);

    int updateByExampleSelective(@Param("record") ArticleBean record, @Param("example") ArticleBeanExample example);

    int updateByExample(@Param("record") ArticleBean record, @Param("example") ArticleBeanExample example);

    int updateByPrimaryKeySelective(ArticleBean record);

    int updateByPrimaryKey(ArticleBean record);
}