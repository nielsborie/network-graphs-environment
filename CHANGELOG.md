# Changelog

<a name="1.0.1"></a>
## 1.0.1 (2022-09-23)

### Added

- 👷‍♂️ Use an other GitHub action to create pull request [[1645e8e](https://github.com/nielsborie/network-graphs-environment/commit/1645e8ef126da7e42113338d95813d7fa135ab7f)]
- ✅ Use act to test GitHub action locally [[c62df5a](https://github.com/nielsborie/network-graphs-environment/commit/c62df5a199a1a9cdbb35880f97d2459f06fe6d7a)]
- ✨ Introduce a package.json file [[22a3316](https://github.com/nielsborie/network-graphs-environment/commit/22a3316aa01e69a011cd2d594cd249d47b7c4f68)]

### Changed

- 🎨 Remove release not extraction [[14980e5](https://github.com/nielsborie/network-graphs-environment/commit/14980e54c6d7aa5098619aa3ea6b7d3d869e4a53)]
- 🏗️ Try actions/github-script to create pull request [[18bb3eb](https://github.com/nielsborie/network-graphs-environment/commit/18bb3ebf1518c17290ead60005f47dd44ccf2662)]
- 🚨 Fix GITHUB_TOKEN env variable [[22f0ecd](https://github.com/nielsborie/network-graphs-environment/commit/22f0ecd831215c5bc64d6f80657ebd8942c1677c)]
- 🚚 Rename repository to network-graphs-environment [[0e0bcc9](https://github.com/nielsborie/network-graphs-environment/commit/0e0bcc938ab37590d7bb0bffc5a6c40fe4474f82)]
- 🚚 Rename /view folder to /doc folder [[6913ed9](https://github.com/nielsborie/network-graphs-environment/commit/6913ed983488ace356cc9015b57e87392ee82bec)]

### Breaking changes

- 💥 Use base image &amp; install dependencies using mamba [[86887ea](https://github.com/nielsborie/network-graphs-environment/commit/86887ea71726b258fbb709e35066c98b5e141758)]

### Fixed

- 🚑 Use GITHUB_ENV to store environment variables [[4965a6a](https://github.com/nielsborie/network-graphs-environment/commit/4965a6a890e6c760243526d63f8f672f0546aeef)]
- ✏️ Try double quote instead of simple quote to bypass unknow identifier error [[5bb17c7](https://github.com/nielsborie/network-graphs-environment/commit/5bb17c741988ea871d91b0f68b3a2dec8198c91a)]
- 🐛 Try without $ identifier [[a3a2089](https://github.com/nielsborie/network-graphs-environment/commit/a3a20899a49e56e79258de140cad7d943659002e)]
- 💚 Fetch all history for all tags and branches in actions/checkout@v3 [[47ea0be](https://github.com/nielsborie/network-graphs-environment/commit/47ea0be27e219a10610290934d85e1ad227352fc)]
- 🐛 Fix input name create_pull_request GitHub action [[0c65db3](https://github.com/nielsborie/network-graphs-environment/commit/0c65db39c234c1552a2799011e84a2279e160f04)]
- 🚑 Initialize git config &amp; create release branch [[1794311](https://github.com/nielsborie/network-graphs-environment/commit/1794311d7ee1ba2a6ebf5927679dd6987a2f7d55)]
- 🚑 Add initial version files [[2846e1a](https://github.com/nielsborie/network-graphs-environment/commit/2846e1afe659195445ab330933c160bc7c4dcd44)]
- 🚑 Update file paths with git add commands in GitHub actions [[aec564e](https://github.com/nielsborie/network-graphs-environment/commit/aec564ea1e0eb10bbe38fcdc0bbdf3003bb67af3)]
- ✏️ Rename /doc folder to /docs [[4ab0457](https://github.com/nielsborie/network-graphs-environment/commit/4ab04570cf4d6d42839ac0149373325d0c0292b8)]

### Miscellaneous

- 👔 Update PR body in release branch action [[aeb3347](https://github.com/nielsborie/network-graphs-environment/commit/aeb3347171b44d0e4aa51edb7d6ae24c77d08ed5)]
- ⚗️ Push release branch in the same stage that creates the commit [[23f50bd](https://github.com/nielsborie/network-graphs-environment/commit/23f50bdbcd2bc3fa492be0ffe3d2975a56d449d2)]
- 🧱 Add GitHub action to tag release version after a merge on branch main [[c6ee4f7](https://github.com/nielsborie/network-graphs-environment/commit/c6ee4f79c3c67145e09e6e9552adca7b347d6226)]
- 🧱 Using GitHub actions to automate the release process [[b01bd00](https://github.com/nielsborie/network-graphs-environment/commit/b01bd003387454f9ff81529720166f5a55753e38)]
- 🚀 Enable docker build and push Github actions [[70dd324](https://github.com/nielsborie/network-graphs-environment/commit/70dd3243bb114a044be1a823258ee78306c94447)]
- 📝 Initiate the first CHANGELOG.md [[7b1b255](https://github.com/nielsborie/network-graphs-environment/commit/7b1b25533005db98b39c8e75142b7436f0cfb7d6)]
- 🔨 Add the generate-changelog goal and feed the CHANGELOG.md [[f5b435c](https://github.com/nielsborie/network-graphs-environment/commit/f5b435c74099a7b0b08e7bb1548f2cfcf23f52cb)]
- 🔨 Add Makefile [[e7f3f22](https://github.com/nielsborie/network-graphs-environment/commit/e7f3f224f0b48c00fc1a17691e883892e441474d)]
- 🙈 Add .gitignore [[4f9f550](https://github.com/nielsborie/network-graphs-environment/commit/4f9f5500c3284c6ee42d5f62296000d26fe243e0)]
-  Update README.md [[7357c12](https://github.com/nielsborie/network-graphs-environment/commit/7357c124d11aca625c4b15cf35c387ccb6594261)]
-  Update README.md [[ed0fed9](https://github.com/nielsborie/network-graphs-environment/commit/ed0fed903b0d5e29b2a48162385fc6933ec78798)]
-  Update README.md [[85219bf](https://github.com/nielsborie/network-graphs-environment/commit/85219bf0738d2e22e6a59dee54f3e55068c5d711)]
-  Update logo to logo2 [[f546bea](https://github.com/nielsborie/network-graphs-environment/commit/f546bea7bc9ce540b56b21dee81d578475401012)]
-  change logo [[be9e0cf](https://github.com/nielsborie/network-graphs-environment/commit/be9e0cff91ce1961111d25e421fe3ad5760c659f)]
-  change size graph logo [[818e037](https://github.com/nielsborie/network-graphs-environment/commit/818e0379fda5e27b3fbd15d761545662ed28a872)]
-  Update README.md [[60455e0](https://github.com/nielsborie/network-graphs-environment/commit/60455e02c7de729cfb5fb89e9a2e46de2bc893dd)]
-  add views [[cebe9b7](https://github.com/nielsborie/network-graphs-environment/commit/cebe9b78ebfbf731c77f6cc23150976dd71334c4)]
-  update README.md [[a1aba3c](https://github.com/nielsborie/network-graphs-environment/commit/a1aba3c3354fbb540325882a0f106fbafceb07a9)]
-  add python-igraph library [[b6eb00d](https://github.com/nielsborie/network-graphs-environment/commit/b6eb00dd835a6ae40badf90949b704e5b915477a)]
-  update README.md [[e4a2c17](https://github.com/nielsborie/network-graphs-environment/commit/e4a2c170626646d26ee853df9a79d3dfcabe1208)]
-  update README.md [[d54e502](https://github.com/nielsborie/network-graphs-environment/commit/d54e50280f4ae22e455ac4933b2f4c79f0bbab75)]
-  update README (-- arg docker run) [[a47b333](https://github.com/nielsborie/network-graphs-environment/commit/a47b33382477e59358caa09aa335f53a2acde14f)]
-  update README.md [[22e3347](https://github.com/nielsborie/network-graphs-environment/commit/22e33478ab79200fbde4e11c2fea02f381c10311)]
-  update README.md [[56fbd11](https://github.com/nielsborie/network-graphs-environment/commit/56fbd1114491699c9df1d0a774eabd98106132be)]
-  update README.md [[5a5814b](https://github.com/nielsborie/network-graphs-environment/commit/5a5814bd59d8a4511778ef22006acd4048118beb)]
-  update README.md [[c4a632e](https://github.com/nielsborie/network-graphs-environment/commit/c4a632e82709853286927415ad16825e725cc02f)]
-  First commit, add Readme.md + Dockerfile [[82e03fd](https://github.com/nielsborie/network-graphs-environment/commit/82e03fd57a9beab41bfb28dcc7faba4b64c80cdc)]
-  first commit [[75bb878](https://github.com/nielsborie/network-graphs-environment/commit/75bb8788e87e30b0434f6058e3f2240ff820899d)]


