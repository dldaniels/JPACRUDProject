package com.skilldistillery.jpacrud.entities;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotNull;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

class DinosaurTest {

	private static EntityManagerFactory emf;
	private EntityManager em;
	private Dinosaur dinosaur;

	@BeforeAll
	static void setUpBeforeClass() throws Exception {
		emf = Persistence.createEntityManagerFactory("DinosaurPU");

	}

	@AfterAll
	static void tearDownAfterClass() throws Exception {
		emf.close();

	}

	@BeforeEach
	void setUp() throws Exception {
		em = emf.createEntityManager();
		dinosaur = em.find(Dinosaur.class, 1);
}

	@AfterEach
	void tearDown() throws Exception {
		em.clear();
		dinosaur = null;

	}

	@Test
	void test_Dinosaur_entity_mapping() {
		assertNotNull(dinosaur);
		assertEquals("Aardonyx", dinosaur.getName());
	}

}
