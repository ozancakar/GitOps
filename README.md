
# GitOps

This repository manages CI/CD processes and OpenShift deployments for microservice projects using the GitOps approach. The structure consists of the following main sections:

## Folder Structure

- **helm/**: Contains Kubernetes Helm chart files for each project. For example, under `project-1`, you will find `Chart.yaml`, `values.yaml`, and various template files. These charts enable automated and repeatable deployments to Kubernetes environments.
  - `project-1/` and `project-2/`: Project-specific Helm charts.

- **Pipeline-Template/**: Contains shared pipeline templates for Azure DevOps. Especially for microservice projects, it includes `pipeline.yaml` and `multi-csproj-images.yaml` for multi-.csproj support.
  - `microservice/`: Pipeline templates for microservices.

- **Project-1/** and **Project-2/**: Each project contains its own Azure DevOps pipeline definition (`azure-pipelines.yaml`). These files start CI/CD processes using the relevant pipeline templates.

## Usage

1. **Helm Charts**: Each project has its own chart under `helm/project-x`. You can configure environment and application settings via `values.yaml`. The `templates/` folder contains templates for Kubernetes resources such as deployment, service, and configmap.

2. **Pipeline Templates**: Templates under `Pipeline-Template/microservice` provide reusable steps for CI/CD processes. Project pipelines use these templates via `extends`.

3. **Projects**: Each project contains its own pipeline definition. For example, `Project-1/azure-pipelines.yaml` uses the relevant template to define steps for building, testing, and deploying the code.

## Example Flow

- When code is updated, the relevant project's pipeline is triggered.
- The pipeline uses shared templates to build, test, and create a Docker image.
- The resulting image is deployed to the Kubernetes environment using the Helm chart.

## Contribution & Development

To add a new microservice:
1. Create a new project chart under `helm/`.
2. Update pipeline templates if necessary.
3. Add a new `azure-pipelines.yaml` to the project folder and use the appropriate template.

---
For any suggestions or contributions, feel free to open an issue or pull request.