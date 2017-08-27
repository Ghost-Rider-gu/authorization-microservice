package corp.siendev.auth.service.repository;

import corp.siendev.auth.service.entity.User;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 * User repository interface.
 *
 * @author Golubnichenko_Yuriy
 */
public interface UserRepository extends JpaRepository<User, Integer> {

}
