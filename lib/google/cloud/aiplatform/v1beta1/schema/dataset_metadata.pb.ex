defmodule Google.Cloud.Aiplatform.V1beta1.Schema.ImageDatasetMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :data_item_schema_uri, 1, type: :string, json_name: "dataItemSchemaUri"
  field :gcs_bucket, 2, type: :string, json_name: "gcsBucket"
end

defmodule Google.Cloud.Aiplatform.V1beta1.Schema.TextDatasetMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :data_item_schema_uri, 1, type: :string, json_name: "dataItemSchemaUri"
  field :gcs_bucket, 2, type: :string, json_name: "gcsBucket"
end

defmodule Google.Cloud.Aiplatform.V1beta1.Schema.VideoDatasetMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :data_item_schema_uri, 1, type: :string, json_name: "dataItemSchemaUri"
  field :gcs_bucket, 2, type: :string, json_name: "gcsBucket"
end

defmodule Google.Cloud.Aiplatform.V1beta1.Schema.TablesDatasetMetadata.InputConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  oneof :source, 0

  field :gcs_source, 1,
    type: Google.Cloud.Aiplatform.V1beta1.Schema.TablesDatasetMetadata.GcsSource,
    json_name: "gcsSource",
    oneof: 0

  field :bigquery_source, 2,
    type: Google.Cloud.Aiplatform.V1beta1.Schema.TablesDatasetMetadata.BigQuerySource,
    json_name: "bigquerySource",
    oneof: 0
end

defmodule Google.Cloud.Aiplatform.V1beta1.Schema.TablesDatasetMetadata.GcsSource do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :uri, 1, repeated: true, type: :string
end

defmodule Google.Cloud.Aiplatform.V1beta1.Schema.TablesDatasetMetadata.BigQuerySource do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :uri, 1, type: :string
end

defmodule Google.Cloud.Aiplatform.V1beta1.Schema.TablesDatasetMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :input_config, 1,
    type: Google.Cloud.Aiplatform.V1beta1.Schema.TablesDatasetMetadata.InputConfig,
    json_name: "inputConfig"
end

defmodule Google.Cloud.Aiplatform.V1beta1.Schema.TimeSeriesDatasetMetadata.InputConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  oneof :source, 0

  field :gcs_source, 1,
    type: Google.Cloud.Aiplatform.V1beta1.Schema.TimeSeriesDatasetMetadata.GcsSource,
    json_name: "gcsSource",
    oneof: 0

  field :bigquery_source, 2,
    type: Google.Cloud.Aiplatform.V1beta1.Schema.TimeSeriesDatasetMetadata.BigQuerySource,
    json_name: "bigquerySource",
    oneof: 0
end

defmodule Google.Cloud.Aiplatform.V1beta1.Schema.TimeSeriesDatasetMetadata.GcsSource do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :uri, 1, repeated: true, type: :string
end

defmodule Google.Cloud.Aiplatform.V1beta1.Schema.TimeSeriesDatasetMetadata.BigQuerySource do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :uri, 1, type: :string
end

defmodule Google.Cloud.Aiplatform.V1beta1.Schema.TimeSeriesDatasetMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :input_config, 1,
    type: Google.Cloud.Aiplatform.V1beta1.Schema.TimeSeriesDatasetMetadata.InputConfig,
    json_name: "inputConfig"

  field :time_series_identifier_column, 2, type: :string, json_name: "timeSeriesIdentifierColumn"
  field :time_column, 3, type: :string, json_name: "timeColumn"
end
