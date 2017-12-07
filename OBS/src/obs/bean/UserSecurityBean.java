package obs.bean;

import org.genericdao.MaxSize;
import org.genericdao.PrimaryKey;

@PrimaryKey("accountNumber")
public class UserSecurityBean {
    private String accountNumber;
    private String userId;
    private String password;
    private String securityQuestion1;
    private String securityQuestion2;
    private String securityAnswer1;
    private String securityAnswer2;
    private String telephone;

    public String getAccountNumber()    	   { return accountNumber; }
    public String getUserId()				   { return userId; }
    public String getPassword()        		   { return password; }
    public String getSecurityQuestion1()       { return securityQuestion1; }
    public String getSecurityQuestion2()       { return securityQuestion2; }
    public String getSecurityAnswer1()         { return securityAnswer1; }
    public String getSecurityAnswer2()         { return securityAnswer2; }
    public String getTelephone()       		   { return telephone; }
    
    @MaxSize(16)
    public void setAccountNumber(String s)     { accountNumber = s; }
    public void setUserId(String s)     	   { userId = s; }
    public void setPassword(String s)     	   { password = s; }
    public void setSecurityQuestion1(String s) { securityQuestion1 = s; }
    public void setSecurityQuestion2(String s) { securityQuestion2 = s; }
    public void setSecurityAnswer1(String s)   { securityAnswer1 = s; }
    public void setSecurityAnswer2(String s)   { securityAnswer2 = s; }
    public void setTelephone(String s)   	   { telephone = s; }
}