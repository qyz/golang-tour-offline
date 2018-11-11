#!/bin/sh

# We want to be able to access the go tour on localhost with our
# browser. To pass the origin restriction for the websocket
# connection, we make the go tour application think, that 0.0.0.0
# (which means 'all interfaces') is localhost.
cp /etc/hosts /tmp/hosts
cat /tmp/hosts | perl -p -e 's/127\.0\.0\.1/0.0.0.0/' > /etc/hosts

# Here 'localhost' is actually 'all interfaces'
exec /go/bin/tour -http=localhost:3999
