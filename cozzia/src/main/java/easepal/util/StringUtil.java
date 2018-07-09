package easepal.util;

/**
 * @author: 郭清泉
 * @date: 2015/3/30
 * @version: v1.0.
 * @description:
 */
public class StringUtil {

    /**
     * 格式化字符串
     *
     * 例：formateString("xxx{0}bbb",1) = xxx1bbb
     *
     * @param str
     * @param params
     * @return
     */
    public static String formatString(String str, String... params) {
        for (int i = 0; i < params.length; i++) {
            str = str.replace("{" + i + "}", params[i] == null ? "" : params[i]);
        }
        return str;
    }

}
