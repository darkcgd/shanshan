package com.shanshan.service;

import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.github.pagehelper.ISelect;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.shanshan.bean.ArticleBean;
import com.shanshan.bean.ArticleBeanExample;
import com.shanshan.bean.ArticleBeanExample.Criteria;
import com.shanshan.common.model.PageRequest;
import com.shanshan.dao.ArticleBeanMapper;

@Service
public class ArticleService {

	@Autowired
	private ArticleBeanMapper articleBeanMapper;
	
	public Page<ArticleBean> articleList(ArticleBean entity, PageRequest page) {
		Page<ArticleBean> result = PageHelper.offsetPage(page.getStart(), page.getLimit())
				.doSelectPage(new ISelect() {
					@Override
					public void doSelect() {
						ArticleBeanExample example = new ArticleBeanExample();
						Criteria criteria = example.createCriteria();
						if (StringUtils.isNotBlank(entity.getCategoryName())) {
							criteria.andCategoryNameEqualTo(entity.getCategoryName());
						}
						// 通过标题搜索文章
						if (StringUtils.isNotBlank(entity.getTitle())) {
							criteria.andTitleLike("%" + entity.getTitle() + "%");
						}
						example.setOrderByClause("create_time");
						articleBeanMapper.selectByExample(example);
					}
				});
		return result;
	}

	public ArticleBean articleDetail(ArticleBean entity) {
		ArticleBean article = articleBeanMapper.selectByPrimaryKey(entity.getArticleId());
		Integer readCount = article.getReadCount();
		article.setReadCount(readCount + 1); 
		articleBeanMapper.updateByPrimaryKeySelective(article);
		return article;
	}
	
}
