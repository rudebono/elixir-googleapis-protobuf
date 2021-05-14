defmodule Google.Cloud.Bigquery.Storage.V1beta1.TableReadOptions do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          selected_fields: [String.t()],
          row_restriction: String.t()
        }

  defstruct [:selected_fields, :row_restriction]

  field :selected_fields, 1, repeated: true, type: :string
  field :row_restriction, 2, type: :string
end
