package com.skilldistillery.superproject.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class State {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String name;
	@Column(name = "greatest_leader")
	private String greatestLeader;
	private String founder;
	private int population;
	private String language;
	private String religion;
	private String legacy;
	@Column(name = "date_founded")
	private int dateFounded;
	@Column(name = "date_ended")
	private int dateEnded;
	
	@Override
	public String toString() {
		return "State [id=" + id + ", name=" + name + ", greatestLeader=" + greatestLeader + ", founder=" + founder
				+ ", population=" + population + ", language=" + language + ", religion=" + religion + ", legacy="
				+ legacy + ", dateFounded=" + dateFounded + ", dateEnded=" + dateEnded + "]";
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getGreatestLeader() {
		return greatestLeader;
	}

	public void setGreatestLeader(String greatestLeader) {
		this.greatestLeader = greatestLeader;
	}

	public String getFounder() {
		return founder;
	}

	public void setFounder(String founder) {
		this.founder = founder;
	}

	public int getPopulation() {
		return population;
	}

	public void setPopulation(int population) {
		this.population = population;
	}

	public String getLanguage() {
		return language;
	}

	public void setLanguage(String language) {
		this.language = language;
	}

	public String getReligion() {
		return religion;
	}

	public void setReligion(String religion) {
		this.religion = religion;
	}

	public String getLegacy() {
		return legacy;
	}

	public void setLegacy(String legacy) {
		this.legacy = legacy;
	}

	public int getDateFounded() {
		return dateFounded;
	}

	public void setDateFounded(int dateFounded) {
		this.dateFounded = dateFounded;
	}

	public int getDateEnded() {
		return dateEnded;
	}

	public void setDateEnded(int dateEnded) {
		this.dateEnded = dateEnded;
	}
	
	
	
	

}
