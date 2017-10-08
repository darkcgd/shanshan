package com.shanshan.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.github.pagehelper.ISelect;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.shanshan.bean.TrainingCourseBean;
import com.shanshan.bean.TrainingCourseBeanExample;
import com.shanshan.bean.TrainingCourseBeanExample.Criteria;
import com.shanshan.common.model.PageRequest;
import com.shanshan.dao.TrainingCourseBeanMapper;

@Service
public class TrainingCourseService {

	@Autowired
	private TrainingCourseBeanMapper trainingCourseBeanMapper;

	public Page<TrainingCourseBean> trainingCourseList(TrainingCourseBean entity, PageRequest page) {
		Page<TrainingCourseBean> result = PageHelper.offsetPage(page.getStart(), page.getLimit())
				.doSelectPage(new ISelect() {
					@Override
					public void doSelect() {
						TrainingCourseBeanExample example = new TrainingCourseBeanExample();
						Criteria criteria = example.createCriteria();
						
						
						example.setOrderByClause("create_time desc");
						trainingCourseBeanMapper.selectByExample(example);
					}
				});
		return result;
	}

	public TrainingCourseBean trainingCourseDetail(TrainingCourseBean entity) {
		TrainingCourseBean trainingCourse = trainingCourseBeanMapper.selectByPrimaryKey(entity.getTrainingCourseId());
		return trainingCourse;
	}
	
}
