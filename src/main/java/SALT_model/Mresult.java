package SALT_model;

public class Mresult {
   String empno;
   String gong;
   String young;
   String poom;
   String sill;
   String pilot;
   String gae;
   String seang;
   String kwag;
   
   public Mresult() {}
   
   public String getEmpno() {
      return empno;
   }
   public void setEmpno(String empno) {
      this.empno = empno;
   }
   public String getGong() {
      return gong;
   }
   public void setGong(String gong) {
      this.gong = gong;
   }
   public String getYoung() {
      return young;
   }
   public void setYoung(String young) {
      this.young = young;
   }
   public String getPoom() {
      return poom;
   }
   public void setPoom(String poom) {
      this.poom = poom;
   }
   public String getSill() {
      return sill;
   }
   public void setSill(String sill) {
      this.sill = sill;
   }
   public String getPilot() {
      return pilot;
   }
   public void setPilot(String pilot) {
      this.pilot = pilot;
   }
   public String getGae() {
      return gae;
   }
   public void setGae(String gae) {
      this.gae = gae;
   }
   public String getSeang() {
      return seang;
   }
   public void setSeang(String seang) {
      this.seang = seang;
   }
   public String getKwag() {
      return kwag;
   }
   public void setKwag(String kwag) {
      this.kwag = kwag;
   }

   @Override
   public String toString() {
      return "Mresult [empno=" + empno + ", gong=" + gong + ", young=" + young + ", poom=" + poom + ", sill=" + sill
            + ", pilot=" + pilot + ", gae=" + gae + ", seang=" + seang + ", kwag=" + kwag + "]";
   }
   
}