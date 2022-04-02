package in.cdac.project.service;

import java.util.List;

import in.cdac.project.entity.Inquiry;

public interface InquiryService {

	public List<Inquiry> getAllInquiry();
	 
	 public Inquiry getInquiryById(int id);
	 
	 public void saveOrUpdateInquiry(Inquiry inquiry);
	 
	 public void deleteInquiry(int id);

}
