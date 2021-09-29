defmodule Google.Cloud.Gsuiteaddons.Logging.V1.GSuiteAddOnsLogEntry do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          deployment: String.t(),
          error: Google.Rpc.Status.t() | nil,
          deployment_function: String.t()
        }

  defstruct [:deployment, :error, :deployment_function]

  field :deployment, 1, type: :string
  field :error, 2, type: Google.Rpc.Status
  field :deployment_function, 3, type: :string
end
