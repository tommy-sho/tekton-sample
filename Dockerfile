FROM golang:1.12-alpine as builder
RUN apk add --no-cache ca-certificates git
ENV PROJECT /github.com/tommy-sho/tekton-sample
WORKDIR /go/src/$PROJECT

ENV GO111MODULE on
COPY . .
RUN go install .

FROM alpine as release
RUN apk add --no-cache ca-certificates git
COPY --from=builder /go/bin/tekton-sample /tekton-sample
ENV PORT_NUMBER=8080
ENTRYPOINT ["/tekton-sample"]
