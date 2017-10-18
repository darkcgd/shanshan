package com.shanshan.service;

import java.util.Date;
import java.util.List;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shanshan.bean.EquipmentTypeBean;
import com.shanshan.bean.EquipmentTypeBeanExample;
import com.shanshan.bean.EquipmentTypeBeanExample.Criteria;
import com.shanshan.common.model.JsonResult;
import com.shanshan.dao.EquipmentTypeBeanMapper;

@Service
public class EquipmentTypeService {
	
	@Autowired
	private EquipmentTypeBeanMapper equipmentTypeMapper;

	public List<EquipmentTypeBean> equipmentTypeList(EquipmentTypeBean entity) {
		EquipmentTypeBeanExample example = new EquipmentTypeBeanExample();
		Criteria criteria = example.createCriteria();

		if (entity.getEquipmentParentTypeId() != null && entity.getEquipmentParentTypeId() != 0) {
			criteria.andEquipmentParentTypeIdEqualTo(entity.getEquipmentParentTypeId());
		}

		example.setOrderByClause("create_time");
		return	equipmentTypeMapper.selectByExample(example);
	}

	public EquipmentTypeBean equipmentTypeDetail(EquipmentTypeBean entity) {
		return equipmentTypeMapper.selectByPrimaryKey(entity.getEquipmentTypeId());
	}

	public JsonResult saveOrUpdate(EquipmentTypeBean entity) {
		if (entity != null) {
			EquipmentTypeBean enrollBean = equipmentTypeMapper.selectByPrimaryKey(entity.getEquipmentTypeId());
			if (enrollBean != null) {
				// 更新
				BeanUtils.copyProperties(entity, enrollBean);
				entity.setUpdateTime(new Date(System.currentTimeMillis()));
				equipmentTypeMapper.updateByPrimaryKeySelective(enrollBean);
			}else {
				// 保存
				entity.setCreateTime(new Date(System.currentTimeMillis()));
				entity.setUpdateTime(new Date(System.currentTimeMillis()));
				equipmentTypeMapper.insertSelective(entity);
			}
		}

		JsonResult result = new JsonResult("200", "操作成功");
		return result;
	}

}
