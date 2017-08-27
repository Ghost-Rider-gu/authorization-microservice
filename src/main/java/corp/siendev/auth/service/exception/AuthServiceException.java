package corp.siendev.auth.service.exception;

/**
 * Handmade exception.
 *
 * @author Golubnichenko_Yuriy
 */
public class AuthServiceException extends RuntimeException {

    public AuthServiceException(String message) {
        super(message);
    }

    public AuthServiceException(String message, Throwable cause) {
        super(message, cause);
    }

}
