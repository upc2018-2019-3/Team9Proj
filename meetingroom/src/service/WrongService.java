package service;

import java.util.List;

import Pojo.Wrong;

public interface WrongService {
	  List<Wrong> findwronglist();
	  List<Wrong> findwrongsolvelist();
	  public void updatewrong(Integer id);
	  
	  public void insertwrong(Wrong wrong);
	  
	  public void deletewrong(Integer id);
}
