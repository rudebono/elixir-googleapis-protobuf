defmodule Google.Cloud.Runtimeconfig.V1beta1.VariableState do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :VARIABLE_STATE_UNSPECIFIED | :UPDATED | :DELETED

  field :VARIABLE_STATE_UNSPECIFIED, 0

  field :UPDATED, 1

  field :DELETED, 2
end

defmodule Google.Cloud.Runtimeconfig.V1beta1.RuntimeConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          description: String.t()
        }

  defstruct [:name, :description]

  field :name, 1, type: :string
  field :description, 2, type: :string
end

defmodule Google.Cloud.Runtimeconfig.V1beta1.Variable do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          contents: {atom, any},
          name: String.t(),
          update_time: Google.Protobuf.Timestamp.t() | nil,
          state: Google.Cloud.Runtimeconfig.V1beta1.VariableState.t()
        }

  defstruct [:contents, :name, :update_time, :state]

  oneof :contents, 0
  field :name, 1, type: :string
  field :value, 2, type: :bytes, oneof: 0
  field :text, 5, type: :string, oneof: 0
  field :update_time, 3, type: Google.Protobuf.Timestamp
  field :state, 4, type: Google.Cloud.Runtimeconfig.V1beta1.VariableState, enum: true
end

defmodule Google.Cloud.Runtimeconfig.V1beta1.EndCondition.Cardinality do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          path: String.t(),
          number: integer
        }

  defstruct [:path, :number]

  field :path, 1, type: :string
  field :number, 2, type: :int32
end

defmodule Google.Cloud.Runtimeconfig.V1beta1.EndCondition do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          condition: {atom, any}
        }

  defstruct [:condition]

  oneof :condition, 0

  field :cardinality, 1,
    type: Google.Cloud.Runtimeconfig.V1beta1.EndCondition.Cardinality,
    oneof: 0
end

defmodule Google.Cloud.Runtimeconfig.V1beta1.Waiter do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          timeout: Google.Protobuf.Duration.t() | nil,
          failure: Google.Cloud.Runtimeconfig.V1beta1.EndCondition.t() | nil,
          success: Google.Cloud.Runtimeconfig.V1beta1.EndCondition.t() | nil,
          create_time: Google.Protobuf.Timestamp.t() | nil,
          done: boolean,
          error: Google.Rpc.Status.t() | nil
        }

  defstruct [:name, :timeout, :failure, :success, :create_time, :done, :error]

  field :name, 1, type: :string
  field :timeout, 2, type: Google.Protobuf.Duration
  field :failure, 3, type: Google.Cloud.Runtimeconfig.V1beta1.EndCondition
  field :success, 4, type: Google.Cloud.Runtimeconfig.V1beta1.EndCondition
  field :create_time, 5, type: Google.Protobuf.Timestamp
  field :done, 6, type: :bool
  field :error, 7, type: Google.Rpc.Status
end
