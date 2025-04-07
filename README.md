# prometheus-operator

This is an attempt to seperate prometheus from [kube-prometheus-stack](https://github.com/prometheus-community/helm-charts/tree/main/charts/kube-prometheus-stack) so i can have the components deployed seperately.


### Installing the Chart
To install the chart with the release name my-release:

```
helm install my-release oci://ghcr.io/hobbit44/prometheus-operator/prometheus-operator
```

### Uninstalling the Chart
To uninstall/delete the my-release deployment:

```
helm delete my-release
```
The command removes all the Kubernetes components associated with the chart and deletes the release.
