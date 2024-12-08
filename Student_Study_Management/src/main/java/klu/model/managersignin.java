package klu.model;

public class managersignin {
	
	private String mnemail;
	private String mnpassword;
	public managersignin() {}
	
	public managersignin(String mnemail, String mnpassword) {
		this.mnemail = mnemail;
		this.mnpassword = mnpassword;
		
	}

	public String getMnemail() {
		return mnemail;
	}

	public void setMnemail(String mnemail) {
		this.mnemail = mnemail;
	}

	public String getMnpassword() {
		return mnpassword;
	}

	public void setMnpassword(String mnpassword) {
		this.mnpassword = mnpassword;
	}

	@Override
	public String toString() {
		return "managersignin [mnemail=" + mnemail + ", mnpassword=" + mnpassword + "]";
	}
	
}
