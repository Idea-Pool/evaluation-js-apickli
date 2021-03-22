const apickli = require("apickli");
const { Before } = require("cucumber");

Before(function() {
    if (!process.env.THEMOVIEDB_API_KEY) {
        throw new Error("THEMOVIEDB_API_KEY is not set!");
    }

    this.apickli = new apickli.Apickli("https", "api.themoviedb.org/3");
    this.apickli.addRequestHeader("Content-Type", "application/json");
    this.apickli.storeValueInScenarioScope("api_key", process.env.THEMOVIEDB_API_KEY);
});

