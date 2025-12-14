# trivy-config-action

[![DeepWiki](https://img.shields.io/badge/DeepWiki-suzuki--shunsuke%2Ftrivy--config--action-blue.svg?logo=data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACwAAAAyCAYAAAAnWDnqAAAAAXNSR0IArs4c6QAAA05JREFUaEPtmUtyEzEQhtWTQyQLHNak2AB7ZnyXZMEjXMGeK/AIi+QuHrMnbChYY7MIh8g01fJoopFb0uhhEqqcbWTp06/uv1saEDv4O3n3dV60RfP947Mm9/SQc0ICFQgzfc4CYZoTPAswgSJCCUJUnAAoRHOAUOcATwbmVLWdGoH//PB8mnKqScAhsD0kYP3j/Yt5LPQe2KvcXmGvRHcDnpxfL2zOYJ1mFwrryWTz0advv1Ut4CJgf5uhDuDj5eUcAUoahrdY/56ebRWeraTjMt/00Sh3UDtjgHtQNHwcRGOC98BJEAEymycmYcWwOprTgcB6VZ5JK5TAJ+fXGLBm3FDAmn6oPPjR4rKCAoJCal2eAiQp2x0vxTPB3ALO2CRkwmDy5WohzBDwSEFKRwPbknEggCPB/imwrycgxX2NzoMCHhPkDwqYMr9tRcP5qNrMZHkVnOjRMWwLCcr8ohBVb1OMjxLwGCvjTikrsBOiA6fNyCrm8V1rP93iVPpwaE+gO0SsWmPiXB+jikdf6SizrT5qKasx5j8ABbHpFTx+vFXp9EnYQmLx02h1QTTrl6eDqxLnGjporxl3NL3agEvXdT0WmEost648sQOYAeJS9Q7bfUVoMGnjo4AZdUMQku50McDcMWcBPvr0SzbTAFDfvJqwLzgxwATnCgnp4wDl6Aa+Ax283gghmj+vj7feE2KBBRMW3FzOpLOADl0Isb5587h/U4gGvkt5v60Z1VLG8BhYjbzRwyQZemwAd6cCR5/XFWLYZRIMpX39AR0tjaGGiGzLVyhse5C9RKC6ai42ppWPKiBagOvaYk8lO7DajerabOZP46Lby5wKjw1HCRx7p9sVMOWGzb/vA1hwiWc6jm3MvQDTogQkiqIhJV0nBQBTU+3okKCFDy9WwferkHjtxib7t3xIUQtHxnIwtx4mpg26/HfwVNVDb4oI9RHmx5WGelRVlrtiw43zboCLaxv46AZeB3IlTkwouebTr1y2NjSpHz68WNFjHvupy3q8TFn3Hos2IAk4Ju5dCo8B3wP7VPr/FGaKiG+T+v+TQqIrOqMTL1VdWV1DdmcbO8KXBz6esmYWYKPwDL5b5FA1a0hwapHiom0r/cKaoqr+27/XcrS5UwSMbQAAAABJRU5ErkJggg==)](https://deepwiki.com/suzuki-shunsuke/trivy-config-action)

GitHub Actions for [trivy config](https://aquasecurity.github.io/trivy/latest/docs/references/configuration/cli/trivy_config/) command

![image](https://github.com/suzuki-shunsuke/trivy-config-action/assets/13323303/e4d7f6f7-3df3-44bb-8f98-535173ce096e)

--

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

| name              | default value          | description                                     |
| ----------------- | ---------------------- | ----------------------------------------------- |
| github_token      | `github.token`         | GitHub Access Token                             |
| working_directory | "" (current directory) | Woring Directory                                |
| github_comment    | `false`                | Whether a comment is posted with github-comment |
| config_path       | `trivy.yaml`           | Path to trivy config file                       |

## Outputs

Nothing.

## LICENSE

[MIT](LICENSE)
