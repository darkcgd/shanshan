package com.shanshan.dao;

import com.shanshan.bean.IndustryBean;
import com.shanshan.bean.IndustryBeanExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface IndustryBeanMapper {
    long countByExample(IndustryBeanExample example);

    int deleteByExample(IndustryBeanExample example);

    int deleteByPrimaryKey(Integer industryId);

    int insert(IndustryBean record);

    int insertSelective(IndustryBean record);

    List<IndustryBean> selectByExample(IndustryBeanExample example);

    IndustryBean selectByPrimaryKey(Integer industryId);

    int updateByExampleSelective(@Param("record") IndustryBean record, @Param("example") IndustryBeanExample example);

    int updateByExample(@Param("record") IndustryBean record, @Param("example") IndustryBeanExample example);

    int updateByPrimaryKeySelective(IndustryBean record);

    int updateByPrimaryKey(IndustryBean record);
}