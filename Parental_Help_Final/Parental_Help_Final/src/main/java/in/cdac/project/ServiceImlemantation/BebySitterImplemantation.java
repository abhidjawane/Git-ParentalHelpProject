package in.cdac.project.ServiceImlemantation;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import in.cdac.project.entity.Babysitter;
import in.cdac.project.repository.BabySitterRepository;
import in.cdac.project.service.BabySitterService;

@Service
@Transactional
public class BebySitterImplemantation implements BabySitterService {

	@Autowired
	BabySitterRepository babySitterRepository;
	@Autowired
	BabySitterService babySitterService;

	@Override
	public List<Babysitter> getAllBebySitters() {
		return (List<Babysitter>) babySitterRepository.findAll();
	}

	@Override
	public Babysitter getUserById(int id) {
		return babySitterRepository.findById(id).get();
	}

	@Override
	public void saveOrUpdate(Babysitter babysitter) {
		babySitterRepository.save(babysitter);
	}

	@Override
	public void delete(int id) {
		babySitterRepository.deleteById(id);
	}

	public List<Babysitter> listAll(String keyword) {
		if (keyword != null) {
			return babySitterRepository.search(keyword);
		}
		return babySitterRepository.findAll();
	}

}
