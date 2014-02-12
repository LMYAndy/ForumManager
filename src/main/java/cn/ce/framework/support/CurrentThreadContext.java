/*
 * Copyright (c) 2010-2012 300.cn All Rights Reserved
 *
 * File:CurrentThreadContext.java Project: Framework
 * 
 * Creator:<a href=mailto:liangqingming@300.cn>Liangqingming</a> 
 * Date:Dec 27, 2012 7:12:40 PM
 * 
 */
package cn.ce.framework.support;

import java.util.HashMap;
import java.util.Map;

/**
 * 当前线程上下文容器,用于存放跨层传递的数据.
 * 
 * @author <a href=mailto:liangqingming@300.cn>Liangqingming</a>
 * @author $Author: liangqingming.300.cn $
 * @version $Revision: 1.1 $ $Date: 2013/01/04 10:46:04 $
 * @since Jan 4, 2013
 */
public final class CurrentThreadContext {

    private static final ThreadLocal<Map<String, Object>> threadContext = new ThreadLocal<Map<String, Object>>(); // 线程上下文容器

    private CurrentThreadContext() {

    }

    /**
     * 取得上下文值.
     * 
     * @param name 变量名
     * @return Object 变量值
     */
    public static Object getValue(String name) {
        if (threadContext.get() == null) {
            threadContext.set(new HashMap<String, Object>());
        }

        return threadContext.get().get(name);
    }

    /**
     * 设置上下文值.
     * 
     * @param name 变量名
     * @param value 变量值
     */
    public static void setValue(String name, Object value) {
        if (threadContext.get() == null) {
            threadContext.set(new HashMap<String, Object>());
        }

        threadContext.get().put(name, value);
    }
}