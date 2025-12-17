# CM COMMON
{{- define "helpers.list-env-variables-cm-common"}}
{{- $application  := .Values.application -}}
{{- $env  := .Values.environment -}}
{{- range $key, $val := .Values.envVar.configmap.common }}
- name: {{ $key }}
  valueFrom:
    configMapKeyRef:
      name: cm-{{ $application }}-{{ $env }}
      key: {{ $key }}
{{- end }}
{{- end }}

# SECRET COMMON
{{- define "helpers.list-env-variables-sec-common"}}
{{- $application  := .Values.application -}}
{{- $env  := .Values.environment -}}
{{- range $key, $val := .Values.envVar.secret.common }}
- name: {{ $key }}
  valueFrom:
    secretKeyRef:
      name: sec-{{ $application }}-{{ $env }}
      key: {{ $key }}
{{- end }}
{{- end }}

# CONFIGMAP DEV
{{- define "helpers.list-env-variables-cm-dev"}}
{{- $application  := .Values.application -}}
{{- $env  := .Values.environment -}}
{{- range $key, $val := .Values.envVar.configmap.dev }}
- name: {{ $key }}
  valueFrom:
    configMapKeyRef:
      name: cm-{{ $application }}-{{ $env }}
      key: {{ $key }}
{{- end }}
{{- end }}

# SECRET DEV
{{- define "helpers.list-env-variables-secret-dev" }}
{{- $application  := .Values.application -}}
{{- $env  := .Values.environment -}}
{{- range $key, $val := .Values.envVar.secret.dev }}
- name: {{ $key }}
  valueFrom:
    secretKeyRef:
      name: sec-{{ $application }}-{{ $env }}
      key: {{ $key }}
{{- end }}
{{- end }}

# CONFIGMAP TEST
{{- define "helpers.list-env-variables-cm-test"}}
{{- $application  := .Values.application -}}
{{- $env  := .Values.environment -}}
{{- range $key, $val := .Values.envVar.configmap.test }}
- name: {{ $key }}
  valueFrom:
    configMapKeyRef:
      name: cm-{{ $application }}-{{ $env }}
      key: {{ $key }}
{{- end }}
{{- end }}

# SECRET TEST
{{- define "helpers.list-env-variables-secret-test" }}
{{- $application  := .Values.application -}}
{{- $env  := .Values.environment -}}
{{- range $key, $val := .Values.envVar.secret.test }}
- name: {{ $key }}
  valueFrom:
    secretKeyRef:
      name: sec-{{ $application }}-{{ $env }}
      key: {{ $key }}
{{- end }}
{{- end }}

# CONFIGMAP PREPROD
{{- define "helpers.list-env-variables-cm-preprod"}}
{{- $application  := .Values.application -}}
{{- $env  := .Values.environment -}}
{{- range $key, $val := .Values.envVar.configmap.preprod }}
- name: {{ $key }}
  valueFrom:
    configMapKeyRef:
      name: cm-{{ $application }}-{{ $env }}
      key: {{ $key }}
{{- end }}
{{- end }}

# SECRET PREPROD
{{- define "helpers.list-env-variables-secret-preprod" }}
{{- $application  := .Values.application -}}
{{- $env  := .Values.environment -}}
{{- range $key, $val := .Values.envVar.secret.preprod }}
- name: {{ $key }}
  valueFrom:
    secretKeyRef:
      name: sec-{{ $application }}-{{ $env }}
      key: {{ $key }}
{{- end }}
{{- end }}

# CONFIGMAP PROD
{{- define "helpers.list-env-variables-cm-prod"}}
{{- $application  := .Values.application -}}
{{- $env  := .Values.environment -}}
{{- range $key, $val := .Values.envVar.configmap.prod }}
- name: {{ $key }}
  valueFrom:
    configMapKeyRef:
      name: cm-{{ $application }}-{{ $env }}
      key: {{ $key }}
{{- end }}
{{- end }}

# SECRET PROD
{{- define "helpers.list-env-variables-secret-prod" }}
{{- $application  := .Values.application -}}
{{- $env  := .Values.environment -}}
{{- range $key, $val := .Values.envVar.secret.prod }}
- name: {{ $key }}
  valueFrom:
    secretKeyRef:
      name: sec-{{ $application }}-{{ $env }}
      key: {{ $key }}
{{- end }}
{{- end }}
