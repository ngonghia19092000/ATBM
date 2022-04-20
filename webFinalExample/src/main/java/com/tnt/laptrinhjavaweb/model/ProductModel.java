package com.tnt.laptrinhjavaweb.model;

public class ProductModel extends AbstractModel<ProductModel>{
    private String code;
    private String name;
    private String thumnail;
    private String image;
    private String size;
    private Long color;
    private int price;
    private int pricesale;
    private String description;
    private int score;
    private int quantity;
    private long manfacturerid;
    private long categoryid;
    private ImageModel imageModel;

    public ImageModel getImageModel() {
        return imageModel;
    }

    public void setImageModel(ImageModel imageModel) {
        this.imageModel = imageModel;
    }

    public int getPricesale() {
        return pricesale;
    }

    public void setPricesale(int pricesale) {
        this.pricesale = pricesale;
    }

    public String getCode() { return code; }

    public void setCode(String code) { this.code = code;}

    public String getName() { return name; }

    public void setName(String name) { this.name = name;}

    public String getThumnail() { return thumnail; }

    public void setThumnail(String thumnail) { this.thumnail = thumnail; }

    public String getImage() { return image; }

    public void setImage(String image) { this.image = image; }

    public String getSize() { return size; }

    public Long getColor() { return color; }

    public void setColor(Long color) { this.color = color; }

    public void setSize(String size) { this.size = size; }

    public int getPrice() { return price; }

    public void setPrice(int price) { this.price = price; }

    public String getDescription() { return description; }

    public void setDescription(String description) { this.description = description; }

    public int getScore() { return score; }

    public void setScore(int score) { this.score = score; }

    public int getQuantity() { return quantity; }

    public void setQuantity(int quantity) { this.quantity = quantity; }

    public long getManfacturerid() { return manfacturerid; }

    public void setManfacturerid(long manfacturerid) { this.manfacturerid = manfacturerid; }

    public long getCategoryid() { return categoryid; }

    public void setCategoryid(long categoryid) {
        this.categoryid = categoryid;
    }
}
