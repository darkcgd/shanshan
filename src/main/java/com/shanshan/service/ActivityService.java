package com.shanshan.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.github.pagehelper.ISelect;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.shanshan.bean.ActivityBean;
import com.shanshan.bean.ActivityBeanExample;
import com.shanshan.bean.ActivityBeanExample.Criteria;
import com.shanshan.common.model.PageRequest;
import com.shanshan.dao.ActivityBeanMapper;

@Service
public class ActivityService {

	@Autowired
	private ActivityBeanMapper activityBeanMapper;
	
	public List<ActivityBean> activityList(ActivityBean entity) {
		ActivityBeanExample example = new ActivityBeanExample();
		Criteria criteria = example.createCriteria();

		
		example.setOrderByClause("create_time desc");
		return activityBeanMapper.selectByExample(example);
	}

	public ActivityBean activityDetail(ActivityBean entity) {
		ActivityBean activity = activityBeanMapper.selectByPrimaryKey(entity.getActivityId());
		return activity;
	}
	
}
