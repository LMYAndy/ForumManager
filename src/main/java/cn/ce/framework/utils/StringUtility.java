/*
 * Copyright (c) 2010-2012 300.cn All Rights Reserved
 *
 * File:StringUtility.java Project: Framework
 * 
 * Creator:<a href="mailto:jifangliang@163.com">Time</a> 
 * Date:Mar 13, 2012 10:27:38 AM
 * 
 */
package cn.ce.framework.utils;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.apache.commons.lang.StringUtils;

/**
 * 
 * 
 * @author <a href="mailto:jifangliang@163.com">Time</a>
 * @author $Author: yangjunshuai.300.cn $
 * @version $Revision: 1.6 $ $Date: 2012/12/25 09:15:46 $
 * @since Mar 13, 2012
 * 
 */
public class StringUtility extends StringUtils {

    public static String toString(Object obj) {
        return obj == null ? null : obj.toString();
    }

    public static boolean isBoolean(String str) {
        if ("true".equalsIgnoreCase(str) || "false".equalsIgnoreCase(str)) {
            return true;
        }
        return false;
    }

    public static int indexOfByRegx(String src, Pattern pattern) {
        Matcher matcher = pattern.matcher(src);
        if (matcher.find()) {
            return src.indexOf(matcher.group());
        }
        return -1;
    }

}
