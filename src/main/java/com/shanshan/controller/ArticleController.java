package com.shanshan.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestBody;
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

	@Autowired
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
		result.setRecordCount(datas.size());
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
			return new JsonResult(1, "ID_IS_NULL", "文章id不能为空!");
		}		
		ArticleBean data = articleService.articleDetail(entity);
		result.setDatas(data);
		result.setRecordCount(1);
		return result;
	}
	
	/**
	 * 保存文章
	 * @return
	 */
	@RequestMapping("/saveOpUpdate")
	@ResponseBody
	public JsonResult saveOpUpdate(@Valid @RequestBody ArticleBean entity, BindingResult errors) {
		// 参数验证
		if (errors.hasErrors()) {
			return new JsonDataResult<List<String>>(JsonResult.RESULT_F, "500", errors);
		}
		
		return articleService.saveOrUpdate(entity);
	}
	
}
