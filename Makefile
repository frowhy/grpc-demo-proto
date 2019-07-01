default: go

go:
	find . -name '*.proto' -exec protoc --go_out=plugins=grpc:../../ {} \;

java:
	find . -name '*.proto' -exec protoc --java_out=../java {} \;

js:
	find . -name '*.proto' -exec protoc --js_out=import_style=commonjs:../protobuf --grpc-web_out=import_style=commonjs,mode=grpcwebtext:../protobuf {} \;
