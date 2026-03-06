Incident: Application Pod Failure

Symptoms:
Application becomes unavailable.

Detection:
Prometheus alert triggered for pod restart.

Investigation:
kubectl get pods
kubectl logs POD_NAME

Resolution:
Kubernetes automatically recreated the pod.
Service restored.

Root Cause:
Container crash.
