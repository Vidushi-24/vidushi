package com.service;

import java.util.ArrayList;

import com.bean.FlatRegistration;
import com.dao.FlatRegistrationDAOImpl;

public class FlatRegistrationServiceImpl implements IFlatRegistrationService{
	FlatRegistrationDAOImpl frdObj=new FlatRegistrationDAOImpl();
	@Override
	public FlatRegistration registerFlat(FlatRegistration flat) {
		// TODO Auto-generated method stub
		frdObj.registerFlat(flat);
		return null;
	}

	@Override
	public ArrayList<Integer> getAllOwnerIds() {
		// TODO Auto-generated method stub
		frdObj.getAllOwnerIds();
		return null;
	}

}
