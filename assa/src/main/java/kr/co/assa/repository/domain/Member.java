package kr.co.assa.repository.domain;

import org.springframework.web.multipart.MultipartFile;

public class Member {
	private int userNo;
	private String userEmail;
	private String password;
	private String name;
	private String nickname;
	private String phone;
	private String gender;
	private String birth;
	private String profilePath;
	private String profileName;
	private String type;
	private String rePassword;
	
	
	
	
	
	private String[] nbirth;
	private String[] nphone;
	private MultipartFile file;
	
	
	
	
	
	public int getUserNo() {
		return userNo;
	}





	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}





	public String getUserEmail() {
		return userEmail;
	}





	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}





	public String getPassword() {
		return password;
	}





	public void setPassword(String password) {
		this.password = password;
	}





	public String getName() {
		return name;
	}





	public void setName(String name) {
		this.name = name;
	}





	public String getNickname() {
		return nickname;
	}





	public void setNickname(String nickname) {
		this.nickname = nickname;
	}





	public String getPhone() {
		return phone;
	}





	public void setPhone(String phone) {
		this.phone = phone;
	}





	public String getGender() {
		return gender;
	}





	public void setGender(String gender) {
		this.gender = gender;
	}





	public String getBirth() {
		return birth;
	}





	public void setBirth(String birth) {
		this.birth = birth;
	}





	public String getProfilePath() {
		return profilePath;
	}





	public void setProfilePath(String profilePath) {
		this.profilePath = profilePath;
	}





	public String getProfileName() {
		return profileName;
	}





	public void setProfileName(String profileName) {
		this.profileName = profileName;
	}





	public String getType() {
		return type;
	}





	public void setType(String type) {
		this.type = type;
	}





	public String[] getNbirth() {
		return nbirth;
	}





	public void setNbirth(String[] nbirth) {
		this.nbirth = nbirth;
	}





	public String[] getNphone() {
		return nphone;
	}





	public void setNphone(String[] nphone) {
		this.nphone = nphone;
	}





	public MultipartFile getFile() {
		return file;
	}





	public void setFile(MultipartFile file) {
		this.file = file;
	}
	
	
	




	public String getRePassword() {
		return rePassword;
	}





	public void setRePassword(String rePassword) {
		this.rePassword = rePassword;
	}





	@Override
	public String toString() {
		return "Member [userNo=" + userNo + ", userEmail=" + userEmail + ", password=" + password + ", name=" + name
				+ ", nickname=" + nickname + ", phone=" + phone + ", gender=" + gender + ", birth=" + birth
				+ ", profilePath=" + profilePath + ", profileName=" + profileName + ", type=" + type +  "]";
	} 

	
	
	
	//
	
	
	
	
	
}
