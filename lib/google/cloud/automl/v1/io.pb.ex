defmodule Google.Cloud.Automl.V1.InputConfig.ParamsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Automl.V1.InputConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :source, 0

  field :gcs_source, 1, type: Google.Cloud.Automl.V1.GcsSource, json_name: "gcsSource", oneof: 0

  field :params, 2,
    repeated: true,
    type: Google.Cloud.Automl.V1.InputConfig.ParamsEntry,
    map: true
end

defmodule Google.Cloud.Automl.V1.BatchPredictInputConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :source, 0

  field :gcs_source, 1,
    type: Google.Cloud.Automl.V1.GcsSource,
    json_name: "gcsSource",
    oneof: 0,
    deprecated: false
end

defmodule Google.Cloud.Automl.V1.DocumentInputConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :gcs_source, 1, type: Google.Cloud.Automl.V1.GcsSource, json_name: "gcsSource"
end

defmodule Google.Cloud.Automl.V1.OutputConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :destination, 0

  field :gcs_destination, 1,
    type: Google.Cloud.Automl.V1.GcsDestination,
    json_name: "gcsDestination",
    oneof: 0,
    deprecated: false
end

defmodule Google.Cloud.Automl.V1.BatchPredictOutputConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :destination, 0

  field :gcs_destination, 1,
    type: Google.Cloud.Automl.V1.GcsDestination,
    json_name: "gcsDestination",
    oneof: 0,
    deprecated: false
end

defmodule Google.Cloud.Automl.V1.ModelExportOutputConfig.ParamsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Automl.V1.ModelExportOutputConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :destination, 0

  field :gcs_destination, 1,
    type: Google.Cloud.Automl.V1.GcsDestination,
    json_name: "gcsDestination",
    oneof: 0,
    deprecated: false

  field :model_format, 4, type: :string, json_name: "modelFormat"

  field :params, 2,
    repeated: true,
    type: Google.Cloud.Automl.V1.ModelExportOutputConfig.ParamsEntry,
    map: true
end

defmodule Google.Cloud.Automl.V1.GcsSource do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :input_uris, 1, repeated: true, type: :string, json_name: "inputUris", deprecated: false
end

defmodule Google.Cloud.Automl.V1.GcsDestination do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :output_uri_prefix, 1, type: :string, json_name: "outputUriPrefix", deprecated: false
end