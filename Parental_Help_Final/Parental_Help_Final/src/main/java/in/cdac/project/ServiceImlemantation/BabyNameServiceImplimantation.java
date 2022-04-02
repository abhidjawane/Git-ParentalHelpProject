package in.cdac.project.ServiceImlemantation;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import in.cdac.project.entity.BabyName;
import in.cdac.project.repository.BabyNameRepository;
import in.cdac.project.service.BabyNameService;

@Service
@Transactional
public class BabyNameServiceImplimantation implements BabyNameService {

	@Autowired
	BabyNameRepository babyNameRepository;

	@Override
	public List<BabyName> getAllBabyName() {
		return (List<BabyName>) babyNameRepository.findAll();
	}

	@Override
	public BabyName getBabyNameId(int id) {
		return babyNameRepository.findById(id).get();
	}

	@Override
	public void saveOrUpdateBabyName(BabyName babyName) {
		babyNameRepository.save(babyName);
	}

	@Override
	public void deleteBabyName(int id) {
		babyNameRepository.deleteById(id);
	}

	public List<BabyName> listAll(String keyword) {
		if (keyword != null) {
			return babyNameRepository.search(keyword);
		}
		return babyNameRepository.findAll();
	}

}
