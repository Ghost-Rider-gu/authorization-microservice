package corp.siendev.auth.service.repository;

import corp.siendev.auth.service.entity.User;

import java.util.List;

/**
 * User repository interface.
 *
 * @author Golubnichenko_Yuriy
 */
public interface UserRepository {

    void create(User user);
    void update(User user);
    void delete(User user);
    void save();

    User getUser(int userId);
    List<User> getAllUsers();
    User findById(int userId);

}
