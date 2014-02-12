package cn.ce.framework.exception.api;

public class SysException extends RuntimeException {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = -5309574770175613338L;

	public SysException() {
		super();
	}
	
	public SysException(String message) {
		super(message);
	}
	
	public SysException(Throwable cause) {
		super(cause);
	}

	public SysException(String message, Throwable cause) {
		super(message, cause);
	}
}
