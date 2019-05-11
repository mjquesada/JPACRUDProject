package com.skilldistillery.superproject.data;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.superproject.entities.State;

@Service
@Transactional
public class StateDAOIMPL implements StateDAO {
	
	@PersistenceContext
	private EntityManager em;
	
	
	@Override
	public State createState(State state) {
	
		System.out.println("Before: " + state);
		em.persist(state);
		System.out.println("After: " + state);
		
		return null;
	}

	@Override
	public State updateState(int id, State state) {
		State updatedState = em.find(State.class, id);
		
		updatedState.setName(state.getName());
		updatedState.setGreatestLeader(state.getGreatestLeader());
		updatedState.setFounder(state.getFounder());
		updatedState.setPopulation(state.getPopulation());
		updatedState.setLanguage(state.getLanguage());
		updatedState.setReligion(state.getReligion());
		updatedState.setLegacy(state.getLegacy());
		updatedState.setDateFounded(state.getDateFounded());
		updatedState.setDateEnded(state.getDateEnded());
		
		return null;
	}

	@Override
	public boolean destroyState(int id) {
		
		return false;
	}


}
