package cn.ce.framework.utils;

import java.io.Serializable;
import java.util.List;

import cn.ce.framework.exception.api.SysException;

/**
 * 分页对象
 * 
 * @author yangjs
 */
public class Page implements Serializable {

    private static final long serialVersionUID  = 1L;

    /** 默认每页大小：20 */
    private static final int  DEFAULT_PAGE_SIZE = 10;
    /** 默认当前页数：1 */
    private static final int  DEFAULT_PAGE_NUM  = 1;
    /** 每页大小 */
    private int               pageSize          = DEFAULT_PAGE_SIZE;
    /** 当前页数 */
    private int               pageNum           = DEFAULT_PAGE_NUM;
    /** 当前页中存放的记录 */
    private List<?>           result            = null;
    /** 总记录数 */
    private long              total = 0L;

    public Page() {
    }

    public Page(int pageSize, int pageNum) {
        this(pageSize, pageNum, 0, null);
    }

    public Page(int pageSize, int pageNum, long total, List<?> result) {
        if (pageSize <= 0 || pageNum < 0) {
            throw new SysException("分页的pageSize、pageNum初始值不能小于0！");
        }
        this.pageSize = pageSize;
        this.pageNum = pageNum;
        this.total = total;
        this.result = result;
    }

    /**
     * 获取每页大小
     * @return
     *
     */
    public int getPageSize() {
        return pageSize <= 0 ? DEFAULT_PAGE_SIZE : pageSize;
    }

    /**
     * 设置每页大小
     * @param pageSize
     *
     */
    public void setPageSize(int pageSize) {
        this.pageSize = pageSize;
    }

    /**
     * 获取页码
     * @return
     *
     */
    public int getPageNum() {
        return pageNum <= 0 ? DEFAULT_PAGE_NUM : pageNum;
    }

    /**
     * 设置页码
     * @param pageNum
     *
     */
    public void setPageNum(int pageNum) {
        this.pageNum = pageNum;
    }
    
    /**
     * 获取结果集
     * @return
     *
     */
    public List<?> getResult() {
        return result;
    }
    
    /**
     * 设置结果集
     * @param result
     *
     */
    public void setResult(List<?> result) {
        this.result = result;
    }
    /**
     * 获取总记录数
     * @return
     *
     */
    public long getTotal() {
        return total;
    }

    /**
     * 设置总记录数
     * @param total
     *
     */
    public void setTotal(long total) {
        this.total = total;
    }
    
    /**
     * 获取起始位置
     * @return
     *
     */
    public int getStart() {
        return this.getPageSize() * (this.getPageNum() - 1);
    }
    
    /**
     * 一般要在设定Total 之后使用(除特殊情况，不建议使用)
     * @return
     *
     */
    @Deprecated
    public long getEnd(){
        int end = this.getPageSize() * this.getPageNum();
        if(end>getTotal()){
            return getTotal();
        }
        return end;
    }

    /**
     * 获取总页数
     * @return
     *
     */
    public int getTotalPageNum() {
        return (int) (this.getTotal() % this.getPageSize() == 0 ? this.getTotal() / this.getPageSize() : this.getTotal() / this.getPageSize() + 1);
    }

}
