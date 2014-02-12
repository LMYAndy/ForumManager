/*
 * Copyright (c) 2010-2012 300.cn All Rights Reserved
 *
 * File:CustomBaseEnum.java Project: Framework
 * 
 * Creator:<a href="mailto:jifangliang@163.com">Time</a> 
 * Date:Jun 12, 2012 2:57:47 PM
 * 
 */
package cn.ce.framework.support;

/**
 * 
 * 
 * 
 * @author <a href="mailto:jifangliang@163.com">Time</a>
 * @author $Author: jifangliang.300.cn $
 * @version $Revision: 1.2 $ $Date: 2012/07/12 09:33:55 $
 * @since Jun 12, 2012
 * 
 */

public interface BaseCustomEnum<T> extends BaseEnum {
    public T getValue();
}
