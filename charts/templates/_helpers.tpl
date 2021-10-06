{{/* vim: set filetype=mustache: */}}

{{/*
Construct the `labels.chart` with Name-Version for used by all resources in this chart.
*/}}
{{- define "airflow.labels.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" -}}
{{- end -}}