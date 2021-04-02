package ru.jdm.timesheet2.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
import ru.jdm.timesheet2.entity.User;

@Repository
public interface UserRepository extends CrudRepository<User, Long> {

}
