defmodule Google.Chat.Logging.V1.ChatAppLogEntry do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          deployment: String.t(),
          error: Google.Rpc.Status.t() | nil,
          deployment_function: String.t()
        }

  defstruct deployment: "",
            error: nil,
            deployment_function: ""

  field :deployment, 1, type: :string
  field :error, 2, type: Google.Rpc.Status
  field :deployment_function, 3, type: :string, json_name: "deploymentFunction"
end
