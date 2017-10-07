package com.shanshan.service;

import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.github.pagehelper.ISelect;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.shanshan.bean.ActivityBean;
import com.shanshan.bean.ActivityBeanExample;
import com.shanshan.bean.ActivityBeanExample.Criteria;
import com.shanshan.bean.ArticleBean;
import com.shanshan.common.model.PageRequest;
import com.shanshan.dao.ActivityBeanMapper;

@Service
public class ActivityService {

	@Autowired
	private ActivityBeanMapper activityBeanMapper;
	
	public Page<ActivityBean> activityList(ActivityBean entity, PageRequest page) {
		Page<ActivityBean> result = PageHelper.offsetPage(page.getStart(), page.getLimit())
				.doSelectPage(new ISelect() {
					@Override
					public void doSelect() {
						ActivityBeanExample example = new ActivityBeanExample();
						Criteria criteria = example.createCriteria();
						
						
						example.setOrderByClause("create_time");
						activityBeanMapper.selectByExample(example);
					}
				});
		return result;
	}

	public ActivityBean activityDetail(ActivityBean entity) {
		ActivityBean activity = activityBeanMapper.selectByPrimaryKey(entity.getActivityId());
		return activity;
	}
	
}
