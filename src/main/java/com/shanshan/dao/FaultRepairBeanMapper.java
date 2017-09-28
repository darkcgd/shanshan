package com.shanshan.dao;

import com.shanshan.bean.FaultRepairBean;
import com.shanshan.bean.FaultRepairBeanExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface FaultRepairBeanMapper {
    long countByExample(FaultRepairBeanExample example);

    int deleteByExample(FaultRepairBeanExample example);

    int deleteByPrimaryKey(Integer repairId);

    int insert(FaultRepairBean record);

    int insertSelective(FaultRepairBean record);

    List<FaultRepairBean> selectByExample(FaultRepairBeanExample example);

    FaultRepairBean selectByPrimaryKey(Integer repairId);

    int updateByExampleSelective(@Param("record") FaultRepairBean record, @Param("example") FaultRepairBeanExample example);

    int updateByExample(@Param("record") FaultRepairBean record, @Param("example") FaultRepairBeanExample example);

    int updateByPrimaryKeySelective(FaultRepairBean record);

    int updateByPrimaryKey(FaultRepairBean record);
}