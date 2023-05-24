package SALT_model;

import java.util.Date; 

import org.springframework.web.multipart.MultipartFile;

public class Booseo {
   String deptno;
   String deptname;

   public Booseo() {
   }

   public String getDeptno() {
      return deptno;
   }

   public void setDeptno(String deptno) {
      this.deptno = deptno;
   }

   public String getDeptname() {
      return deptname;
   }

   public void setDeptname(String deptname) {
      this.deptname = deptname;
   }

   @Override
   public String toString() {
      return "Booseo [deptno=" + deptno + ", deptname=" + deptname + "]";
   }
   
}