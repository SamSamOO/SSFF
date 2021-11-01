package kr.or.ssff.test;

import lombok.NoArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

/*

 */
@NoArgsConstructor
@Log4j2

@RunWith(SpringJUnit4ClassRunner.class)

@ContextConfiguration(locations = {
    "file:src/main/webapp/WEB-INF/spring/root-context.xml"
})
public class cafeTest {

//    @Autowired
//    private CafeService service;

    @Before
    public void setup() {
        log.debug("setup() invoked.");

//        Objects.requireNonNull(service);
//        log.info("\t+ service: " + service);
    } // setup



    @Test(timeout = 1000)
    public void testRegister() {
        log.debug("testRegister() invoked.");

//        BoardVO board = new BoardVO(null, "TITLE_777", "CONTENT_777", "WRITER_777", null, null);
//        log.info("\t+ board: " + board);
//
//        if (service.register(board)) {
//            log.info("\t+ New board registered.");
//        } else {
//            log.info("\t+ No board registered.");
//        } // if-else
    } // testRegister


    @After
    public void tearDown() {
        log.debug("tearDown() invoked.");

    } // tearDown
}























