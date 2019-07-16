package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import Pojo.Wrong;
import dao.WrongMapper;

@Service
public class WrongServiceImpl implements WrongService{
	
	@Autowired
	private WrongMapper wrongMapper;
	
	@Override
	public List<Wrong> findwronglist(){
		List<Wrong> wrongs = wrongMapper.findwronglist();
		return wrongs;
	}
	
	@Override
	public List<Wrong> findwrongsolvelist(){
		List<Wrong> wrongs = wrongMapper.findwrongsolvelist();
		return wrongs;
	}
	
	@Override
	public void updatewrong(Integer id) {
		wrongMapper.updatewrong(id);
		
	}
	  
	@Override
	public void insertwrong(Wrong wrong) {
		wrongMapper.insertwrong(wrong);
		
	}
	  
	@Override
	public void deletewrong(Integer id) {
		wrongMapper .deletewrong(id);
	}
}
