#!/bin/sh
nats --server=nats://localhost:4222 --user=admin --password="password" stream add prematch --retention=limits --discard=old --storage=file --subjects="prematch" --replicas=1 --max-age="30m" --defaults
nats --server=nats://localhost:4222 --user=admin --password="password" stream add inplay --retention=limits --discard=old --storage=file --subjects="inplay" --replicas=1 --max-age="30m" --defaults
nats --server=nats://localhost:4222 --user=admin --password="password" stream add low --retention=limits --discard=old --storage=file --subjects="low" --replicas=1 --max-age="30m" --defaults
nats --server=nats://localhost:4222 --user=admin --password="password" stream add normal --retention=limits --discard=old --storage=file --subjects="normal" --replicas=1 --max-age="30m" --defaults
nats --server=nats://localhost:4222 --user=admin --password="password" consumer add prematch client --ack=explicit --deliver=all --deliver-group=prematch1 --pull --defaults
nats --server=nats://localhost:4222 --user=admin --password="password" consumer add inplay client --ack=explicit --deliver=all --deliver-group=inplay1 --pull --defaults
nats --server=nats://localhost:4222 --user=admin --password="password" consumer add low client --ack=explicit --deliver=all --deliver-group=low1 --pull --defaults
nats --server=nats://localhost:4222 --user=admin --password="password" consumer add normal client --ack=explicit --deliver=all --deliver-group=normal1 --pull --defaults
