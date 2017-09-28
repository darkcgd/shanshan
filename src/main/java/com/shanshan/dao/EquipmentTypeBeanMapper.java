package com.shanshan.dao;

import com.shanshan.bean.EquipmentTypeBean;
import com.shanshan.bean.EquipmentTypeBeanExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface EquipmentTypeBeanMapper {
    long countByExample(EquipmentTypeBeanExample example);

    int deleteByExample(EquipmentTypeBeanExample example);

    int deleteByPrimaryKey(Integer equipmentTypeId);

    int insert(EquipmentTypeBean record);

    int insertSelective(EquipmentTypeBean record);

    List<EquipmentTypeBean> selectByExample(EquipmentTypeBeanExample example);

    EquipmentTypeBean selectByPrimaryKey(Integer equipmentTypeId);

    int updateByExampleSelective(@Param("record") EquipmentTypeBean record, @Param("example") EquipmentTypeBeanExample example);

    int updateByExample(@Param("record") EquipmentTypeBean record, @Param("example") EquipmentTypeBeanExample example);

    int updateByPrimaryKeySelective(EquipmentTypeBean record);

    int updateByPrimaryKey(EquipmentTypeBean record);
}