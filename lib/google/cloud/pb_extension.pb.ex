defmodule Google.Cloud.PbExtension do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.13.0"

  extend Google.Protobuf.FieldOptions, :operation_field, 1149,
    optional: true,
    type: Google.Cloud.OperationResponseMapping,
    json_name: "operationField",
    enum: true

  extend Google.Protobuf.FieldOptions, :operation_request_field, 1150,
    optional: true,
    type: :string,
    json_name: "operationRequestField"

  extend Google.Protobuf.FieldOptions, :operation_response_field, 1151,
    optional: true,
    type: :string,
    json_name: "operationResponseField"

  extend Google.Protobuf.MethodOptions, :operation_service, 1249,
    optional: true,
    type: :string,
    json_name: "operationService"

  extend Google.Protobuf.MethodOptions, :operation_polling_method, 1250,
    optional: true,
    type: :bool,
    json_name: "operationPollingMethod"
end