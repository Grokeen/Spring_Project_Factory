package KIC1_service;


import java.util.HashMap; 
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;

import KIC1_model.Reservation;
import KIC1_model.Review;
import util.MybatisConnection;


@Component
public class ManagementMybatis {	//List에서 ArrayList로 변경
	
	private static final String NS = "manage.";
	private Map<String, Object>map = new HashMap<String,Object>();
	
	// 생성자이름 여기
	public List<Reservation> reservelist() {
		SqlSession session = MybatisConnection.getConnection();
		List<Reservation> list = session.selectList(NS+"MareserveList");

		return list;

		// return list;
	}

	// 예약 삭제
	public boolean deletereserve() {
		
		SqlSession session = MybatisConnection.getConnection();
		try {
			session.delete(NS + "deletereserve");
			return true;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			MybatisConnection.close(session);
		}
		
		return false;
		
			//이문제같음
		
		//return (Integer) null;
		//return 0;
	}
	public int reviewCount() {
		SqlSession session = MybatisConnection.getConnection();
		try {
			return session.selectOne(NS+"reviewCount");
		} catch (Exception e) {
			e.printStackTrace();	
		} finally {
			MybatisConnection.close(session);
		}
		return 0;
	}
	
	
	public List<Review> list(int pageInt, int limit, int reviewcount) { // limit =3
		SqlSession session = MybatisConnection.getConnection();
		// ---------------------------------
		int start = (pageInt - 1) * limit + 1;  //���� ��ȣ
		int end = start + limit - 1;  //end ��ȣ
		// --------------------------------------
		try {
			map.clear();
			map.put("start", start);
			map.put("end", end);
			// -----------------------------------------
			// --------------------------------------------
			return session.selectList(NS+"list",map);
		} catch (Exception e) {			
			e.printStackTrace();		
			} finally {
			MybatisConnection.close(session);	
			}
		return null;	
	}
	
	public Review selectOne(int reviewnum) {
		SqlSession session = MybatisConnection.getConnection();
		
		try {
			return session.selectOne(NS+"selectOne",reviewnum);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			MybatisConnection.close(session);		
		}
		return null;	
	}


	public boolean deletereview(int reviewnum) {
		SqlSession session = MybatisConnection.getConnection();
		try {
			session.delete(NS+"deletereview",reviewnum);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			MybatisConnection.close(session);
		}
		return false;
	}
	
	public void readcntadd(int reviewnum) {
		SqlSession session = MybatisConnection.getConnection();
		try {
			session.update(NS+"readcntadd",reviewnum);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			MybatisConnection.close(session);
		}
	}
	
	public List<Reservation> adminsearch(String guesttel) { //예약검색
		SqlSession session =MybatisConnection.getConnection();
		
		try {
			return session.selectList(NS+"adminsearch",guesttel);
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			MybatisConnection.close(session);
		}
		return null;
	}
	public List<Review> adminsearch2(int reviewnum){ //리뷰검색
		SqlSession session = MybatisConnection.getConnection();
		try {
			return session.selectList(NS+"adminsearch2",reviewnum);
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			MybatisConnection.close(session);
		}
		return null;
	}

}
