package com.shanshan.service;

import java.util.Date;
import java.util.List;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shanshan.bean.EnrollBean;
import com.shanshan.bean.EquipmentInfoBean;
import com.shanshan.bean.EquipmentInfoBeanExample;
import com.shanshan.bean.EquipmentInfoBeanExample.Criteria;
import com.shanshan.common.model.JsonResult;
import com.shanshan.dao.EquipmentInfoBeanMapper;
import com.shanshan.dao.EquipmentTypeBeanMapper;

@Service
public class EquipmentInfoService {


	@Autowired
	private EquipmentInfoBeanMapper equipmentInfoBeanMapper;
	

	public List<EquipmentInfoBean> equipmentInfoList(EquipmentInfoBean entity) {
		EquipmentInfoBeanExample example = new EquipmentInfoBeanExample();
		Criteria criteria = example.createCriteria();

		if (entity.getEquipmentCategory() != null && entity.getEquipmentCategory() > 0) {
			criteria.andEquipmentCategoryEqualTo(entity.getEquipmentCategory());
		}
		// 父id
		if (entity.getEquipmentParentId() != null && entity.getEquipmentParentId() > 0) {
			criteria.andEquipmentParentIdEqualTo(entity.getEquipmentParentId());
		}

		example.setOrderByClause("create_time");
		List<EquipmentInfoBean> list = equipmentInfoBeanMapper.selectByExample(example);
		return list;
	}


	public EquipmentInfoBean equipmentInfoDetail(EquipmentInfoBean entity) {
		return equipmentInfoBeanMapper.selectByPrimaryKey(entity.getEquipmentId());
	}


	public JsonResult saveOrUpdate(EquipmentInfoBean entity) {
		if (entity != null) {
			EquipmentInfoBean enrollBean = equipmentInfoBeanMapper.selectByPrimaryKey(entity.getEquipmentId());
			if (enrollBean != null) {
				// 更新
				BeanUtils.copyProperties(entity, enrollBean);
				entity.setUpdateTime(new Date(System.currentTimeMillis()));
				equipmentInfoBeanMapper.updateByPrimaryKeySelective(enrollBean);
			}else {
				// 保存
				entity.setCreateTime(new Date(System.currentTimeMillis()));
				entity.setUpdateTime(new Date(System.currentTimeMillis()));
				equipmentInfoBeanMapper.insertSelective(entity);
			}
		}

		JsonResult result = new JsonResult("200", "操作成功");
		return result;
	}
	
	
}
