package com.dao;

import java.util.ArrayList;

import com.bean.FlatRegistration;

public interface IFlatRegistrationDTO {
	FlatRegistration registerFlat(FlatRegistration flat);
	ArrayList<Integer> getAllOwnerIds();
}
