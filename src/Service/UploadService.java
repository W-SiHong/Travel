package Service;

import java.io.IOException;

import javax.servlet.http.Part;

public class UploadService {
	public String upload(Part part, String root,int i) {

		try {
			String name = part.getHeader("content-disposition");
			String str = name.substring(name.lastIndexOf("."), name.length() - 1);
			java.sql.Date currentDate = new java.sql.Date(System.currentTimeMillis());
			String img = "\\" + currentDate.getTime()+i+ str;
			String filename = root + img;
			part.write(filename);
			return img;
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
}
