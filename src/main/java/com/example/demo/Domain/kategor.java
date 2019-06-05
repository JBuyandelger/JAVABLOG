package com.example.demo.Domain;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class kategor {
@Id
@GeneratedValue(strategy = GenerationType.IDENTITY)
private Integer id_kat;

private String name_kat;
private String desc_kat;
private Integer ordering_kat;
public Integer getId_kat() {
	return id_kat;
}
public void setId_kat(Integer id_kat) {
	this.id_kat = id_kat;
}
public String getName_kat() {
	return name_kat;
}
public void setName_kat(String name_kat) {
	this.name_kat = name_kat;
}
public String getDesc_kat() {
	return desc_kat;
}
public void setDesc_kat(String desc_kat) {
	this.desc_kat = desc_kat;
}
public Integer getOrdering_kat() {
	return ordering_kat;
}
public void setOrdering_kat(Integer ordering_kat) {
	this.ordering_kat = ordering_kat;
}

	

}
