defmodule Google.Cloud.Talent.V4.Tenant do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          external_id: String.t()
        }

  defstruct [:name, :external_id]

  field :name, 1, type: :string
  field :external_id, 2, type: :string
end
