# Changelog

## 3.8.8 (2025-07-29)

Full Changelog: [v3.8.7...v3.8.8](https://github.com/terminaldotshop/terminal-sdk-ruby/compare/v3.8.7...v3.8.8)

### Bug Fixes

* **internal:** ensure sorbet test always runs serially ([930be27](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/930be27b01e695ce028f13e29c538f5ace851cef))


### Chores

* **ci:** only run for pushes and fork pull requests ([793774d](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/793774dabec34277b8a5906958f4fe88919bdeaa))
* **internal:** allow streams to also be unwrapped on a per-row basis ([816b2e8](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/816b2e81eb4275597b54b53d9a8a2803d106712c))
* **internal:** codegen related update ([1cbc702](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/1cbc702862c19b950259123dd40832aa6c7ca288))
* update contribute.md ([09724c1](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/09724c11fb4132e226eeda713288c04845e5061a))

## 3.8.7 (2025-06-28)

Full Changelog: [v3.8.6...v3.8.7](https://github.com/terminaldotshop/terminal-sdk-ruby/compare/v3.8.6...v3.8.7)

### Bug Fixes

* sorbet type annotation on client's `environ` settings ([644ab1c](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/644ab1c82711603dd0b93521aa1d025fd446ce47))


### Chores

* **internal:** codegen related update ([1391c7f](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/1391c7f943ab85c1abf4f5bda9d1ab7f468b8f12))

## 3.8.6 (2025-06-27)

Full Changelog: [v3.8.5...v3.8.6](https://github.com/terminaldotshop/terminal-sdk-ruby/compare/v3.8.5...v3.8.6)

### Bug Fixes

* **ci:** release-doctor — report correct token name ([f7c283c](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/f7c283cd07bc71abe49795479a75174007cea73a))


### Chores

* **internal:** codegen related update ([cd52235](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/cd5223583906ae5407e9923ac1b37d146aae4759))

## 3.8.5 (2025-06-18)

Full Changelog: [v3.8.4...v3.8.5](https://github.com/terminaldotshop/terminal-sdk-ruby/compare/v3.8.4...v3.8.5)

### Bug Fixes

* issue where we cannot mutate arrays on base model derivatives ([67eea64](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/67eea6419e7733a1b4c407fea534ce6a14572d85))


### Chores

* **ci:** enable for pull requests ([ba15351](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/ba153514926fec886b5d8d6abdb8d5a8a009abad))
* **ci:** link to correct github repo ([6da4f5f](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/6da4f5f3738240df6fbe390c09fe7d1e89b6b96e))
* **internal:** codegen related update ([a22c6d9](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/a22c6d93bc4fa4d7f7ef54097c39d161efd874e9))

## 3.8.4 (2025-06-05)

Full Changelog: [v3.8.3...v3.8.4](https://github.com/terminaldotshop/terminal-sdk-ruby/compare/v3.8.3...v3.8.4)

### Bug Fixes

* default content-type for text in multi-part formdata uploads should be text/plain ([7c8cc7e](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/7c8cc7e330f3b66d18e4e76cef49ae2a8d69589d))


### Chores

* **internal:** codegen related update ([baecbc3](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/baecbc34faa811ec38809e21900cc38719e91527))

## 3.8.3 (2025-06-03)

Full Changelog: [v3.8.2...v3.8.3](https://github.com/terminaldotshop/terminal-sdk-ruby/compare/v3.8.2...v3.8.3)

### Bug Fixes

* `to_sorbet_type` should not return branded types ([5d5980e](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/5d5980e177248dc7f66ee0802622bfa833b5b313))


### Chores

* **internal:** version bump ([ff0ee20](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/ff0ee20a9b486bdbf60d5d386d2edf9c1c594dcc))

## 3.8.2 (2025-05-28)

Full Changelog: [v3.8.1...v3.8.2](https://github.com/terminaldotshop/terminal-sdk-ruby/compare/v3.8.1...v3.8.2)

### Bug Fixes

* sorbet types for enums, and make tapioca detection ignore `tapioca dsl` ([30f6f4a](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/30f6f4a26d4fb2075d067c8aa673686512dcd68b))


### Chores

* **internal:** version bump ([730fe7b](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/730fe7b769330586248eae9ec45fd35b3a60c3e1))

## 3.8.1 (2025-05-24)

Full Changelog: [v3.8.0...v3.8.1](https://github.com/terminaldotshop/terminal-sdk-ruby/compare/v3.8.0...v3.8.1)

### Bug Fixes

* prevent rubocop from mangling `===` to `is_a?` check ([ef67cc1](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/ef67cc123e98b33e690847f476fec8301fb48081))


### Chores

* force utf-8 locale via `RUBYOPT` when formatting ([f38a6fe](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/f38a6feeb6dd8fc0771bb885cdd61c6d2cdedd84))
* **internal:** codegen related update ([ed70989](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/ed70989fc05a5d6e3736656467c9b838757db6eb))
* use fully qualified names for yard annotations and rbs aliases ([ea3d97a](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/ea3d97acf7a9d7d01d5e10f6f5f990c0994c396f))

## 3.8.0 (2025-05-22)

Full Changelog: [v3.7.0...v3.8.0](https://github.com/terminaldotshop/terminal-sdk-ruby/compare/v3.7.0...v3.8.0)

### Features

* bump default connection pool size limit to minimum of 99 ([81feb3e](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/81feb3eb7e2d0c5b1df983647c436ebf966ece2c))


### Bug Fixes

* correctly instantiate sorbet type aliases for enums and unions ([2698489](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/2698489f9f63ced3353196009dc2329e20f8cff5))


### Chores

* **docs:** grammar improvements ([841d9a7](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/841d9a7d18776a55e947cee60233d0756579b22c))
* **internal:** codegen related update ([68a3efa](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/68a3efaf40e8944faf60b604b5aa33b46c1aedf0))
* refine Yard and Sorbet types and ensure linting is turned on for examples ([41916e7](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/41916e7b6c195ae8085ac89393b0893b42bf72bc))
* use sorbet union aliases where available ([046dd18](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/046dd183ff9c9826d45fdcf73a6512effd343ca5))
* whitespaces ([88c3862](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/88c38620dbdceefd1eb268b457a464a0b59daa6c))


### Documentation

* rewrite much of README.md for readability ([564f4f7](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/564f4f7b65f67c1f4f17f6a06c952a570263d4d1))

## 3.7.0 (2025-05-14)

Full Changelog: [v3.6.2...v3.7.0](https://github.com/terminaldotshop/terminal-sdk-ruby/compare/v3.6.2...v3.7.0)

### Features

* expose base client options as read only attributes ([5ed1891](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/5ed18915050ee0f2db755deaa6655e93e0e3b766))
* expose recursive `#to_h` conversion ([ca0cc5f](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/ca0cc5f0001bbb2f5b9c5edd7e4e7a017f268956))
* support sorbet aliases at the runtime ([9e210bb](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/9e210bb7cb568a0c4b7a10e87e69772d56a0306b))


### Bug Fixes

* **internal:** update gemspec name ([47cc74b](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/47cc74b18b522e6caa46b014977c035b144e8faf))


### Chores

* fix misc linting / minor issues ([536f483](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/536f483f7916651ae0ae11f663315c8b379dc619))
* **internal:** version bump ([cbba1d7](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/cbba1d7501215bf6a55a54d1fcbdaea01da212d6))

## 3.6.2 (2025-05-08)

Full Changelog: [v3.6.1...v3.6.2](https://github.com/terminaldotshop/terminal-sdk-ruby/compare/v3.6.1...v3.6.2)

### Bug Fixes

* **internal:** ensure formatting always uses c.utf-8 locale ([4a90972](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/4a90972d352696d7c6e895c5c20dbfe3b9f02c11))


### Chores

* **internal:** version bump ([ae3d3c6](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/ae3d3c696dc3332e7b8058ea59dfa33ae77a7305))

## 3.6.1 (2025-05-06)

Full Changelog: [v3.6.0...v3.6.1](https://github.com/terminaldotshop/terminal-sdk-ruby/compare/v3.6.0...v3.6.1)

### Bug Fixes

* **internal:** fix formatting script for macos ([2a11953](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/2a119536aeb607452bbeee0b6eb444dc7e592b58))


### Chores

* **internal:** version bump ([d10ec26](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/d10ec2627089405c24d0fab842fe38e4162fd88a))
* revert ignoring Gemfile.lock ([aeb56e3](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/aeb56e3ed5baeb5a212bcd7315b2ce793bf33e9f))

## 3.6.0 (2025-05-06)

Full Changelog: [v3.5.0...v3.6.0](https://github.com/terminaldotshop/terminal-sdk-ruby/compare/v3.5.0...v3.6.0)

### Features

* **api:** manual updates ([7e38ac6](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/7e38ac6016b5c475c03a7cdddd9169aa4b8fda3f))


### Chores

* accept all nd-json mimetype variants ([eff73e0](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/eff73e0f8215f55c8455193891dbe9a5c28cc825))
* add generator safe directory ([44215e0](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/44215e0adfaf3ee818d03584bcbf9b87eee98a4c))
* **internal:** annotate request options with type aliases in sorbet ([3b7e0d0](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/3b7e0d05e1f6b0f4a5fc71c95ffde379b77b83af))
* **internal:** codegen related update ([5808227](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/580822724b6fe3dcb7061f6bbbac5d5a09d24713))
* **internal:** codegen related update ([e11bb76](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/e11bb7657fda2f3aff6c0fb7510e8844d865b051))
* **internal:** remove unnecessary `rbi/lib` folder ([b27aba4](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/b27aba431115bb8236725d3c00b144b990a810b7))
* loosen rubocop rules that don't always make sense ([c4bbb53](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/c4bbb53755be82037edcd40c413fe659628ce241))
* more accurate type annotations and aliases ([e957025](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/e957025f3031eb1044363d9ddd7a1d4ce7057d21))
* re-export top level models under library namespace ([36d326e](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/36d326ea8861bc14a1e75552dfaaa8e70bf13235))
* remove Gemfile.lock during bootstrap ([5f4d256](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/5f4d256c3429fd3c8ff15473bf73bb94f9e5aef1))
* validate request option coercion correctness ([0d21861](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/0d21861585dc0297ac3d27f3b0a84ac64a0ca0ac))


### Documentation

* illustrate environmental defaults for auth variables ([35a00a8](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/35a00a8f7ec1e109009075c02ab8920ceba84393))

## 3.5.0 (2025-04-26)

Full Changelog: [v3.4.0...v3.5.0](https://github.com/terminaldotshop/terminal-sdk-ruby/compare/v3.4.0...v3.5.0)

### Features

* support specifying content-type with FilePart class ([60735e1](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/60735e16282c5acd3417b3dc50c5d2898d673425))
* support webmock for testing ([ff907ee](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/ff907ee938893c90f26230b95ef2b10077b2f6a3))


### Bug Fixes

* ensure gem release is unaffected by renaming ([bbc47b4](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/bbc47b4cf411fbc82b4b52399c36ae582d985fc2))
* make a typo for `FilePart.content` ([197b7f8](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/197b7f881262ecc8e1580e9d11975b8f41b48461))


### Chores

* **internal:** codegen related update ([a28dff0](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/a28dff09e0ebf4f05e658fecc3d165ab7b20fc23))
* **internal:** improve response envelope unwrap functionality ([b3ceb20](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/b3ceb2025333ebbbf8627fbf527b9178f410b099))
* show truncated parameter docs in yard ([ce3d7ce](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/ce3d7ceb66f4f99f0f7b92e2883689805ca492c8))

## 3.4.0 (2025-04-24)

Full Changelog: [v3.3.0...v3.4.0](https://github.com/terminaldotshop/terminal-sdk-ruby/compare/v3.3.0...v3.4.0)

### Features

* **api:** global region, typed tracking status, variant tags ([736d9ef](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/736d9ef4bd55f6c924cd6706330facd329ef7b72))
* **api:** product variant descriptions ([26d7475](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/26d7475117aa2ba4399bc3606ad52a1d69fedb29))


### Chores

* broadly detect json family of content-type headers ([a9f78b5](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/a9f78b573013f313380503b26cc920f4bc48f158))
* **ci:** only use depot for staging repos ([ce5d778](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/ce5d778a7dc8e234d71c7c2f5c8c840058e5a70e))
* **internal:** codegen related update ([3a5e9d2](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/3a5e9d28cd56b5060355d5335a564834646fe9b0))
* **internal:** codegen related update ([2319933](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/23199337291f66664ed0a101bc7736adbcf44681))

## 3.3.0 (2025-04-23)

Full Changelog: [v3.2.0...v3.3.0](https://github.com/terminaldotshop/terminal-sdk-ruby/compare/v3.2.0...v3.3.0)

### Features

* **api:** include price on subscriptions ([e21f783](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/e21f78337d549c2516edc753f7bb9e966faa5cc0))
* implement `#hash` for data containers ([d954b4f](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/d954b4f956b0a1ed6462a14971e75b1ebeaa0dd9))


### Chores

* **ci:** add timeout thresholds for CI jobs ([d328298](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/d3282986fd478a2ecabf73cae37d29b244fd9286))
* documentation improvements ([0fca24d](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/0fca24d472130a7bb8d7baee00ca8fbedb361b66))
* explicitly mark apis public under `Internal` module ([e443174](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/e443174de5585b34511f4d5a0bdac9c722d5df38))
* **internal:** minor type annotation improvements ([3291fe9](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/3291fe9f9616128cc38b870dc19d0ef289b0013e))
* **internal:** version bump ([e84179a](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/e84179a53013d4ea88339068f8db7df22045b8ed))
* make sorbet enums easier to read ([6c9afe1](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/6c9afe1567674eb72881542a3ee40e41b2c46f70))
* simplify yard annotations by removing most `@!parse` directives ([d8dd2d0](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/d8dd2d084d85645f3f8340c255385dd4c2596fbb))
* update README with recommended editor plugins ([5cc4398](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/5cc4398e382f88834de210d1320e0a757b705221))
* use `@!method` instead of `@!parse` for virtual method type definitions ([451b8ca](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/451b8cac439363264e197efeea2e325de1abc6d8))

## 3.2.0 (2025-04-18)

Full Changelog: [v3.1.0...v3.2.0](https://github.com/terminaldotshop/terminal-sdk-ruby/compare/v3.1.0...v3.2.0)

### Features

* **api:** update subscription route ([0d5b3d8](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/0d5b3d86cd3919012a08160515c10bc7d3e744b3))
* **client:** enable setting base URL from environment variable ([152e594](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/152e594ac706d4c052ef1850f9736f86c91ed399))


### Bug Fixes

* always send idempotency header when specified as a request option ([8624f64](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/8624f6467c342122f7d1d6fcbd72a45e119699d6))
* **client:** send correct HTTP path ([b486b77](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/b486b7740724b356beeecbdd129245f34ae87f9d))
* restore ability to configure server environment as string during client construction ([2979da0](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/2979da025a61a72e3d8835b96208a00632b23484))


### Chores

* **internal:** always run post-processing when formatting when syntax_tree ([aeaac06](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/aeaac06a0fe58254350018f32c83706b9ce67284))
* **internal:** contribute.md and contributor QoL improvements ([b39f7ab](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/b39f7ab198eeb9671e6205a9016977165d68a48f))
* **internal:** loosen internal type restrictions ([ce191f0](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/ce191f00a94e52bc91b03e8ab1ffeb3c2e1bdccd))
* **internal:** minor touch ups on sdk internals ([faa1fb2](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/faa1fb292ba88662aafa162ffb7b8db8e70363a1))
* **internal:** mostly README touch ups ([34f5447](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/34f544727145d9102afabc3aa585a364ac28e950))
* **internal:** protect SSE parsing pipeline from broken UTF-8 characters ([9fbd1a3](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/9fbd1a37d46d3ea29bdfe4309dc34a17809ff579))
* **internal:** version bump ([47698cb](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/47698cb7788869fd93d74d471f2bcec023299fe1))
* make internal types pretty print ([9c5f191](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/9c5f191c6bbfdea36bf16880232b55199c7f96d0))
* refine `#inspect` and `#to_s` for model classes ([2ae0d75](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/2ae0d75d6fe5a47263d3af169bc7b96411bde156))


### Documentation

* update documentation links to be more uniform ([74468e6](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/74468e675eb30b5b8614c9bcc2dc6d38eff22dbf))

## 3.1.0 (2025-04-14)

Full Changelog: [v3.0.0...v3.1.0](https://github.com/terminaldotshop/terminal-sdk-ruby/compare/v3.0.0...v3.1.0)

### Features

* **api:** include created timestamps ([31da9d2](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/31da9d2395f580dc5ae3cfe5b6e012f3fde66a2b))


### Bug Fixes

* inaccuracies in the README.md ([ed0d6c1](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/ed0d6c1b042499b2f0161583cd9dce84c6eea91e))
* **internal:** update release-please to use ruby strategy for README.md ([89ed69d](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/89ed69db0b451b0c32a636a2be4f1129bca29834))


### Chores

* ensure readme.md is bumped when release please updates versions ([b7a238c](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/b7a238cf978c74802bac10f060e3a35c430de82a))
* fix lsp configuration file for local development ([c52b170](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/c52b1701a7c9e05ce4366015d9efac772291b38c))
* **internal:** expand CI branch coverage ([754aaf7](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/754aaf70aaf5c8f51d96297fe9851b3497dc5207))
* **internal:** reduce CI branch coverage ([ec791c9](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/ec791c962055d3a92a7a1ddd3cbb14f6e00f6ee2))
* **internal:** version bump ([41b749b](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/41b749bd415202dd889a1578827a782b697373fd))

## 3.0.0 (2025-04-09)

Full Changelog: [v2.1.3...v3.0.0](https://github.com/terminaldotshop/terminal-sdk-ruby/compare/v2.1.3...v3.0.0)

### ⚠ BREAKING CHANGES

* bump min supported ruby version to 3.1 (oldest non-EOL) ([#193](https://github.com/terminaldotshop/terminal-sdk-ruby/issues/193))
* remove top level type aliases to relocated classes ([#192](https://github.com/terminaldotshop/terminal-sdk-ruby/issues/192))

### Features

* add reference links in yard ([#182](https://github.com/terminaldotshop/terminal-sdk-ruby/issues/182)) ([526aba9](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/526aba920f989a1c323aac74bbf45c29480e0d1c))
* allow all valid `JSON` types to be encoded ([#202](https://github.com/terminaldotshop/terminal-sdk-ruby/issues/202)) ([bbd9e48](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/bbd9e48a7bfebef72ff7ec55398310d072500b68))
* **api:** include shipment tracking info on order ([#216](https://github.com/terminaldotshop/terminal-sdk-ruby/issues/216)) ([6665880](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/666588056ba2a1cb515c71b6d450bfc1cbc496cc))
* bump min supported ruby version to 3.1 (oldest non-EOL) ([#193](https://github.com/terminaldotshop/terminal-sdk-ruby/issues/193)) ([6d37312](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/6d37312b5bee3cd9f73cc02a7b4a8fec0edef432))
* implement `to_json` for base model ([#188](https://github.com/terminaldotshop/terminal-sdk-ruby/issues/188)) ([cae8e58](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/cae8e58c32925d35f5833f7fe675139d3dca29bf))
* link response models to their methods in yard doc ([#184](https://github.com/terminaldotshop/terminal-sdk-ruby/issues/184)) ([cdae10f](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/cdae10f6072ebe18522d95e0cd9b59a474cb8924))
* remove top level type aliases to relocated classes ([#192](https://github.com/terminaldotshop/terminal-sdk-ruby/issues/192)) ([5563310](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/5563310b2ef6c506f956833201603f8f20aa063d))
* support query, header, and body params that have identical names ([#201](https://github.com/terminaldotshop/terminal-sdk-ruby/issues/201)) ([af3da72](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/af3da723f577760b632a3635a7234cfcada5e5c4))
* support solargraph generics ([#195](https://github.com/terminaldotshop/terminal-sdk-ruby/issues/195)) ([f822bc0](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/f822bc0ecba3e76823b67e27ee32890ee006a0e1))
* use Pathname alongside raw IO handles for file uploads ([#213](https://github.com/terminaldotshop/terminal-sdk-ruby/issues/213)) ([3621b7d](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/3621b7d4461d1f0f9f759407e40e2a95cd860162))


### Bug Fixes

* converter should transform stringio into string where applicable ([#204](https://github.com/terminaldotshop/terminal-sdk-ruby/issues/204)) ([a289d17](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/a289d17557b97640ae2f539e4a0789e0b8ade7ad))
* raise connection error for errors that result from HTTP transports ([#214](https://github.com/terminaldotshop/terminal-sdk-ruby/issues/214)) ([25f93ee](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/25f93eea0f3230c6d4de76fbe8fd3c62c5242a9f))


### Chores

* add README docs for using solargraph when installing gem from git ([#212](https://github.com/terminaldotshop/terminal-sdk-ruby/issues/212)) ([f472616](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/f4726162dd7aba54bfbaec8c52c06a8865083d39))
* always fold up method bodies in sorbet type definitions ([#208](https://github.com/terminaldotshop/terminal-sdk-ruby/issues/208)) ([5b098da](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/5b098dab395aefb25dfd1b247cb978c4e0cd64b0))
* demonstrate how to make undocumented requests in README ([#194](https://github.com/terminaldotshop/terminal-sdk-ruby/issues/194)) ([e120c78](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/e120c78458dc1fd588095eaf019becaba274aac9))
* do not use literals for version in type definitions ([#196](https://github.com/terminaldotshop/terminal-sdk-ruby/issues/196)) ([3ebbbb3](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/3ebbbb34b9ccd06a2f848a4a86eca76d63cf1f5e))
* document LSP support in read me ([#200](https://github.com/terminaldotshop/terminal-sdk-ruby/issues/200)) ([a04a943](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/a04a9436f91b99f82b8f6d3e663077d01f48397d))
* extract error classes into own module ([#189](https://github.com/terminaldotshop/terminal-sdk-ruby/issues/189)) ([1722e5d](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/1722e5d0fbd15ddbfbd1f0480a256ab225b75f51))
* improve yard docs readability ([#183](https://github.com/terminaldotshop/terminal-sdk-ruby/issues/183)) ([0f12da7](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/0f12da72824387d05249b1244b1e8bc4d344bf4d))
* **internal:** codegen related update ([#185](https://github.com/terminaldotshop/terminal-sdk-ruby/issues/185)) ([3712266](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/3712266a9a4a8f8d83bc44631121c2ab714efc2d))
* **internal:** codegen related update ([#190](https://github.com/terminaldotshop/terminal-sdk-ruby/issues/190)) ([e716071](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/e716071e4de22cdd28e6032a58ec2f5f8bc4af27))
* **internal:** misc small improvements ([#205](https://github.com/terminaldotshop/terminal-sdk-ruby/issues/205)) ([cc99fb9](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/cc99fb99a4cc678d1126d00ea36545b8a6c31c45))
* **internal:** more concise handling of parameter naming conflicts ([#210](https://github.com/terminaldotshop/terminal-sdk-ruby/issues/210)) ([7d0534c](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/7d0534ca9fd6266e96b98b3973c1edfe6ece2452))
* **internal:** rubocop rules ([#207](https://github.com/terminaldotshop/terminal-sdk-ruby/issues/207)) ([faa57aa](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/faa57aa18476c114fe3001b5762dbc8dde30ce79))
* **internal:** run rubocop linter in parallel ([#206](https://github.com/terminaldotshop/terminal-sdk-ruby/issues/206)) ([16df643](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/16df643061e965dcdbde3101a44ce6c90a496826))
* **internal:** version bump ([#180](https://github.com/terminaldotshop/terminal-sdk-ruby/issues/180)) ([0e44707](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/0e44707dda2a96791da162584ac86a22bf12908c))
* loosen const and integer coercion rules ([#215](https://github.com/terminaldotshop/terminal-sdk-ruby/issues/215)) ([431dbf5](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/431dbf595843049d21f34ba2c877d7a6b93b3217))
* make client tests look prettier ([#211](https://github.com/terminaldotshop/terminal-sdk-ruby/issues/211)) ([288ebde](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/288ebde73779c5fce93e4430caf6ebbfdc42fa46))
* misc sdk polish ([#199](https://github.com/terminaldotshop/terminal-sdk-ruby/issues/199)) ([ea7285b](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/ea7285b257ac73ba3be0e3cb283b3bfab7f31ab6))
* move private classes into internal module ([#191](https://github.com/terminaldotshop/terminal-sdk-ruby/issues/191)) ([927175f](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/927175f4e48ed000aad9eea061674fd1c4308f77))
* order client variables by "importance" ([#187](https://github.com/terminaldotshop/terminal-sdk-ruby/issues/187)) ([2cb1427](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/2cb1427ab1bac91bfa5eb850e558caf78a3938bc))
* relax sorbet enum parameters to allow `String` in addition to `Symbol` ([#186](https://github.com/terminaldotshop/terminal-sdk-ruby/issues/186)) ([e7f8d62](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/e7f8d62f6cd9aa237bb26d2c4a546f56062fbe63))
* rename confusing `Type::BooleanModel` to `Type::Boolean` ([#203](https://github.com/terminaldotshop/terminal-sdk-ruby/issues/203)) ([d3a6719](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/d3a6719914fd8c03a7fb73fc5639061158eaf72c))
* simplify internal utils ([#198](https://github.com/terminaldotshop/terminal-sdk-ruby/issues/198)) ([8e7e56c](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/8e7e56c796c1da3a93fd6d61c18fe3f003547bae))
* update yard comment formatting ([#209](https://github.com/terminaldotshop/terminal-sdk-ruby/issues/209)) ([0a4113b](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/0a4113b37055098446b9efbab780bffd38668850))
* use package name for gemspec ([#197](https://github.com/terminaldotshop/terminal-sdk-ruby/issues/197)) ([3ff332c](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/3ff332c7a914c41cd8c4a0d6053a843283ba2666))

## 2.1.3 (2025-04-02)

Full Changelog: [v2.1.2...v2.1.3](https://github.com/terminaldotshop/terminal-sdk-ruby/compare/v2.1.2...v2.1.3)

### Bug Fixes

* pluralize `list` response variables ([#179](https://github.com/terminaldotshop/terminal-sdk-ruby/issues/179)) ([f2193c8](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/f2193c869bebc38979fef2c5ac52c9e9acd968ca))


### Chores

* **internal:** codegen related update ([#177](https://github.com/terminaldotshop/terminal-sdk-ruby/issues/177)) ([ab6b63d](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/ab6b63d0b63613ce63b113c1e29a7293e2ef01fe))

## 2.1.2 (2025-04-02)

Full Changelog: [v2.1.1...v2.1.2](https://github.com/terminaldotshop/terminal-sdk-ruby/compare/v2.1.1...v2.1.2)

### Bug Fixes

* path interpolation template strings ([#176](https://github.com/terminaldotshop/terminal-sdk-ruby/issues/176)) ([1710f55](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/1710f5509a20c388fbc6a25cc73948ada016e49e))


### Chores

* **internal:** version bump ([#173](https://github.com/terminaldotshop/terminal-sdk-ruby/issues/173)) ([6c173f0](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/6c173f043f24bc7d8df77e875d4460b796a4d7ae))
* use fully qualified name in sorbet README example ([#175](https://github.com/terminaldotshop/terminal-sdk-ruby/issues/175)) ([3563dd9](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/3563dd93a7d5f67c08ea533b89e12ee310831a1b))

## 2.1.1 (2025-04-01)

Full Changelog: [v2.1.0...v2.1.1](https://github.com/terminaldotshop/terminal-sdk-ruby/compare/v2.1.0...v2.1.1)

### Bug Fixes

* remove trailing / for environments ([#172](https://github.com/terminaldotshop/terminal-sdk-ruby/issues/172)) ([a5007f0](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/a5007f0e208c44ea7fb98681e8f08fa1b2c2dca2))


### Chores

* fix misc rubocop errors ([#170](https://github.com/terminaldotshop/terminal-sdk-ruby/issues/170)) ([114405c](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/114405cc2d5e4fde0a41d20c8c4787033b1b2973))

## 2.1.0 (2025-04-01)

Full Changelog: [v2.0.0...v2.1.0](https://github.com/terminaldotshop/terminal-sdk-ruby/compare/v2.0.0...v2.1.0)

### Features

* **internal:** converter interface should recurse without schema ([#164](https://github.com/terminaldotshop/terminal-sdk-ruby/issues/164)) ([937b71d](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/937b71d533293ffb72664cb6309bd7495ebc13b5))


### Bug Fixes

* switch to github compatible markdown engine ([#169](https://github.com/terminaldotshop/terminal-sdk-ruby/issues/169)) ([1b58af4](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/1b58af4068eaa9d7a7beed6b48a9039383cef79c))


### Chores

* **internal:** minor refactoring of utils ([#163](https://github.com/terminaldotshop/terminal-sdk-ruby/issues/163)) ([b228505](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/b228505336a27aa7dbfe4e57e2787689d4557c9f))
* **internal:** version bump ([#160](https://github.com/terminaldotshop/terminal-sdk-ruby/issues/160)) ([8415526](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/8415526eea907cf13ef34bab332ae124de9dc8a0))
* more accurate type annotations for SDK internals ([#167](https://github.com/terminaldotshop/terminal-sdk-ruby/issues/167)) ([0e663cf](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/0e663cf7cae118c79164f70b397e3098329623ff))
* more aggressive tapioca detection logic for skipping compiler introspection ([#162](https://github.com/terminaldotshop/terminal-sdk-ruby/issues/162)) ([6e33743](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/6e33743e2aefe7d6fa17bed99d25a391ceea78c4))
* relocate internal modules ([#166](https://github.com/terminaldotshop/terminal-sdk-ruby/issues/166)) ([68d2d27](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/68d2d278b23713aee6d5db04f518327981c946d2))
* remove unnecessary & confusing module ([#165](https://github.com/terminaldotshop/terminal-sdk-ruby/issues/165)) ([d67ea4c](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/d67ea4c8816947e47abdfd9e2861bd13c8256eab))
* update readme ([#168](https://github.com/terminaldotshop/terminal-sdk-ruby/issues/168)) ([235bd2d](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/235bd2d2836a745314ce2217993eb8624a39952d))

## 2.0.0 (2025-03-25)

Full Changelog: [v1.8.0...v2.0.0](https://github.com/terminaldotshop/terminal-sdk-ruby/compare/v1.8.0...v2.0.0)

### ⚠ BREAKING CHANGES

* use tagged enums in sorbet type definitions ([#149](https://github.com/terminaldotshop/terminal-sdk-ruby/issues/149))
* support `for item in stream` style iteration on `Stream`s ([#147](https://github.com/terminaldotshop/terminal-sdk-ruby/issues/147))
* **model:** base model should recursively store coerced base models ([#137](https://github.com/terminaldotshop/terminal-sdk-ruby/issues/137))

### Features

* consistently accept `AnyHash` types in parameter positions in sorbet ([#154](https://github.com/terminaldotshop/terminal-sdk-ruby/issues/154)) ([6cefe4a](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/6cefe4ab706715474ac887aca67bafc143dcbb0a))
* prevent tapioca from introspecting the gem internals ([#153](https://github.com/terminaldotshop/terminal-sdk-ruby/issues/153)) ([5011827](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/501182798fa342ffeedb997d121b9697e5a37be5))
* support `for item in stream` style iteration on `Stream`s ([#147](https://github.com/terminaldotshop/terminal-sdk-ruby/issues/147)) ([a9a0637](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/a9a0637c4d840e72fdc2a1372dd2d6bb25b8b253))
* use tagged enums in sorbet type definitions ([#149](https://github.com/terminaldotshop/terminal-sdk-ruby/issues/149)) ([4b05e5a](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/4b05e5aed976c377fc97fd3671daab735199f06b))


### Bug Fixes

* label optional keyword arguments in *.rbs type definitions ([#145](https://github.com/terminaldotshop/terminal-sdk-ruby/issues/145)) ([70cf7ef](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/70cf7ef46f26ce882dc77bd9e0668d04a9cb130d))
* **model:** base model should recursively store coerced base models ([#137](https://github.com/terminaldotshop/terminal-sdk-ruby/issues/137)) ([8cad153](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/8cad1530e9c7b24a7221d49e8931976a9b0ce7e2))
* resolve tapioca derived sorbet errors ([#148](https://github.com/terminaldotshop/terminal-sdk-ruby/issues/148)) ([66fe6fd](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/66fe6fd86709abc23cd21134751e1ec1a31a0175))
* yard example tag formatting ([#151](https://github.com/terminaldotshop/terminal-sdk-ruby/issues/151)) ([70a6222](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/70a6222b40e382a5a609f34a9fdcd3e0566b111f))


### Chores

* `BaseModel` fields that are `BaseModel` typed should also accept `Hash` ([#150](https://github.com/terminaldotshop/terminal-sdk-ruby/issues/150)) ([cb1aac7](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/cb1aac74d07106befba8f0c2a4eea7858c51b921))
* add `[@yieldparam](https://github.com/yieldparam)` to yard doc ([#141](https://github.com/terminaldotshop/terminal-sdk-ruby/issues/141)) ([075f5c3](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/075f5c35dfeee29cd9c7f5a8c16c441e0acbfc88))
* add example directory ([#144](https://github.com/terminaldotshop/terminal-sdk-ruby/issues/144)) ([1e59727](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/1e59727ab6898afcc41d4156a872582f8fc0016b))
* add type annotations for enum and union member listing methods ([#152](https://github.com/terminaldotshop/terminal-sdk-ruby/issues/152)) ([7a7244f](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/7a7244f3355e1e90c8c23a662c15dc435f3f6e70))
* disable dangerous rubocop auto correct rule ([#158](https://github.com/terminaldotshop/terminal-sdk-ruby/issues/158)) ([27ae891](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/27ae891e623328a3841d303e4c8a3ed69ab6b576))
* disable overloads in `*.rbs` definitions for readable LSP errors ([#146](https://github.com/terminaldotshop/terminal-sdk-ruby/issues/146)) ([1949bd3](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/1949bd3649e5001a2e78c77db982f8874ce90534))
* disable unnecessary linter rules for sorbet manifests ([#140](https://github.com/terminaldotshop/terminal-sdk-ruby/issues/140)) ([6f03c74](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/6f03c742d81019c0522cdd8327286822886851d8))
* document Client's concurrency capability ([#139](https://github.com/terminaldotshop/terminal-sdk-ruby/issues/139)) ([b82b7f1](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/b82b7f11ff2f4b7e93c0dfbb8dd6b4c42b9bc937))
* ignore some spurious linter warnings and formatting changes ([#138](https://github.com/terminaldotshop/terminal-sdk-ruby/issues/138)) ([51f528b](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/51f528bd6be973ba96bf490ae0cab566c9d46e11))
* **internal:** add sorbet config for SDK local development ([#143](https://github.com/terminaldotshop/terminal-sdk-ruby/issues/143)) ([8a52423](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/8a524237189bb26392c8fa3cc3485f20a8ea5aa4))
* **internal:** codegen related update ([#135](https://github.com/terminaldotshop/terminal-sdk-ruby/issues/135)) ([cb13df6](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/cb13df606e43c2688047741d95cf3a06bb5b44dc))
* more readable output when tests fail ([#159](https://github.com/terminaldotshop/terminal-sdk-ruby/issues/159)) ([1348893](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/1348893157018206955031f89ce969a08221a0c4))
* recursively accept `AnyHash` for `BaseModel`s in arrays and hashes ([#155](https://github.com/terminaldotshop/terminal-sdk-ruby/issues/155)) ([10ce2b0](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/10ce2b0f480180e8a836901b893660947a79e911))
* reduce verbosity in type declarations ([#157](https://github.com/terminaldotshop/terminal-sdk-ruby/issues/157)) ([98a858b](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/98a858b21fa89b7053410c5520122f55942cc630))
* switch to prettier looking sorbet annotations ([#156](https://github.com/terminaldotshop/terminal-sdk-ruby/issues/156)) ([255d4bb](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/255d4bb60cfbbe4a208e1d69ab2d0b352702a105))
* use multi-line formatting style for really long lines ([#142](https://github.com/terminaldotshop/terminal-sdk-ruby/issues/142)) ([819d330](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/819d330df867876f87cac3e8fd5af23b46e6e72d))

## 1.8.0 (2025-03-18)

Full Changelog: [v1.7.0...v1.8.0](https://github.com/terminaldotshop/terminal-sdk-ruby/compare/v1.7.0...v1.8.0)

### Features

* support jsonl uploads ([#125](https://github.com/terminaldotshop/terminal-sdk-ruby/issues/125)) ([125a05a](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/125a05a736d60e8cdff2add0d19de5dd4a979e7d))


### Bug Fixes

* bad documentation url for gemdocs.org ([#134](https://github.com/terminaldotshop/terminal-sdk-ruby/issues/134)) ([7caebab](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/7caebabab00c609946852992ef1af82d6ca90139))


### Chores

* add most doc strings to rbi type definitions ([#126](https://github.com/terminaldotshop/terminal-sdk-ruby/issues/126)) ([5289149](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/528914936d6dcab5d85f2d06ddf24adbf7f43295))
* document union variants in yard doc ([#130](https://github.com/terminaldotshop/terminal-sdk-ruby/issues/130)) ([8662cfd](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/8662cfd577ca857854cf6692767686f83347f2db))
* ensure doc strings for rbi method arguments ([#127](https://github.com/terminaldotshop/terminal-sdk-ruby/issues/127)) ([e6b0cd7](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/e6b0cd749e7dd7192d1d35decbfca7c4f69a8eeb))
* error fields are now mutable in keeping with rest of SDK ([#129](https://github.com/terminaldotshop/terminal-sdk-ruby/issues/129)) ([9762727](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/9762727ce18d3a96242698acd06a960a52ee9fe4))
* **internal:** codegen related update ([#133](https://github.com/terminaldotshop/terminal-sdk-ruby/issues/133)) ([ee97948](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/ee97948fd2e86e5eb68119e3ca403ce2bb1f72cb))
* **internal:** remove extra empty newlines ([#123](https://github.com/terminaldotshop/terminal-sdk-ruby/issues/123)) ([4bfa89f](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/4bfa89f7054dfa887ba5396399a7c35c24d4f8c0))
* **internal:** version bump ([#120](https://github.com/terminaldotshop/terminal-sdk-ruby/issues/120)) ([54e8ed6](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/54e8ed6ad3c8079b9b50ffa046a3f0ea9946d56b))
* mark non-inheritable SDK internal classes as final ([#132](https://github.com/terminaldotshop/terminal-sdk-ruby/issues/132)) ([39109d9](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/39109d97ab906855d2c0ac88cef0f657aeed3027))
* refactor BasePage to have initializer ([#122](https://github.com/terminaldotshop/terminal-sdk-ruby/issues/122)) ([f40aebb](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/f40aebb582ea1918f36fd9d36d2da7d99369b8a4))
* sdk internal updates ([#124](https://github.com/terminaldotshop/terminal-sdk-ruby/issues/124)) ([a395876](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/a395876eb60ac10370cfc470f37010e7dc1fb006))
* slightly more consistent type definition layout ([#131](https://github.com/terminaldotshop/terminal-sdk-ruby/issues/131)) ([392c6bd](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/392c6bdaacabf0e2e8afcf52bcad2bbfb20a6376))
* touch up sdk usage examples ([#128](https://github.com/terminaldotshop/terminal-sdk-ruby/issues/128)) ([d4cd993](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/d4cd993f1b0a78dcb5a47353903a998587610306))

## 1.7.0 (2025-03-13)

Full Changelog: [v1.6.0...v1.7.0](https://github.com/terminaldotshop/terminal-sdk-ruby/compare/v1.6.0...v1.7.0)

### Features

* **api:** region model ([#119](https://github.com/terminaldotshop/terminal-sdk-ruby/issues/119)) ([3158513](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/315851302cb4f286b0f5bd59f352498123b81277))


### Chores

* **internal:** version bump ([#117](https://github.com/terminaldotshop/terminal-sdk-ruby/issues/117)) ([c948af2](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/c948af21709e14e7cb4347ae5abf2ad3e76227c4))

## 1.6.0 (2025-03-13)

Full Changelog: [v1.5.0...v1.6.0](https://github.com/terminaldotshop/terminal-sdk-ruby/compare/v1.5.0...v1.6.0)

### Features

* **api:** region type ([#116](https://github.com/terminaldotshop/terminal-sdk-ruby/issues/116)) ([c1ebb53](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/c1ebb53a48b46a720aa064805f4ef689c30e315e))


### Chores

* **internal:** version bump ([#114](https://github.com/terminaldotshop/terminal-sdk-ruby/issues/114)) ([64057c4](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/64057c48b7e7dd19e3f836a843577b015167a4cb))

## 1.5.0 (2025-03-13)

Full Changelog: [v1.4.0...v1.5.0](https://github.com/terminaldotshop/terminal-sdk-ruby/compare/v1.4.0...v1.5.0)

### Features

* **api:** add region to `GET /view/init` ([#113](https://github.com/terminaldotshop/terminal-sdk-ruby/issues/113)) ([e2f97a9](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/e2f97a94ca2f3d49f943659cac9cfa6e922483c7))


### Chores

* **internal:** version bump ([#111](https://github.com/terminaldotshop/terminal-sdk-ruby/issues/111)) ([60422ec](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/60422ec20d95ef407411d0974215ae94c5775110))

## 1.4.0 (2025-03-13)

Full Changelog: [v1.3.0...v1.4.0](https://github.com/terminaldotshop/terminal-sdk-ruby/compare/v1.3.0...v1.4.0)

### Features

* **api:** remove gift cards ([#110](https://github.com/terminaldotshop/terminal-sdk-ruby/issues/110)) ([8b16fee](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/8b16fee738e2c5f6cfc99c2e99d538fd93608697))


### Chores

* **internal:** version bump ([#108](https://github.com/terminaldotshop/terminal-sdk-ruby/issues/108)) ([d9dde0c](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/d9dde0c1ae8806052865ac0e1805f20bbe4d07fe))

## 1.3.0 (2025-03-13)

Full Changelog: [v1.2.0...v1.3.0](https://github.com/terminaldotshop/terminal-sdk-ruby/compare/v1.2.0...v1.3.0)

### Features

* **api:** clear cart api ([#107](https://github.com/terminaldotshop/terminal-sdk-ruby/issues/107)) ([71a105c](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/71a105c4af7600d20003f737d8ee41adc123983a))


### Chores

* remove stale thread local checks ([#105](https://github.com/terminaldotshop/terminal-sdk-ruby/issues/105)) ([66ffe05](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/66ffe050fe56c2e86e2db4303d0a34388ac2fd67))

## 1.2.0 (2025-03-13)

Full Changelog: [v1.1.0...v1.2.0](https://github.com/terminaldotshop/terminal-sdk-ruby/compare/v1.1.0...v1.2.0)

### Features

* support streaming uploads ([#103](https://github.com/terminaldotshop/terminal-sdk-ruby/issues/103)) ([a81d62b](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/a81d62bf44896ebb273ff0a13bb9fab9752d8b5b))


### Bug Fixes

* enums should only coerce matching symbols into strings ([#104](https://github.com/terminaldotshop/terminal-sdk-ruby/issues/104)) ([f80f85c](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/f80f85c3b366c12ad6039bdeaa84338fc7eb231e))


### Chores

* fused enum should use faster internal iteration by default ([#101](https://github.com/terminaldotshop/terminal-sdk-ruby/issues/101)) ([babe138](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/babe13815a934019e32cdd2bd48045f4964c5404))
* improve documentation ([#102](https://github.com/terminaldotshop/terminal-sdk-ruby/issues/102)) ([f68e99c](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/f68e99c46325718dbe5fba01183700d589064a6c))
* **internal:** version bump ([#99](https://github.com/terminaldotshop/terminal-sdk-ruby/issues/99)) ([1c4846c](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/1c4846c00e68ea4a6b4e824e2b53af231e7ae19a))

## 1.1.0 (2025-03-11)

Full Changelog: [v1.0.0...v1.1.0](https://github.com/terminaldotshop/terminal-sdk-ruby/compare/v1.0.0...v1.1.0)

### Features

* add SKIP_BREW env var to ./scripts/bootstrap ([#93](https://github.com/terminaldotshop/terminal-sdk-ruby/issues/93)) ([622cbae](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/622cbae3433fe7d06a796d417c9b4219ede428d5))
* **api:** gift cards ([#98](https://github.com/terminaldotshop/terminal-sdk-ruby/issues/98)) ([de7eb77](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/de7eb7746ebf2f11f937e4e5248ed09c159d1c77))
* support client level methods ([#96](https://github.com/terminaldotshop/terminal-sdk-ruby/issues/96)) ([be72482](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/be7248213ee8f1f48dc5e7da39f8097843f75397))


### Bug Fixes

* rectify a mistake where wrong lines were chosen during rebase ([#97](https://github.com/terminaldotshop/terminal-sdk-ruby/issues/97)) ([00cac56](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/00cac5655787d579a5a7c1a6a8cebe5210ef99b3))


### Chores

* add `sorbet` section to README ([#94](https://github.com/terminaldotshop/terminal-sdk-ruby/issues/94)) ([4e1e7c5](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/4e1e7c537ed8100a14017a9082ae18fe25a4c105))
* add more examples to README.md ([#95](https://github.com/terminaldotshop/terminal-sdk-ruby/issues/95)) ([17d5b05](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/17d5b05a334483dd2b30613343a3ab0e9cea7d38))
* generate better supported rbi signatures ([#91](https://github.com/terminaldotshop/terminal-sdk-ruby/issues/91)) ([6b8a1a2](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/6b8a1a22fe62cdb6c3c59512e5ef9143153c9f45))
* **internal:** version bump ([#89](https://github.com/terminaldotshop/terminal-sdk-ruby/issues/89)) ([ae6d3c4](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/ae6d3c41bb105be0fd048a5b3e61a438d90d67cd))
* modify sorbet initializers to better support auto-completion ([#92](https://github.com/terminaldotshop/terminal-sdk-ruby/issues/92)) ([a7fae52](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/a7fae529cc9dcb61dc2c90538a789e53d6647d76))

## 1.0.0 (2025-03-07)

Full Changelog: [v0.1.0-alpha.15...v1.0.0](https://github.com/terminaldotshop/terminal-sdk-ruby/compare/v0.1.0-alpha.15...v1.0.0)

### Features

* add jsonl support ([#86](https://github.com/terminaldotshop/terminal-sdk-ruby/issues/86)) ([c72b9e9](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/c72b9e946c80f0ec415610d13cd24e95d24a05d3))
* **api:** manual updates ([#88](https://github.com/terminaldotshop/terminal-sdk-ruby/issues/88)) ([3726df5](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/3726df529e42b9c5599e3cdd2e1c535ddb43adfc))


### Chores

* be consistent and use lower case headers everywhere ([#79](https://github.com/terminaldotshop/terminal-sdk-ruby/issues/79)) ([87e532b](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/87e532b283970a5ebc5f8a8c44a1932270750072))
* bump lockfile ([#83](https://github.com/terminaldotshop/terminal-sdk-ruby/issues/83)) ([a228b5e](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/a228b5e01128e9be547c9bcac6ac6a3fd09c47c4))
* **internal:** add utils methods for parsing SSE ([#81](https://github.com/terminaldotshop/terminal-sdk-ruby/issues/81)) ([6ed2804](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/6ed2804522b065285c3252240149384370901e79))
* move examples into tests ([#85](https://github.com/terminaldotshop/terminal-sdk-ruby/issues/85)) ([f0ce74d](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/f0ce74d17eab8833d0292955e3491aac194c2964))
* rename misleading variable ([#84](https://github.com/terminaldotshop/terminal-sdk-ruby/issues/84)) ([df6c7ba](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/df6c7ba799b0d248494120251611c004023a20ba))
* support different EOLs in streaming ([#87](https://github.com/terminaldotshop/terminal-sdk-ruby/issues/87)) ([299b3f3](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/299b3f3f60a412208f0806f3710c2fd3f86f395d))
* update custom timeout header name ([#82](https://github.com/terminaldotshop/terminal-sdk-ruby/issues/82)) ([e479529](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/e479529d33a31da99ec8ddba4d2692878bf91610))

## 0.1.0-alpha.15 (2025-03-01)

Full Changelog: [v0.1.0-alpha.14...v0.1.0-alpha.15](https://github.com/terminaldotshop/terminal-sdk-ruby/compare/v0.1.0-alpha.14...v0.1.0-alpha.15)

### Features

* **internal:** modified tests for thread and fiber safety ([#76](https://github.com/terminaldotshop/terminal-sdk-ruby/issues/76)) ([522ac91](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/522ac918ad5ddb5ddf9de87a265caf7fe633b79c))


### Bug Fixes

* better support header parameters ([#78](https://github.com/terminaldotshop/terminal-sdk-ruby/issues/78)) ([ea50350](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/ea503505415a5481f04ed809f8cf9df883e34d51))


### Chores

* **internal:** version bump ([#75](https://github.com/terminaldotshop/terminal-sdk-ruby/issues/75)) ([4e2ef50](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/4e2ef507ca756908b6fa2813cdaffee5432b4804))

## 0.1.0-alpha.14 (2025-02-28)

Full Changelog: [v0.1.0-alpha.13...v0.1.0-alpha.14](https://github.com/terminaldotshop/terminal-sdk-ruby/compare/v0.1.0-alpha.13...v0.1.0-alpha.14)

### Features

* **api:** manual updates ([#73](https://github.com/terminaldotshop/terminal-sdk-ruby/issues/73)) ([f75262e](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/f75262e1ba765dda01cf857325ac0e9e2ebfcbdc))
* **api:** manual updates ([#74](https://github.com/terminaldotshop/terminal-sdk-ruby/issues/74)) ([f4fcbe5](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/f4fcbe5f5b20afff9629c7d5d9fa31ccacf859cc))


### Chores

* **internal:** group related utils together ([#71](https://github.com/terminaldotshop/terminal-sdk-ruby/issues/71)) ([7c5be22](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/7c5be22c20d1c922390cabe8c03210460267b43d))
* **internal:** version bump ([#69](https://github.com/terminaldotshop/terminal-sdk-ruby/issues/69)) ([75a1e34](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/75a1e34eb14d99453106cf61d467cb223d7f79f2))


### Documentation

* update URLs from stainlessapi.com to stainless.com ([#72](https://github.com/terminaldotshop/terminal-sdk-ruby/issues/72)) ([b2c45db](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/b2c45db567996cf070d74c5efb2a0379a5e141d2))

## 0.1.0-alpha.13 (2025-02-26)

Full Changelog: [v0.1.0-alpha.12...v0.1.0-alpha.13](https://github.com/terminaldotshop/terminal-sdk-ruby/compare/v0.1.0-alpha.12...v0.1.0-alpha.13)

### Features

* **api:** manual updates ([#68](https://github.com/terminaldotshop/terminal-sdk-ruby/issues/68)) ([d46a91d](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/d46a91dadb4b84c3b3af515eac79c6c9c7bd2150))


### Chores

* **internal:** version bump ([#66](https://github.com/terminaldotshop/terminal-sdk-ruby/issues/66)) ([3eed16a](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/3eed16a895d59517cdb39699fee7a1718ebc89d6))

## 0.1.0-alpha.12 (2025-02-26)

Full Changelog: [v0.1.0-alpha.11...v0.1.0-alpha.12](https://github.com/terminaldotshop/terminal-sdk-ruby/compare/v0.1.0-alpha.11...v0.1.0-alpha.12)

### Features

* add deprecation notice to enum members and resources ([#62](https://github.com/terminaldotshop/terminal-sdk-ruby/issues/62)) ([44fb858](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/44fb858b7719af4474ef2fb0a1deeb13f71f181f))
* **api:** manual updates ([#65](https://github.com/terminaldotshop/terminal-sdk-ruby/issues/65)) ([d884227](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/d884227b937a56969ca04b20fcd98ceff30db492))
* isolate platform headers ([#63](https://github.com/terminaldotshop/terminal-sdk-ruby/issues/63)) ([f0a7ff3](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/f0a7ff3c6afe49d13790eff5e50dfbdb019dfc1d))


### Chores

* **internal:** version bump ([#60](https://github.com/terminaldotshop/terminal-sdk-ruby/issues/60)) ([79f9f6f](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/79f9f6f8f19f88edbec2ad8abd6333c7a413e94c))
* **refactor:** improve requester internals ([#64](https://github.com/terminaldotshop/terminal-sdk-ruby/issues/64)) ([fec6edb](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/fec6edb201e6c205af3417ab9b172096680d7a51))

## 0.1.0-alpha.11 (2025-02-25)

Full Changelog: [v0.1.0-alpha.10...v0.1.0-alpha.11](https://github.com/terminaldotshop/terminal-sdk-ruby/compare/v0.1.0-alpha.10...v0.1.0-alpha.11)

### Features

* **api:** manual updates ([#59](https://github.com/terminaldotshop/terminal-sdk-ruby/issues/59)) ([2e7197c](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/2e7197c4ff1652250aebd967aae68a0c7494e75f))
* make `build_request` overridable ([#54](https://github.com/terminaldotshop/terminal-sdk-ruby/issues/54)) ([0623b3d](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/0623b3db9741c44f6ca43d32234bc899aff0cbe5))


### Chores

* add type annotations for requester ([#55](https://github.com/terminaldotshop/terminal-sdk-ruby/issues/55)) ([fcb9d1f](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/fcb9d1f18bfead4875676753fe9146b8b40af415))
* bump lockfile ([#49](https://github.com/terminaldotshop/terminal-sdk-ruby/issues/49)) ([1ef3656](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/1ef365688a564dc8dae6fc575269c5c2aa977591))
* clean up client tests ([#47](https://github.com/terminaldotshop/terminal-sdk-ruby/issues/47)) ([03b21b2](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/03b21b28440e333acb3e7616deb5ae5a4f8b8a84))
* **internal:** formatting ([#48](https://github.com/terminaldotshop/terminal-sdk-ruby/issues/48)) ([8d69160](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/8d69160b37565da87edd86f6e6e90f45733006e5))
* **internal:** prune unused `extern` references ([#58](https://github.com/terminaldotshop/terminal-sdk-ruby/issues/58)) ([52c342c](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/52c342c2abcdf00de0950c3624c24bfa5eb04736))
* **internal:** refactor request stack ([#53](https://github.com/terminaldotshop/terminal-sdk-ruby/issues/53)) ([2e145b2](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/2e145b22f3db5bce87c12f9e9ebc721befad7a9a))
* **internal:** version bump ([#45](https://github.com/terminaldotshop/terminal-sdk-ruby/issues/45)) ([ff808f6](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/ff808f61389178fc08608315d749a7a96b7c6bc8))
* make MFA optional depending on token ([#51](https://github.com/terminaldotshop/terminal-sdk-ruby/issues/51)) ([6f73715](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/6f737155ac13bef546d32f6a9ce3f1df3d37af9c))
* move basemodel examples into tests ([#52](https://github.com/terminaldotshop/terminal-sdk-ruby/issues/52)) ([cfbaf1b](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/cfbaf1b92fcb5ef30e6ead3e6f3a4670ab97968e))
* rename internal type aliases ([#50](https://github.com/terminaldotshop/terminal-sdk-ruby/issues/50)) ([f2c0e6d](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/f2c0e6d3bddeded96fc513a05ca759982baa04ce))
* reorganize import ordering ([#56](https://github.com/terminaldotshop/terminal-sdk-ruby/issues/56)) ([b8c3b9b](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/b8c3b9b2827ddd2b5e963a66a183913a175b8db6))
* sort imports via topological dependency & file path ([#57](https://github.com/terminaldotshop/terminal-sdk-ruby/issues/57)) ([27cf276](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/27cf276ad07658914c2f537aee9d8d9ceafdea28))

## 0.1.0-alpha.10 (2025-02-18)

Full Changelog: [v0.1.0-alpha.9...v0.1.0-alpha.10](https://github.com/terminaldotshop/terminal-sdk-ruby/compare/v0.1.0-alpha.9...v0.1.0-alpha.10)

### Features

* support overlapping HTTP requests in same Fiber ([#43](https://github.com/terminaldotshop/terminal-sdk-ruby/issues/43)) ([ff49d79](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/ff49d79c1f7f0dfba74d69cb38193a9ba8f63900))


### Bug Fixes

* ssl timeout not required when TCP socket open timeout specified ([#44](https://github.com/terminaldotshop/terminal-sdk-ruby/issues/44)) ([6b7506c](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/6b7506caedfc1e646b6d685a4d78a4b920847652))


### Chores

* **internal:** version bump ([#41](https://github.com/terminaldotshop/terminal-sdk-ruby/issues/41)) ([612c7fc](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/612c7fc26e62bd035bed70b076121f5586656596))

## 0.1.0-alpha.9 (2025-02-17)

Full Changelog: [v0.1.0-alpha.8...v0.1.0-alpha.9](https://github.com/terminaldotshop/terminal-sdk-ruby/compare/v0.1.0-alpha.8...v0.1.0-alpha.9)

### Features

* **api:** manual updates ([#39](https://github.com/terminaldotshop/terminal-sdk-ruby/issues/39)) ([0013412](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/0013412662b71f6a34b9a73056431c4f8446057a))

## 0.1.0-alpha.8 (2025-02-16)

Full Changelog: [v0.1.0-alpha.7...v0.1.0-alpha.8](https://github.com/terminaldotshop/terminal-sdk-ruby/compare/v0.1.0-alpha.7...v0.1.0-alpha.8)

### Features

* **api:** manual updates ([#36](https://github.com/terminaldotshop/terminal-sdk-ruby/issues/36)) ([84af34d](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/84af34d30bd9b846d57e40c0fd7d492e41fe5fad))
* **api:** manual updates ([#37](https://github.com/terminaldotshop/terminal-sdk-ruby/issues/37)) ([0fbe102](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/0fbe102a7c2b35ad3804059694392d9f9f947159))


### Chores

* **internal:** version bump ([#34](https://github.com/terminaldotshop/terminal-sdk-ruby/issues/34)) ([be583d2](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/be583d25f24ce17b6bcd0d5cb7701a79ee0f4e69))

## 0.1.0-alpha.7 (2025-02-16)

Full Changelog: [v0.1.0-alpha.6...v0.1.0-alpha.7](https://github.com/terminaldotshop/terminal-sdk-ruby/compare/v0.1.0-alpha.6...v0.1.0-alpha.7)

### Features

* **api:** manual updates ([#33](https://github.com/terminaldotshop/terminal-sdk-ruby/issues/33)) ([e52d253](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/e52d2536057ad701672a61554b4a0c71fea5e8a4))


### Chores

* enable full pagination tests ([#31](https://github.com/terminaldotshop/terminal-sdk-ruby/issues/31)) ([8538ba7](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/8538ba7b8e1c05dc6308aee2a074e00b71c35ae6))
* fully qualify `Array` and `Hash` in rbs files to avoid collisions ([#23](https://github.com/terminaldotshop/terminal-sdk-ruby/issues/23)) ([7dc6aff](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/7dc6affdd4946e5a7c0edd661273f7b2bf4ab517))
* **internal:** codegen related update ([#22](https://github.com/terminaldotshop/terminal-sdk-ruby/issues/22)) ([d57e042](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/d57e0426fa260e5ab108337aa99e867eb19a74f3))
* **internal:** codegen related update ([#24](https://github.com/terminaldotshop/terminal-sdk-ruby/issues/24)) ([6e055e3](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/6e055e353aabe503004da116be82f77edc5304a9))
* **internal:** codegen related update ([#25](https://github.com/terminaldotshop/terminal-sdk-ruby/issues/25)) ([0a62ec8](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/0a62ec8d1b1535dd655457cc6762b2bcbd3ae88c))
* **internal:** codegen related update ([#27](https://github.com/terminaldotshop/terminal-sdk-ruby/issues/27)) ([24077aa](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/24077aa26e63fd3224b85f729b442e72b2eb31b5))
* **internal:** codegen related update ([#29](https://github.com/terminaldotshop/terminal-sdk-ruby/issues/29)) ([2155bba](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/2155bbaf680fc464cbde6b6f07f1048e139ee343))
* **internal:** codegen related update ([#32](https://github.com/terminaldotshop/terminal-sdk-ruby/issues/32)) ([cfb0794](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/cfb07941345a9b99129aecf62bf68ad8fb882127))
* **internal:** version bump ([#20](https://github.com/terminaldotshop/terminal-sdk-ruby/issues/20)) ([f46ef1a](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/f46ef1a5d27f2f8d9f5ea73e92b33207b8d87823))
* switch away from `attr_accessor` annotations to better match tapioca's compilation ([#30](https://github.com/terminaldotshop/terminal-sdk-ruby/issues/30)) ([3147b33](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/3147b33d6ad34f31ed1e684d5da4d13aa55354c4))
* use concise syntax for pattern matching ([#26](https://github.com/terminaldotshop/terminal-sdk-ruby/issues/26)) ([1cac179](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/1cac179496f8d92a88552e77ba121b4853741eb9))

## 0.1.0-alpha.6 (2025-02-07)

Full Changelog: [v0.1.0-alpha.5...v0.1.0-alpha.6](https://github.com/terminaldotshop/terminal-sdk-ruby/compare/v0.1.0-alpha.5...v0.1.0-alpha.6)

### Chores

* **internal:** version bump ([#18](https://github.com/terminaldotshop/terminal-sdk-ruby/issues/18)) ([7992768](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/7992768d850c6f922ce8d77752fb837c71d782ab))

## 0.1.0-alpha.5 (2025-02-07)

Full Changelog: [v0.1.0-alpha.4...v0.1.0-alpha.5](https://github.com/terminaldotshop/terminal-sdk-ruby/compare/v0.1.0-alpha.4...v0.1.0-alpha.5)

### Chores

* **internal:** version bump ([#16](https://github.com/terminaldotshop/terminal-sdk-ruby/issues/16)) ([1702d3d](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/1702d3db9e04abf9b9043d2ecf36049342b40553))

## 0.1.0-alpha.4 (2025-02-07)

Full Changelog: [v0.1.0-alpha.3...v0.1.0-alpha.4](https://github.com/terminaldotshop/terminal-sdk-ruby/compare/v0.1.0-alpha.3...v0.1.0-alpha.4)

### Chores

* **internal:** version bump ([#14](https://github.com/terminaldotshop/terminal-sdk-ruby/issues/14)) ([21ce1a7](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/21ce1a7a4764150d4fa93dfa371ee78f5e537b68))

## 0.1.0-alpha.3 (2025-02-07)

Full Changelog: [v0.1.0-alpha.2...v0.1.0-alpha.3](https://github.com/terminaldotshop/terminal-sdk-ruby/compare/v0.1.0-alpha.2...v0.1.0-alpha.3)

### Chores

* **internal:** version bump ([#12](https://github.com/terminaldotshop/terminal-sdk-ruby/issues/12)) ([4327dc9](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/4327dc9498e518ef1f1e2de72b1ae8cb40795803))

## 0.1.0-alpha.2 (2025-02-07)

Full Changelog: [v0.1.0-alpha.1...v0.1.0-alpha.2](https://github.com/terminaldotshop/terminal-sdk-ruby/compare/v0.1.0-alpha.1...v0.1.0-alpha.2)

### Chores

* **internal:** version bump ([#10](https://github.com/terminaldotshop/terminal-sdk-ruby/issues/10)) ([36393c9](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/36393c9667d4152edcedde4ecf17869daee35902))

## 0.1.0-alpha.1 (2025-02-07)

Full Changelog: [v0.0.1-alpha.2...v0.1.0-alpha.1](https://github.com/terminaldotshop/terminal-sdk-ruby/compare/v0.0.1-alpha.2...v0.1.0-alpha.1)

### Features

* bundle typing manifests with gem release ([#9](https://github.com/terminaldotshop/terminal-sdk-ruby/issues/9)) ([8ef8493](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/8ef849304a65d8bfd63d883fa0ef8f834331b1ee))


### Chores

* do not git ignore `bin/` ([#8](https://github.com/terminaldotshop/terminal-sdk-ruby/issues/8)) ([770b67f](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/770b67fd1d8e39d315d00f0630bb7778ab8bde6c))
* **internal:** codegen related update ([#6](https://github.com/terminaldotshop/terminal-sdk-ruby/issues/6)) ([43c6885](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/43c688587b8af23dd4315db6452e86dd20884df5))

## 0.0.1-alpha.2 (2025-02-07)

Full Changelog: [v0.0.1-alpha.1...v0.0.1-alpha.2](https://github.com/terminaldotshop/terminal-sdk-ruby/compare/v0.0.1-alpha.1...v0.0.1-alpha.2)

### Bug Fixes

* temporarily run CI without bundler cache ([#5](https://github.com/terminaldotshop/terminal-sdk-ruby/issues/5)) ([6c5826e](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/6c5826ee0acbc94dabd3f37f2511859f9f565bce))


### Chores

* **internal:** version bump ([#3](https://github.com/terminaldotshop/terminal-sdk-ruby/issues/3)) ([08fab17](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/08fab177ff5b20bcc6a81f0ad9f17171ee7734d5))

## 0.0.1-alpha.1 (2025-02-06)

Full Changelog: [v0.0.1-alpha.0...v0.0.1-alpha.1](https://github.com/terminaldotshop/terminal-sdk-ruby/compare/v0.0.1-alpha.0...v0.0.1-alpha.1)

### Chores

* configure new SDK language ([3eb7a7a](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/3eb7a7a11b87d50d51b76ba50433dc59201920b5))
* go live ([#1](https://github.com/terminaldotshop/terminal-sdk-ruby/issues/1)) ([8ae1c65](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/8ae1c655d87695c279cbd02a319143030f04b7f2))
* update SDK settings ([da47815](https://github.com/terminaldotshop/terminal-sdk-ruby/commit/da47815afcbc58e568311174d10931fdb6849a2b))
