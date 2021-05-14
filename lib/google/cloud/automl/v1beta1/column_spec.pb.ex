defmodule Google.Cloud.Automl.V1beta1.ColumnSpec.CorrelatedColumn do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          column_spec_id: String.t(),
          correlation_stats: Google.Cloud.Automl.V1beta1.CorrelationStats.t() | nil
        }

  defstruct [:column_spec_id, :correlation_stats]

  field :column_spec_id, 1, type: :string
  field :correlation_stats, 2, type: Google.Cloud.Automl.V1beta1.CorrelationStats
end

defmodule Google.Cloud.Automl.V1beta1.ColumnSpec do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          data_type: Google.Cloud.Automl.V1beta1.DataType.t() | nil,
          display_name: String.t(),
          data_stats: Google.Cloud.Automl.V1beta1.DataStats.t() | nil,
          top_correlated_columns: [Google.Cloud.Automl.V1beta1.ColumnSpec.CorrelatedColumn.t()],
          etag: String.t()
        }

  defstruct [:name, :data_type, :display_name, :data_stats, :top_correlated_columns, :etag]

  field :name, 1, type: :string
  field :data_type, 2, type: Google.Cloud.Automl.V1beta1.DataType
  field :display_name, 3, type: :string
  field :data_stats, 4, type: Google.Cloud.Automl.V1beta1.DataStats

  field :top_correlated_columns, 5,
    repeated: true,
    type: Google.Cloud.Automl.V1beta1.ColumnSpec.CorrelatedColumn

  field :etag, 6, type: :string
end
