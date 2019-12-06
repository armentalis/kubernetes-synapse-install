# MinIO

MinIO is managerd by the minio-operator. 

MinIO is described as a resource with `minioCR.yaml` and `minioSecret.yaml` as an **accesskey/secretkey** storage.
In case we need to expose MinIO to internet (which is most likely not nesessary) we may use `minioIssuerProd.yaml` and `minioIngress.yaml` in order to provide Ingress.

1. `minioCR.yaml` - **MANDATORY** - resource specification
1. `minioSecret.yaml` - **MANDATORY** - accesskey/secretkey specification
1. `minioIngress.yaml` - **OPTIONAL** - Ingress specification, need in case internet access is requored
1. `minioIssuerProd.yaml` - **OPTIONAL** - Issuer specification, need in case internet access is requored


