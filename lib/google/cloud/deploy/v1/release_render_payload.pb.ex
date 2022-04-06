defmodule Google.Cloud.Deploy.V1.ReleaseRenderEvent do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          message: String.t(),
          release: String.t()
        }

  defstruct message: "",
            release: ""

  field :message, 1, type: :string
  field :release, 2, type: :string
end
