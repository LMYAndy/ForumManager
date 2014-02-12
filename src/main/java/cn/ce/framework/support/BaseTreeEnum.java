/*
 * Copyright (c) 2010-2012 300.cn All Rights Reserved
 *
 * File:BaseEnum.java Project: Framework
 * 
 * Creator:<a href="mailto:jifangliang@163.com">Time</a> 
 * Date:Mar 13, 2012 1:54:28 PM
 * 
 */
package cn.ce.framework.support;

import java.util.List;

/**
 * 
 * 
 * 
 * @author <a href="mailto:jifangliang@163.com">Time</a>
 * @author $Author: gaopeng.300.cn $
 * @version $Revision: 1.4 $ $Date: 2012/03/19 06:56:53 $
 * @since Mar 13, 2012
 * 
 */

public interface BaseTreeEnum<T> extends BaseEnum {
	public T getParent();

	public List<T> getChildren();

	public void addChild(T child);
}
