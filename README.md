# This is starting infrastructure example
#### Following toolset to be used:
- Docker Compose
- Jenkins
- Gitlab

#### Infrastructure requirements:
- Run both Jenkins and Gitlab via Docker Compose

#### Shared library requirements and functionality:
- Use both Groovy and Jenkins DSL
- Calculate if the current build number is "Even or Odd"

## HOW TO USE THIS CODE:
- install Docker
- install yq
- run `./startupScript.sh ` to deploy infrastructure
- configure jenkins and gitlab manually
- enjoy
- run `./removeTrash.sh` to wipe down everything and start from scratch