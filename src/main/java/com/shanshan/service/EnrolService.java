package com.shanshan.service;

import java.util.Date;

import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.github.pagehelper.ISelect;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.shanshan.bean.EnrollBean;
import com.shanshan.bean.EnrollBeanExample;
import com.shanshan.bean.EnrollBeanExample.Criteria;
import com.shanshan.common.model.JsonResult;
import com.shanshan.common.model.PageRequest;
import com.shanshan.dao.EnrollBeanMapper;

@Service
public class EnrolService {

	@Autowired
	private EnrollBeanMapper enrollBeanMapper;

	public JsonResult save(EnrollBean entity) {

		entity.setCreateTime(new Date(System.currentTimeMillis()));
		enrollBeanMapper.insertSelective(entity);

		JsonResult result = new JsonResult("200", "操作成功");
		return result;
	}

	public Page<EnrollBean> enrollList(EnrollBean entity, PageRequest page) {
		Page<EnrollBean> result = PageHelper.offsetPage(page.getStart(), page.getLimit()).doSelectPage(new ISelect() {
			@Override
			public void doSelect() {
				EnrollBeanExample example = new EnrollBeanExample();
				Criteria criteria = example.createCriteria();

				if (StringUtils.isNotBlank(entity.getPhone())) {

				}

				if (StringUtils.isNotBlank(entity.getUserName())) {
					criteria.andUserNameEqualTo(entity.getUserName());
				}

				example.setOrderByClause("create_time");
				enrollBeanMapper.selectByExample(example);
			}
		});
		return result;
	}

}
