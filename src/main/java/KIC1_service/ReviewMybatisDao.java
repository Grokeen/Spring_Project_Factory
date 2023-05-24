package KIC1_service;

import java.sql.Connection; 
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;
import org.springframework.ui.Model;

import KIC1_model.Reservation;
import KIC1_model.Review;
//import util.DBConnection;
import util.MybatisConnection;

@Component
public class ReviewMybatisDao {
	private static final String ns="review.";
	private Map<String, Object>map = new HashMap<String, Object>();
	
	
	
	
	public int reviewCount(String cafenum) {
		SqlSession session = MybatisConnection.getConnection();
		int cafeNum = Integer.parseInt(cafenum);
		try {
			return session.selectOne(ns+"reviewCount",cafeNum);
		} catch (Exception e) {
			e.printStackTrace();	
		} finally {
			MybatisConnection.close(session);
		}
		return 0;
	}
	
	public List<Review> list(int pageInt, int limit, int reviewcount, String cafenum) { // limit =3
		SqlSession session = MybatisConnection.getConnection();
		// ---------------------------------
		int start = (pageInt - 1) * limit + 1;  //���� ��ȣ
		int end = start + limit - 1;  //end ��ȣ
		// --------------------------------------
		try {
			map.clear();
			map.put("cafenum", cafenum);
			map.put("start", start);
			map.put("end", end);
			// -----------------------------------------
			// --------------------------------------------
			return session.selectList(ns+"list",map);
		} catch (Exception e) {			
			e.printStackTrace();		
			} finally {
			MybatisConnection.close(session);	
			}
		return null;	
	}
	public List<Review> searchReview(String name, String cafenum) {
		SqlSession session = MybatisConnection.getConnection();
		
		int cafeNum = Integer.parseInt(cafenum);
		try {
			map.clear();
			map.put("name",name);
			map.put("cafenum", cafenum);
			
			return session.selectList(ns+"searchReview",map);
			
		} catch (Exception e) {
			e.printStackTrace();
			
		} finally {
			MybatisConnection.close(session);					
		}
		return null;
	}
	
	public boolean insert(Review review) {
		SqlSession session = MybatisConnection.getConnection();
		// -------------------------------------
		int ref = 0, reflevel = 0, refstep = 0;
		// -------------------------------------
		try {
			int num = session.selectOne(ns+"seqNextval");
			// ------------------------------------- ����ϰ��
			if (review.getReviewnum() > 0) {
				ref = review.getRef();
				reflevel = review.getReflevel() + 1;
				refstep = review.getRefstep() + 1;
			} else {
				ref = num;
			}
			review.setReviewnum(num);
			review.setRef(ref);
			review.setReflevel(reflevel);
			review.setReflevel(refstep);
			
			session.insert(ns+"insertReview",review);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			MybatisConnection.close(session);
		}
		return false;
}
	
	public Review selectOne(int num) {
		SqlSession session = MybatisConnection.getConnection();
		
		try {
			
				return session.selectOne(ns+"selectOne",num);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			MybatisConnection.close(session);		
		}
		return null;	
	}
	
	public void readcntadd(int num) {
		SqlSession session = MybatisConnection.getConnection();
		try {
			session.update(ns+"readcntadd",num);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			MybatisConnection.close(session);
		}
	}
	
	public void refstepadd(int ref, int refstep) {
		SqlSession session = MybatisConnection.getConnection();
		try {
			map.clear();
			map.put("ref", refstep);
			map.put("refstep", refstep);
			session.update(ns+"refstepadd",map);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			MybatisConnection.close(session);
		}
	}
	
	public boolean update(Review review) {
		SqlSession session = MybatisConnection.getConnection();
		try {
			session.update(ns+"update", review);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			MybatisConnection.close(session);
		}
		return false;

	}

	public boolean delete(int num) {
		SqlSession session = MybatisConnection.getConnection();
		try {
			session.update(ns+"delete",num);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			MybatisConnection.close(session);
		}
		return false;
	}

	
	public List<Reservation> con(String guesttel, String guestpass, int cafenum) {
		SqlSession session = MybatisConnection.getConnection();
		
		try {
			map.clear();
			map.put("guesttel", guesttel);
			map.put("guestpass", guestpass);
			map.put("cafenum", cafenum);
			
			return session.selectList(ns+"con",map);
			
		} catch (Exception e) {
			e.printStackTrace();
			
		} finally {
			MybatisConnection.close(session);					
		}
		return null;
	}
	
	public double avgScore (int cafenum) {
		SqlSession session = MybatisConnection.getConnection();
		
		try {
			return session.selectOne(ns+"score",cafenum);
		} catch (Exception e) {
			
		} finally {
			MybatisConnection.close(session);					
		}
		return 0;
	}
	
}
