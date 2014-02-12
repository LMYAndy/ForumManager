package cn.ce.forum.user.enums;


public enum EmationStateEnum{
	Singlehood("单身", 0), Single("女", 1),Married("已婚",2);

    private String  lable;
    private Integer value;

    private EmationStateEnum(String lable, Integer value) {
        this.lable = lable;
        this.value = value;
    }

    public String getLable() {
        return lable;
    }

    public void setLable(String lable) {
        this.lable = lable;
    }

    public Integer getValue() {
        return value;
    }
    
    public static EmationStateEnum getEmationStateEnumByValue(Integer value){
    	EmationStateEnum[] enums = EmationStateEnum.values();
    	for(EmationStateEnum s : enums){
    		if(s.getValue().intValue() == value.intValue()){
    			return s;
    		}
    	}
    	return null;
    }

  
}
