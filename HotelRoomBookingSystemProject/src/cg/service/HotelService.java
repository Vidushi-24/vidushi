package cg.service;

import java.util.Collection;
import java.util.List;
import java.util.Map;

import cg.dto.CustomerBean;
import cg.dto.HotelBean;

public interface HotelService {
	public int bookNewRoom(CustomerBean customerbean);
	public List<HotelBean> listHotelBean();
	//public Collection<CustomerBean> getAllCustomerDetails();
	public Map<String, CustomerBean> getAllCustomers();
}
