#!/usr/bin/env bash
docker run --rm --name slate -v $(pwd)/build:/srv/slate/build -v $(pwd)/source:/srv/slate/source slatedocs/slate build
aws s3 cp ./build s3://recrutamento.ciadeestagios.com.br/vagas/slate --recursive --profile indigoway --acl public-read
