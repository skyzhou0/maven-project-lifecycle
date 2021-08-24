# Create Maven Project
mvn-project:
	mvn archetype:generate -DgroupId=cambridage.programming.project \
	-DartifactId=jumpstart-example \
	-DarchetypeArtifactId=maven-archetype-quickstart \
	-DinteractiveMode=false
	

# Creating feature and label data for UK model.
feature_data:
	# cd ml-example-template
	# mkdir data 
	python3 main/feature_uk.py

# Model training and testing.
train_test:
	python3 main/model_test.py 

# To perform unit testing and obtain the unit testing coverage report.
test:
	pytest -v --cov=custom_fixture_package tests

# Batch prediction
batch_predict:
	python3 main/batch_predict.py

# Clean
clean:
	rm -rf jumpstart-example/
	
