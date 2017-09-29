package com.shanshan.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.github.pagehelper.ISelect;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.shanshan.bean.ArticleBean;
import com.shanshan.bean.ArticleBeanExample;
import com.shanshan.common.model.PageRequest;
import com.shanshan.dao.ArticleBeanMapper;

@Service
public class ArticleService {

	@Autowired
	private ArticleBeanMapper articleBeanMapper;
	
	public Page<ArticleBean> articleList(PageRequest page) {
		Page<ArticleBean> result = PageHelper.offsetPage(page.getStart(), page.getLimit())
				.doSelectPage(new ISelect() {
					@Override
					public void doSelect() {
						ArticleBeanExample example = new ArticleBeanExample();
						articleBeanMapper.selectByExample(example);
					}
				});
		return result;
	}
	
}
