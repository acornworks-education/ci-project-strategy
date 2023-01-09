const core = require('@actions/core');
const github = require('@actions/github');

console.log(github.context.payload.pull_request);

const repoName = github.context.repo.repo.replace('/', '-');
const branchName = github.context.branchName('/', '-');
const projectName = `${repoName}-${branchName}`;



console.log('Project name', projectName);
core.setOutput('sonarqube_project_name', projectName);
