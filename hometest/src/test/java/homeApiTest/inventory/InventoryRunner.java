package homeApiTest.inventory;

import com.intuit.karate.junit5.Karate;

// Command :  mvn test -Dtest=InventoryRunner
class InventoryRunner {

    @Karate.Test
    Karate testUsers() {
        return Karate.run("ValidateItems", "GetInventory", "AddItem").relativeTo(getClass());
    }

}
