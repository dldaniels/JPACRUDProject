package com.skilldistillery.jpacrud.data;

import java.util.List;

import com.skilldistillery.jpacrud.entities.Dinosaur;

public interface DinosaurDAO {

	Dinosaur findByID(int id);

	List<Dinosaur> findAll();
	
	public Dinosaur create(Dinosaur dinosaur);
	
	public Dinosaur update (int id, Dinosaur dinosaur);
	
	public boolean destroy (int id);
	
//	Dinosaur findByKeyword(String keyword);

}
