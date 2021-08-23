# maven-project-lifecycle
Java Maven Packaging


## Convention over Configuration
Maven will look into "project root" -> "src" -> "main" -> "java" & "resources" for source file

```bash
mkdir -p src/main/java
mkdir -p src/main/resources
```

For test locations, Mave will look into "project root" -> "src" -> "test" -> "java" & "resources" for source file

```bash
mkdir -p src/test/java
mkdir -p src/test/resources
```

For Web Application locations, Mave will look into "project root" -> "src" -> "main" -> "webapp" for source file

```bash
mkdir -p src/main/webapp

```