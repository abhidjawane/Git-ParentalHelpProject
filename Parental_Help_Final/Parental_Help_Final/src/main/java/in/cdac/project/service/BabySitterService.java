package in.cdac.project.service;

import java.util.List;

import in.cdac.project.entity.Babysitter;

public interface BabySitterService {

	public List<Babysitter> getAllBebySitters();

	public Babysitter getUserById(int id);

	public void saveOrUpdate(Babysitter babysitters);

	public void delete(int id);

}
