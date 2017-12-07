package obs.bean;

import java.util.Date;

import org.genericdao.MaxSize;
import org.genericdao.PrimaryKey;

@PrimaryKey("accountNumber")
public class UserBasicBean {
    private String accountNumber;
    private String accountPIN;
    private String userId;
    private String checkingNumber;
    private String savingNumber;
    private String firstName;
    private String middleName;
    private String lastName;
    private Date DOB;
    private String emailAddress;
    private String address;
    private String telephone;
    private String SSN;
    private int zipCode;

    public String getAccountNumber()    	   { return accountNumber; }
    public String getAccountPIN()    	       { return accountPIN; }
    public String getUserId()				   { return userId; }
    public String getCheckingNumber()          { return checkingNumber; }
    public String getSavingNumber()       	   { return savingNumber; }
    public String getFirstName()       		   { return firstName; }
    public String getMiddleName()         	   { return middleName; }
    public String getLastName()         	   { return lastName; }
    public Date getDOB()       		   	       { return DOB; }
    public String getEmailAddress()       	   { return emailAddress; }
    public String getAddress()       		   { return address; }
    public String getTelephone()       		   { return telephone; }
    public String getSSN()       		   	   { return SSN; }
    public int getZipCode()       		       { return zipCode; }
    
    @MaxSize(16)
    public void setAccountNumber(String s)    	   { accountNumber = s; }
    @MaxSize(4)
    public void setAccountPIN(String s)    	   	   { accountPIN = s; }
    public void setUserId(String s)				   { userId = s; }
    public void setCheckingNumber(String s)        { checkingNumber = s; }
    public void setSavingNumber(String s)          { savingNumber = s; }
    public void setFirstName(String s)       	   { firstName = s; }
    public void setMiddleName(String s)            { middleName = s; }
    public void setLastName(String s)         	   { lastName = s; }
    public void setDOB(Date date)       		   { DOB = date; }
    public void setEmailAddress(String s)          { emailAddress = s; }
    public void setAddress(String s)       		   { address = s; }
    public void setTelephone(String s)       	   { telephone = s; }
    public void setSSN(String s)       		   	   { SSN = s; }
    public void setZipCode(int code)       		   { zipCode = code; }
}