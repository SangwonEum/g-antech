import org.junit.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.text.SimpleDateFormat;
import java.util.Date;

public class DateTest {

    private static final Logger LOGGER = LoggerFactory.getLogger(DateTest.class);

    @Test
    public void testDateFromat() {
        SimpleDateFormat sdf = new SimpleDateFormat("/yyyy/MM/dd");
        LOGGER.info("{}", sdf.format(new Date()));
    }
}
