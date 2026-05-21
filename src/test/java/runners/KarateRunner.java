package runners;

import com.intuit.karate.junit5.Karate;

public class KarateRunner {

    @Karate.Test
    Karate testDepartamentos() {
        return Karate.run("classpath:features/api/onpe/departamentos.feature");
    }

    @Karate.Test
    Karate testProvincias() {
        return Karate.run("classpath:features/api/onpe/provincias.feature");
    }

    @Karate.Test
    Karate testDistritos() {
        return Karate.run("classpath:features/api/onpe/distritos.feature");
    }
}