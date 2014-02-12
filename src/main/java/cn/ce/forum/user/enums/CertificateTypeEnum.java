package cn.ce.forum.user.enums;


public enum CertificateTypeEnum{
	IdentityCard("身份证", 1), Passport("护照", 2), DrivingLicense ("驾驶证", 3), OfficerIdentityCard("军官证", 4);

    private String  lable;
    private Integer value;

    private CertificateTypeEnum(String lable, Integer value) {
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
    
    public static CertificateTypeEnum getCertificateTypeEnumByValue(Integer value){
    	CertificateTypeEnum[] enums = CertificateTypeEnum.values();
    	for(CertificateTypeEnum s : enums){
    		if(s.getValue().intValue() == value.intValue()){
    			return s;
    		}
    	}
    	return null;
    }

  
}
