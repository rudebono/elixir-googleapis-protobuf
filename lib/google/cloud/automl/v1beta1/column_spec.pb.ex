defmodule Google.Cloud.Automl.V1beta1.ColumnSpec.CorrelatedColumn do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :column_spec_id, 1, type: :string, json_name: "columnSpecId"

  field :correlation_stats, 2,
    type: Google.Cloud.Automl.V1beta1.CorrelationStats,
    json_name: "correlationStats"
end

defmodule Google.Cloud.Automl.V1beta1.ColumnSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string
  field :data_type, 2, type: Google.Cloud.Automl.V1beta1.DataType, json_name: "dataType"
  field :display_name, 3, type: :string, json_name: "displayName"
  field :data_stats, 4, type: Google.Cloud.Automl.V1beta1.DataStats, json_name: "dataStats"

  field :top_correlated_columns, 5,
    repeated: true,
    type: Google.Cloud.Automl.V1beta1.ColumnSpec.CorrelatedColumn,
    json_name: "topCorrelatedColumns"

  field :etag, 6, type: :string
end
