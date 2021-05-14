defmodule Google.Cloud.Bigquery.V2.ModelReference do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          project_id: String.t(),
          dataset_id: String.t(),
          model_id: String.t()
        }

  defstruct [:project_id, :dataset_id, :model_id]

  field :project_id, 1, type: :string
  field :dataset_id, 2, type: :string
  field :model_id, 3, type: :string
end
