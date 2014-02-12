package cn.ce.framework.support;

import java.io.Serializable;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.aop.framework.AopContext;

public abstract class BaseBiz implements BeanSelfAware,Serializable {
    protected Log  log   = LogFactory.getLog(getClass());

    private Object proxy = null;

    @Override
    public void setThis(Object proxy) {
        this.proxy = proxy;
    }

    @Override
    public Object getThis() {
        return proxy == null ? AopContext.currentProxy() : proxy;
    }
}
