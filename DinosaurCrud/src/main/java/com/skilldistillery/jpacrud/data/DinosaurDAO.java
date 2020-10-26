package com.skilldistillery.jpacrud.data;

import java.util.List;

import com.skilldistillery.jpacrud.entities.Dinosaur;

public interface DinosaurDAO {

	public Dinosaur findByID(int id);

	public List<Dinosaur> findAll();
	
	public Dinosaur create(Dinosaur dinosaur);
	
	public Dinosaur update (Integer id , Dinosaur dinosaur);
	
	public boolean deleteDinosaur (int id);
	
	public List<Dinosaur> findHerbivore(String herbivore);
	
	public List<Dinosaur> findCarnivore(String diet);
	
	
	public List<Dinosaur> findByKeyword(String keyword);

}
