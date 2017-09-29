package com.shanshan.service;

import org.springframework.stereotype.Service;

import com.github.pagehelper.ISelect;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.shanshan.bean.ArticleBean;
import com.shanshan.common.model.JsonResult;
import com.shanshan.common.model.PageRequest;
import com.shanshan.dao.ArticleBeanMapper;

import tk.mybatis.mapper.entity.Example;
import tk.mybatis.mapper.entity.Example.Criteria;

@Service
public class ArticleService {

	private ArticleBeanMapper articleBeanMapper;
	
	public Page<ArticleBean> articleList(PageRequest page) {
		Page<ArticleBean> result = PageHelper.offsetPage(page.getStart(), page.getLimit())
				.doSelectPage(new ISelect() {
					@Override
					public void doSelect() {
						Example example = new Example(ArticleBean.class);
						Criteria criteria = example.createCriteria();
						articleBeanMapper.selectByExample(example);
					}
				});
		return result;
	}
	
}
