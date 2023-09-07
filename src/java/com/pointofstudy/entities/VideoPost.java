
package com.pointofstudy.entities;

public class VideoPost {
    private int vId;
    private String vTitle;
    private String vDescription;
    private String vthumbnail;
    private String vVideo;
    private int classId;
    private int subjectId;

    public VideoPost() {
    }

    public VideoPost(int vId, String vTitle, String vDescription, String vthumbnail, String vVideo, int classId, int subjectId) {
        this.vId = vId;
        this.vTitle = vTitle;
        this.vDescription = vDescription;
        this.vthumbnail = vthumbnail;
        this.vVideo = vVideo;
        this.classId = classId;
        this.subjectId = subjectId;
    }

    public VideoPost(String vTitle, String vDescription, String vthumbnail, String vVideo, int classId, int subjectId) {
        this.vTitle = vTitle;
        this.vDescription = vDescription;
        this.vthumbnail = vthumbnail;
        this.vVideo = vVideo;
        this.classId = classId;
        this.subjectId = subjectId;
    }

    public int getvId() {
        return vId;
    }

    public void setvId(int vId) {
        this.vId = vId;
    }

    public String getvTitle() {
        return vTitle;
    }

    public void setvTitle(String vTitle) {
        this.vTitle = vTitle;
    }

    public String getvDescription() {
        return vDescription;
    }

    public void setvDescription(String vDescription) {
        this.vDescription = vDescription;
    }

    public String getVthumbnail() {
        return vthumbnail;
    }

    public void setVthumbnail(String vthumbnail) {
        this.vthumbnail = vthumbnail;
    }

    public String getvVideo() {
        return vVideo;
    }

    public void setvVideo(String vVideo) {
        this.vVideo = vVideo;
    }

    public int getClassId() {
        return classId;
    }

    public void setClassId(int classId) {
        this.classId = classId;
    }

    public int getSubjectId() {
        return subjectId;
    }

    public void setSubjectId(int subjectId) {
        this.subjectId = subjectId;
    }
    
    
}
