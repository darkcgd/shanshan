package com.shanshan.util;

import org.springframework.core.convert.converter.Converter;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * 全局日期处理类
 * Convert<T,S>
 *         泛型T:代表客户端提交的参数 String
 *         泛型S:通过convert转换的类型

 */
public class DateConvert implements Converter<String, Date> {

    //可以转换的格式,用数组的形式进行存储
    private static final SimpleDateFormat[] ACCEPT_DATE_FORMATS = {
            //这个必须放到前面
            //否则按照年月日时分进行匹配,匹配成功直接转换为0时0分
            new SimpleDateFormat("yyyy-MM-dd HH:mm:ss"),
            new SimpleDateFormat("yyyy-MM-dd HH:mm"),
            new SimpleDateFormat("yyyy-MM-dd")
    };

    @Override
    public Date convert(String dateStr) {
        //空串不进行处理返回null
        if(dateStr == "")
            return null;

        //看是否满足某种格式
        /*for(SimpleDateFormat format : ACCEPT_DATE_FORMATS){
            try{
                Date tmp = format.parse(dateStr);
                return tmp;
            }catch (Exception e) {
                e.printStackTrace();
                continue;
            }
        }*/
        String formatPattern=null;
        int countYMD = appearNumber(dateStr, "-");
        int countHMS = appearNumber(dateStr, ":");
        try{
            if (countYMD==2){//说明是yyyy-MM-dd
                if(countHMS==2){//说明是yyyy-MM-dd HH:mm:ss
                    formatPattern="yyyy-MM-dd HH:mm:ss";
                }else if(countHMS==1){//说明是yyyy-MM-dd HH:mm
                    formatPattern="yyyy-MM-dd HH:mm";
                }else if(countHMS==0){//说明是yyyy-MM-dd
                    formatPattern="yyyy-MM-dd";
                }
            }else if(countYMD==1){//说明是yyyy-MM
                formatPattern="yyyy-MM";
            }else if(countYMD==0){//说明是yyyy
                formatPattern="yyyy";
            }
            if(formatPattern==null){//所有格式都不满足返回null,说明传入的日期参数格式错误
                return null;
            }
            Date tmp = new SimpleDateFormat(formatPattern).parse(dateStr);
            return tmp;
        }catch (Exception e) {
            e.printStackTrace();
        }
        //所有格式都不满足返回null
        return null;
    }


    /**
     * 获取指定字符串出现的次数
     *
     * @param srcText 源字符串
     * @param findText 要查找的字符串
     * @return
     */
    public static int appearNumber(String srcText, String findText) {
        int count = 0;
        Pattern p = Pattern.compile(findText);
        Matcher m = p.matcher(srcText);
        while (m.find()) {
            count++;
        }
        return count;
    }


}

