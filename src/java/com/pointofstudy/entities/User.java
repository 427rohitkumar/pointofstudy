
package com.pointofstudy.entities;



public class User {
    private int id;
    private String studName;
    private String studF_Name;
    private String studF_Contact;
    private String studContact;
    private String studEmail;
    private String studPassword;
    private String studGender;
    private String studAddress;
    private String studClass;
    private java.sql.Timestamp stud_Reg_Date;

    public User(int id, String studName, String studF_Name, String studF_Contact, String studContact, String studEmail, String studPassword, String studGender, String studAddress, String studClass, java.sql.Timestamp stud_Reg_Date) {
        this.id = id;
        this.studName = studName;
        this.studF_Name = studF_Name;
        this.studF_Contact = studF_Contact;
        this.studContact = studContact;
        this.studEmail = studEmail;
        this.studPassword = studPassword;
        this.studGender = studGender;
        this.studAddress = studAddress;
        this.studClass = studClass;
        this.stud_Reg_Date = stud_Reg_Date;
    }

    public User() {
    }

    public User(String studName, String studF_Name, String studF_Contact, String studContact, String studEmail, String studPassword, String studGender, String studAddress, String studClass) {
        this.studName = studName;
        this.studF_Name = studF_Name;
        this.studF_Contact = studF_Contact;
        this.studContact = studContact;
        this.studEmail = studEmail;
        this.studPassword = studPassword;
        this.studGender = studGender;
        this.studAddress = studAddress;
        this.studClass = studClass;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getStudName() {
        return studName;
    }

    public void setStudName(String studName) {
        this.studName = studName;
    }

    public String getStudF_Name() {
        return studF_Name;
    }

    public void setStudF_Name(String studF_Name) {
        this.studF_Name = studF_Name;
    }

    public String getStudF_Contact() {
        return studF_Contact;
    }

    public void setStudF_Contact(String studF_Contact) {
        this.studF_Contact = studF_Contact;
    }

    public String getStudContact() {
        return studContact;
    }

    public void setStudContact(String studContact) {
        this.studContact = studContact;
    }

    public String getStudEmail() {
        return studEmail;
    }

    public void setStudEmail(String studEmail) {
        this.studEmail = studEmail;
    }

    public String getStudPassword() {
        return studPassword;
    }

    public void setStudPassword(String studPassword) {
        this.studPassword = studPassword;
    }

    public String getStudGender() {
        return studGender;
    }

    public void setStudGender(String studGender) {
        this.studGender = studGender;
    }

    public String getStudAddress() {
        return studAddress;
    }

    public void setStudAddress(String studAddress) {
        this.studAddress = studAddress;
    }

    public String getStudClass() {
        return studClass;
    }

    public void setStudClass(String studClass) {
        this.studClass = studClass;
    }

    public java.sql.Timestamp getStud_Reg_Date() {
        return stud_Reg_Date;
    }

    public void setStud_Reg_Date(java.sql.Timestamp stud_Reg_Date) {
        this.stud_Reg_Date = stud_Reg_Date;
    }
    
    
    

    
    
    


    

    
    
}
