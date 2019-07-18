package com.service;

import java.util.ArrayList;

import com.bean.FlatRegistration;

public interface IFlatRegistrationService {
	FlatRegistration registerFlat(FlatRegistration flat);
	ArrayList<Integer> getAllOwnerIds();
}
