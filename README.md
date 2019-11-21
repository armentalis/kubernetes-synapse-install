# kubernetes-synapse-install
How to install synapse on kubernetes

This [instruction](https://hub.docker.com/r/matrixdotorg/synapse/) can be used in order to setup k8s deployment.

How to generate config file section is really helpful to run Synapse

Certs are requested via [cert manager](https://github.com/jetstack/cert-manager)


Should also seup [federation ](https://github.com/matrix-org/synapse/blob/master/docs/federate.md#dns-srv-delegation) by
adding this SRV record in the `synapse.sunsingerus.com` DNS zone:

```console
 _matrix._tcp.synapse.sunsingerus.com. 3600 IN SRV 10 5 443 synapse.sunsingerus.com.

```

Troubleshoot integration by this URL [https://federationtester.matrix.org/api/report?server_name=synapse.sunsingerus.com](https://federationtester.matrix.org/api/report?server_name=synapse.sunsingerus.com)


## S3 integration
[https://github.com/matrix-org/synapse-s3-storage-provider](https://github.com/matrix-org/synapse-s3-storage-provider)

Obtain minio client by
```bash
wget https://dl.min.io/client/mc/release/linux-amd64/mc
chmod +x mc
./mc --help
```

echo -n "accesskey" | base64
echo -n "secretkey" | base64


# list files
./mc ls minio

# create bucket
./mc mb minio/synapsebucket

# show tree
mc tree minio/test-bucket

# copy into bucket
mc cp myobject.txt minio/mybucket

```bash
cat ~/.mc/config.json 
```
```json
{
	"version": "9",
	"hosts": {
		"gcs": {
			"url": "https://storage.googleapis.com",
			"accessKey": "YOUR-ACCESS-KEY-HERE",
			"secretKey": "YOUR-SECRET-KEY-HERE",
			"api": "S3v2",
			"lookup": "dns"
		},
		"local": {
			"url": "http://localhost:9000",
			"accessKey": "",
			"secretKey": "",
			"api": "S3v4",
			"lookup": "auto"
		},
		"play": {
			"url": "https://play.min.io",
			"accessKey": "Q3AM3UQ867SPQQA43P2F",
			"secretKey": "zuf+tfteSlswRu7BJ86wekitnifILbZam1KYY3TG",
			"api": "S3v4",
			"lookup": "auto"
		},
		"minio": {
			"url": "http://synapse-minio-hl-svc:9000",
			"accessKey": "accesskey",
			"secretKey": "secretkey",
			"api": "S3v4",
			"lookup": "auto"
		},
		"s3": {
			"url": "https://s3.amazonaws.com",
			"accessKey": "YOUR-ACCESS-KEY-HERE",
			"secretKey": "YOUR-SECRET-KEY-HERE",
			"api": "S3v4",
			"lookup": "dns"
		}
	}
}

```

```bash
pip install git+https://github.com/matrix-org/synapse-s3-storage-provider.git
```
```bash
cd /usr/local/lib
ls s3_storage_provider.py
```
