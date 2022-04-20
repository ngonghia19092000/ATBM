package com.tnt.laptrinhjavaweb.model;

public class BannerModel  extends  AbstractModel<BannerModel>{
    private String name;
    private String describe;
    private  int status;
   private String image;




    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }



    public String getDescribe() {
        return describe;
    }

    public void setDescribe(String describe) {
        this.describe = describe;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }
}
