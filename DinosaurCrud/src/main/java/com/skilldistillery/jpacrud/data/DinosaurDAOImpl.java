package com.skilldistillery.jpacrud.data;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
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

	@Override
	public Dinosaur create(Dinosaur dinosaur) {
//		EntityManager em = emf.createEntityManager();

//		em.getTransaction().begin();

	//	System.out.println("Dinosaur before " + dinosaur);

		em.persist(dinosaur);
	//	System.out.println("Dinosaur before " + dinosaur);

		em.flush();

	//	em.getTransaction().commit();

	//	em.close();
		return dinosaur;
		
	}

	@Override
	public Dinosaur update(int id, Dinosaur dinosaur) {
		Dinosaur dino = em.find(Dinosaur.class, dinosaur.getId());
		System.out.println(dino.toString());
		
		return dino;
	}

	@Override
	public boolean destroy(int id) {
		
		return false;
	}

//	@Override
//	public Dinosaur findByKeyword(String keyword) {
//		String jpql ="SELECT d FROM d WHERE title LIKE "
//		return null;
//	}

}
