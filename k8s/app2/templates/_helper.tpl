{{- define "app.labels" -}}
env: {{ .Values.App_Labels.env}}
type: {{ .Values.App_Labels.type}}
maintainer: {{ .Values.App_Labels.maintainer}}
version: {{ .Values.deployment_Version }}
{{- end -}}


{{- define "selector.labels" -}}
app: {{ .Values.App.Name}}
{{- end -}}