{{/* Shortened name suffixed with upgrade-crd */}}
{{- define "prometheus-operator.crdUpgradeJob.name" -}}
{{- print (include "prometheus-operator.fullname" .) "-upgrade" -}}
{{- end -}}

{{/* Create the name of crd.upgradeJob service account to use */}}
{{- define "prometheus-operator.crdUpgradeJob.serviceAccountName" -}}
{{- if .Values.crdUpgradeJob.serviceAccount.create -}}
    {{ default (include "prometheus-operator.crdUpgradeJob.name" .) .Values.crdUpgradeJob.serviceAccount.name }}
{{- else -}}
    {{ default "default" .Values.crdUpgradeJob.serviceAccount.name }}
{{- end -}}
{{- end -}}
