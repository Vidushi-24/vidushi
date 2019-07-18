package com.bean;

public class FlatRegistration {
	private int flat_type, flat_area, rent, amount;

	@Override
	public String toString() {
		return "FlatRegistration [flat_type=" + flat_type + ", flat_area=" + flat_area + ", rent=" + rent + ", amount="
				+ amount + "]";
	}

	public FlatRegistration(int flat_type, int flat_area, int rent, int amount) {
		super();
		this.flat_type = flat_type;
		this.flat_area = flat_area;
		this.rent = rent;
		this.amount = amount;
	}

	public int getFlat_type() {
		return flat_type;
	}

	public void setFlat_type(int flat_type) {
		this.flat_type = flat_type;
	}

	public int getFlat_area() {
		return flat_area;
	}

	public void setFlat_area(int flat_area) {
		this.flat_area = flat_area;
	}

	public int getRent() {
		return rent;
	}

	public void setRent(int rent) {
		this.rent = rent;
	}

	public int getAmount() {
		return amount;
	}

	public void setAmount(int amount) {
		this.amount = amount;
	}
}
