package com.mycompany.myweb.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.mycompany.myweb.dao.EventDao;
import com.mycompany.myweb.dto.Event;


@Component
public class EventService {
	public static final int WRITE_SUCCESS = 0;
	public static final int WRITE_FAIL = 1;
	
	public static final int MODIFY_SUCCESS = 0;
	public static final int MODIFY_FAIL = 1;
	
	public static final int REMOVE_SUCCESS = 0;
	public static final int REMOVE_FAIL = 1;
	
	@Autowired
	private EventDao eventDao;
	
	public List<Event> list(int pageNo, int rowsPerPage){
		return eventDao.selectByPage(pageNo, rowsPerPage);
	} 
	
	public int write(Event event){
		int row = eventDao.insert(event);
		return WRITE_SUCCESS;
	}
	
	public int modify(Event event){
		int row = eventDao.update(event);	
		if(row == 0) { return MODIFY_FAIL; }
		return MODIFY_SUCCESS;
	}
	
	public int remove(int eid){
		int row = eventDao.delete(eid);
		if(row == 0) { return REMOVE_FAIL; }
		return REMOVE_SUCCESS;
	} 
	
	public Event info(int eid){
		return eventDao.selectByEid(eid);		
	}
	
	public int getCount(){
		return eventDao.count();
	}
}