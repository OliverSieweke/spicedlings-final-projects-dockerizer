#!/usr/bin/env node

const { copyFile } = require("fs").promises;
const { resolve } = require("path");
const { getDockerfileName, getTemplatePath } = require("../utils/paths.js");

const templateName = process.argv[2];

copyFile(getTemplatePath(templateName), resolve(process.cwd(), getDockerfileName(templateName)));
