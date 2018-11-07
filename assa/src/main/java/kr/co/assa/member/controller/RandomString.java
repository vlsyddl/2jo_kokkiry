package kr.co.assa.member.controller;



public class RandomString {
	
	public String randomString() {

		char y=0;
		StringBuffer sb = new StringBuffer();
		for(int i=0; i<15;i++) {
			int x= (int)(Math.random()*3)+1;
			
			switch(x) {
				case 1: y = (char)(48+(int)(Math.random()*10));
					break;
				case 2: y = (char)(65+(int)(Math.random()*26));
					break;
				case 3: y = (char)(97+(int)(Math.random()*26));
					break;
			}
			sb.append(y);
			
		}
		
		return sb.toString();
	}
}
