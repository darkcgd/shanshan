package com.shanshan.dao;

import com.shanshan.bean.ActivityBean;
import com.shanshan.bean.ActivityBeanExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface ActivityBeanMapper {
    long countByExample(ActivityBeanExample example);

    int deleteByExample(ActivityBeanExample example);

    int deleteByPrimaryKey(Integer activityId);

    int insert(ActivityBean record);

    int insertSelective(ActivityBean record);

    List<ActivityBean> selectByExample(ActivityBeanExample example);

    ActivityBean selectByPrimaryKey(Integer activityId);

    int updateByExampleSelective(@Param("record") ActivityBean record, @Param("example") ActivityBeanExample example);

    int updateByExample(@Param("record") ActivityBean record, @Param("example") ActivityBeanExample example);

    int updateByPrimaryKeySelective(ActivityBean record);

    int updateByPrimaryKey(ActivityBean record);
}