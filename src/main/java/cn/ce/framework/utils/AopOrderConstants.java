/*
 * Copyright (c) 2010-2012 300.cn All Rights Reserved
 *
 * File:AopOrderConstants.java Project: Framework
 * 
 * Creator:<a href=mailto:liangqingming@300.cn>Liangqingming</a> 
 * Date:Dec 6, 2012 5:48:33 PM
 * 
 */
package cn.ce.framework.utils;

/**
 * AOP连接器Order顺序号常量类.
 * 
 * @author <a href=mailto:liangqingming@300.cn>Liangqingming</a>
 * @version $Revision: 1.1 $ $Date: 2012/12/07 09:42:20 $ 
 * @since Dec 6, 2012
 */
public final class AopOrderConstants {

    private AopOrderConstants() {
        
    }
    
    /**缓存拦截器顺序*/
    public static final int ORDER_CACHE_INTERCEPTOR = 0;
    
    /**数据中心-数据源切换拦截器顺序*/
    public static final int ORDER_BM_DATASOURCE_INTERCEPTOR = 1;
    
    /**数据源注解拦截器顺序*/
    public static final int ORDER_ROUTINGDATASOURCE_INTERCEPTOR = 2;
}
