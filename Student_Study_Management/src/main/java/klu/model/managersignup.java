package klu.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import jakarta.persistence.Transient;

@Entity
@Table(name="ManageSignup")
public class managersignup {
	 @Id
	 @GeneratedValue(strategy = GenerationType.IDENTITY)
	 private Long userid;
	 
	 @Column(name = "mnusername", nullable = false)
	    private String mnusername;

	    @Column(name = "mnemail", unique = true, nullable = false)
	    private String mnemail;

	    @Column(name = "mnpassword", nullable = false)
	    private String mnpassword;

	    @Transient // This will not be persisted in the database
	    private String mnconfirmPassword;

		public Long getUserid() {
			return userid;
		}

		public void setUserid(Long userid) {
			this.userid = userid;
		}

		public String getMnusername() {
			return mnusername;
		}

		public void setMnusername(String mnusername) {
			this.mnusername = mnusername;
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

		public String getMnconfirmPassword() {
			return mnconfirmPassword;
		}

		public void setMnconfirmPassword(String mnconfirmPassword) {
			this.mnconfirmPassword = mnconfirmPassword;
		}

		@Override
		public String toString() {
			return "managersignup [userid=" + userid + ", mnusername=" + mnusername + ", mnemail=" + mnemail
					+ ", mnpassword=" + mnpassword + ", mnconfirmPassword=" + mnconfirmPassword + "]";
		}
	}