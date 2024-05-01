package com.Products;

public class Product {
	  private String name;
	  private String price;
	  private String imageURL;

	  public Product(String products_name, String products_price, String products_img) {
	    this.name = products_name;
	    this.price = products_price;
	    this.imageURL = products_img;
	  }

	  public Product() {
		// TODO Auto-generated constructor stub
	}

	public String getName() {
	    return name;
	  }

	  public void setName(String products_name) {
	    this.name = products_name;
	  }

	  public String getPrice() {
	    return price;
	  }

	  public void setPrice(String products_price) {
	    this.price = products_price;
	  }

	  public String getImageURL() {
	    return imageURL;
	  }

	  public void setImageURL(String products_img) {
	    this.imageURL = products_img;
	  }
}
