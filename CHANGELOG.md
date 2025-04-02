# Changelog

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
