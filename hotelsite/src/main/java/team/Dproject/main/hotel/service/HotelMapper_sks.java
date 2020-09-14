package team.Dproject.main.hotel.service;

import java.util.*;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import team.Dproject.main.hotel.model.HotelDTO;

@Service
public class HotelMapper_sks {
	
	@Autowired
	private SqlSession sqlSession;
	
	public List<HotelDTO> listHotel_sks(){
		return sqlSession.selectList("listHotel_sks"); 
	}
	
	public int insertHotel_sks(HotelDTO dto){
		return sqlSession.insert("insertHotel_sks", dto);
	}
	
	public HotelDTO getHotel_sks(int hotel_no){
		return  sqlSession.selectOne("getHotel_sks", hotel_no);
	}
	
	public List<HotelDTO> listHotel1_sks(String address){
		return sqlSession.selectList("listHotel1_sks",address);
	}
	public List<String> getRoomno_sks(String address,String sleep){
		java.util.Map<String, Object> map=new java.util.Hashtable<String, Object>();
		
		int sleeps =  Integer.parseInt(sleep);
		
		if(sleeps <= 2){
			sleeps = 2;
		}
		
		map.put("address", address);
		map.put("sleeps", sleeps);
		return sqlSession.selectList("getRoomno_sks",map);
	}

	
	public int deletetHotel_sks(String no) {
		return sqlSession.delete("deleteHotel_sks", no);
	}
	
	public int updateHotel_sks(HotelDTO dto) {
		return sqlSession.update("updateHotel_sks", dto);
	} 
}
