defmodule Google.Cloud.Functions.V1.OperationType do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :OPERATION_UNSPECIFIED, 0
  field :CREATE_FUNCTION, 1
  field :UPDATE_FUNCTION, 2
  field :DELETE_FUNCTION, 3
end
defmodule Google.Cloud.Functions.V1.OperationMetadataV1 do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :target, 1, type: :string
  field :type, 2, type: Google.Cloud.Functions.V1.OperationType, enum: true
  field :request, 3, type: Google.Protobuf.Any
  field :version_id, 4, type: :int64, json_name: "versionId"
  field :update_time, 5, type: Google.Protobuf.Timestamp, json_name: "updateTime"
  field :build_id, 6, type: :string, json_name: "buildId"
  field :source_token, 7, type: :string, json_name: "sourceToken"
  field :build_name, 8, type: :string, json_name: "buildName"
end
