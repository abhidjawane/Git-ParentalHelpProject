package in.cdac.project.ServiceImlemantation;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import in.cdac.project.entity.Inquiry;
import in.cdac.project.repository.InquiryRepository;
import in.cdac.project.service.InquiryService;

@Service
@Transactional
public class InquiryServiceImplemantation implements InquiryService {

	@Autowired
	InquiryRepository inquiryRepository;

	@Override
	public List<Inquiry> getAllInquiry() {
		return (List<Inquiry>) inquiryRepository.findAll();
	}

	@Override
	public Inquiry getInquiryById(int id) {
		return inquiryRepository.findById(id).get();
	}

	@Override
	public void saveOrUpdateInquiry(Inquiry inquiry) {
		inquiryRepository.save(inquiry);
	}

	@Override
	public void deleteInquiry(int id) {
		inquiryRepository.deleteById(id);
	}

}
