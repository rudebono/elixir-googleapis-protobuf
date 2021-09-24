defmodule Google.Cloud.Bigquery.Migration.Tasks.Translation.V2alpha.DatasetReference do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          dataset_id: String.t(),
          project_id: String.t()
        }

  defstruct [:dataset_id, :project_id]

  field :dataset_id, 1, type: :string
  field :project_id, 2, type: :string
end
