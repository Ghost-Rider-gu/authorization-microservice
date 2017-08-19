package corp.siendev.auth.service;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

/**
 * Auth service application invoke.
 *
 * @author Golubnichenko_Yuriy
 */
@SpringBootApplication
public class AuthServiceApplication {

    public static void main(String args[]) {
        SpringApplication application = new SpringApplication(AuthServiceApplication.class);

        application.run(args);
    }

}
