package com.skilldistillery.jpacrud.data;

import java.util.List;

import com.skilldistillery.jpacrud.entities.Dinosaur;

public interface DinosaurDAO {

	Dinosaur findByID(int id);

	List<Dinosaur> findAll();

}
