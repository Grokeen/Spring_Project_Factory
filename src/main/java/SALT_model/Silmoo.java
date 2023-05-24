package SALT_model;

public class Silmoo {
   String deptno;
   String connumber;
   String content;
   int conscore;
   String kind;
   
    public Silmoo() {
         
      }
   public String getDeptno() {
      return deptno;
   }
   public void setDeptno(String deptno) {
      this.deptno = deptno;
   }
   public String getConnumber() {
      return connumber;
   }
   public void setConnumber(String connumber) {
      this.connumber = connumber;
   }
   public String getContent() {
      return content;
   }
   public void setContent(String content) {
      this.content = content;
   }
   public int getConscore() {
      return conscore;
   }
   public void setConscore(int conscore) {
      this.conscore = conscore;
   }
   public String getKind() {
      return kind;
   }
   public void setKind(String kind) {
      this.kind = kind;
   }
   @Override
   public String toString() {
      return "Silmoo [deptno=" + deptno + ", connumber=" + connumber + ", content=" + content + ", conscore="
            + conscore + ", kind=" + kind + "]";
   }
   
   
   
   
}