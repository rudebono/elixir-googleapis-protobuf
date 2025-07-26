defmodule Google.Cloud.Dataplex.V1.DataProfileResult.PostScanActionsResult.BigQueryExportResult.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :SUCCEEDED, 1
  field :FAILED, 2
  field :SKIPPED, 3
end

defmodule Google.Cloud.Dataplex.V1.DataProfileSpec.PostScanActions.BigQueryExport do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :results_table, 1, type: :string, json_name: "resultsTable", deprecated: false
end

defmodule Google.Cloud.Dataplex.V1.DataProfileSpec.PostScanActions do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :bigquery_export, 1,
    type: Google.Cloud.Dataplex.V1.DataProfileSpec.PostScanActions.BigQueryExport,
    json_name: "bigqueryExport",
    deprecated: false
end

defmodule Google.Cloud.Dataplex.V1.DataProfileSpec.SelectedFields do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :field_names, 1, repeated: true, type: :string, json_name: "fieldNames", deprecated: false
end

defmodule Google.Cloud.Dataplex.V1.DataProfileSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :sampling_percent, 2, type: :float, json_name: "samplingPercent", deprecated: false
  field :row_filter, 3, type: :string, json_name: "rowFilter", deprecated: false

  field :post_scan_actions, 4,
    type: Google.Cloud.Dataplex.V1.DataProfileSpec.PostScanActions,
    json_name: "postScanActions",
    deprecated: false

  field :include_fields, 5,
    type: Google.Cloud.Dataplex.V1.DataProfileSpec.SelectedFields,
    json_name: "includeFields",
    deprecated: false

  field :exclude_fields, 6,
    type: Google.Cloud.Dataplex.V1.DataProfileSpec.SelectedFields,
    json_name: "excludeFields",
    deprecated: false
end

defmodule Google.Cloud.Dataplex.V1.DataProfileResult.Profile.Field.ProfileInfo.StringFieldInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :min_length, 1, type: :int64, json_name: "minLength"
  field :max_length, 2, type: :int64, json_name: "maxLength"
  field :average_length, 3, type: :double, json_name: "averageLength"
end

defmodule Google.Cloud.Dataplex.V1.DataProfileResult.Profile.Field.ProfileInfo.IntegerFieldInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :average, 1, type: :double
  field :standard_deviation, 3, type: :double, json_name: "standardDeviation"
  field :min, 4, type: :int64
  field :quartiles, 6, repeated: true, type: :int64
  field :max, 5, type: :int64
end

defmodule Google.Cloud.Dataplex.V1.DataProfileResult.Profile.Field.ProfileInfo.DoubleFieldInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :average, 1, type: :double
  field :standard_deviation, 3, type: :double, json_name: "standardDeviation"
  field :min, 4, type: :double
  field :quartiles, 6, repeated: true, type: :double
  field :max, 5, type: :double
end

defmodule Google.Cloud.Dataplex.V1.DataProfileResult.Profile.Field.ProfileInfo.TopNValue do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :value, 1, type: :string
  field :count, 2, type: :int64
  field :ratio, 3, type: :double
end

defmodule Google.Cloud.Dataplex.V1.DataProfileResult.Profile.Field.ProfileInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :field_info, 0

  field :null_ratio, 2, type: :double, json_name: "nullRatio"
  field :distinct_ratio, 3, type: :double, json_name: "distinctRatio"

  field :top_n_values, 4,
    repeated: true,
    type: Google.Cloud.Dataplex.V1.DataProfileResult.Profile.Field.ProfileInfo.TopNValue,
    json_name: "topNValues"

  field :string_profile, 101,
    type: Google.Cloud.Dataplex.V1.DataProfileResult.Profile.Field.ProfileInfo.StringFieldInfo,
    json_name: "stringProfile",
    oneof: 0

  field :integer_profile, 102,
    type: Google.Cloud.Dataplex.V1.DataProfileResult.Profile.Field.ProfileInfo.IntegerFieldInfo,
    json_name: "integerProfile",
    oneof: 0

  field :double_profile, 103,
    type: Google.Cloud.Dataplex.V1.DataProfileResult.Profile.Field.ProfileInfo.DoubleFieldInfo,
    json_name: "doubleProfile",
    oneof: 0
end

defmodule Google.Cloud.Dataplex.V1.DataProfileResult.Profile.Field do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string
  field :type, 2, type: :string
  field :mode, 3, type: :string
  field :profile, 4, type: Google.Cloud.Dataplex.V1.DataProfileResult.Profile.Field.ProfileInfo
end

defmodule Google.Cloud.Dataplex.V1.DataProfileResult.Profile do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :fields, 2, repeated: true, type: Google.Cloud.Dataplex.V1.DataProfileResult.Profile.Field
end

defmodule Google.Cloud.Dataplex.V1.DataProfileResult.PostScanActionsResult.BigQueryExportResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :state, 1,
    type:
      Google.Cloud.Dataplex.V1.DataProfileResult.PostScanActionsResult.BigQueryExportResult.State,
    enum: true,
    deprecated: false

  field :message, 2, type: :string, deprecated: false
end

defmodule Google.Cloud.Dataplex.V1.DataProfileResult.PostScanActionsResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :bigquery_export_result, 1,
    type: Google.Cloud.Dataplex.V1.DataProfileResult.PostScanActionsResult.BigQueryExportResult,
    json_name: "bigqueryExportResult",
    deprecated: false
end

defmodule Google.Cloud.Dataplex.V1.DataProfileResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :row_count, 3, type: :int64, json_name: "rowCount"
  field :profile, 4, type: Google.Cloud.Dataplex.V1.DataProfileResult.Profile
  field :scanned_data, 5, type: Google.Cloud.Dataplex.V1.ScannedData, json_name: "scannedData"

  field :post_scan_actions_result, 6,
    type: Google.Cloud.Dataplex.V1.DataProfileResult.PostScanActionsResult,
    json_name: "postScanActionsResult",
    deprecated: false
end
