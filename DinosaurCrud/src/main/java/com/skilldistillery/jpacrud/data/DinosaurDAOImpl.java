package com.skilldistillery.jpacrud.data;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.jpacrud.entities.Dinosaur;

@Transactional
@Service
public class DinosaurDAOImpl implements DinosaurDAO {

	@PersistenceContext
	private EntityManager em;

	@Override
	public Dinosaur findByID(int id) {
		return em.find(Dinosaur.class, id);
	}

	@Override
	public List<Dinosaur> findAll() {
		String jpql = "SELECT d FROM Dinosaur d";
		return em.createQuery(jpql, Dinosaur.class).getResultList();
	}

}
