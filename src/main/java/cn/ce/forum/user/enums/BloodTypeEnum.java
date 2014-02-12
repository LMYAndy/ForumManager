package cn.ce.forum.user.enums;


public enum BloodTypeEnum{
	A("A型", 1), B("B型", 2), O("O型", 3), AB("AB型", 4),RH("RH型", 5);
    private String  lable;
    private Integer value;

    private BloodTypeEnum(String lable, Integer value) {
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
    
    public static BloodTypeEnum getBloodTypeEnumByValue(Integer value){
    	BloodTypeEnum[] enums = BloodTypeEnum.values();
    	for(BloodTypeEnum s : enums){
    		if(s.getValue().intValue() == value.intValue()){
    			return s;
    		}
    	}
    	return null;
    }

  
}
