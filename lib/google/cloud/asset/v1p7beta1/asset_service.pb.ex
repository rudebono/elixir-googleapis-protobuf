defmodule Google.Cloud.Asset.V1p7beta1.ContentType do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :CONTENT_TYPE_UNSPECIFIED, 0
  field :RESOURCE, 1
  field :IAM_POLICY, 2
  field :ORG_POLICY, 4
  field :ACCESS_POLICY, 5
  field :RELATIONSHIP, 7
end

defmodule Google.Cloud.Asset.V1p7beta1.PartitionSpec.PartitionKey do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :PARTITION_KEY_UNSPECIFIED, 0
  field :READ_TIME, 1
  field :REQUEST_TIME, 2
end

defmodule Google.Cloud.Asset.V1p7beta1.ExportAssetsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :read_time, 2, type: Google.Protobuf.Timestamp, json_name: "readTime"
  field :asset_types, 3, repeated: true, type: :string, json_name: "assetTypes"

  field :content_type, 4,
    type: Google.Cloud.Asset.V1p7beta1.ContentType,
    json_name: "contentType",
    enum: true

  field :output_config, 5,
    type: Google.Cloud.Asset.V1p7beta1.OutputConfig,
    json_name: "outputConfig",
    deprecated: false

  field :relationship_types, 6, repeated: true, type: :string, json_name: "relationshipTypes"
end

defmodule Google.Cloud.Asset.V1p7beta1.ExportAssetsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :read_time, 1, type: Google.Protobuf.Timestamp, json_name: "readTime"

  field :output_config, 2,
    type: Google.Cloud.Asset.V1p7beta1.OutputConfig,
    json_name: "outputConfig"

  field :output_result, 3,
    type: Google.Cloud.Asset.V1p7beta1.OutputResult,
    json_name: "outputResult"
end

defmodule Google.Cloud.Asset.V1p7beta1.OutputConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :destination, 0

  field :gcs_destination, 1,
    type: Google.Cloud.Asset.V1p7beta1.GcsDestination,
    json_name: "gcsDestination",
    oneof: 0

  field :bigquery_destination, 2,
    type: Google.Cloud.Asset.V1p7beta1.BigQueryDestination,
    json_name: "bigqueryDestination",
    oneof: 0
end

defmodule Google.Cloud.Asset.V1p7beta1.OutputResult do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :result, 0

  field :gcs_result, 1,
    type: Google.Cloud.Asset.V1p7beta1.GcsOutputResult,
    json_name: "gcsResult",
    oneof: 0
end

defmodule Google.Cloud.Asset.V1p7beta1.GcsOutputResult do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :uris, 1, repeated: true, type: :string
end

defmodule Google.Cloud.Asset.V1p7beta1.GcsDestination do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :object_uri, 0

  field :uri, 1, type: :string, oneof: 0
  field :uri_prefix, 2, type: :string, json_name: "uriPrefix", oneof: 0
end

defmodule Google.Cloud.Asset.V1p7beta1.BigQueryDestination do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :dataset, 1, type: :string, deprecated: false
  field :table, 2, type: :string, deprecated: false
  field :force, 3, type: :bool

  field :partition_spec, 4,
    type: Google.Cloud.Asset.V1p7beta1.PartitionSpec,
    json_name: "partitionSpec"

  field :separate_tables_per_asset_type, 5, type: :bool, json_name: "separateTablesPerAssetType"
end

defmodule Google.Cloud.Asset.V1p7beta1.PartitionSpec do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :partition_key, 1,
    type: Google.Cloud.Asset.V1p7beta1.PartitionSpec.PartitionKey,
    json_name: "partitionKey",
    enum: true
end

defmodule Google.Cloud.Asset.V1p7beta1.AssetService.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.cloud.asset.v1p7beta1.AssetService",
    protoc_gen_elixir_version: "0.11.0"

  rpc :ExportAssets,
      Google.Cloud.Asset.V1p7beta1.ExportAssetsRequest,
      Google.Longrunning.Operation
end

defmodule Google.Cloud.Asset.V1p7beta1.AssetService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Asset.V1p7beta1.AssetService.Service
end