package utils;

import net.datafaker.Faker;

public class RandomDataGenerator {

    private static final Faker faker = new Faker();

    public static String getNumber(int count) {
        return faker.number().digits(count);
    }

    public static String getFullName() {
        return faker.name().fullName();
    }

    public static String getCity() {
        return faker.address().cityName();
    }
}
