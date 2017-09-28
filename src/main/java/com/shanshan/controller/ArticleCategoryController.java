package com.shanshan.controller;

import com.shanshan.bean.ArticleCategoryBean;
import com.shanshan.bean.MsgBean;
import com.shanshan.service.ArticleCategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;
import java.util.Map;

/**
 * Created by szmg on 17/9/28.
 */
@Controller
public class ArticleCategoryController {
    @Autowired
    ArticleCategoryService articleCategoryService;
    /**
     * 发送短信验证码
     * @return
     */
    @RequestMapping(value = "/getAllArticleCategoryList", method = { RequestMethod.GET, RequestMethod.POST })
    @ResponseBody
    public MsgBean getAllArticleCategoryList(){
        List<ArticleCategoryBean> allArticleCategoryList = articleCategoryService.getAllArticleCategoryList();
        MsgBean msg = MsgBean.success("获取成功");
        Map<String, Object> data = msg.getData();
        data.put("list", allArticleCategoryList);
        return msg;
    }
}

