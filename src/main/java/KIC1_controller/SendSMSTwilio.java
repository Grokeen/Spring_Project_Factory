package KIC1_controller;
import com.twilio.Twilio;
import com.twilio.rest.api.v2010.account.Message;
import com.twilio.type.PhoneNumber;

public class SendSMSTwilio {
	
  // Find your Account Sid and Token at twilio.com/user/account
  public static final String ACCOUNT_SID = "AC5b5149f45e4ef24c2f019dab78370fe8";
  public static final String AUTH_TOKEN = "560b54421d53698b09520721ed2398d0";
  
  // SMS 전송
  public static void sendSMS (String country, String guesttel, String cafename, String date, String time) {

	Twilio.init(ACCOUNT_SID, AUTH_TOKEN);
    
//    // 휴대폰 인증번호 생성
//    int authNum = randomRange(100000, 999999);
    
	//핸드폰 번호 자르기
	String tel = guesttel.substring(1);
	
    // 전송대상 휴대폰 번호
    String sendTarget = "+"+ country + tel;
    String reservedate = date.substring(0,11);
    // 전송 메세지
    String authMsg = guesttel+" 님 \n"+reservedate+"일 "+time+"시 "+cafename+"으로 예약이 완료 되었습니다. " ;
    
    
    Message message = Message.creator(
    	// to
    	new PhoneNumber(sendTarget),
        // from
    	new PhoneNumber("16315273571"), 
        // message
    	authMsg).create();
    
  }
    
//  // 인증번호 범위 지정
//  public static int randomRange(int n1, int n2) {
//    return (int) (Math.random() * (n2 - n1 + 1)) + n1;
//  }
//  
  
}