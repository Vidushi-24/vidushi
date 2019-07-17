package com.ui;
import java.util.Scanner;

import com.bean.Invoice;
import com.DAO.DataStorage;
import com.service.Service;
	public class Main {
		
		public static void main(String[] args) {
			
			Scanner sc = new Scanner(System.in);
			
			Invoice ivObj = new Invoice();
			FrontEnd feObj = new FrontEnd();
			DataStorage dsObj = new DataStorage();
			
			Service seObj = new Service(feObj, ivObj, dsObj);
			
			
			seObj.driverMethod();
			sc.close();
			
		}

	}

