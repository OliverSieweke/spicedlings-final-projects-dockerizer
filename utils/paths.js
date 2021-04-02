const { resolve } = require("path");

const templatesPath = resolve(__dirname, "..", "templates");
const getDockerfileName = (templateName) => `${templateName}.Dockerfile`;
const getTemplatePath = (templateName) => resolve(templatesPath, getDockerfileName(templateName));

module.exports = {
	getDockerfileName,
	getTemplatePath,
};
