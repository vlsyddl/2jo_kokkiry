package kr.co.assa.member.controller;
import java.security.MessageDigest;

import org.springframework.stereotype.Controller;
/**
 * 
 *  암호화 : 평문 -> 암호화 (v)
 *  복호화 : 암호화 -> 평문
 *	대칭키 암호 : 암호화키와 복호화키가 같은 암호 : 단방향 암호화 : SHA-256 : 패스워드 (v) 
 *				같은 평문의 문자열은 항상 같은 결과가 나옴 => 패스워드 길이, 문자의 복잡성 ↑ 
 *	비대칭키 암호 : 암호화키와 복호화키가 다른 암호: 양방향 암호화 : AES-256 : 주소, 연락처, email
 *	
 *  참고 : https://blog.kindler.io/java-encrypt/
 */

@Controller
public class Encryption {
	
	    public String encrypt(String planText) {
	        try{
	        	// MessageDigest : 메세지 압축 함수 : 평문을 받아서 일정한 길이의 데이터로 압축
	        	// 제공해주는 MessageDigest 중에 해당하는 객체 생성
	        	
	        	planText+="@jj&";
	            MessageDigest md = MessageDigest.getInstance("SHA-256"); 
	            md.update(planText.getBytes()); //평문을 바이트로 
	            byte byteData[] = md.digest(); //압축
	            
	            for(byte c:planText.getBytes()) {
	            	//System.out.print(c+" ");
	            }
	            //System.out.println();
	            for(byte b:byteData) {
	            	//System.out.print(b+" ");
	            }
	            //System.out.println("");
	            
	            // 0xff : byte -128~127까지의 범위를 0~225까지의 범위로 바꿈, 8bit=>32bit(int)로 바꿈
	            // 0x100 : 값을 세자리의 수로 만들어 준다. 100형식. 1은 모든 값들에 붙음으로 앞의 한 자리 수를 제거한다.
	            // Integer.toString(d, 16) : d를 16진수로 만듬.
	            // 참고 : http://javaslave.tistory.com/59
	            //System.out.println(byteData.length);
	            StringBuffer sb = new StringBuffer(); 
	            for(byte b:byteData) {
	            	//System.out.print(b+" ");
	            }
	            //System.out.println();
	            for (int i = 0; i < byteData.length; i++) {
	                sb.append(Integer.toString((byteData[i] & 0xff) + 0x100, 16).substring(1));
	            }
	            //System.out.println();
	            //System.out.println(sb.toString());
	            
	            
	            
	            //Integer.toString((byteData[i] & 0xff) + 0x100, 16).substring(1) = Integer.toHexString(0xff & byteData[i])
	            StringBuffer hexString = new StringBuffer();
	            for (int i=0;i<byteData.length;i++) {
		            for(byte b:byteData) {
		            	//System.out.print(b+" ");
		            }
	                String hex=Integer.toHexString(0xff & byteData[i]);
	                if(hex.length()==1){
	                    hexString.append('0');
	                }
	                hexString.append(hex);
	            }
	            //System.out.println(hexString.toString());
	            
	            
	            return hexString.toString();
	        }catch(Exception e){
	            e.printStackTrace();
	            throw new RuntimeException();
	        }
	    }
	
}
