package MyClasses;
import MyDbConnection.*;

import java.sql.*;
import java.util.ArrayList;
/*import java.util.HashSet;
import java.util.Random;
import java.util.Set;*/

public final class QuestionUtility 
{	
	public static int userCorrectAns=0;
	public static int totalQuseNo = 100; 
	
    public static ArrayList<Question> GetAllQuestion() throws Exception
    {	 
	    ArrayList<Question> quesList = new ArrayList<Question>();
	    String sql = "select * from Question where Q_No in ("+__getRandomNumber()+")";	
	    System.out.println(sql);
    	Connection con = DbConnection.GetDbConnection();       
    	ResultSet rst =  DbConnection.GetAllresult(sql,con);    	    	   
    	
	  while( rst.next())
	  {
		  Question quest =  new Question();
		  quest.setSubjectId(rst.getInt("Sub_No"));
		  quest.setQueId(rst.getInt("Q_No"));
		  quest.setLevelId(rst.getInt("Level_Id"));
		  quest.setCorrectAns(rst.getString("Correct_Ans"));
          quest.setOptions1(rst.getString("Op1")); 
          quest.setOptions2(rst.getString("Op2"));
          quest.setOptions3(rst.getString("Op3"));
          quest.setOptions4(rst.getString("Op4"));
          quest.setQuestion(rst.getString("Question"));
          
          System.out.println(rst.getInt("Sub_No"));
          System.out.println(rst.getInt("Q_No"));
          System.out.println(rst.getInt("Level_Id"));
          System.out.println(rst.getString("Correct_Ans"));
          System.out.println(rst.getString("Op1")); 
          System.out.println(rst.getString("Op2"));
          System.out.println(rst.getString("Op3"));
          System.out.println(rst.getString("Op4"));
          System.out.println(rst.getString("Question"));
          
          quesList.add(quest);
          //System.out.println(i);           		  
	  }	
	  con.close();
	  System.out.println("GetAllQuestion");
	  return quesList;	 
    }
    
    public static Question GetQuestion() throws Exception
    {
    	ArrayList<Question> quesList = new ArrayList<Question>();
    	 String sql = "select * from Question where Q_No in ("+__getRandomNumber()+")";
    	Connection con = DbConnection.GetDbConnection();       
    	ResultSet rst =  DbConnection.GetAllresult(sql,con);
    	 Question quest =  new Question();
	  while(rst.next())
	  {
		 
		  quest.setSubjectId(rst.getInt("Sub_No"));
		  quest.setQueId(rst.getInt("Q_No"));
		  quest.setLevelId(rst.getInt("Level_Id"));
		  quest.setCorrectAns(rst.getString("Correct_Ans"));
          quest.setOptions1(rst.getString("Op1")); 
          quest.setOptions2(rst.getString("Op2"));
          quest.setOptions3(rst.getString("Op3"));
          quest.setOptions4(rst.getString("Op4"));
          quest.setQuestion(rst.getString("Question"));
          
          System.out.println(rst.getInt("Sub_No"));
          System.out.println(rst.getInt("Q_No"));
          System.out.println(rst.getInt("Level_Id"));
          System.out.println(rst.getString("Correct_Ans"));
          System.out.println(rst.getString("Op1")); 
          System.out.println(rst.getString("Op2"));
          System.out.println(rst.getString("Op3"));
          System.out.println(rst.getString("Op4"));
          System.out.println(rst.getString("Question"));
          
          quesList.add(quest);
          //System.out.println(i);           		  
	  }	
	  con.close();
	  System.out.println("GetAllQuestion");
	  return quest;
    }
   
    //....For testing
    public static void InsertQuestion(String sql) throws Exception
    {
    	Connection con = DbConnection.GetDbConnection(); 
    	DbConnection.Insert(sql,con);
    	con.close();
    }

    public static void GetCorrectAnswerCount(ArrayList<Integer> arrayOfQuestsNo,ArrayList<String> arrayOfuserSelectedAns) throws Exception
    {
    	
    	String sqa = __addedCommaToQNo(arrayOfQuestsNo);
    	String sa =  __addedCommaToAns(arrayOfuserSelectedAns);
    	
    	 String caSql="select count(*) from Question where Q_No in("+sqa+") and Correct_Ans in("+sa+")";
    	 Connection con = DbConnection.GetDbConnection();       
     	 System.out.println(caSql);
    	 ResultSet rst =  DbConnection.GetAllresult(caSql,con);
     	while(rst.next())
     	{
     		userCorrectAns = rst.getInt(1);
     	}
     	con.close();     	     
    }
    
    private static String __addedCommaToQNo(ArrayList<Integer> arrayObject)
    {
    	String cs ="";
    	int i=0;
    	for (Integer s : arrayObject) 
    	{
    		if(i==0)
    		{
			cs = Integer.toString(s);
			i++;
    		}
    		else
    		{
    			cs +=","+s;
    		}
    		
		}
    	return cs;
    }
      
    private static String __addedCommaToAns(ArrayList<String> arrayObject)
    {
    	String cs = "" ;
    	int i= 0;
    	for (String s : arrayObject) 
    	{
    		if(i==0)
    		{
    			cs ="'"+s+"'";
    			i++;
    		}
    		else 
    		{
    			cs +=",'"+s+"'";
    			
    		}
		}
    	return cs;
    }

    private static String  __getRandomNumber()
    {
    	  String str="";
    	  int k=0;
    	  for(int i= 1;i<=totalQuseNo;i++)
    	  {    		 
    		  if(k==0)
	    		{
	    			str = Integer.toString(i);	 
	    			System.out.println("Qno"+str);
	    			k++;
	    		}
    		  else
    		  {
    			  str +=","+Integer.toString(i);
    			  System.out.println("Qno"+str);
    		  }    		
    	  } 
    	  
    	 /* int k=0;
    	  Set<Integer> numbers = new HashSet<Integer>();
    	  Random rand = new Random();    	  
    	 for(int i=0;i<=totalQuseNo;i++)
    	  {
    		  numbers.add(rand.nextInt(totalQuseNo)+1);
    	  }
    	  
    	  for(Integer j : numbers)
    	  {
    		  System.out.println("j value"+j);
    		  if(k==0)
	    		{
	    			str = Integer.toString(j);	 
	    			System.out.println("Qno"+str);
	    			k++;
	    		}
    		  else
    		  {
    			  str +=","+Integer.toString(j);
    			  System.out.println("Qno"+str);
    		  }    		
    	  }  	*/   
	    return str;
		
		
	}  
}
