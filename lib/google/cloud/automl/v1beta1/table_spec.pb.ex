defmodule Google.Cloud.Automl.V1beta1.TableSpec do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          time_column_spec_id: String.t(),
          row_count: integer,
          valid_row_count: integer,
          column_count: integer,
          input_configs: [Google.Cloud.Automl.V1beta1.InputConfig.t()],
          etag: String.t()
        }

  defstruct name: "",
            time_column_spec_id: "",
            row_count: 0,
            valid_row_count: 0,
            column_count: 0,
            input_configs: [],
            etag: ""

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
