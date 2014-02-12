/*
 * Copyright (c) 2010-2012 300.cn All Rights Reserved
 *
 * File:INetUtils.java Project: Framework
 * 
 * Creator:<a href="mailto:liangqingming@300.cn">liangqingming</a> 
 * Date:Jul 12, 2012 9:43:45 AM
 * 
 */
package cn.ce.framework.utils;

import java.net.Inet4Address;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.net.SocketException;
import java.net.UnknownHostException;
import java.util.Enumeration;

/**
 * 网络程序工具类.
 * 
 * @author <a href=mailto:liangqingming@300.cn>liangqingming</a>
 * @version $Revision: 1.2 $ $Date: 2013/01/04 10:46:09 $
 * @since 2012-11-26
 */
public final class INetUtils {
    private INetUtils() {

    }

    /**
     * 获得本地的IP地址
     * 
     * @param
     * @return String IP地址
     */
    public static InetAddress getLocalNetAddress() {
        try {
            return getNet4Address();
        } catch (Exception ex) {
        }

        return null;
    }

    public static String getLocalHostAddress() {
        try {
            return getNet4Address().getHostAddress();
        } catch (Exception ex) {
        }

        return "";
    }

    private static InetAddress getNet4Address() throws UnknownHostException {
        try {
            Enumeration<NetworkInterface> networkInterfaces = NetworkInterface.getNetworkInterfaces();
            while (networkInterfaces.hasMoreElements()) {
                NetworkInterface networkInterface = networkInterfaces.nextElement();
                Enumeration<InetAddress> inetAddresses = networkInterface.getInetAddresses();
                while (inetAddresses.hasMoreElements()) {
                    InetAddress inetAddress = inetAddresses.nextElement();
                    if (inetAddress instanceof Inet4Address) {
                        if (!inetAddress.isLoopbackAddress()) {
                            return inetAddress;
                        }
                    }
                }
            }
        } catch (SocketException e) {
        }

        return InetAddress.getByName(null);
    }
}