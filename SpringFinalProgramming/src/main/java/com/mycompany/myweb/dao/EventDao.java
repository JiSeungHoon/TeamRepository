package com.mycompany.myweb.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Component;

import com.mycompany.myweb.dto.Event;

@Component
public class EventDao {
	
	@Autowired
	private JdbcTemplate jdbcTemplate;

	
	public int insert(Event event){
		String sql = "insert into event(eid, estartperiod, elastperiod, etitle, econtents, esavedfile, emimetype, sid, mid) values(seq_event_eid.nextval, ?, ?, ?,?, ?, ?, ?, ?)";
		int row = jdbcTemplate.update(
				sql,
				event.getEstartperiod(),
				event.getElastperiod(),
				event.getEtitle(),
				event.getEcontents(),
				event.getEsavedfile(),
				event.getEmimetype(),
				event.getSid(),
				event.getMid()
		);
		return row;		
	}
	
	public int update(Event event){
		String sql = "update event set estartperiod=?, elastperiod=?, etitle=?, econtents=?, esavedfile=?, emimetype=?, sid=?, mid=? where eid=?";
		int row = jdbcTemplate.update(
				sql,
				event.getEstartperiod(),
				event.getElastperiod(),
				event.getEtitle(),
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
		String sql = "select eid, estartperiod, elastperiod,etitle, econtents, esavedfile, emimetype, sid, mid from event where eid=?";
		List<Event> list = jdbcTemplate.query(sql, new Object[]{eid}, new RowMapper<Event>(){
			 
			@Override
			public Event mapRow(ResultSet rs, int row) throws SQLException {
				Event event = new Event();
				event.setEid(rs.getInt("eid"));
				event.setEstartperiod(rs.getDate("estartperiod"));
				event.setElastperiod(rs.getDate("elastperiod"));
				event.setEtitle(rs.getString("etitle"));
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
	
	public List<Event> selectAll(String sid){
		String sql = "select eid, etitle, estartperiod, elastperiod, econtents from event where sid=?";
		List<Event> list = jdbcTemplate.query(sql, new Object[]{sid}, new RowMapper<Event>(){
			
			@Override
			public Event mapRow(ResultSet rs, int row) throws SQLException {
				Event event = new Event();
				event.setEid(rs.getInt("eid"));
				event.setEtitle(rs.getString("etitle"));
				event.setEstartperiod(rs.getDate("estartperiod"));
				event.setElastperiod(rs.getDate("elastperiod"));
				event.setEcontents(rs.getString("econtents"));

				return event;
			}
		}
		);
		return list;
	}
}

