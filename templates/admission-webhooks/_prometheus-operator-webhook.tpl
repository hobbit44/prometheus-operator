{{/* Generate basic labels for prometheus-operator-webhook */}}
{{- define "prometheus-operator.admission-webhooks.labels" }}
{{- include "prometheus-operator.labels" . }}
app.kubernetes.io/name: {{ template "prometheus-operator.name" . }}-prometheus-operator
app.kubernetes.io/component: prometheus-operator-webhook
{{- end }}

{{- define "prometheus-operator.admission-webhooks.annotations" }}
{{- if .Values.operator.admissionWebhooks.certManager.enabled }}
certmanager.k8s.io/inject-ca-from: {{ printf "%s/%s-admission" (include "prometheus-operator.namespace" .) (include "prometheus-operator.fullname" .) | quote }}
cert-manager.io/inject-ca-from: {{ printf "%s/%s-admission" (include "prometheus-operator.namespace" .) (include "prometheus-operator.fullname" .) | quote }}
{{- end }}
{{- end }}