package com.shanshan.service;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shanshan.bean.ActivityBean;
import com.shanshan.bean.ActivityBeanExample;
import com.shanshan.bean.ActivityBeanExample.Criteria;
import com.shanshan.common.model.JsonResult;
import com.shanshan.dao.ActivityBeanMapper;

@Service
public class ActivityService {

	@Autowired
	private ActivityBeanMapper activityBeanMapper;
	
	public List<ActivityBean> activityList(ActivityBean entity) {
		ActivityBeanExample example = new ActivityBeanExample();
		Criteria criteria = example.createCriteria();

		List<Integer> status = new ArrayList<>();
		status.add(10);
		status.add(11);
		criteria.andStatusIn(status);
		example.setOrderByClause("create_time desc");
		return activityBeanMapper.selectByExample(example);
	}

	public ActivityBean activityDetail(ActivityBean entity) {
		ActivityBean activity = activityBeanMapper.selectByPrimaryKey(entity.getActivityId());
		return activity;
	}

	public JsonResult saveOrUpdate(ActivityBean entity) {
		Date date = new Date(System.currentTimeMillis());
		if (entity != null && entity.getActivityId() != null) {
			ActivityBean activity = activityBeanMapper.selectByPrimaryKey(entity.getActivityId());
			// 更新
			if (activity != null) {
				BeanUtils.copyProperties(entity, activity);
				activity.setUpdateTime(date);
				activityBeanMapper.updateByPrimaryKeySelective(activity);
			} 
		}else {
			// 保存
			entity.setCreateTime(date);
			entity.setUpdateTime(date);
			entity.setStatus(10);
			activityBeanMapper.insertSelective(entity);
			
		}

		JsonResult result = new JsonResult("200", "操作成功");
		return result;
	}
	
}
