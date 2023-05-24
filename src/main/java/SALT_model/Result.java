package SALT_model;

import java.util.Date; 

import org.springframework.web.multipart.MultipartFile;

public class Result {
   String empno;
   int gong;
   int young;
   int poom;
   int sill;
   int pilot;
   int gae;
   int seang;
   int kwag;
   
    public Result() {
      }

   public String getEmpno() {
      return empno;
   }

   public void setEmpno(String empno) {
      this.empno = empno;
   }

   public int getGong() {
      return gong;
   }

   public void setGong(int gong) {
      this.gong = gong;
   }

   public int getYoung() {
      return young;
   }

   public void setYoung(int young) {
      this.young = young;
   }

   public int getPoom() {
      return poom;
   }

   public void setPoom(int poom) {
      this.poom = poom;
   }

   public int getSill() {
      return sill;
   }

   public void setSill(int sill) {
      this.sill = sill;
   }

   public int getPilot() {
      return pilot;
   }

   public void setPilot(int pilot) {
      this.pilot = pilot;
   }

   public int getGae() {
      return gae;
   }

   public void setGae(int gae) {
      this.gae = gae;
   }

   public int getSeang() {
      return seang;
   }

   public void setSeang(int seang) {
      this.seang = seang;
   }

   public int getKwag() {
      return kwag;
   }

   public void setKwag(int kwag) {
      this.kwag = kwag;
   }

   @Override
   public String toString() {
      return "result [empno=" + empno + ", gong=" + gong + ", young=" + young + ", poom=" + poom + ", sill=" + sill
            + ", pilot=" + pilot + ", gae=" + gae + ", seang=" + seang + ", kwag=" + kwag + "]";
   }
    
    
}