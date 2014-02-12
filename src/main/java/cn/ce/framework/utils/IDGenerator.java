package cn.ce.framework.utils;

import java.io.Serializable;

import org.hibernate.HibernateException;
import org.hibernate.engine.SessionImplementor;
import org.hibernate.id.IdentifierGenerator;

public class IDGenerator implements IdentifierGenerator {

    public static String createId() {
        return java.util.UUID.randomUUID().toString().replaceAll("-", "");
    }

    @Override
    public Serializable generate(SessionImplementor session, Object obj) throws HibernateException {
        return createId();
    }

    public static void main(String[] args) {
        System.out.println(createId());
    }
}
