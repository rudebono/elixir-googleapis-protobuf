defmodule Google.Cloud.Aiplatform.V1beta1.SearchMigratableResourcesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
end

defmodule Google.Cloud.Aiplatform.V1beta1.SearchMigratableResourcesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :migratable_resources, 1,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.MigratableResource,
    json_name: "migratableResources"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Aiplatform.V1beta1.BatchMigrateResourcesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :migrate_resource_requests, 2,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.MigrateResourceRequest,
    json_name: "migrateResourceRequests",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.MigrateResourceRequest.MigrateMlEngineModelVersionConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :endpoint, 1, type: :string, deprecated: false
  field :model_version, 2, type: :string, json_name: "modelVersion", deprecated: false
  field :model_display_name, 3, type: :string, json_name: "modelDisplayName", deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.MigrateResourceRequest.MigrateAutomlModelConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :model, 1, type: :string, deprecated: false
  field :model_display_name, 2, type: :string, json_name: "modelDisplayName", deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.MigrateResourceRequest.MigrateAutomlDatasetConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :dataset, 1, type: :string, deprecated: false

  field :dataset_display_name, 2,
    type: :string,
    json_name: "datasetDisplayName",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.MigrateResourceRequest.MigrateDataLabelingDatasetConfig.MigrateDataLabelingAnnotatedDatasetConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :annotated_dataset, 1, type: :string, json_name: "annotatedDataset", deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.MigrateResourceRequest.MigrateDataLabelingDatasetConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :dataset, 1, type: :string, deprecated: false

  field :dataset_display_name, 2,
    type: :string,
    json_name: "datasetDisplayName",
    deprecated: false

  field :migrate_data_labeling_annotated_dataset_configs, 3,
    repeated: true,
    type:
      Google.Cloud.Aiplatform.V1beta1.MigrateResourceRequest.MigrateDataLabelingDatasetConfig.MigrateDataLabelingAnnotatedDatasetConfig,
    json_name: "migrateDataLabelingAnnotatedDatasetConfigs",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.MigrateResourceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :request, 0

  field :migrate_ml_engine_model_version_config, 1,
    type:
      Google.Cloud.Aiplatform.V1beta1.MigrateResourceRequest.MigrateMlEngineModelVersionConfig,
    json_name: "migrateMlEngineModelVersionConfig",
    oneof: 0

  field :migrate_automl_model_config, 2,
    type: Google.Cloud.Aiplatform.V1beta1.MigrateResourceRequest.MigrateAutomlModelConfig,
    json_name: "migrateAutomlModelConfig",
    oneof: 0

  field :migrate_automl_dataset_config, 3,
    type: Google.Cloud.Aiplatform.V1beta1.MigrateResourceRequest.MigrateAutomlDatasetConfig,
    json_name: "migrateAutomlDatasetConfig",
    oneof: 0

  field :migrate_data_labeling_dataset_config, 4,
    type: Google.Cloud.Aiplatform.V1beta1.MigrateResourceRequest.MigrateDataLabelingDatasetConfig,
    json_name: "migrateDataLabelingDatasetConfig",
    oneof: 0
end

defmodule Google.Cloud.Aiplatform.V1beta1.BatchMigrateResourcesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :migrate_resource_responses, 1,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.MigrateResourceResponse,
    json_name: "migrateResourceResponses"
end

defmodule Google.Cloud.Aiplatform.V1beta1.MigrateResourceResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :migrated_resource, 0

  field :dataset, 1, type: :string, oneof: 0, deprecated: false
  field :model, 2, type: :string, oneof: 0, deprecated: false

  field :migratable_resource, 3,
    type: Google.Cloud.Aiplatform.V1beta1.MigratableResource,
    json_name: "migratableResource"
end

defmodule Google.Cloud.Aiplatform.V1beta1.BatchMigrateResourcesOperationMetadata.PartialResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :result, 0

  field :error, 2, type: Google.Rpc.Status, oneof: 0
  field :model, 3, type: :string, oneof: 0, deprecated: false
  field :dataset, 4, type: :string, oneof: 0, deprecated: false
  field :request, 1, type: Google.Cloud.Aiplatform.V1beta1.MigrateResourceRequest
end

defmodule Google.Cloud.Aiplatform.V1beta1.BatchMigrateResourcesOperationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :generic_metadata, 1,
    type: Google.Cloud.Aiplatform.V1beta1.GenericOperationMetadata,
    json_name: "genericMetadata"

  field :partial_results, 2,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.BatchMigrateResourcesOperationMetadata.PartialResult,
    json_name: "partialResults"
end

defmodule Google.Cloud.Aiplatform.V1beta1.MigrationService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.aiplatform.v1beta1.MigrationService",
    protoc_gen_elixir_version: "0.14.1"

  rpc :SearchMigratableResources,
      Google.Cloud.Aiplatform.V1beta1.SearchMigratableResourcesRequest,
      Google.Cloud.Aiplatform.V1beta1.SearchMigratableResourcesResponse

  rpc :BatchMigrateResources,
      Google.Cloud.Aiplatform.V1beta1.BatchMigrateResourcesRequest,
      Google.Longrunning.Operation
end

defmodule Google.Cloud.Aiplatform.V1beta1.MigrationService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Aiplatform.V1beta1.MigrationService.Service
end
