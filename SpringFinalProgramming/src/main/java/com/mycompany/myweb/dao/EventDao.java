package com.mycompany.myweb.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Component;

import com.mycompany.myweb.controller.HomeController;
import com.mycompany.myweb.dto.Event;


@Component
public class EventDao {
	@Autowired
	private JdbcTemplate jdbcTemplate;
	private static final Logger logger = LoggerFactory.getLogger(EventDao.class);
	public List<Event> selectList(){
		List<Event> list = new ArrayList<>();
		logger.info("selectList() 2");
		for(int i = 1;i<=10;i++){
			Event event = new Event();
		//	event.setBtitle("제목 :" + i);
		//	event.setBcontent("내용 :" + i);
		//	event.setBwriter("글쓴이 :" + i);
			list.add(event);
		}
		logger.info("selectList() 3");
		return list;
		
	}
	
	public int insert(Event event){
		String sql = "insert into event(eid, estartperiod, elastperiod, econtents, esavedfile, emimetype, sid, mid) values(seq_event_eid.nextval, ?, ?, ?, ?, ?, ?, ?)";
		int row = jdbcTemplate.update(
				sql,
				event.getEstartperiod(),
				event.getElastperiod(),
				event.getEcontents(),
				event.getEsavedfile(),
				event.getEmimetype(),
				event.getSid(),
				event.getMid()
		);
		return row;		
	}
	
	public int update(Event event){
		String sql = "update event set estartperiod=?, elastperiod=?, econtents=?, esavedfile=?, emimetype=?, sid=?, mid=? where eid=?";
		int row = jdbcTemplate.update(
				sql,
				event.getEstartperiod(),
				event.getElastperiod(),
				event.getEcontents(),
				event.getEsavedfile(),
				event.getEmimetype(),
				event.getSid(),
				event.getMid(),
				event.getEid()
		);
		return row;
	}
	
	
	public int delete(int eid){
		String sql = "delete from event where eid=?";
		int row = jdbcTemplate.update(sql, eid);
		return row;
	}
	
	public Event selectByEid(int eid){ 
		String sql = "select eid, estartperiod, elastperiod, econtents, esavedfile, emimetype, sid, mid from event where eid=?";
		List<Event> list = jdbcTemplate.query(sql, new Object[]{eid}, new RowMapper<Event>(){
			 
			@Override
			public Event mapRow(ResultSet rs, int row) throws SQLException {
				Event event = new Event();
				event.setEid(rs.getInt("eid"));
				event.setEstartperiod(rs.getDate("estartperiod"));
				event.setElastperiod(rs.getDate("elastperiod"));
				event.setEcontents(rs.getString("econtents"));
				event.setEsavedfile(rs.getString("esavedfile"));
				event.setEmimetype(rs.getString("emimetype"));
				event.setSid(rs.getString("sid"));
				event.setMid(rs.getInt("mid"));
				return event;
			}
		});
		return (list.size() != 0) ? list.get(0) : null;
	}
}
