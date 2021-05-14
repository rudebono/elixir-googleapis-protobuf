defmodule Google.Api.Control do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          environment: String.t()
        }

  defstruct [:environment]

  field :environment, 1, type: :string
end
