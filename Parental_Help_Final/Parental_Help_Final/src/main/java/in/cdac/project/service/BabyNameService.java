package in.cdac.project.service;

import java.util.List;

import in.cdac.project.entity.BabyName;

public interface BabyNameService {

	 public List<BabyName> getAllBabyName();
	 
	 public BabyName getBabyNameId(int id);
	 
	 public void saveOrUpdateBabyName(BabyName babyName);
	 
	 public void deleteBabyName(int id);
}
