defmodule Google.Actions.Sdk.V2.Manifest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          version: String.t()
        }

  defstruct [:version]

  field :version, 1, type: :string
end
