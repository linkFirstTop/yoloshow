protoc --dart_out ./lib/protofile/ --plugin=protoc-gen-dart=$HOME/.pub-cache/bin/protoc-gen-dart ./bin/messages/v1_member/v1_member.proto -I ./bin/messages

protoc --dart_out ./lib/protofile/ --plugin=protoc-gen-dart=$HOME/.pub-cache/bin/protoc-gen-dart ./bin/messages/common/common.proto -I ./bin/messages;