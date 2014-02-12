/*
 * Copyright (c) 2010-2013 300.cn All Rights Reserved
 *
 * File:WordFilterUtility.java Project: Framework
 * 
 * Creator:<a href=mailto:liangqingming@300.cn>Liangqingming</a> 
 * Date:Jan 19, 2013 12:27:25 AM
 * 
 */
package cn.ce.framework.utils;

import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Properties;
import java.util.regex.Pattern;

import org.apache.commons.io.IOUtils;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

/**
 * 
 * 
 * 
 * @author <a href=mailto:liangqingming@300.cn>Liangqingming</a>
 * @author $Author: liangqingming.300.cn $
 * @version $Revision: 1.1 $ $Date: 2013/01/23 08:34:57 $
 * @since Jan 19, 2013
 * 
 */
public class WordFilterUtility {
    private static final Log     log                = LogFactory.getLog(WordFilterUtility.class);

    // 过滤词典的存放位置
    private static final String  WORD_FILEPATH      = "config/wordfilter.dic";

    // 匹配标点符号的正则表达式
    private static final Pattern PATTERN_PUNCTATION = Pattern.compile("[\\pP\\pZ\\pS\\pM\\pC]", 2);

    private static final Pattern PATTERN_LETTER     = Pattern.compile("[a-zA-Z0-9]", 2);

    // 树的根节点
    private static final Node    root               = new Node();

    static {
        InputStream is = null;
        InputStreamReader reader = null;
        try {
            long statTime = System.currentTimeMillis();
            if (log.isInfoEnabled()) {
                log.info("开始加载过滤词字典[StartTime=" + statTime + "]...");
            }
            is = ClassUtility.getDefaultClassLoader().getResourceAsStream(WORD_FILEPATH);
            reader = new InputStreamReader(is, "UTF-8");
            Properties prop = new Properties();
            prop.load(reader);
            Enumeration<?> words = prop.propertyNames();
            String word;
            while (words.hasMoreElements()) {
                word = words.nextElement().toString();
                insertWord(word, getPropInt(prop.getProperty(word), word.length()));
            }
            if (log.isInfoEnabled()) {
                long endTime = System.currentTimeMillis();
                log.info("完成加载过滤词字典[EndTime=" + endTime + "],共计耗时" + (endTime - statTime) + "(s)");
            }
        } catch (Exception ex) {
            if (log.isErrorEnabled())
                log.error("加载过滤词字典失败[" + WORD_FILEPATH + "]", ex);
        } finally {
            IOUtils.closeQuietly(reader);
            IOUtils.closeQuietly(is);
        }
    }

    private WordFilterUtility() {

    }

    private static int getPropInt(String val, int defaultValue) {
        if (val == null || "".equals(val.trim()))
            return defaultValue;

        if (StringUtility.isNumeric(val)) {
            return Integer.parseInt(val);
        }

        return defaultValue;
    }

    /**
     * 过滤替换文本中的关键词.
     * 
     * @param text 源字符串
     * @param replacement 替换的字符
     * @param erasePunctations 是否擦除标点符号
     * @param eraseLetters 是否擦除英文字母
     * @return String 过滤替换后的字符串
     */
    public static String filterText(String text) {
        return filterText(text, true, true);
    }

    public static String filterText(String text, boolean erasePunctations, boolean eraseLetters) {
        String rs = filterText(text, Character.MIN_VALUE, erasePunctations, eraseLetters);

        return StringUtility.isEmpty(rs) ? rs : rs.replaceAll(String.valueOf(Character.MIN_VALUE), "");
    }

    public static String filterText(String text, char replacement, boolean erasePunctations, boolean eraseLetters) {
        if (StringUtility.isEmpty(text))
            return "";

        return filter(filterPunctation(text, erasePunctations, eraseLetters), replacement);
    }

    /**
     * 构建词路径树.
     * 
     * @param word
     */
    private static void insertWord(String word, int level) {
        Node node = root;
        for (int i = 0, len = word.length(); i < len; i++) {
            node = node.addChar(word.charAt(i));
            if ((i + 1) >= level)
                node.setEnd(true);
        }

        node.setEnd(true);
    }

    /**
     * 匹配标点符号.
     * 
     * @param c
     * @return
     */
    private static boolean matchPunctuation(String c) {
        return PATTERN_PUNCTATION.matcher(c).find();
    }

    /**
     * 过滤标点符号.
     * 
     * @param text
     * @return
     */
    private static PunctuationFilteredResult filterPunctation(String text, boolean erasePunctations, boolean eraseLetters) {
        if (eraseLetters) {
            text = PATTERN_LETTER.matcher(text).replaceAll("");
        }
        StringBuilder filterString = new StringBuilder();
        List<Integer> charOffsets = new ArrayList<Integer>();
        for (int i = 0, len = text.length(); i < len; i++) {
            String c = String.valueOf(text.charAt(i));
            if (!matchPunctuation(c)) {
                charOffsets.add(erasePunctations ? filterString.length() : Integer.valueOf(i));
                filterString.append(c);
            }
        }

        PunctuationFilteredResult result = new PunctuationFilteredResult();
        result.setRawString(erasePunctations ? filterString.toString() : text);
        result.setFilterString(filterString);
        result.setOffsets(charOffsets);

        return result;
    }

    /**
     * 执行过滤替换操作.
     * 
     * @param punResult
     * @param replacement
     * @return
     */
    private static String filter(PunctuationFilteredResult punResult, char replacement) {
        StringBuilder sentence = punResult.getFilterString();
        List<Integer> offsets = punResult.getOffsets();
        StringBuilder resultString = new StringBuilder(punResult.getRawString());

        Node node = root;
        int start = 0;
        int end = 0;
        boolean flag = false;
        for (int i = 0, len = sentence.length(); i < len; i++) {
            start = i;
            end = i;
            node = root;
            flag = false;
            for (int j = i; j < len; j++) {
                node = node.findChar(sentence.charAt(j));
                if (node == null)
                    break;
                if (node.isEnd()) {
                    end = j;
                    flag = true;
                }
            }
            if (flag) {
                for (int k = start; k <= end; k++) {
                    resultString.setCharAt((offsets.get(k)).intValue(), replacement);
                }
                i = end;
            }
        }

        return resultString.toString();
    }

    /**
     * 树的节点对象(内部类).
     * 
     * @author <a href=mailto:liangqingming@300.cn>Liangqingming</a>
     * @author $Author: liangqingming.300.cn $
     * @version $Revision: 1.1 $ $Date: 2013/01/23 08:34:57 $
     * @since Jan 19, 2013
     */
    private static class Node {
        // 直接子节点集合
        private Map<String, Node> children;
        // 单词边界标识
        private boolean           isEnd;

        public Node() {
            children = new HashMap<String, Node>(0);
            isEnd = false;
        }

        public Node addChar(char c) {
            String cStr = String.valueOf(c);
            Node node = (Node) children.get(cStr);
            if (node == null) {
                node = new Node();
                children.put(cStr, node);
            }

            return node;
        }

        public Node findChar(char c) {
            String cStr = String.valueOf(c);
            return (Node) children.get(cStr);
        }

        public boolean isEnd() {
            return isEnd;
        }

        public void setEnd(boolean isEnd) {
            this.isEnd = isEnd;
        }
    }

    /**
     * 标点符号过滤结果集(内部类).
     * 
     * @author <a href=mailto:liangqingming@300.cn>Liangqingming</a>
     * @author $Author: liangqingming.300.cn $
     * @version $Revision: 1.1 $ $Date: 2013/01/23 08:34:57 $
     * @since Jan 19, 2013
     */
    private static class PunctuationFilteredResult {
        // 原始字符串
        private String        rawString;
        // 过滤后的字符串
        private StringBuilder filterString;
        // 记录偏移量
        private List<Integer> offsets;

        public String getRawString() {
            return rawString;
        }

        public void setRawString(String rawString) {
            this.rawString = rawString;
        }

        public StringBuilder getFilterString() {
            return filterString;
        }

        public void setFilterString(StringBuilder filterString) {
            this.filterString = filterString;
        }

        public List<Integer> getOffsets() {
            return offsets;
        }

        public void setOffsets(List<Integer> offsets) {
            this.offsets = offsets;
        }
    }
}