/*
 * Copyright (c) 2010-2012 300.cn All Rights Reserved
 *
 * File:DateUtility.java Project: Framework
 * 
 * Creator:<a href="mailto:jifangliang@163.com">Time</a> 
 * Date:Mar 13, 2012 10:27:38 AM
 * 
 */
package cn.ce.framework.utils;

import java.math.BigDecimal;
import java.math.RoundingMode;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;

import org.apache.commons.lang.time.DateFormatUtils;
import org.apache.commons.lang.time.DateUtils;

import cn.ce.framework.exception.api.SysException;

/**
 * 
 * @author <a href="mailto:jifangliang@163.com">Time</a>
 * @author $Author: liufeng.300.cn $
 * @version $Revision: 1.6 $ $Date: 2013/05/15 12:30:08 $
 * @since Mar 13, 2012
 * 
 */
public class DateUtility extends DateUtils {

    // 一天的毫秒数 60*60*1000*24
    public static final long       DAY_MILLIS                     = 86400000;
    public static final BigDecimal YEAR_DAYS                      = new BigDecimal(365);

    public static final String     ISO_DATETIME_FORMAT            = "yyyy-MM-dd HH:mm:ss";
    public static final String     ISO_DATETIME_TIME_ZONE_FORMAT  = "yyyy-MM-dd HH:mm:ssZZ";
    public static final String     ISO_DATE_FORMAT                = "yyyy-MM-dd";
    public static final String     ISO_DATE_TIME_ZONE_FORMAT      = "yyyy-MM-ddZZ";
    public static final String     ISO_TIME_FORMAT                = "HH:mm:ss";
    public static final String     ISO_TIME_TIME_ZONE_FORMAT      = "HH:mm:ssZZ";
    public static final String     ISO_TIME_NO_T_FORMAT           = "HH:mm:ss";
    public static final String     ISO_TIME_NO_T_TIME_ZONE_FORMAT = "HH:mm:ssZZ";
    public static final String     DEFAULT_DATE_PATTERN           = ISO_DATETIME_FORMAT;

    public static String format(Date date) {
        return format(date, DEFAULT_DATE_PATTERN);
    }

    public static String format(Date date, String pattern) {
        return DateFormatUtils.format(date, pattern);
    }

    public static String format(Calendar calendar) {
        return format(calendar, DEFAULT_DATE_PATTERN);
    }

    public static String format(Calendar calendar, String pattern) {
        return DateFormatUtils.format(calendar, pattern);
    }

    public static int compare(Date d1, Date d2, String pattern) {
        if (d1 == null && d2 == null)
            return 0;
        if (d1 == null)
            return -1;
        if (d2 == null)
            return 1;

        Calendar cal1 = Calendar.getInstance();
        Calendar cal2 = Calendar.getInstance();
        try {
            cal1.setTime(parseDate(format(d1, pattern), new String[] { pattern }));
            cal2.setTime(parseDate(format(d2, pattern), new String[] { pattern }));
            return cal1.compareTo(cal2);
        } catch (Exception e) {
            throw new SysException("日期比较异常", e);
        }
    }

    public static double diffBetweenYear(Date d1, Date d2) {
        BigDecimal dayDiff = new BigDecimal(Math.abs(d2.getTime() - d1.getTime()) / DAY_MILLIS);

        return dayDiff.divide(YEAR_DAYS, 1, RoundingMode.HALF_UP).doubleValue();
    }
    public static Long diffBetweenMonth(Date d1, Date d2) {
    	 Calendar cal1 = new GregorianCalendar();  
    	 cal1.setTime(d1);  
    	 Calendar cal2 = new GregorianCalendar();  
    	 cal2.setTime(d2);  
    	 long month = (cal2.get(Calendar.YEAR) - cal1.get(Calendar.YEAR)) * 12 + cal2.get(Calendar.MONTH) - cal1.get(Calendar.MONTH);  
    	 return month ;
    }
}