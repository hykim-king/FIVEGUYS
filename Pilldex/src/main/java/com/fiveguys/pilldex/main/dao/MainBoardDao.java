package com.fiveguys.pilldex.main.dao;

import java.util.List;

import com.fiveguys.pilldex.domain.PillVO2;

public interface MainBoardDao {
	
	 public List<PillVO2> list() throws Exception;
	 
	 public int count() throws Exception;
	 
	 public List<PillVO2> listPage(int displayPost, int postNum) throws Exception;
	 
	 public List<PillVO2> detaillist(String keyword) throws Exception;
	
	 
	 public List<PillVO2> listPageSearchBox(
			   int displayPost, 
			   int postNum,
			   String   keyword,
			   String 	keyword_print,
			   String 	keyword_shape,
			   String 	keyword_color,
			   String 	keyword_chart,
			   String 	keyword_line

			   
			   ) throws Exception;
	 
	 public int searchCountBox(
			 String   	keyword,
			 String 	keyword_print,
			 String 	keyword_shape,
			   String 	keyword_color,
			   String 	keyword_chart,
			   String 	keyword_line) throws Exception;

}
