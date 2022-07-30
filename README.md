# 👋 Hi, I'm Marat Reymers

Backend developer, fan of linters and open-source

![GitHub stats](https://github-readme-stats.vercel.app/api?username=maratori&theme=dark&count_private=true&show_icons=true&include_all_commits=true&hide_title=true)


## Contacts

[![Telegram][telegram-img]][telegram-link]
[![LinkedIn][linkedin-img]][linkedin-link]
[![Gmail][gmail-img]][gmail-link]

[telegram-img]: https://img.shields.io/badge/telegram-maratori-54A9EB.svg?style=for-the-badge&logo=telegram
[telegram-link]: https://t.me/maratori
[linkedin-img]: https://img.shields.io/badge/linkedin-marat%20reymers-0A66C2?style=for-the-badge&logo=linkedin
[linkedin-link]: https://www.linkedin.com/in/marat-reymers
[gmail-img]: https://img.shields.io/badge/gmail-marat.maratori-EA4335?style=for-the-badge&logo=gmail
[gmail-link]: mailto:marat.maratori+github@gmail.com


## Author

### ✦ [testpackage](https://github.com/maratori/testpackage)

![Stars](https://img.shields.io/github/stars/maratori/testpackage?style=social)
![Golang](https://img.shields.io/badge/language-go-00ADD8)
[![CI](https://github.com/maratori/testpackage/actions/workflows/ci.yaml/badge.svg)](https://github.com/maratori/testpackage/actions/workflows/ci.yaml)
[![Codecov](https://codecov.io/gh/maratori/testpackage/branch/main/graph/badge.svg?token=Pa334H8xEh)](https://codecov.io/gh/maratori/testpackage)
[![License](https://img.shields.io/github/license/maratori/testpackage.svg)](https://github.com/maratori/testpackage/blob/main/LICENSE)

Golang linter that encourages to use a separate `_test` package (integrated into [golangci-lint](https://golangci-lint.run/))

<!--
### ✦ [idescriptive](https://github.com/maratori/idescriptive)
Golang linter that reports interfaces without named arguments (integrated into [golangci-lint](https://golangci-lint.run/))
-->

<!--
### ✦ [async](https://github.com/maratori/async)
Small golang library to enqueue background jobs from domain logic
-->

### ✦ [pt](https://github.com/maratori/pt)

<!-- ![Stars](https://img.shields.io/github/stars/maratori/pt?style=social) -->
![Golang](https://img.shields.io/badge/language-go-00ADD8)
[![Build Status](https://travis-ci.com/maratori/pt.svg?branch=master)](https://travis-ci.com/maratori/pt)
[![Codecov](https://codecov.io/gh/maratori/pt/branch/master/graph/badge.svg)](https://codecov.io/gh/maratori/pt)
[![License](https://img.shields.io/github/license/maratori/pt.svg)](https://github.com/maratori/pt/blob/master/LICENSE)

Small golang library that helps you to run Parallel Tests


## Useful gists

- [.golangci.yml](https://gist.github.com/maratori/47a4d00457a92aa426dbd48a18776322) - Golden config for [golangci-lint](https://github.com/golangci/golangci-lint)
- [clone_postgres_schema_test.go](https://gist.github.com/maratori/9105427ceab5a8ab6bd798c34235a66c) - Isolate postgres DB for each test
- [db_in_transaction.go](https://gist.github.com/maratori/812049324580487f562027de0162d503) - Correct way to work with DB transactions in golang
- [testmain_test.go](https://gist.github.com/maratori/425facf6450dad263ed990dbeb25bca6) - TestMain to print logs (colapsed) if test failed
- [test_clock.go](https://gist.github.com/maratori/02bbdf2d4cd5310b8b78d36f446e4452) - Mockable time (clock) for golang
- [golang-mocks.md](https://gist.github.com/maratori/8772fe158ff705ca543a0620863977c2) - Comparison table of golang mocking libraries
- [wait_for.go](https://gist.github.com/maratori/010bfbf05639aa3a5ba832cdd75320ec) - `func WaitFor()` the better alternative for `assert.Eventually()`
- [wait_for.py](https://gist.github.com/maratori/118d1018893b367be8d35ccda996d3af) - Helper function for python tests to get rid of `time.sleep`
