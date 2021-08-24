# Create Maven Project
mvn-project:
	mvn archetype:generate -DgroupId=cambridage.programming.project \
	-DartifactId=jumpstart-example \
	-DarchetypeArtifactId=maven-archetype-quickstart \
	-DinteractiveMode=false	

# Clean
clean:
	rm -rf jumpstart-example/
	
