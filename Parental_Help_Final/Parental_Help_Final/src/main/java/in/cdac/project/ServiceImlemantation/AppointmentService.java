package in.cdac.project.ServiceImlemantation;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import in.cdac.project.entity.Appointment;
import in.cdac.project.repository.AppointmentRepository;

@Service
public class AppointmentService {

	@Autowired
	AppointmentRepository appointmentRepository;
	
	public void aptBooking(String appdate,String ptid,String drid) {
		boolean aptSt=true;
		
		 int patId=Integer.parseInt(ptid); 
		 int doctId=Integer.parseInt(drid); 
		Appointment appointment=appointmentRepository.findByPtIdAndDrId(patId,doctId);
			
		if(appointment!=null) {
			
			appointment.setAptStatus(aptSt);
			appointment.setAptDate(appdate);
			appointmentRepository.save(appointment);
		}
		else {
			Appointment appointmentSave= new Appointment(aptSt,appdate,patId,doctId);
			appointmentRepository.save(appointmentSave);
		}
		
	}
	
	
	public List<Appointment> AllpatAptlist(String ptid){
		int userId=Integer.parseInt(ptid); 
		List<Appointment>appointments=appointmentRepository.findByPtId(userId);
		return appointments;
	}
	
	
	public List<Appointment> Appointpatientlist(String drid,boolean aptStatus){
		int doctId=Integer.parseInt(drid); 
		List<Appointment>appointments=appointmentRepository.findByDrIdAndAptStatus(doctId,aptStatus);
		return appointments;
	}
	
	
	public void aptCancel(String ptid,String drid) {
		boolean aptStatus=false;
		 int patId=Integer.parseInt(ptid); 
		 int doctId=Integer.parseInt(drid); 
		 Appointment appointment=appointmentRepository.findByPtIdAndDrId(patId,doctId);
		 appointment.setAptStatus(aptStatus);
		 appointmentRepository.save(appointment);
	}
	
	
	
}
