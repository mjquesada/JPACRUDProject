package com.skilldistillery.superproject.data;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.superproject.entities.State;

@Service
@Transactional
public class StateDAOIMPL implements StateDAO {
	private static EntityManagerFactory emf;
	private EntityManager em;

	@Override
	public State createState(State state) {
	
		return null;
	}

	@Override
	public State updateState(int id, State state) {
		
		return null;
	}

	@Override
	public boolean destroyState(int id) {
		
		return false;
	}


}
