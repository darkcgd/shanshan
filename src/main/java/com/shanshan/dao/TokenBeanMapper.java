package com.shanshan.dao;

import com.shanshan.bean.TokenBean;
import com.shanshan.bean.TokenBeanExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface TokenBeanMapper {
    long countByExample(TokenBeanExample example);

    int deleteByExample(TokenBeanExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(TokenBean record);

    int insertSelective(TokenBean record);

    List<TokenBean> selectByExample(TokenBeanExample example);

    TokenBean selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") TokenBean record, @Param("example") TokenBeanExample example);

    int updateByExample(@Param("record") TokenBean record, @Param("example") TokenBeanExample example);

    int updateByPrimaryKeySelective(TokenBean record);

    int updateByPrimaryKey(TokenBean record);
}