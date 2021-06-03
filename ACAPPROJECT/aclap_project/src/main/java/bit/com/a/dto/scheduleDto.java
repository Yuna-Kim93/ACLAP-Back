package bit.com.a.dto;

public class scheduleDto {
	private int scheduleNum;
	private String rdate;
	private int memNum;
	private String name;	//수강신청자 이름
	private int classNum;
	private int participants;	// 참가자 수
	private int del;
	
	private String instructor;
	private String title;
	private String information;
	
	public scheduleDto() {
	}
	
	public scheduleDto(int scheduleNum, String rdate, int memNum, int classNum, int del) {
		super();
		this.scheduleNum = scheduleNum;
		this.rdate = rdate;
		this.memNum = memNum;
		this.classNum = classNum;
		this.del = del;
	}

	public scheduleDto(int scheduleNum, String rdate, int memNum, int classNum, int del, String instructor,
			String title, String information) {
		super();
		this.scheduleNum = scheduleNum;
		this.rdate = rdate;
		this.memNum = memNum;
		this.classNum = classNum;
		this.del = del;
		this.instructor = instructor;
		this.title = title;
		this.information = information;
	}

	public scheduleDto(int scheduleNum, String rdate, int memNum, String name, int classNum, int participants, int del,
			String instructor, String title, String information) {
		super();
		this.scheduleNum = scheduleNum;
		this.rdate = rdate;
		this.memNum = memNum;
		this.name = name;
		this.classNum = classNum;
		this.participants = participants;
		this.del = del;
		this.instructor = instructor;
		this.title = title;
		this.information = information;
	}

	public int getScheduleNum() {
		return scheduleNum;
	}

	public void setScheduleNum(int scheduleNum) {
		this.scheduleNum = scheduleNum;
	}

	public String getRdate() {
		return rdate;
	}

	public void setRdate(String rdate) {
		this.rdate = rdate;
	}

	public int getMemNum() {
		return memNum;
	}

	public void setMemNum(int memNum) {
		this.memNum = memNum;
	}

	public int getClassNum() {
		return classNum;
	}

	public void setClassNum(int classNum) {
		this.classNum = classNum;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getParticipants() {
		return participants;
	}

	public void setParticipants(int participants) {
		this.participants = participants;
	}

	public int getDel() {
		return del;
	}

	public void setDel(int del) {
		this.del = del;
	}

	
	public String getInstructor() {
		return instructor;
	}

	public void setInstructor(String instructor) {
		this.instructor = instructor;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getInformation() {
		return information;
	}

	public void setInformation(String information) {
		this.information = information;
	}

	@Override
	public String toString() {
		return "scheduleDto [scheduleNum=" + scheduleNum + ", rdate=" + rdate + ", memNum=" + memNum + ", name=" + name
				+ ", classNum=" + classNum + ", participants=" + participants + ", del=" + del + ", instructor="
				+ instructor + ", title=" + title + ", information=" + information + "]";
	}
	
	
}
