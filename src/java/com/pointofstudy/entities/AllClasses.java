
package com.pointofstudy.entities;

public class AllClasses {
    private int class_id;
    private String classes;

    public AllClasses() {
    }

    public AllClasses(int class_id, String classes) {
        this.class_id = class_id;
        this.classes = classes;
    }

    public AllClasses(String classes) {
        this.classes = classes;
    }

    public int getClass_id() {
        return class_id;
    }

    public void setClass_id(int class_id) {
        this.class_id = class_id;
    }

    public String getClasses() {
        return classes;
    }

    public void setClasses(String classes) {
        this.classes = classes;
    }
    
    
    
    
}
