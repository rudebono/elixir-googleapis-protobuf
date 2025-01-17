defmodule Google.Cloud.Runtimeconfig.V1beta1.ListConfigsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :parent, 1, type: :string
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Cloud.Runtimeconfig.V1beta1.ListConfigsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :configs, 1, repeated: true, type: Google.Cloud.Runtimeconfig.V1beta1.RuntimeConfig
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Runtimeconfig.V1beta1.GetConfigRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 2, type: :string
end

defmodule Google.Cloud.Runtimeconfig.V1beta1.CreateConfigRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :parent, 1, type: :string
  field :config, 2, type: Google.Cloud.Runtimeconfig.V1beta1.RuntimeConfig
  field :request_id, 3, type: :string, json_name: "requestId"
end

defmodule Google.Cloud.Runtimeconfig.V1beta1.UpdateConfigRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string
  field :config, 2, type: Google.Cloud.Runtimeconfig.V1beta1.RuntimeConfig
end

defmodule Google.Cloud.Runtimeconfig.V1beta1.DeleteConfigRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string
end

defmodule Google.Cloud.Runtimeconfig.V1beta1.ListVariablesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :parent, 1, type: :string
  field :filter, 2, type: :string
  field :page_size, 3, type: :int32, json_name: "pageSize"
  field :page_token, 4, type: :string, json_name: "pageToken"
  field :return_values, 5, type: :bool, json_name: "returnValues"
end

defmodule Google.Cloud.Runtimeconfig.V1beta1.ListVariablesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :variables, 1, repeated: true, type: Google.Cloud.Runtimeconfig.V1beta1.Variable
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Runtimeconfig.V1beta1.WatchVariableRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string
  field :newer_than, 4, type: Google.Protobuf.Timestamp, json_name: "newerThan"
end

defmodule Google.Cloud.Runtimeconfig.V1beta1.GetVariableRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string
end

defmodule Google.Cloud.Runtimeconfig.V1beta1.CreateVariableRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :parent, 1, type: :string
  field :variable, 2, type: Google.Cloud.Runtimeconfig.V1beta1.Variable
  field :request_id, 3, type: :string, json_name: "requestId"
end

defmodule Google.Cloud.Runtimeconfig.V1beta1.UpdateVariableRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string
  field :variable, 2, type: Google.Cloud.Runtimeconfig.V1beta1.Variable
end

defmodule Google.Cloud.Runtimeconfig.V1beta1.DeleteVariableRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string
  field :recursive, 2, type: :bool
end

defmodule Google.Cloud.Runtimeconfig.V1beta1.ListWaitersRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :parent, 1, type: :string
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Cloud.Runtimeconfig.V1beta1.ListWaitersResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :waiters, 1, repeated: true, type: Google.Cloud.Runtimeconfig.V1beta1.Waiter
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Runtimeconfig.V1beta1.GetWaiterRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string
end

defmodule Google.Cloud.Runtimeconfig.V1beta1.CreateWaiterRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :parent, 1, type: :string
  field :waiter, 2, type: Google.Cloud.Runtimeconfig.V1beta1.Waiter
  field :request_id, 3, type: :string, json_name: "requestId"
end

defmodule Google.Cloud.Runtimeconfig.V1beta1.DeleteWaiterRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string
end

defmodule Google.Cloud.Runtimeconfig.V1beta1.RuntimeConfigManager.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.runtimeconfig.v1beta1.RuntimeConfigManager",
    protoc_gen_elixir_version: "0.14.0"

  rpc :ListConfigs,
      Google.Cloud.Runtimeconfig.V1beta1.ListConfigsRequest,
      Google.Cloud.Runtimeconfig.V1beta1.ListConfigsResponse

  rpc :GetConfig,
      Google.Cloud.Runtimeconfig.V1beta1.GetConfigRequest,
      Google.Cloud.Runtimeconfig.V1beta1.RuntimeConfig

  rpc :CreateConfig,
      Google.Cloud.Runtimeconfig.V1beta1.CreateConfigRequest,
      Google.Cloud.Runtimeconfig.V1beta1.RuntimeConfig

  rpc :UpdateConfig,
      Google.Cloud.Runtimeconfig.V1beta1.UpdateConfigRequest,
      Google.Cloud.Runtimeconfig.V1beta1.RuntimeConfig

  rpc :DeleteConfig, Google.Cloud.Runtimeconfig.V1beta1.DeleteConfigRequest, Google.Protobuf.Empty

  rpc :ListVariables,
      Google.Cloud.Runtimeconfig.V1beta1.ListVariablesRequest,
      Google.Cloud.Runtimeconfig.V1beta1.ListVariablesResponse

  rpc :GetVariable,
      Google.Cloud.Runtimeconfig.V1beta1.GetVariableRequest,
      Google.Cloud.Runtimeconfig.V1beta1.Variable

  rpc :WatchVariable,
      Google.Cloud.Runtimeconfig.V1beta1.WatchVariableRequest,
      Google.Cloud.Runtimeconfig.V1beta1.Variable

  rpc :CreateVariable,
      Google.Cloud.Runtimeconfig.V1beta1.CreateVariableRequest,
      Google.Cloud.Runtimeconfig.V1beta1.Variable

  rpc :UpdateVariable,
      Google.Cloud.Runtimeconfig.V1beta1.UpdateVariableRequest,
      Google.Cloud.Runtimeconfig.V1beta1.Variable

  rpc :DeleteVariable,
      Google.Cloud.Runtimeconfig.V1beta1.DeleteVariableRequest,
      Google.Protobuf.Empty

  rpc :ListWaiters,
      Google.Cloud.Runtimeconfig.V1beta1.ListWaitersRequest,
      Google.Cloud.Runtimeconfig.V1beta1.ListWaitersResponse

  rpc :GetWaiter,
      Google.Cloud.Runtimeconfig.V1beta1.GetWaiterRequest,
      Google.Cloud.Runtimeconfig.V1beta1.Waiter

  rpc :CreateWaiter,
      Google.Cloud.Runtimeconfig.V1beta1.CreateWaiterRequest,
      Google.Longrunning.Operation

  rpc :DeleteWaiter, Google.Cloud.Runtimeconfig.V1beta1.DeleteWaiterRequest, Google.Protobuf.Empty
end

defmodule Google.Cloud.Runtimeconfig.V1beta1.RuntimeConfigManager.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Runtimeconfig.V1beta1.RuntimeConfigManager.Service
end
