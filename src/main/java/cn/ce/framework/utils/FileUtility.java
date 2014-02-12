package cn.ce.framework.utils;

import java.io.IOException;

import org.apache.commons.io.FileUtils;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.core.io.Resource;
import org.springframework.core.io.support.PathMatchingResourcePatternResolver;

import cn.ce.framework.exception.api.SysException;

public class FileUtility extends FileUtils {

    protected static final Log log = LogFactory.getLog(FileUtility.class);

    public static Resource[] getResources(String locationPattern) {
        PathMatchingResourcePatternResolver patternResolver = new PathMatchingResourcePatternResolver();
        Resource[] resources = new Resource[0];
        try {
            resources = patternResolver.getResources(locationPattern);
        } catch (IOException e) {
            throw new SysException(e);
        }
        return resources;
    }
}
