package com.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import com.bean.FlatOwner;
import com.bean.FlatRegistration;
import com.bean.RegistrationDetails;

public class FlatRegistrationDAOImpl implements IFlatRegistrationDTO{

	Map<Integer,RegistrationDetails> flatDetails=new HashMap<>();
	
	@Override
	public FlatRegistration registerFlat(FlatRegistration flat) {
		// TODO Auto-generated method stub
		
		return null;
	}
	
	ArrayList<FlatRegistration> getFlatDetails()
	{
		return null;
		
	}

	@Override
	public ArrayList<Integer> getAllOwnerIds() {
		// TODO Auto-generated method stub
		return null;
	}
	public FlatRegistrationDAOImpl()
	{
		Map<Integer,FlatOwner> owners=new HashMap<>();
		owners.put(1, new FlatOwner(1,"Vaishali",9612882683L));
		owners.put(2, new FlatOwner(2,"Meghna",9612882683L));
		owners.put(3, new FlatOwner(3,"Manish",9612882683L));
	}
	
}
