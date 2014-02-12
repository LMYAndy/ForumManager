/*
 * Copyright (c) 2010-2012 300.cn All Rights Reserved
 *
 * File:BasicContext.java Project: Framework
 * 
 * Creator:<a href=mailto:liangqingming@300.cn>Liangqingming</a> 
 * Date:Dec 27, 2012 7:12:40 PM
 * 
 */
package cn.ce.framework.support;

/**
 * 基本信息上下文对象.
 * 
 * @author <a href=mailto:liangqingming@300.cn>Liangqingming</a>
 * @author $Author: liangqingming.300.cn $
 * @version $Revision: 1.1 $ $Date: 2013/01/04 10:45:48 $
 * @since Jan 4, 2013
 */
public class BasicContext {
    public static final String PROGRAM_ENTRY = "programentry";

    private ProgramEntry       programEntry  = null;

    public void setProgramEntry(ProgramEntry entry) {
        this.programEntry = entry;

    }

    public ProgramEntry getProgramEntry() {
        if (this.programEntry == null)
            return ProgramEntry.BACKGROUND;

        return this.programEntry;
    }

    public static enum ProgramEntry {
        FRONT, BACKGROUND
    }
}