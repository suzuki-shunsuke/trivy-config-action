import * as core from '@actions/core'
import { run } from './run'

const main = async (): Promise<void> => {
  await run({
    workingDirectory: core.getInput('working_directory', { required: false }),
    githubToken: core.getInput('github_token', { required: true }),
    githubComment: core.getBooleanInput('github_comment', { required: true }),
    configPath: core.getInput('config_path', { required: false }),
  })
}

main().catch((e) => core.setFailed(e instanceof Error ? e.message : JSON.stringify(e)))
