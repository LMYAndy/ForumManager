package cn.ce.framework.support;

import java.io.IOException;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.struts2.ServletActionContext;
import org.springframework.aop.framework.AopContext;

import cn.ce.framework.utils.Page;

import com.opensymphony.xwork2.ActionSupport;

public abstract class BaseAction extends ActionSupport implements BeanSelfAware {

    private static final long     serialVersionUID = -927807214309866068L;

    protected Log                 log              = LogFactory.getLog(getClass());

    // @Parameter(scope = Scope.Session)
    protected Page                page;

    protected String              _history;


    protected String              message;       // 后台处理后的结果

    protected Map<String, String> otherParams;   //存储需要回显对业务逻辑无关的属性

    private Object                proxy            = null;

    @Override
    public void setThis(Object proxy) {
        this.proxy = proxy;
    }

    @Override
    public Object getThis() {
        return proxy == null ? AopContext.currentProxy() : proxy;
    }

    public Page getPage() {
        return page;
    }

    /**
     * @return the _history
     */
    public String get_history() {
        return _history;
    }

    /**
     * @param _history
     *            the _history to set
     */
    public void set_history(String _history) {
        this._history = _history;
    }

    public Page getNotNullPage() {
        if (page == null)
            page = new Page();
        return page;
    }

    public void setPage(Page page) {
        this.page = page;
    }

    /**
     * 获取请求request
     * 
     * @return
     */
    public HttpServletRequest getRequest() {
        return ServletActionContext.getRequest();
    }

    /**
     * 获取请求request
     * 
     * @return
     */
    public HttpSession getSession() {
        return ServletActionContext.getRequest().getSession();
    }

    /**
     * 获取请求request
     * 
     * @return
     */
    public HttpServletResponse getResponse() {
        return ServletActionContext.getResponse();
    }

    public void setContentType(String type) {
        getResponse().setContentType(type);
    }

    public void setCharacterEncoding(String encodeType) {
        getResponse().setCharacterEncoding(encodeType);
    }

    public void setHeader(String name, String value) {
        getResponse().setHeader(name, value);
    }

    public void setResult(String result) {
        try {
            getResponse().getWriter().write(result);
        } catch (IOException e) {
            log.error(e.getMessage(), e);
        }
    }

      
    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public Map<String, String> getOtherParams() {
        return otherParams;
    }

    public void setOtherParams(Map<String, String> otherParams) {
        this.otherParams = otherParams;
    }


}
