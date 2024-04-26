FROM golang:1.21

CMD exec /bin/sh -c "while sleep 1000; do :; done"
