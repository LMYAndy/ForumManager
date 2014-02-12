/*
 * Copyright (c) 2010-2012 300.cn All Rights Reserved
 *
 * File:NoLoginException.java Project: Framework
 * 
 * Creator:<a href="mailto:jifangliang@163.com">Time</a> 
 * Date:May 17, 2012 4:18:58 PM
 * 
 */
package cn.ce.framework.exception.api;


public class NoLoginException extends RuntimeException {
    /**
     * 
     */
    private static final long serialVersionUID = 6772006553291150019L;

    public NoLoginException() {
        super("未登录");
    }
}
