defmodule Google.Cloud.Runtimeconfig.V1beta1.VariableState do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :VARIABLE_STATE_UNSPECIFIED, 0
  field :UPDATED, 1
  field :DELETED, 2
end

defmodule Google.Cloud.Runtimeconfig.V1beta1.RuntimeConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string
  field :description, 2, type: :string
end

defmodule Google.Cloud.Runtimeconfig.V1beta1.Variable do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :contents, 0

  field :name, 1, type: :string
  field :value, 2, type: :bytes, oneof: 0
  field :text, 5, type: :string, oneof: 0
  field :update_time, 3, type: Google.Protobuf.Timestamp, json_name: "updateTime"
  field :state, 4, type: Google.Cloud.Runtimeconfig.V1beta1.VariableState, enum: true
end

defmodule Google.Cloud.Runtimeconfig.V1beta1.EndCondition.Cardinality do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :path, 1, type: :string
  field :number, 2, type: :int32
end

defmodule Google.Cloud.Runtimeconfig.V1beta1.EndCondition do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :condition, 0

  field :cardinality, 1,
    type: Google.Cloud.Runtimeconfig.V1beta1.EndCondition.Cardinality,
    oneof: 0
end

defmodule Google.Cloud.Runtimeconfig.V1beta1.Waiter do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string
  field :timeout, 2, type: Google.Protobuf.Duration
  field :failure, 3, type: Google.Cloud.Runtimeconfig.V1beta1.EndCondition
  field :success, 4, type: Google.Cloud.Runtimeconfig.V1beta1.EndCondition
  field :create_time, 5, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :done, 6, type: :bool
  field :error, 7, type: Google.Rpc.Status
end
