package utils;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;

import java.util.Map;
import java.util.stream.Collectors;

public class JsonUtils {

    public static String removeNullValues(Map<String, Object> jsonObjcet) throws JsonProcessingException {
        ObjectMapper mapper = new ObjectMapper();

        Map<String, Object> jsonObjectWithoutNull = jsonObjcet
                .entrySet()
                .stream()
                .filter(entry -> entry.getValue() != null && !entry.getValue().equals(""))
                .collect(Collectors.toMap(entry -> entry.getKey(), entry -> entry.getValue()));

        return mapper.writeValueAsString(jsonObjectWithoutNull);
    }

    public static String removeNullValues(String jsonObjcet) throws JsonProcessingException {
        ObjectMapper mapper = new ObjectMapper();

        Map<String, Object> jsonObjectWithoutNull = mapper.readValue(jsonObjcet, new TypeReference<Map<String, Object>>() {
                })
                .entrySet()
                .stream()
                .filter(entry -> entry.getValue() != null && !entry.getValue().equals("") )
                .collect(Collectors.toMap(entry -> entry.getKey(), entry -> entry.getValue()));

        return mapper.writeValueAsString(jsonObjectWithoutNull);
    }
}
