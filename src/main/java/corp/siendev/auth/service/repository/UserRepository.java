package corp.siendev.auth.service.repository;

import corp.siendev.auth.service.entity.UserEntity;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 * User repository interface.
 *
 * @author Golubnichenko_Yuriy
 */
public interface UserRepository extends JpaRepository<UserEntity, Long> {

}
