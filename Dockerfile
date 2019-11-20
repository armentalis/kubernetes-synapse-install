FROM matrixdotorg/synapse:latest

RUN apk add git
RUN pip install git+https://github.com/matrix-org/synapse-s3-storage-provider.git


