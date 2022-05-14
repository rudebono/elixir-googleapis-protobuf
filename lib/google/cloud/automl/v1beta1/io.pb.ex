defmodule Google.Cloud.Automl.V1beta1.InputConfig.ParamsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end
defmodule Google.Cloud.Automl.V1beta1.InputConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  oneof :source, 0

  field :gcs_source, 1,
    type: Google.Cloud.Automl.V1beta1.GcsSource,
    json_name: "gcsSource",
    oneof: 0

  field :bigquery_source, 3,
    type: Google.Cloud.Automl.V1beta1.BigQuerySource,
    json_name: "bigquerySource",
    oneof: 0

  field :params, 2,
    repeated: true,
    type: Google.Cloud.Automl.V1beta1.InputConfig.ParamsEntry,
    map: true
end
defmodule Google.Cloud.Automl.V1beta1.BatchPredictInputConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  oneof :source, 0

  field :gcs_source, 1,
    type: Google.Cloud.Automl.V1beta1.GcsSource,
    json_name: "gcsSource",
    oneof: 0

  field :bigquery_source, 2,
    type: Google.Cloud.Automl.V1beta1.BigQuerySource,
    json_name: "bigquerySource",
    oneof: 0
end
defmodule Google.Cloud.Automl.V1beta1.DocumentInputConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :gcs_source, 1, type: Google.Cloud.Automl.V1beta1.GcsSource, json_name: "gcsSource"
end
defmodule Google.Cloud.Automl.V1beta1.OutputConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  oneof :destination, 0

  field :gcs_destination, 1,
    type: Google.Cloud.Automl.V1beta1.GcsDestination,
    json_name: "gcsDestination",
    oneof: 0

  field :bigquery_destination, 2,
    type: Google.Cloud.Automl.V1beta1.BigQueryDestination,
    json_name: "bigqueryDestination",
    oneof: 0
end
defmodule Google.Cloud.Automl.V1beta1.BatchPredictOutputConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  oneof :destination, 0

  field :gcs_destination, 1,
    type: Google.Cloud.Automl.V1beta1.GcsDestination,
    json_name: "gcsDestination",
    oneof: 0

  field :bigquery_destination, 2,
    type: Google.Cloud.Automl.V1beta1.BigQueryDestination,
    json_name: "bigqueryDestination",
    oneof: 0
end
defmodule Google.Cloud.Automl.V1beta1.ModelExportOutputConfig.ParamsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end
defmodule Google.Cloud.Automl.V1beta1.ModelExportOutputConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  oneof :destination, 0

  field :gcs_destination, 1,
    type: Google.Cloud.Automl.V1beta1.GcsDestination,
    json_name: "gcsDestination",
    oneof: 0

  field :gcr_destination, 3,
    type: Google.Cloud.Automl.V1beta1.GcrDestination,
    json_name: "gcrDestination",
    oneof: 0

  field :model_format, 4, type: :string, json_name: "modelFormat"

  field :params, 2,
    repeated: true,
    type: Google.Cloud.Automl.V1beta1.ModelExportOutputConfig.ParamsEntry,
    map: true
end
defmodule Google.Cloud.Automl.V1beta1.ExportEvaluatedExamplesOutputConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  oneof :destination, 0

  field :bigquery_destination, 2,
    type: Google.Cloud.Automl.V1beta1.BigQueryDestination,
    json_name: "bigqueryDestination",
    oneof: 0
end
defmodule Google.Cloud.Automl.V1beta1.GcsSource do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :input_uris, 1, repeated: true, type: :string, json_name: "inputUris"
end
defmodule Google.Cloud.Automl.V1beta1.BigQuerySource do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :input_uri, 1, type: :string, json_name: "inputUri"
end
defmodule Google.Cloud.Automl.V1beta1.GcsDestination do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :output_uri_prefix, 1, type: :string, json_name: "outputUriPrefix"
end
defmodule Google.Cloud.Automl.V1beta1.BigQueryDestination do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :output_uri, 1, type: :string, json_name: "outputUri"
end
defmodule Google.Cloud.Automl.V1beta1.GcrDestination do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :output_uri, 1, type: :string, json_name: "outputUri"
end
