defmodule Google.Cloud.Aiplatform.V1.EnvVar do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          value: String.t()
        }

  defstruct [:name, :value]

  field :name, 1, type: :string
  field :value, 2, type: :string
end
