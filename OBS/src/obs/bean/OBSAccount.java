package obs.bean;

import org.genericdao.MaxSize;
import org.genericdao.PrimaryKey;

@PrimaryKey("accountNumber")
public class OBSAccount {
    private String accountNumber;
    private float checkingBalance;
    private float savingBalance;
    private String checkingNumber;
    private String savingNumber;

    public String getAccountNumber()    	   { return accountNumber; }
    public float getCheckingBalance()    	   { return checkingBalance; }
    public float getSavingBalance()			   { return savingBalance; }
    public String getCheckingNumber()          { return checkingNumber; }
    public String getSavingNumber()       	   { return savingNumber; }
    
    @MaxSize(16)
    public void setAccountNumber(String s)    	   { accountNumber = s; }
    public void setCheckingBalance(float s)        { checkingBalance = s; }
    public void setSavingBalance(float s)		   { savingBalance = s; }
    public void setCheckingNumber(String s)        { checkingNumber = s; }
    public void setSavingNumber(String s)          { savingNumber = s; }
}