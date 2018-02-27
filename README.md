# Concourse resource for sonar scanning a dotnet core application

## Usage

```
resource_types:
- name: sonarqube-scanner
  type: docker-image
  source:
    repository: subnova/concourse-dotnet-sonarscanner-resource
    tag: "latest"

resources:
- name: sonarqube-scan
  type: sonarqube-scanner
  source:
    host_url: ((sonarqube_host_url))
    login: ((sonarqube_login_token))

jobs:
- name: sonarqube
  plan:
  - get: version
  - get: my-source
  - put: sonarqube-scan
    params:
      project_name: MyProjectName
      project_key: myproject
      version: version/version
      source: my-source
```
