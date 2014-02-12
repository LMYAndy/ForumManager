/*
 * Copyright (c) 2010-2012 300.cn All Rights Reserved
 *
 * File:BasicContextHolder.java Project: Framework
 * 
 * Creator:<a href=mailto:liangqingming@300.cn>Liangqingming</a> 
 * Date:Dec 27, 2012 7:12:40 PM
 * 
 */
package cn.ce.framework.support;

/**
 * 基本信息上下文容器.
 * 
 * @author <a href=mailto:liangqingming@300.cn>Liangqingming</a>
 * @author $Author: liangqingming.300.cn $
 * @version $Revision: 1.1 $ $Date: 2013/01/04 10:45:55 $
 * @since Jan 4, 2013
 */
public final class BasicContextHolder {
    private static final String CURRENT_BASICCONTEXT_ENTITY = "currbasicContextEntity";

    private BasicContextHolder() {

    }

    public static void setBasicContext(BasicContext context) {
        CurrentThreadContext.setValue(CURRENT_BASICCONTEXT_ENTITY, context);
    }

    public static BasicContext getBasicContext() {
        Object obj = CurrentThreadContext.getValue(CURRENT_BASICCONTEXT_ENTITY);
        if (obj == null)
            return new BasicContext();

        return (BasicContext) obj;
    }

    public static void clear() {
        CurrentThreadContext.setValue(CURRENT_BASICCONTEXT_ENTITY, null);
    }
}