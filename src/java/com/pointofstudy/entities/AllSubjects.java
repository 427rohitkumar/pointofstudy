
package com.pointofstudy.entities;


public class AllSubjects {
    
    private int subject_id;
    private String subject;

    public AllSubjects() {
    }

    public AllSubjects(int subject_id, String subject) {
        this.subject_id = subject_id;
        this.subject = subject;
    }

    public AllSubjects(String subject) {
        this.subject = subject;
    }

    public int getSubject_id() {
        return subject_id;
    }

    public void setSubject_id(int subject_id) {
        this.subject_id = subject_id;
    }

    public String getSubject() {
        return subject;
    }

    public void setSubject(String subject) {
        this.subject = subject;
    }
    
    
}
