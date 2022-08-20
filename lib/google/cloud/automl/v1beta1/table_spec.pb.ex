defmodule Google.Cloud.Automl.V1beta1.TableSpec do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string
  field :time_column_spec_id, 2, type: :string, json_name: "timeColumnSpecId"
  field :row_count, 3, type: :int64, json_name: "rowCount"
  field :valid_row_count, 4, type: :int64, json_name: "validRowCount"
  field :column_count, 7, type: :int64, json_name: "columnCount"

  field :input_configs, 5,
    repeated: true,
    type: Google.Cloud.Automl.V1beta1.InputConfig,
    json_name: "inputConfigs"

  field :etag, 6, type: :string
end