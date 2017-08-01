package model;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;


public class User {
	private int userID;
	private String username;
	private String desc;
	private String password;
	
	public User() {
		
	}

	public int getUserID() {
		return userID;
	}

	public void setUserID(int userID) {
		this.userID = userID;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getDesc() {
		return desc;
	}

	public void setDesc(String desc) {
		this.desc = desc;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	
	/*
	public ArrayList<User> getAllUsers() throws FileNotFoundException,
    IOException, ParseException {

		ArrayList<User> userList = new ArrayList<User>();
		JSONParser parser = new JSONParser();
	    JSONArray jsonArray = (JSONArray) parser.parse(new FileReader(
	                "/data/USER.json"));
	    User u = null;
        for (Object o : jsonArray) {
            JSONObject obj = (JSONObject) o;

            int userID = (int) obj.get("id");
            u.setUserID(userID);
            System.out.println("id: " + userID);
            
            String username = (String) obj.get("username");
            u.setUsername(username);
            System.out.println("username: " + username);

            String password = (String) obj.get("password");
            u.setPassword(password);
            System.out.println("password: " + password);

            String desc = (String) obj.get("about");
            u.setDesc(desc);
            System.out.println("description: " + desc);
            
            userList.add(u);
        }
	    
        return userList;
	}
	*/
}
