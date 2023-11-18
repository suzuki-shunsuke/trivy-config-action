# trivy-config-action

GitHub Actions for [trivy config](https://aquasecurity.github.io/trivy/latest/docs/references/configuration/cli/trivy_config/) command

![image](https://github.com/suzuki-shunsuke/trivy-config-action/assets/13323303/e4d7f6f7-3df3-44bb-8f98-535173ce096e)

---

![image](https://github.com/suzuki-shunsuke/trivy-config-action/assets/13323303/2d0c6224-8ae4-42f0-80d8-06488ff18f56)

Run `trivy config` and notify the result with [reviewdog](https://github.com/reviewdog/reviewdog) and [github-comment](https://github.com/suzuki-shunsuke/github-comment).

This GitHub Actions does **not** install trivy and reviewdog, so you have to install them in advance.
It allows to install tools outside this action.
[aqua](https://aquaproj.github.io/) is useful to install them.

## Requirements

- [trivy](https://github.com/aquasecurity/trivy)
- [reviewdog](https://github.com/reviewdog/reviewdog)
- (Optional) [github-comment](https://github.com/suzuki-shunsuke/github-comment)

## Usage

```yaml
- uses: suzuki-shunsuke/trivy-config-action@main
  with:
    github_token: ${{github.token}}
    working_directory: foo
    github_comment: 'true'
    config_path: 'bar/trivy.yaml
```

## Inputs

### Required Inputs

Nothing.

### Optional Inputs

name | default value | description
--- | --- | ---
github_token | `github.token` | GitHub Access Token
working_directory | "" (current directory) | Woring Directory
github_comment | `false` | Whether a comment is posted with github-comment
config_path | `trivy.yaml` | Path to trivy config file

## Outputs

Nothing.

## LICENSE

[MIT](LICENSE)
