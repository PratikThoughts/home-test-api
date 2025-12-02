package homeApiTest.karatetest;

import com.intuit.karate.junit5.Karate;

// Command :  mvn test -Dtest=UsersRunnerIndividual
class UsersRunnerIndividual {

    @Karate.Test
    Karate testUsers() {
        return Karate.run("karatehometest").relativeTo(getClass());
    }

}
