package com.shanshan.dao;

import com.shanshan.bean.EquipmentInfoBean;
import com.shanshan.bean.EquipmentInfoBeanExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface EquipmentInfoBeanMapper {
    long countByExample(EquipmentInfoBeanExample example);

    int deleteByExample(EquipmentInfoBeanExample example);

    int deleteByPrimaryKey(Integer equipmentId);

    int insert(EquipmentInfoBean record);

    int insertSelective(EquipmentInfoBean record);

    List<EquipmentInfoBean> selectByExample(EquipmentInfoBeanExample example);

    EquipmentInfoBean selectByPrimaryKey(Integer equipmentId);

    int updateByExampleSelective(@Param("record") EquipmentInfoBean record, @Param("example") EquipmentInfoBeanExample example);

    int updateByExample(@Param("record") EquipmentInfoBean record, @Param("example") EquipmentInfoBeanExample example);

    int updateByPrimaryKeySelective(EquipmentInfoBean record);

    int updateByPrimaryKey(EquipmentInfoBean record);
}