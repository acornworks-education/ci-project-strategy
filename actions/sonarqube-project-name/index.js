const core = require('@actions/core');
const github = require('@actions/github');

const repoName = github.context.repo.repo.replace('/', '-');
const branchName = github.context.context.branchName('/', '-');
const projectName = `${repoName}-${branchName}`;



console.log('Project name', projectName);
core.setOutput('sonarqube_project_name', projectName);
