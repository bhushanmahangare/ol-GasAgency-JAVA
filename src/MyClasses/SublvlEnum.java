package MyClasses;

public enum SublvlEnum {
	Beginners (1),
	Intermediate(2),
	Expert(3);
	private int value;
	private SublvlEnum(int val) {
		// TODO Auto-generated constructor stub
		value=val;
	}
	public int getValue()
	{
		return value;
	}
}


