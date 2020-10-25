package com.skilldistillery.jpacrud.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Dinosaur {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;

	private String name;
	
	private String diet;
	
    @Column(name="area_lived")
	private String areaLived;
    
    @Column(name="time_period_lived")
	private String timePeriodLived;

	private String description;

	@Column(name="weight_in_kg")
	private Integer weightKg;
	
	@Column(name="height_in_meters")
	private Integer heightM;
	
	@Column(name="length_in_meters")
	private Integer lengthM;
	
	@Column(name="type_of_dinosaur")
	private String type;
	
	@Column(name="name_pronunciation")
	private String pronunciation;
	
	@Column(name="name_meaning")
	private String nameMeaning;

	private String taxonomy;

	
	private String image;

	public Dinosaur() {
		super();
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

	public String getDiet() {
		return diet;
	}

	public void setDiet(String diet) {
		this.diet = diet;
	}

	public String getAreaLived() {
		return areaLived;
	}

	public void setAreaLived(String areaLived) {
		this.areaLived = areaLived;
	}

	public String getTimePeriodLived() {
		return timePeriodLived;
	}

	public void setTimePeriodLived(String timePeriodLived) {
		this.timePeriodLived = timePeriodLived;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public Integer getWeightKg() {
		return weightKg;
	}

	public void setWeightKg(Integer weightKg) {
		this.weightKg = weightKg;
	}

	public Integer getHeightM() {
		return heightM;
	}

	public void setHeightM(Integer heightM) {
		this.heightM = heightM;
	}

	public Integer getLengthM() {
		return lengthM;
	}

	public void setLengthM(Integer lengthM) {
		this.lengthM = lengthM;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getPronunciation() {
		return pronunciation;
	}

	public void setPronunciation(String pronunciation) {
		this.pronunciation = pronunciation;
	}

	public String getNameMeaning() {
		return nameMeaning;
	}

	public void setNameMeaning(String nameMeaning) {
		this.nameMeaning = nameMeaning;
	}

	public String getTaxonomy() {
		return taxonomy;
	}

	public void setTaxonomy(String taxonomy) {
		this.taxonomy = taxonomy;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("Dinosaur [id=").append(id).append(", name=").append(name).append(", diet=").append(diet)
				.append(", areaLived=").append(areaLived).append(", timePeriodLived=").append(timePeriodLived)
				.append(", description=").append(description).append(", weightKg=").append(weightKg)
				.append(", heightM=").append(heightM).append(", lengthM=").append(lengthM).append(", type=")
				.append(type).append(", pronunciation=").append(pronunciation).append(", nameMeaning=")
				.append(nameMeaning).append(", taxonomy=").append(taxonomy).append("]");
		return builder.toString();
	}

}


