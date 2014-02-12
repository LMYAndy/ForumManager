package cn.ce.framework.exception.api;

public class BizLogicException  extends RuntimeException {
	/**
	 * 
	 */
	private static final long serialVersionUID = 6772006553291150019L;

	public BizLogicException() {
		super();
	}
	
	public BizLogicException(String message) {
		super(message);
	}
	
	public BizLogicException(Throwable cause) {
		super(cause);
	}

	public BizLogicException(String message, Throwable cause) {
		super(message, cause);
	}
}
