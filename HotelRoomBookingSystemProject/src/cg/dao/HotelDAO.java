package cg.dao;

import java.util.Collection;
import java.util.List;
import java.util.Map;

import cg.dto.CustomerBean;
import cg.dto.HotelBean;
import cg.exception.CustomerException;

public interface HotelDAO {
	public int bookNewRoom(CustomerBean customerbean);
	public List<HotelBean> listHotelBean();
	//public Collection<CustomerBean> getAllCustomerDetails();
	public Map<String, CustomerBean> getAllCustomers();
}
