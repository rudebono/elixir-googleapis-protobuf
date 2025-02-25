defmodule Google.Cloud.Retail.V2beta.OutputConfig.GcsDestination do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :output_uri_prefix, 1, type: :string, json_name: "outputUriPrefix", deprecated: false
end

defmodule Google.Cloud.Retail.V2beta.OutputConfig.BigQueryDestination do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :dataset_id, 1, type: :string, json_name: "datasetId", deprecated: false
  field :table_id_prefix, 2, type: :string, json_name: "tableIdPrefix", deprecated: false
  field :table_type, 3, type: :string, json_name: "tableType", deprecated: false
end

defmodule Google.Cloud.Retail.V2beta.OutputConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :destination, 0

  field :gcs_destination, 1,
    type: Google.Cloud.Retail.V2beta.OutputConfig.GcsDestination,
    json_name: "gcsDestination",
    oneof: 0

  field :bigquery_destination, 2,
    type: Google.Cloud.Retail.V2beta.OutputConfig.BigQueryDestination,
    json_name: "bigqueryDestination",
    oneof: 0
end

defmodule Google.Cloud.Retail.V2beta.ExportErrorsConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :destination, 0

  field :gcs_prefix, 1, type: :string, json_name: "gcsPrefix", oneof: 0
end

defmodule Google.Cloud.Retail.V2beta.ExportProductsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :output_config, 2,
    type: Google.Cloud.Retail.V2beta.OutputConfig,
    json_name: "outputConfig",
    deprecated: false

  field :filter, 3, type: :string
end

defmodule Google.Cloud.Retail.V2beta.ExportUserEventsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :output_config, 2,
    type: Google.Cloud.Retail.V2beta.OutputConfig,
    json_name: "outputConfig",
    deprecated: false

  field :filter, 3, type: :string
end

defmodule Google.Cloud.Retail.V2beta.ExportAnalyticsMetricsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :catalog, 1, type: :string, deprecated: false

  field :output_config, 2,
    type: Google.Cloud.Retail.V2beta.OutputConfig,
    json_name: "outputConfig",
    deprecated: false

  field :filter, 3, type: :string
end

defmodule Google.Cloud.Retail.V2beta.ExportMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :create_time, 1, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :update_time, 2, type: Google.Protobuf.Timestamp, json_name: "updateTime"
end

defmodule Google.Cloud.Retail.V2beta.ExportProductsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :error_samples, 1, repeated: true, type: Google.Rpc.Status, json_name: "errorSamples"

  field :errors_config, 2,
    type: Google.Cloud.Retail.V2beta.ExportErrorsConfig,
    json_name: "errorsConfig"

  field :output_result, 3,
    type: Google.Cloud.Retail.V2beta.OutputResult,
    json_name: "outputResult"
end

defmodule Google.Cloud.Retail.V2beta.ExportUserEventsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :error_samples, 1, repeated: true, type: Google.Rpc.Status, json_name: "errorSamples"

  field :errors_config, 2,
    type: Google.Cloud.Retail.V2beta.ExportErrorsConfig,
    json_name: "errorsConfig"

  field :output_result, 3,
    type: Google.Cloud.Retail.V2beta.OutputResult,
    json_name: "outputResult"
end

defmodule Google.Cloud.Retail.V2beta.ExportAnalyticsMetricsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :error_samples, 1, repeated: true, type: Google.Rpc.Status, json_name: "errorSamples"

  field :errors_config, 2,
    type: Google.Cloud.Retail.V2beta.ExportErrorsConfig,
    json_name: "errorsConfig"

  field :output_result, 3,
    type: Google.Cloud.Retail.V2beta.OutputResult,
    json_name: "outputResult"
end

defmodule Google.Cloud.Retail.V2beta.OutputResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :bigquery_result, 1,
    repeated: true,
    type: Google.Cloud.Retail.V2beta.BigQueryOutputResult,
    json_name: "bigqueryResult"

  field :gcs_result, 2,
    repeated: true,
    type: Google.Cloud.Retail.V2beta.GcsOutputResult,
    json_name: "gcsResult"
end

defmodule Google.Cloud.Retail.V2beta.BigQueryOutputResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :dataset_id, 1, type: :string, json_name: "datasetId"
  field :table_id, 2, type: :string, json_name: "tableId"
end

defmodule Google.Cloud.Retail.V2beta.GcsOutputResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :output_uri, 1, type: :string, json_name: "outputUri"
end
