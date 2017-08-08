import kr.or.moiba.ammt.common.PasswordController;
import org.junit.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.security.authentication.encoding.Md5PasswordEncoder;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

public class EncryptTest {

    private static final Logger LOGGER = LoggerFactory.getLogger(EncryptTest.class);

    @Test
    public final void testMD5(){
        Md5PasswordEncoder encoder = new Md5PasswordEncoder();
        encoder.setEncodeHashAsBase64(false);
        String password = "admin";
        LOGGER.debug("{}-{}", password, encoder.encodePassword(password, null));
    }

    @Test
    public final void testBCrypt(){
        BCryptPasswordEncoder bCryptPasswordEncoder = new BCryptPasswordEncoder();
        String str = "qwe123";
        String strEncode = bCryptPasswordEncoder.encode(str);
        LOGGER.debug("BCrypt-encode: {}", strEncode);
        LOGGER.debug("BCrypt-matches: {}", bCryptPasswordEncoder.matches(str, "$2a$10$ydBeBOKsJTxE7PZ5.gsR8.gCS1oGbfN/RjoSPlRYpDtnlRbJtNFXu"));
    }
}
