package cn.ce.forum.user.enums;


public enum SexEnum{
	Male("男", 0), Female("女", 1);

    private String  lable;
    private Integer value;

    private SexEnum(String lable, Integer value) {
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
    
    public static SexEnum getSexEnumByValue(Integer value){
    	SexEnum[] enums = SexEnum.values();
    	for(SexEnum s : enums){
    		if(s.getValue().intValue() == value.intValue()){
    			return s;
    		}
    	}
    	return null;
    }

  
}
