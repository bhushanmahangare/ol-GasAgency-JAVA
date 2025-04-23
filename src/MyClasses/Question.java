package MyClasses;


public class Question {
	
	private int __qno,__lid,__sid;
	private String __qname;
	private String __option1,__option2,__option3,__option4;
	private String __corAns;
	
	public int getQueId()
	{
		return __qno;
	}
	public void setQueId(int value)
	{
		 __qno = value;
	}
	
	
	public int getLevelId()
	{
		return __lid;
	}
	public void setLevelId(int value)
	{
		__lid = value;
	}

	public int getSubjectId()
	{
		return __sid;
	}
	public void setSubjectId(int value)
	{
		__sid = value;
	}
	
	public String getCorrectAns()
	{
		return __corAns;
	}
	public void setCorrectAns(String value)
	{
		__corAns = value;
	}
	
	public String getQuestion()
	{
		return __qname;
	}
	public void setQuestion(String value)
	{
		__qname = value;
	}

	public String getOptions1()
	{
		 return __option1;
	}
	public void setOptions1(String opt1)
	{
		  __option1 = opt1;
	}

	public String getOptions2()
	{
		 return __option2;
	}
	public void setOptions2(String opt2)
	{
		  __option2 = opt2;
	}
	
	public String getOptions3()
	{
		 return __option3;
	}
	public void setOptions3(String opt3)
	{
		  __option3 = opt3;
	}
	
	public String getOptions4()
	{
		 return __option4;
	}
	public void setOptions4(String opt4)
	{
		  __option4 = opt4;
	}
	
}
