package obs.bean;

import java.util.Date;

import org.genericdao.MaxSize;
import org.genericdao.PrimaryKey;

@PrimaryKey("id")
public class TransactionHistory {
	private int id;
    private String userId;
    private String accountNumber;
    private String transToAccNum;
    private String transFromAccNum;
    private Date date;
    private String description;
    private float amount;
    private String category;
    private String cheque;
    
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getTransToAccNum() {
		return transToAccNum;
	}
	public void setTransToAccNum(String transToAccNum) {
		this.transToAccNum = transToAccNum;
	}
	public String getTransFromAccNum() {
		return transFromAccNum;
	}
	public void setTransFromAccNum(String transFromAccNum) {
		this.transFromAccNum = transFromAccNum;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public float getAmount() {
		return amount;
	}
	public void setAmount(float amount) {
		this.amount = amount;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getCheque() {
		return cheque;
	}
	public void setCheque(String cheque) {
		this.cheque = cheque;
	}
	public String getAccountNumber() {
		return accountNumber;
	}
	@MaxSize(16)
	public void setAccountNumber(String accountNumber) {
		this.accountNumber = accountNumber;
	}
}