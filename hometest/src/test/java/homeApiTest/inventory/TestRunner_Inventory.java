package homeApiTest.inventory;

import com.intuit.karate.junit5.Karate;

// Command :  mvn test -Dtest=TestRunner_Inventory
class TestRunner_Inventory {

    @Karate.Test
    Karate testUsers() {
        return Karate.run("validate-item", "get-inventory", "add-item").relativeTo(getClass());
    }

}
