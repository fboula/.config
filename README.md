# Config update automation

This repo propose a Github action workflow that will automatically update files in other Github repositories when a `source` file is updated here. It leverage [gruntwork-io/git-xargs](https://github.com/gruntwork-io/git-xargs) to do all the git operation that will create pull requests in targeted repositories.

For the tests purpose, the current workflow will create pull-requests in [fboula/test-config-update](https://github.com/fboula/test-config-update) repo when the source file `.tflint.hcl` is updated.
