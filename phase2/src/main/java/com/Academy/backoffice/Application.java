package com.Academy.backoffice;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class Application {

	public static void main(String[] args) {
		getHibernateSessionFactory();

	}
	
	public static SessionFactory getHibernateSessionFactory() {
		SessionFactory factory=new Configuration().configure("hibernate.cfg.xml").buildSessionFactory();
		return factory;
	}

}
