package com.skilldistillery.superproject.test;

import static org.junit.jupiter.api.Assertions.assertEquals;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import com.skilldistillery.superproject.entities.State;

class StateTest {
	private static EntityManagerFactory emf;
	private EntityManager em;
	private State state;
	
	@BeforeAll
	public static void setupAll() {
		emf = Persistence.createEntityManagerFactory("SuperPU");
	}
	
	@AfterAll
	public static void closeAll() {
		emf.close();
	}

	@BeforeEach
	public void setUp() throws Exception {
		em = emf.createEntityManager();
		state = em.find(State.class, 1);
		
	}

	@AfterEach
	public void tearDown() throws Exception {
		em.close();
		state = null;
	}
	
	@Test
	public void test_name_is_correct() {
		
		assertEquals("Achaemenid Empire", state.getName());
	}
	
	@Test
	public void test_greatest_leader_correct() {
		assertEquals("Darius I", state.getGreatestLeader());
	}
	
	@Test
	public void test_founder_correct() {
		assertEquals("Cyrus I", state.getFounder());
	}
	
	@Test
	public void test_population_correct() {
		assertEquals(30000000, state.getPopulation());
	}
	
	@Test
	public void test_language_correct() {
		assertEquals("Persian", state.getLanguage());
	}
	
	public void test_religion_correct() {
		assertEquals("Zoroastianism", state.getReligion());
	}
	
	@Test
	public void test_date_founded_correct() {
		assertEquals(-550, state.getDateFounded());
	}
	
	@Test 
	public void test_date_ended_correct() {
		assertEquals(-330, state.getDateEnded());
	}
	
	@Test
	public void test_legacy_correct() {
		assertEquals('T', state.getLegacy().charAt(0));
	}

}
