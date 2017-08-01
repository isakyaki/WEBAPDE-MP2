package model;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;

public class Photo {
	private int userID;
	private int photoID;
	private String title;
	private String desc;
	private String thumbnailURL;
	private String url;
	
	public Photo() {
		
	}

	public int getUserID() {
		return userID;
	}

	public void setUserID(int userID) {
		this.userID = userID;
	}

	public int getPhotoID() {
		return photoID;
	}

	public void setPhotoID(int photoID) {
		this.photoID = photoID;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getDesc() {
		return desc;
	}

	public void setDesc(String desc) {
		this.desc = desc;
	}

	public String getThumbnailURL() {
		return thumbnailURL;
	}

	public void setThumbnailURL(String thumbnailURL) {
		this.thumbnailURL = thumbnailURL;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}
	
	/*
	public ArrayList<Photo> getAllPhotos() throws FileNotFoundException,
    IOException, ParseException {

		ArrayList<Photo> photoList = new ArrayList<Photo>();
		JSONParser parser = new JSONParser();
	    JSONArray jsonArray = (JSONArray) parser.parse(new FileReader(
	                "/data/PHOTOS.json"));
	    Photo p = null;
        for (Object o : jsonArray) {
            JSONObject obj = (JSONObject) o;

            int photoID = (int) obj.get("id");
            p.setUserID(photoID);
            System.out.println("id: " + photoID);
            
            int userID = (int) obj.get("id");
            p.setUserID(userID);
            System.out.println("userID: " + userID);
            
            String title = (String) obj.get("title");
            p.setTitle(title);
            System.out.println("title: " + title);

            String desc = (String) obj.get("about");
            p.setDesc(desc);
            System.out.println("desc: " + desc);

            String thumbnailURL = (String) obj.get("thumbnailURL");
            p.setThumbnailURL(thumbnailURL);
            System.out.println("thu: " + thumbnailURL);
            
            String url = (String) obj.get("thumbnailURL");
            p.setThumbnailURL(thumbnailURL);
            System.out.println("thu: " + thumbnailURL);
            
            photoList.add(p);
        }
	    
        return photoList;
	}
	*/ 
}
