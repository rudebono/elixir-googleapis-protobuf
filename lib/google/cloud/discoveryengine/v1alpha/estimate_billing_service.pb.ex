defmodule Google.Cloud.Discoveryengine.V1alpha.EstimateDataSizeRequest.WebsiteDataSource.EstimatorUriPattern do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :provided_uri_pattern, 1, type: :string, json_name: "providedUriPattern"
  field :exact_match, 2, type: :bool, json_name: "exactMatch"
  field :exclusive, 3, type: :bool
end

defmodule Google.Cloud.Discoveryengine.V1alpha.EstimateDataSizeRequest.WebsiteDataSource do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :estimator_uri_patterns, 1,
    repeated: true,
    type:
      Google.Cloud.Discoveryengine.V1alpha.EstimateDataSizeRequest.WebsiteDataSource.EstimatorUriPattern,
    json_name: "estimatorUriPatterns",
    deprecated: false
end

defmodule Google.Cloud.Discoveryengine.V1alpha.EstimateDataSizeRequest.FileDataSource do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :source, 0

  field :gcs_source, 1,
    type: Google.Cloud.Discoveryengine.V1alpha.GcsSource,
    json_name: "gcsSource",
    oneof: 0

  field :bigquery_source, 2,
    type: Google.Cloud.Discoveryengine.V1alpha.BigQuerySource,
    json_name: "bigquerySource",
    oneof: 0
end

defmodule Google.Cloud.Discoveryengine.V1alpha.EstimateDataSizeRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :data_source, 0

  field :website_data_source, 2,
    type: Google.Cloud.Discoveryengine.V1alpha.EstimateDataSizeRequest.WebsiteDataSource,
    json_name: "websiteDataSource",
    oneof: 0

  field :file_data_source, 3,
    type: Google.Cloud.Discoveryengine.V1alpha.EstimateDataSizeRequest.FileDataSource,
    json_name: "fileDataSource",
    oneof: 0

  field :location, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Discoveryengine.V1alpha.EstimateDataSizeResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :data_size_bytes, 1, type: :int64, json_name: "dataSizeBytes"
  field :document_count, 2, type: :int64, json_name: "documentCount"
end

defmodule Google.Cloud.Discoveryengine.V1alpha.EstimateDataSizeMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :create_time, 1, type: Google.Protobuf.Timestamp, json_name: "createTime"
end

defmodule Google.Cloud.Discoveryengine.V1alpha.EstimateBillingService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.discoveryengine.v1alpha.EstimateBillingService",
    protoc_gen_elixir_version: "0.15.0"

  rpc :EstimateDataSize,
      Google.Cloud.Discoveryengine.V1alpha.EstimateDataSizeRequest,
      Google.Longrunning.Operation
end

defmodule Google.Cloud.Discoveryengine.V1alpha.EstimateBillingService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Discoveryengine.V1alpha.EstimateBillingService.Service
end
