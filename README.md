## Getting Started

Welcome to the VS Code Java world. Here is a guideline to help you get started to write Java code in Visual Studio Code.

## Folder Structure

The workspace contains two folders by default, where:

- `src`: the folder to maintain sources
- `lib`: the folder to maintain dependencies

Meanwhile, the compiled output files will be generated in the `bin` folder by default.

> If you want to customize the folder structure, open `.vscode/settings.json` and update the related settings there.

## Dependency Management

The `JAVA PROJECTS` view allows you to manage your dependencies. More details can be found [here](https://github.com/microsoft/vscode-java-dependency#manage-dependencies).
## To run the project in visual studio code you should frist create a war file and open that war file in tomcat server(after starting the server, right click on the war file created, and select run on tomcat option) and open it in a browrser by right clicking on the tomcat server. 
You can run this command to create a war file(below is my war file creator command)
jar -cvf your-project.war -C WebContent/ .
