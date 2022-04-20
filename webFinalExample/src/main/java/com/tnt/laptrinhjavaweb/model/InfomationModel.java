package com.tnt.laptrinhjavaweb.model;

public class InfomationModel extends AbstractModel<InfomationModel> {
    private String address;
    private String phone;
    private String email;
    private String fbLink;
    private String igLink;
    private String ytbLink;

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getFbLink() {
        return fbLink;
    }

    public void setFbLink(String fbLink) {
        this.fbLink = fbLink;
    }

    public String getIgLink() {
        return igLink;
    }

    public void setIgLink(String igLink) {
        this.igLink = igLink;
    }

    public String getYtbLink() {
        return ytbLink;
    }

    public void setYtbLink(String ytbLink) {
        this.ytbLink = ytbLink;
    }
}
