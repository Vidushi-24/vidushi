package cg.dto;

public class CustomerBean {
	private String id;
	private String name;
	private long phn;
	private HotelBean hotelbean;
	
	
	public CustomerBean(String id, String name, long phn, HotelBean hotelbean) {
		super();
		this.id = id;
		this.name = name;
		this.phn = phn;
		this.hotelbean = hotelbean;
	}

	

	public CustomerBean(String name, long phn, HotelBean hotelbean) {
		super();
		this.name = name;
		this.phn = phn;
		this.hotelbean = hotelbean;
	}



	public String getId() {
		return id;
	}


	public void setId(String id) {
		this.id = id;
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public long getPhn() {
		return phn;
	}


	public void setPhn(long phn) {
		this.phn = phn;
	}


	public HotelBean getHotelbean() {
		return hotelbean;
	}


	public void setHotelbean(HotelBean hotelbean) {
		this.hotelbean = hotelbean;
	}


	@Override
	public String toString() {
		return "[id=" + id + ", name=" + name + ", phn=" + phn+"]";
	}
}
