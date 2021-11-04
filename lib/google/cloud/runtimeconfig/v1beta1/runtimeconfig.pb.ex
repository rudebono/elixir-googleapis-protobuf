defmodule Google.Cloud.Runtimeconfig.V1beta1.ListConfigsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct [:parent, :page_size, :page_token]

  field :parent, 1, type: :string
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Runtimeconfig.V1beta1.ListConfigsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          configs: [Google.Cloud.Runtimeconfig.V1beta1.RuntimeConfig.t()],
          next_page_token: String.t()
        }

  defstruct [:configs, :next_page_token]

  field :configs, 1, repeated: true, type: Google.Cloud.Runtimeconfig.V1beta1.RuntimeConfig
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Runtimeconfig.V1beta1.GetConfigRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 2, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Runtimeconfig.V1beta1.CreateConfigRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          config: Google.Cloud.Runtimeconfig.V1beta1.RuntimeConfig.t() | nil,
          request_id: String.t()
        }

  defstruct [:parent, :config, :request_id]

  field :parent, 1, type: :string
  field :config, 2, type: Google.Cloud.Runtimeconfig.V1beta1.RuntimeConfig
  field :request_id, 3, type: :string, json_name: "requestId"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Runtimeconfig.V1beta1.UpdateConfigRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          config: Google.Cloud.Runtimeconfig.V1beta1.RuntimeConfig.t() | nil
        }

  defstruct [:name, :config]

  field :name, 1, type: :string
  field :config, 2, type: Google.Cloud.Runtimeconfig.V1beta1.RuntimeConfig

  def transform_module(), do: nil
end

defmodule Google.Cloud.Runtimeconfig.V1beta1.DeleteConfigRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Runtimeconfig.V1beta1.ListVariablesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          filter: String.t(),
          page_size: integer,
          page_token: String.t(),
          return_values: boolean
        }

  defstruct [:parent, :filter, :page_size, :page_token, :return_values]

  field :parent, 1, type: :string
  field :filter, 2, type: :string
  field :page_size, 3, type: :int32, json_name: "pageSize"
  field :page_token, 4, type: :string, json_name: "pageToken"
  field :return_values, 5, type: :bool, json_name: "returnValues"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Runtimeconfig.V1beta1.ListVariablesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          variables: [Google.Cloud.Runtimeconfig.V1beta1.Variable.t()],
          next_page_token: String.t()
        }

  defstruct [:variables, :next_page_token]

  field :variables, 1, repeated: true, type: Google.Cloud.Runtimeconfig.V1beta1.Variable
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Runtimeconfig.V1beta1.WatchVariableRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          newer_than: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct [:name, :newer_than]

  field :name, 1, type: :string
  field :newer_than, 4, type: Google.Protobuf.Timestamp, json_name: "newerThan"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Runtimeconfig.V1beta1.GetVariableRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Runtimeconfig.V1beta1.CreateVariableRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          variable: Google.Cloud.Runtimeconfig.V1beta1.Variable.t() | nil,
          request_id: String.t()
        }

  defstruct [:parent, :variable, :request_id]

  field :parent, 1, type: :string
  field :variable, 2, type: Google.Cloud.Runtimeconfig.V1beta1.Variable
  field :request_id, 3, type: :string, json_name: "requestId"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Runtimeconfig.V1beta1.UpdateVariableRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          variable: Google.Cloud.Runtimeconfig.V1beta1.Variable.t() | nil
        }

  defstruct [:name, :variable]

  field :name, 1, type: :string
  field :variable, 2, type: Google.Cloud.Runtimeconfig.V1beta1.Variable

  def transform_module(), do: nil
end

defmodule Google.Cloud.Runtimeconfig.V1beta1.DeleteVariableRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          recursive: boolean
        }

  defstruct [:name, :recursive]

  field :name, 1, type: :string
  field :recursive, 2, type: :bool

  def transform_module(), do: nil
end

defmodule Google.Cloud.Runtimeconfig.V1beta1.ListWaitersRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct [:parent, :page_size, :page_token]

  field :parent, 1, type: :string
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Runtimeconfig.V1beta1.ListWaitersResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          waiters: [Google.Cloud.Runtimeconfig.V1beta1.Waiter.t()],
          next_page_token: String.t()
        }

  defstruct [:waiters, :next_page_token]

  field :waiters, 1, repeated: true, type: Google.Cloud.Runtimeconfig.V1beta1.Waiter
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Runtimeconfig.V1beta1.GetWaiterRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Runtimeconfig.V1beta1.CreateWaiterRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          waiter: Google.Cloud.Runtimeconfig.V1beta1.Waiter.t() | nil,
          request_id: String.t()
        }

  defstruct [:parent, :waiter, :request_id]

  field :parent, 1, type: :string
  field :waiter, 2, type: Google.Cloud.Runtimeconfig.V1beta1.Waiter
  field :request_id, 3, type: :string, json_name: "requestId"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Runtimeconfig.V1beta1.DeleteWaiterRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Runtimeconfig.V1beta1.RuntimeConfigManager.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.runtimeconfig.v1beta1.RuntimeConfigManager"

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
