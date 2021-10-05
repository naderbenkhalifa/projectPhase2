package com.Academy.backoffice.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import com.Academy.backoffice.model.Classe;
import com.Academy.backoffice.model.Student;
import com.Academy.backoffice.model.Subject;
import com.Academy.backoffice.model.Teacher;

public class AcademyDao {

	public List<Subject> getSubjects() {
		List<Subject> result = null;
		Session session = null;
		try {
			session = getHibernateSession();
			Query<Subject> query = session.createQuery("Select s from Subject s", Subject.class);
			result = query.getResultList();
		} catch (Exception e) {
			System.out.println("getSubjects:Error: ");
			e.printStackTrace();
		} finally {
			if (session != null)
				session.close();
		}
		return result;
	}

	public List<Classe> getClasses() {
		List<Classe> result = null;
		Session session = null;
		try {
			session = getHibernateSession();
			Query<Classe> query = session.createQuery("Select c from Classe c", Classe.class);
			result = query.getResultList();
		} catch (Exception e) {
			System.out.println("getSubjects:Error: ");
			e.printStackTrace();
		} finally {
			if (session != null)
				session.close();
		}
		return result;
	}
	public List<Student> getStudents() {
		List<Student> result = null;
		Session session = null;
		try {
			session = getHibernateSession();
			Query<Student> query = session.createQuery("Select s from Student s", Student.class);
			result = query.getResultList();
		} catch (Exception e) {
			System.out.println("getStudents:Error: ");
			e.printStackTrace();
		} finally {
			if (session != null)
				session.close();
		}
		return result;
	}
	public List<Teacher> getTeachers() {
		List<Teacher> result = null;
		Session session = null;
		try {
			session = getHibernateSession();
			Query<Teacher> query = session.createQuery("Select t from Teacher t", Teacher.class);
			result = query.getResultList();
		} catch (Exception e) {
			System.out.println("getTeachers:Error: ");
			e.printStackTrace();
		} finally {
			if (session != null)
				session.close();
		}
		return result;
	}
public Student getStudent(Integer id) {
		
		Session session = null;
		Student student =null;
		try {
			session = getHibernateSession();
			student = session.get(Student.class, id);
		} catch (Exception e) {
			System.out.println("getStudent:Error: ");
			e.printStackTrace();
		} finally {
			if (session != null)
				session.close();
		}
		return student;
	}
public Teacher getTeacher(Integer id) {
	
	Session session = null;
	Teacher teacher =null;
	try {
		session = getHibernateSession();
		teacher = session.get(Teacher.class, id);
	} catch (Exception e) {
		System.out.println("getTeacher:Error: ");
		e.printStackTrace();
	} finally {
		if (session != null)
			session.close();
	}
	return teacher;
}
	
	
	public Classe getClasse(Integer id) {
		
		Session session = null;
		Classe classe =null;
		try {
			session = getHibernateSession();
			classe = session.get(Classe.class, id);
		} catch (Exception e) {
			System.out.println("getClasses:Error: ");
			e.printStackTrace();
		} finally {
			if (session != null)
				session.close();
		}
		return classe;
	}

	public Subject getSubject(Integer id) {
		Subject subject = null;
		Session session = null;
		try {
			session = getHibernateSession();
			subject = session.get(Subject.class, id);
		} catch (Exception e) {
			System.out.println("getSubjects:Error: ");
			e.printStackTrace();
		} finally {
			if (session != null)
				session.close();
		}
		return subject;
	}

	public void addSubject(Subject newItem) {
		Integer id = null;
		Session session = null;
		try {
			session = getHibernateSession();
			session.beginTransaction();
			
			System.out.println("addSubject: name " + newItem.getName());
			id = (Integer) session.save(newItem);
			System.out.println("addSubject: generated id= " + id);
			session.getTransaction().commit();
			newItem.setId(id);

		} catch (Exception e) {
			System.out.println("getSubjects:Error: ");
			e.printStackTrace();
		} finally {
			if (session != null)
				session.close();
		}
	}

	public void updateSubject(Subject updatedItem) {
		Session session = null;
		try {
			session = getHibernateSession();
			session.beginTransaction();
			System.out.println("updateSubject: name " + updatedItem.getName());
			session.update(updatedItem);
			System.out.println("updateSubject:success");
			session.getTransaction().commit();

		} catch (Exception e) {
			System.out.println("updateSubject:Error: ");
			e.printStackTrace();
		} finally {
			if (session != null)
				session.close();
		}
	}

	public void deleteSubject(Integer id) {
		Session session = null;
		try {
			session = getHibernateSession();

			System.out.println("deleteSubject: id " + id);
			Subject subject = session.get(Subject.class, id);
			if (subject != null) {
				session.beginTransaction();
				session.delete(subject);
				session.getTransaction().commit();
				System.out.println("deleteSubject:success");
			}

		} catch (Exception e) {
			System.out.println("deleteSubject:Error: ");
			e.printStackTrace();
		} finally {
			if (session != null)
				session.close();
		}
	}

	public SessionFactory getHibernateSessionFactory() {
		SessionFactory factory = new Configuration().configure("hibernate.cfg.xml").buildSessionFactory();
		return factory;
	}

	public Session getHibernateSession() {
		return getHibernateSessionFactory().openSession();
	}

}
