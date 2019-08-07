package cg.service;

import java.util.Collection;
import java.util.List;
import java.util.Map;

import cg.dao.HotelDAO;
import cg.dao.HotelDAOImpl;
import cg.dto.CustomerBean;
import cg.dto.HotelBean;

public class HotelServiceImpl implements HotelService{
	HotelDAO hdao = new HotelDAOImpl();
	@Override
	public int bookNewRoom(CustomerBean customerbean) {
		// TODO Auto-generated method stub
		int i = hdao.bookNewRoom(customerbean);
		return i;
	}

	@Override
	public List<HotelBean> listHotelBean() {
		// TODO Auto-generated method stub
		List<HotelBean> list = hdao.listHotelBean();
		return list;
	}

	@Override
	public Map<String, CustomerBean> getAllCustomers() {
		// TODO Auto-generated method stub
		return hdao.getAllCustomers();
	}

}
