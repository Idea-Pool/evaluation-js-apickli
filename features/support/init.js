const apickli = require('apickli');
const { Before } = require('cucumber');

Before(function() {
    if (!this.process.THEMOVIEDB_API_KEY) {
        throw new Error('THEMOVIEDB_API_KEY is not set!');
    }

    this.apickli = new apickli.Apickli('https', 'api.themoviedb.org/3');
    this.apickli.addQueryParameters([
        { parameter: 'api_key', value: process.env.THEMOVIEDB_API_KEY }
    ]);
});

