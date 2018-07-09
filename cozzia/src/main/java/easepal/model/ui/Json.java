package easepal.model.ui;

import easepal.util.LangUtil;

public class Json implements java.io.Serializable {

	private boolean success = false;

	private String msg = "";

	private Object data = null;

    public Json() {
    }

    public Json(String msg) {
        this.msg = msg;
    }

    public Json(boolean success, Object data) {
        this.success = success;
        this.data = data;
    }

    public boolean isSuccess() {
		return success;
	}

	public void setSuccess(boolean success) {
		this.success = success;
	}

	public String getMsg() {
		return msg;
	}

	public void setMsg(String msg) {
		this.msg = msg;
	}
	public void setMsgLang(String key) {
        this.msg = LangUtil.get(key);
	}

    public Object getData() {
        return data;
    }

    public void setData(Object data) {
        this.data = data;
    }
}
