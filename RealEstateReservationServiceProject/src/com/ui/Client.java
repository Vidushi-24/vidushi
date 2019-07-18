package com.ui;

import java.util.Scanner;

import com.dao.FlatRegistrationDAOImpl;

public class Client {
	public static void main(String args[])
	{
		FlatRegistrationDAOImpl frdObj = new FlatRegistrationDAOImpl();
		int ch;
		Scanner sc=new Scanner(System.in);
		System.out.println("1. Register Flat");
		System.out.println("2. Display Flat Registration Details");
		System.out.println("3. Exit");
		System.out.println("Enter your choice");
		ch=sc.nextInt();
		switch(ch)
		{
		case 1:
			//System.out.print("Existing Owner IDS Are:- "+frdObj.);
			//frdObj=
			System.out.print("Please enter your owner id from above list: \n");
			int id=sc.nextInt();
			System.out.print("Select Flat Type (1-1BHK, 2-2BHK):\n");
			int bhk=sc.nextInt();
			System.out.print("Enter Flat area in sq. ft.: \n");
			int area=sc.nextInt();
			System.out.print("Enter desired rent amount Rs: ");
			int rent=sc.nextInt();
			System.out.print("Enter desired deposit amount Rs: ");
			int amt=sc.nextInt();
			System.out.println("Flat successfully registered. Registration id: "+"<"+id+">");
			break;
		case 2:
			break;
		case 3:
			System.exit(0);
			break;
		}
		sc.close();
	}
}
