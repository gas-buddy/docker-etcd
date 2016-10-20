FROM quay.io/coreos/etcd:v2.3.7

MAINTAINER GasBuddy <developers@gasbuddy.com>

CMD [ \
    "-name", "etcd0", \
    "-advertise-client-urls", "http://:2379,http://:4001", \
    "-listen-client-urls", "http://0.0.0.0:2379,http://0.0.0.0:4001", \
    "-initial-advertise-peer-urls", "http://:2380", \
    "-listen-peer-urls", "http://0.0.0.0:2380", \
    "-initial-cluster-token", "etcd-cluster-1", \
    "-initial-cluster", "etcd0=http://:2380", \
    "-initial-cluster-state", "new" \
    ]
