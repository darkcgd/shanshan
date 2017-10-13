package com.shanshan.service;

import java.util.Date;

import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.github.pagehelper.ISelect;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.shanshan.bean.FaultRepairBean;
import com.shanshan.bean.FaultRepairBeanExample;
import com.shanshan.bean.FaultRepairBeanExample.Criteria;
import com.shanshan.common.model.JsonResult;
import com.shanshan.common.model.PageRequest;
import com.shanshan.dao.FaultRepairBeanMapper;

@Service
public class FaultRepairService {

	@Autowired
	private FaultRepairBeanMapper faultRepairBeanMapper;

	public JsonResult save(FaultRepairBean entity) {
		Date date = new Date(System.currentTimeMillis());
		entity.setCreateTime(date);
		entity.setUpdateTime(date);
		faultRepairBeanMapper.insertSelective(entity);

		JsonResult result = new JsonResult("200", "操作成功");
		return result;
	}

	public Page<FaultRepairBean> faultRepairList(FaultRepairBean entity, PageRequest page) {
		Page<FaultRepairBean> result = PageHelper.offsetPage(page.getStart(), page.getLimit()).doSelectPage(new ISelect() {
			@Override
			public void doSelect() {
				FaultRepairBeanExample example = new FaultRepairBeanExample();
				Criteria criteria = example.createCriteria();


				example.setOrderByClause("create_time");
				faultRepairBeanMapper.selectByExample(example);
			}
		});
		return result;
	}

}
