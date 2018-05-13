package com.newer.pojo;

import java.util.Set;

import javax.persistence.ManyToMany;

public class Meal {

	private int id;// 商品id
	private String mealName;// 商品名
	private String mealIntroduce;// 商品介绍
	private String mealPrice;// 商品价格
	private String mealType;// 商品类别
	private int mealAmount;// 商品数量
	private String saleTime;// 商品上架时间
	private String images_path;// 商品图片路径
	private Set<Order> orders;// 商品多对多关联订单

	public Meal() {
		super();
	}

	public int getId() {
		return id;
	}

	public String getMealName() {
		return mealName;
	}

	public String getMealIntroduce() {
		return mealIntroduce;
	}

	public String getMealPrice() {
		return mealPrice;
	}

	public String getMealType() {
		return mealType;
	}

	public int getMealAmount() {
		return mealAmount;
	}

	public String getSaleTime() {
		return saleTime;
	}

	public String getImages_path() {
		return images_path;
	}
	public Set<Order> getOrders() {
		return orders;
	}

	public void setId(int id) {
		this.id = id;
	}

	public void setMealName(String mealName) {
		this.mealName = mealName;
	}

	public void setMealIntroduce(String mealIntroduce) {
		this.mealIntroduce = mealIntroduce;
	}

	public void setMealPrice(String mealPrice) {
		this.mealPrice = mealPrice;
	}

	public void setMealType(String mealType) {
		this.mealType = mealType;
	}

	public void setMealAmount(int mealAmount) {
		this.mealAmount = mealAmount;
	}

	public void setSaleTime(String saleTime) {
		this.saleTime = saleTime;
	}

	public void setImages_path(String images_path) {
		this.images_path = images_path;
	}

	public void setOrders(Set<Order> orders) {
		this.orders = orders;
	}

	public Meal(int id, String mealName, String mealIntroduce, String mealPrice, String mealType, int mealAmount,
			String saleTime, String images_path, Set<Order> orders) {
		super();
		this.id = id;
		this.mealName = mealName;
		this.mealIntroduce = mealIntroduce;
		this.mealPrice = mealPrice;
		this.mealType = mealType;
		this.mealAmount = mealAmount;
		this.saleTime = saleTime;
		this.images_path = images_path;
		this.orders = orders;
	}

	public Meal(int id, String mealName, String mealIntroduce, String mealPrice, String mealType, int mealAmount,
			String saleTime, String images_path) {
		super();
		this.id = id;
		this.mealName = mealName;
		this.mealIntroduce = mealIntroduce;
		this.mealPrice = mealPrice;
		this.mealType = mealType;
		this.mealAmount = mealAmount;
		this.saleTime = saleTime;
		this.images_path = images_path;
	}

	public Meal(String mealName, String mealIntroduce, String mealPrice, String mealType, int mealAmount,
			String saleTime, String images_path, Set<Order> orders) {
		super();
		this.mealName = mealName;
		this.mealIntroduce = mealIntroduce;
		this.mealPrice = mealPrice;
		this.mealType = mealType;
		this.mealAmount = mealAmount;
		this.saleTime = saleTime;
		this.images_path = images_path;
		this.orders = orders;
	}

	public Meal(String mealName, String mealIntroduce, String mealPrice, String mealType, int mealAmount,
			String saleTime, String images_path) {
		super();
		this.mealName = mealName;
		this.mealIntroduce = mealIntroduce;
		this.mealPrice = mealPrice;
		this.mealType = mealType;
		this.mealAmount = mealAmount;
		this.saleTime = saleTime;
		this.images_path = images_path;
	}

	@Override
	public String toString() {

		return "Meal [id=" + id + ", mealName=" + mealName + ", mealIntroduce=" + mealIntroduce + ", mealPrice="
				+ mealPrice + ", mealType=" + mealType + ", mealAmount=" + mealAmount + ", saleTime=" + saleTime
				+ ", images_path=" + images_path + "]" + "wo shi meal";
	}

}
