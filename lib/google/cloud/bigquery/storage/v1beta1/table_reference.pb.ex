defmodule Google.Cloud.Bigquery.Storage.V1beta1.TableReference do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          project_id: String.t(),
          dataset_id: String.t(),
          table_id: String.t()
        }

  defstruct [:project_id, :dataset_id, :table_id]

  field :project_id, 1, type: :string
  field :dataset_id, 2, type: :string
  field :table_id, 3, type: :string
end

defmodule Google.Cloud.Bigquery.Storage.V1beta1.TableModifiers do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          snapshot_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct [:snapshot_time]

  field :snapshot_time, 1, type: Google.Protobuf.Timestamp
end
