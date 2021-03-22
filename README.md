# evaluation-js-apickli

This is a repository for a test-ware for evaluating certain the **Apickli** JS test automation tools.

## Prerequisites

In order to execute the implemented test cases, an account is needed on the https://www.themoviedb.org/.
If the account is created the API Key (v3 auth) should be added to as the `THEMOVIEDB_API_KEY`.

1. Node.js LTS

## Framework used

- Apickli
- https://github.com/apickli/apickli
- Apickli is a REST API integration testing framework based on cucumber.js. It provides a gherkin framework and a collection of utility functions to make API testing easy and less time consuming.

## Test cases

The implemented test cases can be found in [TESTCASES.md](TESTCASES.md).

## Setup

```bash
npm install
```

## Execution

```bash
npm test
```

