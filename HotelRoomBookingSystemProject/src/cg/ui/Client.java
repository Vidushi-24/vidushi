package cg.ui;

import java.util.List;
import java.util.Scanner;


import cg.dto.CustomerBean;
import cg.dto.HotelBean;
import cg.service.HotelService;
import cg.service.HotelServiceImpl;

public class Client {
	public static void main(String args[]) {
		HotelService hsObj = new HotelServiceImpl();
		Scanner scan = new Scanner(System.in);
		while(true) {
			System.out.println("1. Book new room \n2. Wanna See your details \n3. Exit");
			System.out.println("Enter your choice");
			int choice= scan.nextInt();
			switch(choice) {
			case 1:
				System.out.println("WELCOME TO MARIOTT");
				System.out.println("Please choose your room type from the following:");
				List<HotelBean> list = hsObj.listHotelBean();
				for(int i=0; i<list.size();i++) {
					System.out.println((i+1)+". "+list.get(i).getRoomType());
				}
				System.out.print("Room Type: ");
				int roomType = scan.nextInt();
				System.out.println("Enter your name:");
				String name= scan.next();
				System.out.println("Enter your phone no:");
				long phone = scan.nextLong();
				HotelBean hb = new HotelBean(list.get(roomType-1).getRoomId(), list.get(roomType-1).getRoomType());
				int id = (int)(Math.random()*1000+1000);
				CustomerBean customerbean = new CustomerBean(name, phone, hb);
				hsObj.bookNewRoom(customerbean);
				System.out.println("You have successfully booked your room - ID = "+id);
				break;
			case 2:
				System.out.println("CUSTOMER DETAILS");
				System.out.println(hsObj.getAllCustomers());
				break;
			case 3:
				System.out.println("exiting application..");
				System.exit(0);
			default:
				System.out.println("please enter correct choice");
			}
		}
	}
}
