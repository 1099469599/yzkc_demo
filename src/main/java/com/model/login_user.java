package com.model;

public class login_user {
    private Integer lid;

    private String luser;

    private String lpassword;

    private String ldetail;

    private Integer ltelephone;

    private String limage;

    private String ltype;

    private String lusername;

    private String laddress;

    private String lextra;

    public Integer getLid() {
        return lid;
    }

    public void setLid(Integer lid) {
        this.lid = lid;
    }

    public String getLuser() {
        return luser;
    }

    public void setLuser(String luser) {
        this.luser = luser == null ? null : luser.trim();
    }

    public String getLpassword() {
        return lpassword;
    }

    public void setLpassword(String lpassword) {
        this.lpassword = lpassword == null ? null : lpassword.trim();
    }

    public String getLdetail() {
        return ldetail;
    }

    public void setLdetail(String ldetail) {
        this.ldetail = ldetail == null ? null : ldetail.trim();
    }

    public Integer getLtelephone() {
        return ltelephone;
    }

    public void setLtelephone(Integer ltelephone) {
        this.ltelephone = ltelephone;
    }

    public String getLimage() {
        return limage;
    }

    public void setLimage(String limage) {
        this.limage = limage == null ? null : limage.trim();
    }

    public String getLtype() {
        return ltype;
    }

    public void setLtype(String ltype) {
        this.ltype = ltype == null ? null : ltype.trim();
    }

    public String getLusername() {
        return lusername;
    }

    public void setLusername(String lusername) {
        this.lusername = lusername == null ? null : lusername.trim();
    }

    public String getLaddress() {
        return laddress;
    }

    public void setLaddress(String laddress) {
        this.laddress = laddress == null ? null : laddress.trim();
    }

    public String getLextra() {
        return lextra;
    }

    public void setLextra(String lextra) {
        this.lextra = lextra == null ? null : lextra.trim();
    }
}