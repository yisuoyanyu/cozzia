package easepal.util;

import java.io.UnsupportedEncodingException;
import java.util.ResourceBundle;

/**
 * 项目参数工具类
 * @author: 郭清泉
 * @date: 2015/3/26
 * @version: v1.0.
 * @description:
 *
 */
public class LangUtil {

	private static final ResourceBundle bundle = ResourceBundle.getBundle("language-zh");

	/**
	 * 通过键获取值
	 * 
	 * @param key
	 * @return
	 */
	public static final String get(String key) {
        String value =bundle.getString(key);
        try {
            value = new String(value.getBytes("ISO8859-1"), System.getProperty("file.encoding"));
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }
        return value;
	}

}
