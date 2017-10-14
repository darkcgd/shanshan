package com.shanshan.service;

import java.util.Date;
import java.util.List;

import org.apache.commons.lang.StringUtils;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shanshan.bean.EnrollBean;
import com.shanshan.bean.EnrollBeanExample;
import com.shanshan.bean.EnrollBeanExample.Criteria;
import com.shanshan.common.model.JsonResult;
import com.shanshan.dao.EnrollBeanMapper;

@Service
public class EnrolService {

	@Autowired
	private EnrollBeanMapper enrollBeanMapper;

	public JsonResult save(EnrollBean entity, String userId) {
		if (entity != null) {
			EnrollBean enrollBean = enrollBeanMapper.selectByPrimaryKey(entity.getEnrollId());
			if (enrollBean != null) {
				// 更新
				BeanUtils.copyProperties(entity, enrollBean);
				entity.setUpdateTime(new Date(System.currentTimeMillis()));
				enrollBeanMapper.updateByPrimaryKeySelective(enrollBean);
			}else {
				// 保存
				entity.setCreateTime(new Date(System.currentTimeMillis()));
				entity.setUpdateTime(new Date(System.currentTimeMillis()));
				entity.setUserId(Integer.parseInt(userId));
				enrollBeanMapper.insertSelective(entity);
			}
		}

		JsonResult result = new JsonResult("200", "操作成功");
		return result;
	}

	public List<EnrollBean> enrollList(EnrollBean entity, String userId) {
		EnrollBeanExample example = new EnrollBeanExample();
		Criteria criteria = example.createCriteria();

		if (StringUtils.isNotBlank(entity.getPhone())) {

		}

		if (StringUtils.isNotBlank(entity.getUserName())) {
			criteria.andUserNameEqualTo(entity.getUserName());
		}
		
		if (StringUtils.isNotBlank(userId)) {
			criteria.andUserIdEqualTo(Integer.parseInt(userId));
		}

		example.setOrderByClause("create_time");
		return	enrollBeanMapper.selectByExample(example);
	}

}
