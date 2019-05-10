package com.skilldistillery.superproject.data;

import com.skilldistillery.superproject.entities.State;

public interface StateDAO {

	public State createState(State state);
	public State updateState(int id, State state);
	public boolean destroyState(int id);
}
