
package com.Academy.backoffice.model;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;

@Entity
public class Classe {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Integer id;
	@Column
	private String name;
	@OneToMany
	@JoinColumn(name="classe_Id")
	private List<TeachingSubject> subjects;
	@OneToMany
	@JoinColumn(name="classe_id")
	private List<Student> students;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public List<TeachingSubject> getSubjects() {
		return subjects;
	}
	public void setSubjects(List<TeachingSubject> subjects) {
		this.subjects = subjects;
	}
	
	
}
