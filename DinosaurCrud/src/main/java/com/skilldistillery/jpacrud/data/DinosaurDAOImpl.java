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
		em.persist(dinosaur);
		em.flush();
		return dinosaur;

	}

	@Override
	public Dinosaur update(Integer id , Dinosaur dinosaur) {
		Dinosaur dinoUpdate = em.find(Dinosaur.class, id);

		dinoUpdate.setName(dinosaur.getName());
		dinoUpdate.setPronunciation(dinosaur.getPronunciation());
		dinoUpdate.setNameMeaning(dinosaur.getNameMeaning());
		dinoUpdate.setDescription(dinosaur.getDescription());
		dinoUpdate.setDiet(dinosaur.getDiet());
		dinoUpdate.setType(dinosaur.getType());
		dinoUpdate.setAreaLived(dinosaur.getAreaLived());
		dinoUpdate.setTimePeriodLived(dinosaur.getTimePeriodLived());
		dinoUpdate.setTaxonomy(dinosaur.getTaxonomy());
		dinoUpdate.setHeightM(dinosaur.getHeightM());
		dinoUpdate.setLengthM(dinosaur.getLengthM());
		dinoUpdate.setWeightKg(dinosaur.getWeightKg());
		dinoUpdate.setImage(dinosaur.getImage());

	//	System.out.println(dinoUpdate.toString());
		
	//	em.persist(dinoUpdate);
	//	em.flush();

		return dinosaur;
	}

	@Override
	public boolean deleteDinosaur(int id) {
//		Dinosaur dinosaur = em.find(Dinosaur.class, id);
//		em.remove(dinosaur);
//		em.flush();
//		return (dinosaur == null);
		
		
try {
			
			Dinosaur dinosaur =em.find(Dinosaur.class,id);
			
			em.remove(dinosaur);
			
			return true;
		} 
		catch (Exception e) {
			e.printStackTrace();
			return false;
		}

	}

	@Override
	public List<Dinosaur> findHerbivore() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Dinosaur> findCarnivore() {
		// TODO Auto-generated method stub
		return null;
	}

//	@Override
//	public Dinosaur findByKeyword(String keyword) {
//		String jpql ="SELECT d FROM d WHERE title LIKE "
//		return null;
//	}

}
