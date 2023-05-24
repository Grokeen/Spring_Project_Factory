package KIC1_service;

import java.util.ArrayList; 
import java.util.HashMap; 
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;

import KIC1_model.Cafe;
import KIC1_model.Menu;
import KIC1_model.Reservation;
import KIC1_model.Review;
import util.MybatisConnection;

@Component
public class ReservationMybatis {
	
	private static final String NS = "reservation.";
	private Map<String, Object>map = new HashMap<String,Object>();
	
	public Cafe cafeSelectOne(int cafenum) {
		SqlSession session = MybatisConnection.getConnection();
   	 	
		try {
			
			return session.selectOne(NS+"cafeSelectOne",cafenum);
		} catch (Exception e) {
			
		} finally {
			MybatisConnection.close(session);
		}
		
		return null;
	}
	public List<Menu> MenuList(int cafenum) {
    	SqlSession session = MybatisConnection.getConnection();
    	   	
 		try {
 			
 			return session.selectList(NS+"menuList",cafenum);
		} catch (Exception e) {
			
		} finally {
			MybatisConnection.close(session);
		}
 			return null;
 	}
	public List<Reservation> reserveList(int cafenum,String guesttel,String guestpass) {
    	SqlSession session = MybatisConnection.getConnection();
    	map.clear();
    	map.put("cafenum", cafenum);
    	map.put("guesttel",guesttel);
    	map.put("guestpass",guestpass);
 		try {
 			
 			return session.selectList(NS+"reserveList",map);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			MybatisConnection.close(session);
		}
 		return null;
 	}

     public List<Cafe> cafeList(String kind, String location) {
    	SqlSession session = MybatisConnection.getConnection();
    	map.clear();
    	map.put("cafekind",kind);
    	map.put("cafelocation",location);
    	
 		try {
 			
 			return session.selectList(NS+"cafeList",map);
		} catch (Exception e) {
			
		} finally {
			MybatisConnection.close(session);
		}
 		return null;
 	}
     
    
     public int reserveInsert(Reservation reserve) {
    	 SqlSession session = MybatisConnection.getConnection();
    	 int a = 0 ;
    	 a = session.selectOne(NS+"seqNextval");
    	
    	 reserve.setReservenum(a);
    	 
  		try {
  			session.insert(NS+"reservationInsert", reserve);
  			
  			return a;
 		} catch (Exception e) {
 			// TODO Auto-generated catch block
 			e.printStackTrace();
 		} finally {
 			MybatisConnection.close(session);
 		}
    	 return 0;
     }
     
     public List<Review> selectReview(int cafenum) {
    	 SqlSession session = MybatisConnection.getConnection();
    	
    	
  		try {
  			
  			return session.selectList(NS+"selectReview",cafenum);
 		} catch (Exception e) {
 			// TODO Auto-generated catch block
 			e.printStackTrace();
 		} finally {
 			MybatisConnection.close(session);
 		}
    	 return null;
     }
     public int reserveDelete(String reservenum) {
    	 SqlSession session = MybatisConnection.getConnection();
    	 int a = 0 ;
    	 a = Integer.parseInt(reservenum);
    	 
  		try {
  			session.delete(NS+"reservationDelete", a);
  			return 1;
 		} catch (Exception e) {
 			// TODO Auto-generated catch block
 			e.printStackTrace();
 		} finally {
 			MybatisConnection.close(session);
 		}
    	 return 0;
     }
     public Reservation reserveSelectOne(int reservenum) {
    	 SqlSession session = MybatisConnection.getConnection();
    	 
  		try {
 
  			return session.selectOne(NS+"selectOneReserve",reservenum);
 		} catch (Exception e) {
 			// TODO Auto-generated catch block
 			e.printStackTrace();
 		} finally {
 			MybatisConnection.close(session);
 		}
    	 return null;
     }
     public int selectCafenum(String cafename) {
    	 SqlSession session = MybatisConnection.getConnection();
    	 
  		try {
  			return session.selectOne(NS+"selectCafenum",cafename);
 		} catch (Exception e) {
 			// TODO Auto-generated catch block
 			e.printStackTrace();
 		} finally {
 			MybatisConnection.close(session);
 		}
    	 return 0;
     }
     public int selectSeat(String cafenum) {
    	 SqlSession session = MybatisConnection.getConnection();
    	 
    	 int cafeNum = Integer.parseInt(cafenum);
  		try {
 
  			return session.selectOne(NS+"selectSeat",cafeNum);
 		} catch (Exception e) {
 			// TODO Auto-generated catch block
 			e.printStackTrace();
 		} finally {
 			MybatisConnection.close(session);
 		}
    	 return 0;
     }
     public int checkSeat(String cafenum, String date,String time) {
    	 SqlSession session = MybatisConnection.getConnection();
    	 int cafeNum = Integer.parseInt(cafenum);
    	 map.clear();
    	 map.put("cafenum",cafeNum);
    	 map.put("reservetime",time);
    	 map.put("reservedate",date);
  		try {
  			if(session.selectOne(NS+"checkSeat",map)!=null) {
  				return session.selectOne(NS+"checkSeat",map);
  			}else {
  				return 0;
  			}
 		} catch (Exception e) {
 			// TODO Auto-generated catch block
 			e.printStackTrace();
 		} finally {
 			MybatisConnection.close(session);
 		}
    	 return 0;
     }
     
     
}