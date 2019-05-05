# Tekton-sample
By using Tekton, Test, build-image and deploy pod to GKE cluster.
The Tekton(Tekton Piplines) is project that provides Knatice CI/CD piplines on your k8s cluster.
The Tekton is a member of Continuos Delvery Foundation (CDF).
About Teketon, see [here](https://github.com/tektoncd/pipeline).

## Install
Create GKE cluter and get Credential
```
gcloud container clusters create [CLUSTER_NAME] --zone=[YOUR_ZONE]
gcloud container clusters get-credentials [CLUSTER_NAME] --zone=[YOUR_ZONE]
```

Create Service-account and register as Kubernetes Secret for Kaniko by reference [here](https://github.com/GoogleContainerTools/kaniko/blob/master/README.md#kubernetes-secret).

Install Tekton Pipelines by refecenre [here](https://github.com/tektoncd/pipeline/blob/master/docs/install.md#adding-the-tekton-pipelines).

## Deploy pipline to your GKE cluster

Apply Resources, Task and Pipeline.
`kubectl apply -f tekton/pipeline`

Start PipelineRun.
`kubectl apply -f tekton/pipeline-run.yaml`

Check tekton-pipelines
`kubectl get tekton-pipelines`

## Licenss
MIT