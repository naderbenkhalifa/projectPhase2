package com.Academy.backoffice.utils;

import com.Academy.backoffice.dao.AcademyDao;

public class AcademyFactory {
	public static AcademyDao getAcademyDao() {
		return new AcademyDao();
	}

}
