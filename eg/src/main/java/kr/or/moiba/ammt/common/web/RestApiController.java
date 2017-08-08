package kr.or.moiba.ammt.common.web;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import java.util.HashMap;
import java.util.Map;

@RestController
public class RestApiController {
    private static final Logger LOGGER = LoggerFactory.getLogger(RestApiController.class);

    @RequestMapping(value = "/api/{name}/test.do", method = RequestMethod.GET)
    public Map sayHello(@PathVariable String name) {
        Map map = new HashMap<>();
        map.put("id", "id");
        map.put("name", name);
        return map;
    }
}
