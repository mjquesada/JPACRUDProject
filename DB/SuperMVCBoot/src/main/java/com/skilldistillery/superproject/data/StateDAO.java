package com.skilldistillery.superproject.data;

import java.util.List;

import com.skilldistillery.superproject.entities.State;

public interface StateDAO {

	public State findById(int id);
	public List<State> returnAll();
	public State createState(State state);
	public State updateState(int id, State state);
	public boolean destroyState(int id);
}
