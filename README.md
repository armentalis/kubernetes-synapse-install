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
