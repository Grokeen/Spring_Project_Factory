package SALT_service;

import java.util.ArrayList; 
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;

import SALT_model.Booseo;
import SALT_model.Employee;
import SALT_model.Inseong;
import SALT_model.Mresult;
import SALT_model.Result;
import SALT_model.Silmoo;

import util.MybatisConnection;

@Component
public class EmployeeMybatis {
   private static final String NS = "employee.";
   private Map<String, Object> map = new HashMap<String, Object>();
   
   public boolean empinput(String empno, String username, String password, String deptno, String content){
         SqlSession session = MybatisConnection.getConnection();
         try {
            map.clear();
            map.put("deptno", deptno);
            map.put("password", password);
            map.put("empno", empno);
            map.put("username", username);
            map.put("content", content);

           session.insert(NS+"Empcreate",map);
           System.out.println(map);
           
            return true;
         }catch(Exception e) {
            e.printStackTrace();    
         }finally {
            MybatisConnection.close(session);
         }
          return false;
   }
   
   public List<Employee> login(String empno, String password){
         SqlSession session = MybatisConnection.getConnection();
         
         map.clear();
         map.put("empno",empno);
         map.put("password",password);
         
         try {
            List<Employee> a = session.selectList(NS+"login",map);
            return a;
         }catch(Exception e) {
            e.printStackTrace();
            return null;
         }
      }
   
    public List<Employee> employeelist(){
         SqlSession session = MybatisConnection.getConnection();
         
         List<Employee> a = session.selectList(NS+"employeelist");
         
         return a;
      }
    
    // 신입사원 부서 추가
    public boolean empdeptupdate(String deptname, String empno) {
         SqlSession session = MybatisConnection.getConnection();
         try {
            map.clear();
            map.put("deptname", deptname);
            map.put("empno", empno);
            session.update(NS+"Empdeptupdate",map);
            return true;
         }catch(Exception e) {
            e.printStackTrace();
         }finally {
            MybatisConnection.close(session);
         }
         return false;
      }
    
 // 관리자가 볼 수 있는 부서명 리스트
    public List<Booseo> Empbooseolist() {
       SqlSession session = MybatisConnection.getConnection();
          
          List<Booseo> b = session.selectList(NS+"Empbooseolist");
          return b;
    }
    
    
    public boolean empbooseo(String deptno, String empno) {
         SqlSession session = MybatisConnection.getConnection();
         try {
            map.clear();
            map.put("deptno", deptno);
            map.put("empno", empno);
            session.update(NS+"employeeupdate",map);
            return true;
         }catch(Exception e) {
            e.printStackTrace();
         }finally {
            MybatisConnection.close(session);
         }
         return false;
      }
    
    public List<Booseo> booseolist(){
         SqlSession session = MybatisConnection.getConnection();
         
         List<Booseo> a = session.selectList(NS+"booseolist");
         
         return a;
      }
    
    public String empname(String empno){
        SqlSession session = MybatisConnection.getConnection();
        
        String a = session.selectOne(NS+"empname",empno);
        
        return a;
     }
    
    public List<Result> userscore(String empno,String a) {
        SqlSession session = MybatisConnection.getConnection();
        try {
            map.clear();
            map.put("empno", empno);
            map.put("content", a);
            List<Result> userscore =session.selectList(NS+"userscore",map);
            System.out.println(userscore);
            return userscore;
         }catch(Exception e) {
            e.printStackTrace();
         }finally {
            MybatisConnection.close(session);
         }
		return null;
        
        
 }
     public List<Employee> userscore2(String empno) {
        SqlSession session = MybatisConnection.getConnection();
        List<Employee> userscore = session.selectList(NS+"userscorelist",empno);
        
        return userscore;
 }
    
     public List<Booseo> booseouserlist(String deptno){
         SqlSession session = MybatisConnection.getConnection();
         
         List<Booseo> a = session.selectList(NS+"booseouserlist",deptno);
         MybatisConnection.close(session);
         System.out.println(a);
         return a;
      }  
    
    
    public List<Inseong> ilist(){
        SqlSession session = MybatisConnection.getConnection();
        
        List<Inseong> a = session.selectList(NS+"ilist");
        System.out.println(a);
        MybatisConnection.close(session);
        return a;
     }
    
    public List<Silmoo> slist(){
        SqlSession session = MybatisConnection.getConnection();
        
        List<Silmoo> a = session.selectList(NS+"slist");
        
        return a;
     }
      
    public boolean contentupdate(String empno, String c) {
        SqlSession session = MybatisConnection.getConnection();
        try {
             map.clear();
             map.put("empno", empno);
             map.put("content", c);
             session.update(NS+"updatecontent",map);
             System.out.println(map);
             return true;
          }catch(Exception e) {
             e.printStackTrace();
          }finally {
             MybatisConnection.close(session);
          }
          return false;
     }
    
    
    public String resultlist(String empno) {
       SqlSession session = MybatisConnection.getConnection();
       String a= session.selectOne(NS+"resultlist",empno);
       
       return a;
    }
    
    
    
    public String deptname() {
        SqlSession session = MybatisConnection.getConnection();
        String a= session.selectOne(NS+"deptnameString");
        System.out.println(a);
        return a;
     }
    public boolean booseochooga(String deptno, String deptname) {
    	SqlSession session = MybatisConnection.getConnection();
        try {
             map.clear();
             map.put("deptno",deptno);
             map.put("deptname",deptname);
             session.insert(NS+"booseochooga",map);
             return true;
          }catch(Exception e) {
             e.printStackTrace();
          }finally {
             MybatisConnection.close(session);
          }
          return false;
     }
    public String resultbooseochooga(String deptno) {
        SqlSession session = MybatisConnection.getConnection();
        session.selectOne(NS+"resultbooseochooga",deptno);
        return null;
     }
    
    public List<Result> munjaelist(String deptno){
    	SqlSession session = MybatisConnection.getConnection();
    	List<Result> munjaelist = session.selectList(NS+"munjaelist",deptno);
    	return munjaelist;
    }
    
    public String changescore(int conscore,String deptno, String content) {
    	SqlSession session = MybatisConnection.getConnection();
    	try {
    	map.clear();
    	map.put("conscore", conscore);
    	map.put("deptno", deptno);
    	map.put("content", content);
    	System.out.println(map);
    	session.update(NS+"changescore",map);
    	}catch(Exception e) {
            e.printStackTrace();
         }finally {
            MybatisConnection.close(session);
         }
         return null;
    }
    public String munjaedelete(String deptno, String content) {
    	SqlSession session = MybatisConnection.getConnection();
    	try {
    	map.clear();
    	map.put("deptno", deptno);
    	map.put("content", content);
    	session.delete(NS+"munjaedelete",map);
    	}catch(Exception e) {
            e.printStackTrace();
         }finally {
            MybatisConnection.close(session);
         }
         return null;
    }
    public String munjaechooga(String deptno, String content, int conscore, String kind) {
    	SqlSession session = MybatisConnection.getConnection();
    	try {
    	map.clear();
    	map.put("conscore", conscore);
    	map.put("deptno", deptno);
    	map.put("content", content);
    	map.put("kind", kind);
    	session.insert(NS+"munjaechooga",map);
    	}catch(Exception e) {
            e.printStackTrace();
         }finally {
            MybatisConnection.close(session);
         }
         return null;
    }
     
      
      
      public String inseongtestchooga(String content,int conscore, String kind) {
    	  SqlSession session = MybatisConnection.getConnection();
    	  try {
    	  map.clear();
    	  map.put("content", content);
    	  map.put("conscore", conscore);
    	  map.put("kind",kind);
    	  session.insert(NS+"inseongtestchooga",map);
    	  }catch (Exception e) {
    		  e.printStackTrace();
    	  }finally {
    		  MybatisConnection.close(session);
    	  }
    	  return null;
      }
      
      
      public String inseongtestdelete(String content) {
    	  SqlSession session = MybatisConnection.getConnection();
    	  try {
    		  System.out.println(content);
    	  session.delete(NS+"inseongtestdelete",content);
    	  }catch (Exception e) {
    		  e.printStackTrace();
    	  }finally {
    		  MybatisConnection.close(session);
    	  }
    	  return null;
      }
      public String inseongtestscorechange(int conscore,String content) {
    	  SqlSession session = MybatisConnection.getConnection();
    	  try {
    		  map.clear();
    		  System.out.println(map);
    		  map.put("conscore", conscore);
    		  map.put("content", content);
    	  session.update(NS+"inseongtestscorechange",map);
    	  }catch (Exception e) {
    		  e.printStackTrace();
    	  }finally {
    		  MybatisConnection.close(session);
    	  }
    	  return null;
      }
      
      
      
      
      
      
      
      

      
      
      public List<String> scon() {
          SqlSession session = MybatisConnection.getConnection();
          List<String> a = session.selectList(NS+"scon");
          return a;
       }
       
       public List<String> sscore() {
          SqlSession session = MybatisConnection.getConnection();
          List<String> a = session.selectList(NS+"sscore");
          return a;
       }
       
       public List<String> sdeptno() {
          SqlSession session = MybatisConnection.getConnection();
          List<String> a = session.selectList(NS+"sdeptno");
          return a;
       }
       
      
       public int booseocount() {
           SqlSession session = MybatisConnection.getConnection();
           int a = session.selectOne(NS+"booseocount");
           return a;
        }
        
        public boolean resultinput3(String deptno, int iresult, String empno) {
           SqlSession session = MybatisConnection.getConnection();
           try {
              map.clear();
              map.put("deptno", deptno);
              map.put("score", iresult);
              map.put("empno", empno);
              session.update(NS+"resultinput3",map);
           }catch(Exception e) {
              e.printStackTrace();
           }finally {
              MybatisConnection.close(session);
           }
           return false;
        }
        
        public boolean resultinput2(String empno) {
           SqlSession session = MybatisConnection.getConnection();
           try {
              session.insert(NS+"resultinput2",empno);
           }catch(Exception e) {
              e.printStackTrace();
           }finally {
              MybatisConnection.close(session);
           }
           return false;
        }
        
        public boolean resultupdate2(String empno, String ss, int si) {
           SqlSession session = MybatisConnection.getConnection();
           try {
              map.clear();
              map.put("empno", empno);
              map.put("deptno", ss);
              map.put("score", si);
              
              session.update(NS+"resultupdate2",map);
           
           }catch(Exception e) {
              e.printStackTrace();
           }finally {
              MybatisConnection.close(session);
           }
           return false;
        }
        
        public boolean resultdelete(String empno) {
           SqlSession session = MybatisConnection.getConnection();
           try {   
              session.delete(NS+"resultdelete",empno);
           }catch(Exception e) {
              e.printStackTrace();
           }finally {
              MybatisConnection.close(session);
           }
           return false;
        }
        
        public List<String> booseodeptnolist() {
           SqlSession session = MybatisConnection.getConnection();
           List<String> a = session.selectList(NS+"booseodeptnolist");
           return a;
        }
        
        
      
        public String mresultlist(String empno) {
            SqlSession session = MybatisConnection.getConnection();
            String a= session.selectOne(NS+"mresultlist",empno);
            
            return a;
         }
        
        public boolean mresultinput(String empno) {
            SqlSession session = MybatisConnection.getConnection();
            try {
               session.insert(NS+"mresultinput",empno);
            }catch(Exception e) {
               e.printStackTrace();
            }finally {
               MybatisConnection.close(session);
            }
            return false;
         }
        
        public boolean mresultdelete(String empno) {
            SqlSession session = MybatisConnection.getConnection();
            try {   
               session.delete(NS+"mresultdelete",empno);
            }catch(Exception e) {
               e.printStackTrace();
            }finally {
               MybatisConnection.close(session);
            }
            return false;
         }
        
      public List<Mresult> mcontentlist(String deptno, String empno){
         SqlSession session = MybatisConnection.getConnection();
         map.clear();
         map.put("deptno", deptno);
         map.put("empno", empno);
         List<Mresult> a = session.selectList(NS+"mcontentlist",map);
         return a;
      }
      
      public boolean mcontentinput1(String deptno, String content, String empno){
         SqlSession session = MybatisConnection.getConnection();
         try {   
            map.clear();
            map.put("deptno", deptno);
            map.put("content", content);
            map.put("empno", empno);
              session.update(NS+"mcontentinput1",map);
           }catch(Exception e) {
              e.printStackTrace();
           }finally {
              MybatisConnection.close(session);
           }
           return false;
      }
      
      public boolean mcontentinput2(String deptno, String content, String empno){
           SqlSession session = MybatisConnection.getConnection();
           try {   
              map.clear();
            map.put("deptno", deptno);
            map.put("content", content);
            map.put("empno", empno);
              session.update(NS+"mcontentinput2",map);
           }catch(Exception e) {
              e.printStackTrace();
           }finally {
              MybatisConnection.close(session);
           }
           return false;
      }
      
      public List<String> skind() {
          SqlSession session = MybatisConnection.getConnection();
          List<String> a = session.selectList(NS+"skind");
          return a;
       }
      
      public String tdept(String deptname) {
          SqlSession session = MybatisConnection.getConnection();
          String a = session.selectOne(NS+"tdept",deptname);
          return a;
       }
      
      public String mscore(String deptno, String empno) {
          SqlSession session = MybatisConnection.getConnection();
          map.clear();
          map.put("empno", empno);
          map.put("deptno", deptno);
          String a = session.selectOne(NS+"mscore",map);
          return a;
       }
      public String mresultbooseochooga(String deptno) {
          SqlSession session = MybatisConnection.getConnection();
          session.selectOne(NS+"mresultbooseochooga",deptno);
          return null;
       }
}