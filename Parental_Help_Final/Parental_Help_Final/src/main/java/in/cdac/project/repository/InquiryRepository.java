package in.cdac.project.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import in.cdac.project.entity.Inquiry;

public interface InquiryRepository extends JpaRepository<Inquiry, Integer>  {

}
