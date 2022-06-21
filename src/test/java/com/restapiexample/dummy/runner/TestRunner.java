package com.restapiexample.dummy.runner;

import com.restapiexample.dummy.testbase.TestBase;
import cucumber.api.CucumberOptions;
import net.serenitybdd.cucumber.CucumberWithSerenity;
import org.junit.runner.RunWith;


@RunWith(CucumberWithSerenity.class)
@CucumberOptions(
        features = "src/test/java/resources/feature",
        glue = "com/restapiexample/dummy",
        tags = {"@smoke, @sanity, @regression"}
)
public class TestRunner extends TestBase {
}
