.PHONY: mod build clean test

MAVEN_SITE					=	http://central.maven.org
OPENAPI_GENERATOR_VERSION	=	4.1.2
OPENAPI_GENERATOR_JAR		=	openapi-generator-cli-$(OPENAPI_GENERATOR_VERSION).jar

all: build

download:
	curl -L $(MAVEN_SITE)/maven2/org/openapitools/openapi-generator-cli/$(OPENAPI_GENERATOR_VERSION)/$(OPENAPI_GENERATOR_JAR) -o $(OPENAPI_GENERATOR_JAR)

generate:
	java -jar $(OPENAPI_GENERATOR_JAR) generate --input-spec spec/openapi.yaml --template-dir templates --output . --generator-name go-gin-server

mod:
	go mod init github.com/t2y/openapi-gin-sample

build:
	go build -o main main.go

clean:
	rm -f main

test:
	go test .
