#!/bin/sh
nats --server=nats://localhost:4222 --user=admin --password="password" stream add high --retention=limits --discard=old --storage=file --subjects="high" --replicas=1 --max-age="30m" --defaults
nats --server=nats://localhost:4222 --user=admin --password="password" stream add low --retention=limits --discard=old --storage=file --subjects="low" --replicas=1 --max-age="30m" --defaults
nats --server=nats://localhost:4222 --user=admin --password="password" stream add normal --retention=limits --discard=old --storage=file --subjects="normal" --replicas=1 --max-age="30m" --defaults
nats --server=nats://localhost:4222 --user=admin --password="password" consumer add high client --ack=explicit --deliver=all --deliver-group=main --pull --defaults
nats --server=nats://localhost:4222 --user=admin --password="password" consumer add low client --ack=explicit --deliver=all --deliver-group=main --pull --defaults
nats --server=nats://localhost:4222 --user=admin --password="password" consumer add normal client --ack=explicit --deliver=all --deliver-group=main --pull --defaults