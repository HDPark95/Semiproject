package semiproject.mvc.util;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.multipart.MultipartFile;

import semiproject.mvc.dao.EstateDAO;

public class ImageUploadFile {
	private static String UPLOADPATH="C:\\ikosmo64\\pics\\";
	@Autowired
	private EstateDAO estateDAO;
	
	public String imgupload(MultipartFile mfile,HttpServletRequest request,String anum,String kind) {
		StringBuffer sbe = new StringBuffer();
		StringBuffer sber = new StringBuffer();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddhhmmss");
		String date=sdf.format(new Date());
		
		int num= Integer.parseInt(anum);
		
		String name="";
		if(kind.equals("estate")) {
			name=estateDAO.fileid(num);
		}else if(kind.equals("auction")) {
			
		}
		String fileid=name+date;
		
		
		String mpath =UPLOADPATH /*"C:\\ikosmo64\\pics\\"*/;
		String oriFn = mfile.getOriginalFilename();
		sber.append(mpath).append(fileid).append(oriFn.subSequence(oriFn.lastIndexOf("."),oriFn.length()));
		fileid+=oriFn.subSequence(oriFn.lastIndexOf("."),oriFn.length());
		sbe.append(mpath).append(oriFn);
		File f=new File(sbe.toString());
		File rf=new File(sber.toString());
		f.renameTo(rf);
		try {
			mfile.transferTo(rf);
		} catch (IllegalStateException | IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return fileid;
	}
	
}
