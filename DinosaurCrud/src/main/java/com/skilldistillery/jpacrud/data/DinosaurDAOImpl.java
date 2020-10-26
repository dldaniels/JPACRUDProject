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
	public List<Dinosaur> findHerbivore(String herbivore) {
			String jpql = "SELECT d FROM Dinosaur d WHERE d.diet LIKE :h";
			List<Dinosaur> herbivores = em.createQuery(jpql, Dinosaur.class).setParameter("h", herbivore)
					.getResultList();
			return herbivores;
		}

	@Override
	public List<Dinosaur> findCarnivore(String carnivore) {
		String jpql = "SELECT d FROM Dinosaur d WHERE d.diet LIKE :c";
		List<Dinosaur> carnivores = em.createQuery(jpql, Dinosaur.class).setParameter("c", carnivore)
				.getResultList();
		return carnivores;
		
	}

	@Override
	public List<Dinosaur> findByKeyword(String keyword) {
			String jpql = "SELECT d from Dinosaur d "
					+ "WHERE d.name LIKE :keyword||'%' "
					+ "OR d.description LIKE :keyword||'%' "
			  	    + "OR d.type_of_dinosaur LIKE :keyword||'%' "
					+ "OR d.diet LIKE :keyword||'%' "
					+ "OR d.time_period_lived LIKE :keyword||'%' "
					+ "OR d.area_lived LIKE :keyword||'%' "
					+ "ORDER BY d.name DESC";
			return em.createQuery(jpql, Dinosaur.class)
					.setParameter("keyword", keyword)
					.getResultList();
		}
	

//	@Override
//	public Dinosaur findByKeyword(String keyword) {
//		String jpql ="SELECT d FROM d WHERE title LIKE "
//		return null;
//	}

}
