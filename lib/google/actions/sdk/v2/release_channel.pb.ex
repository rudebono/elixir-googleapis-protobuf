defmodule Google.Actions.Sdk.V2.ReleaseChannel do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          current_version: String.t(),
          pending_version: String.t()
        }

  defstruct name: "",
            current_version: "",
            pending_version: ""

  field :name, 1, type: :string
  field :current_version, 2, type: :string, json_name: "currentVersion"
  field :pending_version, 3, type: :string, json_name: "pendingVersion"
end
