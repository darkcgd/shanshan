package com.shanshan.dao;

import com.shanshan.bean.TechnologyUserBean;
import com.shanshan.bean.TechnologyUserBeanExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface TechnologyUserBeanMapper {
    long countByExample(TechnologyUserBeanExample example);

    int deleteByExample(TechnologyUserBeanExample example);

    int deleteByPrimaryKey(Integer technologyId);

    int insert(TechnologyUserBean record);

    int insertSelective(TechnologyUserBean record);

    List<TechnologyUserBean> selectByExample(TechnologyUserBeanExample example);

    TechnologyUserBean selectByPrimaryKey(Integer technologyId);

    int updateByExampleSelective(@Param("record") TechnologyUserBean record, @Param("example") TechnologyUserBeanExample example);

    int updateByExample(@Param("record") TechnologyUserBean record, @Param("example") TechnologyUserBeanExample example);

    int updateByPrimaryKeySelective(TechnologyUserBean record);

    int updateByPrimaryKey(TechnologyUserBean record);
}