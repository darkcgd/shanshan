package com.shanshan.controller;

import com.shanshan.service.WxService;
import com.shanshan.util.AbSHA1;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

/**
 * Created by szmg on 17/9/27.
 */
@Controller
@RequestMapping( "/wx" )
public class WxController {
    private String Token = "shanshanToken";

    @Resource
    WxService wxService;

    /**
     * 微信接入
     * @return
     * @throws IOException
     */
    @RequestMapping(value = "", method = { RequestMethod.GET, RequestMethod.POST })
    @ResponseBody
    public void connectWeixin(HttpServletRequest request, HttpServletResponse response) throws IOException{
        // 将请求、响应的编码均设置为UTF-8（防止中文乱码）
        request.setCharacterEncoding("UTF-8");  //微信服务器POST消息时用的是UTF-8编码，在接收时也要用同样的编码，否则中文会乱码；
        response.setCharacterEncoding("UTF-8"); //在响应消息（回复消息给用户）时，也将编码方式设置为UTF-8，原理同上；boolean isGet = request.getMethod().toLowerCase().equals("get");

        PrintWriter out = response.getWriter();

        try {

            //判断访问方式
            boolean isGet = request.getMethod().toLowerCase().equals("get");
            if (isGet) {
                //进行认证
                doGet(request, response);
            } else {
                //处理微信post请求
                doPost(request,out);
            }
        } catch (Exception e) {
        }finally{
            out.close();
        }
    }

    private void doPost(HttpServletRequest request, PrintWriter out) {
        String respMessage = "异常消息！";
        try {
            respMessage = wxService.weixinPost(request);
            out.write(respMessage);
        } catch (Exception e) {
        }
    }

    /**
     * 验证URL真实性
     *
     * @param request
     * @param response
     * @return String
     */
    private String doGet(HttpServletRequest request, HttpServletResponse response) {
        // 验证URL真实性
        String signature = request.getParameter("signature");// 微信加密签名
        String timestamp = request.getParameter("timestamp");// 时间戳
        String nonce = request.getParameter("nonce");// 随机数
        String echostr = request.getParameter("echostr");// 随机字符串
        List<String> params = new ArrayList<String>();
        params.add(Token);
        params.add(timestamp);
        params.add(nonce);
        // 1. 将token、timestamp、nonce三个参数进行字典序排序
        Collections.sort(params, new Comparator<String>() {
            @Override
            public int compare(String o1, String o2) {
                return o1.compareTo(o2);
            }
        });
        // 2. 将三个参数字符串拼接成一个字符串进行sha1加密
        String temp = AbSHA1.encode(params.get(0) + params.get(1) + params.get(2));
        if (temp.equals(signature)) {
            try {
                response.getWriter().write(echostr);
                return echostr;
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        return null;
    }

}
