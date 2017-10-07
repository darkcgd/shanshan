package com.shanshan.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.github.pagehelper.Page;
import com.shanshan.bean.ArticleBean;
import com.shanshan.common.model.JsonDataResult;
import com.shanshan.common.model.JsonResult;
import com.shanshan.common.model.PageRequest;
import com.shanshan.service.ArticleService;

@Controller
@RequestMapping( "/article" )
public class ArticleController {

	private ArticleService articleService;
	
	/**
	 * 文章列表
	 * @return
	 */
	@RequestMapping("/articleList")
	@ResponseBody
	public JsonResult articleList(ArticleBean entity, PageRequest page) {
		JsonDataResult<List<ArticleBean>> result = new JsonDataResult<>();
		Page<ArticleBean> datas = articleService.articleList(entity, page);
		result.setDatas(datas);
		return result;
	}
	
	/**
	 * 文章详情
	 * @return
	 */
	@RequestMapping("/articleDetail")
	@ResponseBody
	public JsonResult articleDetail(ArticleBean entity) {
		JsonDataResult<ArticleBean> result = new JsonDataResult<>();
		if (null == entity.getArticleId() || 0 == entity.getArticleId()) {
			result.setErrorCode("文章id不能为空!");
			return result;
		}
		ArticleBean data = articleService.articleDetail(entity);
		result.setDatas(data);
		return result;
	}
	
}
