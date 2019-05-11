package com.skilldistillery.superproject.data;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.superproject.entities.State;

@Service
@Transactional
public class StateDAOIMPL implements StateDAO {
	
	@PersistenceContext
	private EntityManager em;
	
	
	public State findById(int id) {
		State state = em.find(State.class, id);
		
		return state;
	}
	
	public List<State> returnAll() {
		String jpql = "SELECT state FROM State state";
		
		List<State> allStates = em.createQuery(jpql, State.class).getResultList();
		
		for (State stateR : allStates) {
			System.out.println(stateR);
		}
		
		return allStates;
	}
	
	
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
		
		return updatedState;
	}

	@Override
	public boolean destroyState(int id) {
		
		return false;
	}
	
	


}
