> To use this template, clone a new repository based on this and
> 1. Fill out this README.md, guided by the tasks below
> 1. Implement the test cases in the choosen framework which are listed in [TESTCASES.md](TESTCASES.md)
> 1. Delete this quotation
> 1. Delete tasks in all files

# evaluation-js-apickli

- [ ] Update name to `evaluation-js-(framework name)` here and in `package.json` too, including repository URLs.

This is a repository for a test-ware for evaluating certain the **Apickli** JS test automation tools.

- [ ] Update description to describe purpose of this repository, e.g. This is a test-ware for evaluation FRAMEWORK test automation tool.

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

