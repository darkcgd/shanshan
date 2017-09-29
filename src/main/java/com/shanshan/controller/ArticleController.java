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
	public JsonResult articleList(PageRequest page) {
		JsonDataResult<List<ArticleBean>> result = new JsonDataResult<>();
		Page<ArticleBean> datas = articleService.articleList(page);
		result.setDatas(datas);
		return result;
	}
	
}
