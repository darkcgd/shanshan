package com.shanshan.util;

/**
 * Created by szmg on 17/9/29.
 */

import com.shanshan.bean.SNSUserInfo;
import com.shanshan.bean.WeixinOauth2Token;
import com.shanshan.bean.WeixinUserInfo;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
import org.apache.log4j.Logger;

import java.util.List;


/**
 * 高级接口工具类
 *
 * @author liufeng
 * @date 2013-11-9
 */
public class AdvancedUtil {
    private static final Logger LOG = Logger.getLogger(BaseUtil.class);


    /**
     * 获取网页授权凭证
     *
     * @param appId 公众账号的唯一标识
     * @param appSecret 公众账号的密钥
     * @param code  081FvGcJ0KFm7j2x9yfJ0iPIcJ0FvGck
     * @return WeixinAouth2Token
     */
    public static WeixinOauth2Token getOauth2AccessToken(String appId, String appSecret, String code) {
        WeixinOauth2Token wat = null;
        // 拼接请求地址
        String requestUrl = "https://api.weixin.qq.com/sns/oauth2/access_token?appid=APPID&secret=SECRET&code=CODE&grant_type=authorization_code";
        requestUrl = requestUrl.replace("APPID", 	appId);
        requestUrl = requestUrl.replace("SECRET", 	appSecret);
        requestUrl = requestUrl.replace("CODE", 	code);
        // 获取网页授权凭证
        JSONObject jsonObject = BaseUtil.httpsRequest(requestUrl, "GET", null);
        if (null != jsonObject) {
            try {
                wat = new WeixinOauth2Token();
                wat.setAccessToken	(jsonObject.getString("access_token"));
                wat.setExpiresIn	(jsonObject.getInt("expires_in"));
                wat.setRefreshToken	(jsonObject.getString("refresh_token"));
                wat.setOpenId		(jsonObject.getString("openid"));
                wat.setScope		(jsonObject.getString("scope"));
            } catch (Exception e) {
                wat = null;
                int errorCode 	= jsonObject.getInt("errcode");
                String errorMsg = jsonObject.getString("errmsg");
                LOG.error("获取网页授权凭证失败 errcode:{} errmsg:{}"+errorCode+errorMsg);
            }
        }
        return wat;
    }

    /**
     * 刷新网页授权凭证
     *
     * @param appId 公众账号的唯一标识
     * @param refreshToken
     * @return WeixinAouth2Token
     */
    public static WeixinOauth2Token refreshOauth2AccessToken(String appId, String refreshToken) {
        WeixinOauth2Token wat = null;
        // 拼接请求地址
        String requestUrl 	= "https://api.weixin.qq.com/sns/oauth2/refresh_token?appid=APPID&grant_type=refresh_token&refresh_token=REFRESH_TOKEN";
        requestUrl 			= requestUrl.replace("APPID", appId);
        requestUrl 			= requestUrl.replace("REFRESH_TOKEN", refreshToken);
        // 刷新网页授权凭证
        JSONObject jsonObject = BaseUtil.httpsRequest(requestUrl, "GET", null);
        if (null != jsonObject) {
            try {
                wat = new WeixinOauth2Token();
                wat.setAccessToken	(jsonObject.getString("access_token"));
                wat.setExpiresIn	(jsonObject.getInt("expires_in"));
                wat.setRefreshToken	(jsonObject.getString("refresh_token"));
                wat.setOpenId		(jsonObject.getString("openid"));
                wat.setScope		(jsonObject.getString("scope"));
            } catch (Exception e) {
                wat = null;
                int errorCode = jsonObject.getInt("errcode");
                String errorMsg = jsonObject.getString("errmsg");
                LOG.error("刷新网页授权凭证失败 errcode:{} errmsg:{}"+errorCode+errorMsg);
            }
        }
        return wat;
    }

    /**
     * 通过网页授权获取用户信息
     * @param accessToken 网页授权接口调用凭证
     * @param openId 用户标识
     * @return SNSUserInfo
     */
    @SuppressWarnings( { "deprecation", "unchecked" })
    public static SNSUserInfo getSNSUserInfo(String accessToken, String openId) {
        SNSUserInfo snsUserInfo = null;
        // 拼接请求地址
        String requestUrl 		= "https://api.weixin.qq.com/sns/userinfo?access_token=ACCESS_TOKEN&openid=OPENID";
        requestUrl 		  		= requestUrl.replace("ACCESS_TOKEN", accessToken).replace("OPENID", openId);
        // 通过网页授权获取用户信息
        JSONObject jsonObject 	= BaseUtil.httpsRequest(requestUrl, "GET", null);

        if (null != jsonObject) {
            try {
                snsUserInfo = new SNSUserInfo();
                // 用户的标识
                snsUserInfo.setOpenId(jsonObject.getString("openid"));
                // 昵称
                snsUserInfo.setNickname(jsonObject.getString("nickname"));
                // 性别（1是男性，2是女性，0是未知）
                snsUserInfo.setSex(jsonObject.getInt("sex"));
                // 用户所在国家
                snsUserInfo.setCountry(jsonObject.getString("country"));
                // 用户所在省份
                snsUserInfo.setProvince(jsonObject.getString("province"));
                // 用户所在城市
                snsUserInfo.setCity(jsonObject.getString("city"));
                // 用户头像
                snsUserInfo.setHeadImgUrl(jsonObject.getString("headimgurl"));
                // 用户特权信息
                snsUserInfo.setPrivilegeList(JSONArray.toList(jsonObject.getJSONArray("privilege"), List.class));
            } catch (Exception e) {
                snsUserInfo = null;
                int errorCode = jsonObject.getInt("errcode");
                String errorMsg = jsonObject.getString("errmsg");
                LOG.error("获取用户信息失败 errcode:{} errmsg:{}"+errorCode+errorMsg);
            }
        }
        return snsUserInfo;
    }



    /**
     * 获取用户信息
     *
     * @param accessToken 接口访问凭证
     * @param openId 用户标识
     * @return WeixinUserInfo
     */
    public static WeixinUserInfo getUserInfo(String accessToken, String openId) {
        WeixinUserInfo weixinUserInfo = null;
        // 拼接请求地址
        String requestUrl = "https://api.weixin.qq.com/cgi-bin/user/info?access_token=ACCESS_TOKEN&openid=OPENID";
        requestUrl = requestUrl.replace("ACCESS_TOKEN", accessToken).replace("OPENID", openId);
        // 获取用户信息
        JSONObject jsonObject = BaseUtil.httpsRequest(requestUrl, "GET", null);

        if (null != jsonObject) {
            try {
                weixinUserInfo = new WeixinUserInfo();
                // 用户的标识
                weixinUserInfo.setOpenId(jsonObject.getString("openid"));
                // 关注状态（1是关注，0是未关注），未关注时获取不到其余信息
                weixinUserInfo.setSubscribe(jsonObject.getInt("subscribe"));
                // 用户关注时间
                weixinUserInfo.setSubscribeTime(jsonObject.getString("subscribe_time"));
                // 昵称
                weixinUserInfo.setNickname(jsonObject.getString("nickname"));
                // 用户的性别（1是男性，2是女性，0是未知）
                weixinUserInfo.setSex(jsonObject.getInt("sex"));
                // 用户所在国家
                weixinUserInfo.setCountry(jsonObject.getString("country"));
                // 用户所在省份
                weixinUserInfo.setProvince(jsonObject.getString("province"));
                // 用户所在城市
                weixinUserInfo.setCity(jsonObject.getString("city"));
                // 用户的语言，简体中文为zh_CN
                weixinUserInfo.setLanguage(jsonObject.getString("language"));
                // 用户头像
                weixinUserInfo.setHeadImgUrl(jsonObject.getString("headimgurl"));
            } catch (Exception e) {
                if (0 == weixinUserInfo.getSubscribe()) {
                    LOG.error("用户{}已取消关注"+weixinUserInfo.getOpenId());
                } else {
                    int errorCode = jsonObject.getInt("errcode");
                    String errorMsg = jsonObject.getString("errmsg");
                    LOG.error("获取用户信息失败 errcode:{} errmsg:{}"+errorCode+errorMsg);
                }
            }
        }
        return weixinUserInfo;
    }



    public static void main(String args[]) {
        // 获取接口访问凭证
        String accessToken = BaseUtil.getToken("APPID", "APPSECRET").getAccessToken();
        /**
         * 获取用户信息
         */
        WeixinUserInfo user = getUserInfo(accessToken, "oEdzejiHCDqafJbz4WNJtWTMbDcE");
        System.out.println("OpenID：" + user.getOpenId());
        System.out.println("关注状态：" + user.getSubscribe());
        System.out.println("关注时间：" + user.getSubscribeTime());
        System.out.println("昵称：" + user.getNickname());
        System.out.println("性别：" + user.getSex());
        System.out.println("国家：" + user.getCountry());
        System.out.println("省份：" + user.getProvince());
        System.out.println("城市：" + user.getCity());
        System.out.println("语言：" + user.getLanguage());
        System.out.println("头像：" + user.getHeadImgUrl());


    }
}