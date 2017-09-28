package com.shanshan.dao;

import com.shanshan.bean.EnrollBean;
import com.shanshan.bean.EnrollBeanExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface EnrollBeanMapper {
    long countByExample(EnrollBeanExample example);

    int deleteByExample(EnrollBeanExample example);

    int deleteByPrimaryKey(Integer enrollId);

    int insert(EnrollBean record);

    int insertSelective(EnrollBean record);

    List<EnrollBean> selectByExample(EnrollBeanExample example);

    EnrollBean selectByPrimaryKey(Integer enrollId);

    int updateByExampleSelective(@Param("record") EnrollBean record, @Param("example") EnrollBeanExample example);

    int updateByExample(@Param("record") EnrollBean record, @Param("example") EnrollBeanExample example);

    int updateByPrimaryKeySelective(EnrollBean record);

    int updateByPrimaryKey(EnrollBean record);
}