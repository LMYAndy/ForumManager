/*
 * Copyright (c) 2010-2012 300.cn All Rights Reserved
 *
 * File:BaseFilter.java Project: Framework
 * 
 * Creator:<a href="mailto:jifangliang@163.com">Time</a> 
 * Date:Jul 16, 2012 1:14:20 PM
 * 
 */
package cn.ce.framework.support;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;

import org.springframework.util.AntPathMatcher;

import cn.ce.framework.utils.StringUtility;

/**
 * 
 * 
 * 
 * @author <a href="mailto:jifangliang@163.com">Time</a>
 * @author $Author: liangqingming.300.cn $
 * @version $Revision: 1.2 $ $Date: 2012/11/19 06:19:08 $
 * @since Jul 16, 2012
 * 
 */

public abstract class BaseFilter implements Filter {

    protected String[]       excludePatterns = new String[0];
    protected AntPathMatcher matcher         = new AntPathMatcher();

    protected void setExcludePatterns(String[] excludePatterns) {
        this.excludePatterns = excludePatterns;
    }

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        String excludePatterns = filterConfig.getInitParameter("excludePatterns");
        if (StringUtility.isNotEmpty(excludePatterns))
            setExcludePatterns(StringUtility.split(excludePatterns, ";"));
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        HttpServletRequest httpRequest = (HttpServletRequest) request;
        // HttpServletResponse httpResponse = (HttpServletResponse) response;

        String uri = httpRequest.getRequestURI().substring(httpRequest.getContextPath().length());

        for (String excludePattern : excludePatterns) {
            if (matcher.match(excludePattern, uri)) {
                chain.doFilter(request, response);
                return;
            }
        }
        _doFilter(request, response, chain);
    }

    public abstract void _doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException;

    @Override
    public void destroy() {
    	
    }
}