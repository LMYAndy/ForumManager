/*
 * Copyright (c) 2010-2012 300.cn All Rights Reserved
 *
 * File:BeanUtility.java Project: Framework
 * 
 * Creator:<a href="mailto:jifangliang@163.com">Time</a> 
 * Date:Jul 5, 2012 11:08:27 AM
 * 
 */
package cn.ce.framework.utils;

import org.apache.commons.beanutils.PropertyUtils;

/**
 * 
 * 
 * 
 * @author <a href="mailto:jifangliang@163.com">Time</a>
 * @author $Author: gaopeng.300.cn $
 * @version $Revision: 1.4 $ $Date: 2012/08/09 07:53:23 $
 * @since Jul 5, 2012
 * 
 */

public class BeanUtility {
    public static void copyProperties(Object dest, Object orig) {
        try {
            //BeanUtils.copyProperties(dest, orig);
            PropertyUtils.copyProperties(dest, orig);
        } catch (Exception e) {
        }
    }

    public static void setProperty(Object bean, String name, Object value) {
        try {
            PropertyUtils.setProperty(bean, name, value);
        } catch (Exception e) {
        }
    }

    public static Object getProperty(Object bean, String name) {
        try {
            return PropertyUtils.getProperty(bean, name);
        } catch (Exception e) {
        }
        return null;
    }

}
