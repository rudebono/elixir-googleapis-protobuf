defmodule Google.Cloud.Integrations.V1alpha.EventParameter do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: Google.Cloud.Integrations.V1alpha.ValueType.t() | nil
        }

  defstruct key: "",
            value: nil

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Integrations.V1alpha.ValueType
end
