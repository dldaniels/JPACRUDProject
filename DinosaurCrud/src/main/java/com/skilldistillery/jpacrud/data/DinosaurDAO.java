package com.skilldistillery.jpacrud.data;

import java.util.List;

import com.skilldistillery.jpacrud.entities.Dinosaur;

public interface DinosaurDAO {

	Dinosaur findByID(int id);

	List<Dinosaur> findAll();
	
	public Dinosaur create(Dinosaur dinosaur);
	
	public Dinosaur update (Integer id , Dinosaur dinosaur);
	
	public boolean deleteDinosaur (int id);
	
	List<Dinosaur> findHerbivore();
	
	List<Dinosaur> findCarnivore();
	
	
//	Dinosaur findByKeyword(String keyword);

}
