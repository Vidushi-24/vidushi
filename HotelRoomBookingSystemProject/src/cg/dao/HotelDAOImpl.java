package cg.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import cg.dto.CustomerBean;
import cg.dto.HotelBean;

public class HotelDAOImpl implements HotelDAO{

	private static Map<String,CustomerBean> customer=new HashMap<String,CustomerBean>();
	
	@Override
	public int bookNewRoom(CustomerBean customerbean) {
		// TODO Auto-generated method stub
		customer.put(customerbean.getId(), customerbean);
		return 0;
	}
	private static Map<String,String> hotelRoom=new HashMap<String,String>();

	//private static Map<String,TicketBean> ticketLog=new HashMap<String,TicketBean >();
	public static Map<String,String> getRoomDetails() {
		hotelRoom.put("hr1001", "AC");
		hotelRoom.put("hr1002", "Non-AC");
		hotelRoom.put("hr1003","Dormetary");
		
		return hotelRoom;
	}

	@Override
	public List<HotelBean> listHotelBean() {
		// TODO Auto-generated method stub
		List<HotelBean> list = new ArrayList<HotelBean>();
		Map<String,String> map = HotelDAOImpl.getRoomDetails();
		for(Map.Entry<String, String> entry : map.entrySet()) {
			HotelBean hb = new HotelBean(entry.getKey(), entry.getValue());
			list.add(hb);
		}
		return list;
	}

	/*
	 * @Override public Collection<CustomerBean> getAllCustomerDetails() { // TODO
	 * Auto-generated method stub if(customer.isEmpty()) {
	 * System.out.println("There is no customer details"); return null; } else {
	 * return customer.values(); } }
	 */
	public Map<String, CustomerBean> getAllCustomers(){
		if(customer.isEmpty()) {
    		System.out.println("No customer found");
    		
    	}
    	else {
    		return customer;
    	}
		return null;
	}
}
