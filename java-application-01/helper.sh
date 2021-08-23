# 1. create source code.
cd src/main/java

mkdir -p cambridge/programming/project/

# then add an "Application.java". note that we need to make sure 
package cambridge.programming.project;
# matches the folder structure.

# 2. Maven packaging.
mvn clean package

# 3. Run the application.
cd target 
java -cp maven-project-package-1.0.jar cambridge.programming.project.Application


# 4. Explore Maven Repository - "install" copy jar file and install to local maven repository use it as a cache.
mvn clean install

ls ~/.m2/repository/
# you will find the package repository, the jar, and metadata.

# 5 Commit and update
git commit -am "using maven plugin."


# 6. Addition Dependencies. In the application, we would like to use the StringUtils.
# so we import in in the Application.java. However, we need to add such dependency to the POM.xml.
# without, the following command will fail.
mvn clean compile
# import org.apache.commons.lang3.StringUtils;

# add the following to POM.xml.
<dependency>
    <groupId>org.apache.commons</groupId>
    <artifactId>commons-lang3</artifactId>
    <version>3.12.0</version>
</dependency>
