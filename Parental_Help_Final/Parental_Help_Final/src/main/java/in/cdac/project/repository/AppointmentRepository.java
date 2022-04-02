package in.cdac.project.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import in.cdac.project.entity.Appointment;

public interface AppointmentRepository extends JpaRepository<Appointment, Integer> {
	Appointment  findByPtIdAndDrId(int patId, int doctId);
	
	List<Appointment> findByPtId(int userId);
	
	List<Appointment> findByDrIdAndAptStatus(int doctId,boolean aptStatus);
}
