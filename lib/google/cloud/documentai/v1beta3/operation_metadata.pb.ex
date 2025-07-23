defmodule Google.Cloud.Documentai.V1beta3.CommonOperationMetadata.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :RUNNING, 1
  field :CANCELLING, 2
  field :SUCCEEDED, 3
  field :FAILED, 4
  field :CANCELLED, 5
end

defmodule Google.Cloud.Documentai.V1beta3.CommonOperationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :state, 1, type: Google.Cloud.Documentai.V1beta3.CommonOperationMetadata.State, enum: true
  field :state_message, 2, type: :string, json_name: "stateMessage"
  field :resource, 5, type: :string
  field :create_time, 3, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :update_time, 4, type: Google.Protobuf.Timestamp, json_name: "updateTime"
end
