package com.shanshan.dao;

import com.shanshan.bean.CompanyBean;
import com.shanshan.bean.CompanyBeanExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface CompanyBeanMapper {
    long countByExample(CompanyBeanExample example);

    int deleteByExample(CompanyBeanExample example);

    int deleteByPrimaryKey(Integer companyId);

    int insert(CompanyBean record);

    int insertSelective(CompanyBean record);

    List<CompanyBean> selectByExample(CompanyBeanExample example);

    CompanyBean selectByPrimaryKey(Integer companyId);

    int updateByExampleSelective(@Param("record") CompanyBean record, @Param("example") CompanyBeanExample example);

    int updateByExample(@Param("record") CompanyBean record, @Param("example") CompanyBeanExample example);

    int updateByPrimaryKeySelective(CompanyBean record);

    int updateByPrimaryKey(CompanyBean record);
}