defmodule Google.Cloud.Enterpriseknowledgegraph.V1.CommonOperationMetadata.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :RUNNING, 1
  field :CANCELLING, 2
  field :SUCCEEDED, 3
  field :FAILED, 4
  field :CANCELLED, 5
  field :PENDING, 6
end

defmodule Google.Cloud.Enterpriseknowledgegraph.V1.CommonOperationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :state, 1,
    type: Google.Cloud.Enterpriseknowledgegraph.V1.CommonOperationMetadata.State,
    enum: true

  field :create_time, 2, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :update_time, 3, type: Google.Protobuf.Timestamp, json_name: "updateTime"
end