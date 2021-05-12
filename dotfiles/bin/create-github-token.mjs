#!/usr/bin/env hs

const scopes = [
  "repo",
  "repo:status",
  "repo_deployment",
  "public_repo",
  "repo:invite",
  "security_events",

  "workflow",

  "write:packages",
  "read:packages",

  "delete:packages",

  "gist",

  "notifications",

  "delete_repo",
];
const questions = [
  {
    type: "input",
    name: "description",
    message: "Name of the token",
  },
  {
    type: "autocomplete",
    name: "scopes",
    message: "Select access token scopes",
    choices: scopes,
    multiple: true,
  },
];

const answers = await prompt(questions);
const url = `https://github.com/settings/tokens/new?description=${
  answers["description"]
}&scopes=${answers["scopes"].join(",")}`;
await open(url);
