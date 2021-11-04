defmodule Google.Cloud.Aiplatform.V1beta1.SearchMigratableResourcesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t(),
          filter: String.t()
        }

  defstruct [:parent, :page_size, :page_token, :filter]

  field :parent, 1, type: :string
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Aiplatform.V1beta1.SearchMigratableResourcesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          migratable_resources: [Google.Cloud.Aiplatform.V1beta1.MigratableResource.t()],
          next_page_token: String.t()
        }

  defstruct [:migratable_resources, :next_page_token]

  field :migratable_resources, 1,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.MigratableResource,
    json_name: "migratableResources"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Aiplatform.V1beta1.BatchMigrateResourcesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          migrate_resource_requests: [Google.Cloud.Aiplatform.V1beta1.MigrateResourceRequest.t()]
        }

  defstruct [:parent, :migrate_resource_requests]

  field :parent, 1, type: :string

  field :migrate_resource_requests, 2,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.MigrateResourceRequest,
    json_name: "migrateResourceRequests"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Aiplatform.V1beta1.MigrateResourceRequest.MigrateMlEngineModelVersionConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          endpoint: String.t(),
          model_version: String.t(),
          model_display_name: String.t()
        }

  defstruct [:endpoint, :model_version, :model_display_name]

  field :endpoint, 1, type: :string
  field :model_version, 2, type: :string, json_name: "modelVersion"
  field :model_display_name, 3, type: :string, json_name: "modelDisplayName"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Aiplatform.V1beta1.MigrateResourceRequest.MigrateAutomlModelConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          model: String.t(),
          model_display_name: String.t()
        }

  defstruct [:model, :model_display_name]

  field :model, 1, type: :string
  field :model_display_name, 2, type: :string, json_name: "modelDisplayName"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Aiplatform.V1beta1.MigrateResourceRequest.MigrateAutomlDatasetConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          dataset: String.t(),
          dataset_display_name: String.t()
        }

  defstruct [:dataset, :dataset_display_name]

  field :dataset, 1, type: :string
  field :dataset_display_name, 2, type: :string, json_name: "datasetDisplayName"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Aiplatform.V1beta1.MigrateResourceRequest.MigrateDataLabelingDatasetConfig.MigrateDataLabelingAnnotatedDatasetConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          annotated_dataset: String.t()
        }

  defstruct [:annotated_dataset]

  field :annotated_dataset, 1, type: :string, json_name: "annotatedDataset"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Aiplatform.V1beta1.MigrateResourceRequest.MigrateDataLabelingDatasetConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          dataset: String.t(),
          dataset_display_name: String.t(),
          migrate_data_labeling_annotated_dataset_configs: [
            Google.Cloud.Aiplatform.V1beta1.MigrateResourceRequest.MigrateDataLabelingDatasetConfig.MigrateDataLabelingAnnotatedDatasetConfig.t()
          ]
        }

  defstruct [:dataset, :dataset_display_name, :migrate_data_labeling_annotated_dataset_configs]

  field :dataset, 1, type: :string
  field :dataset_display_name, 2, type: :string, json_name: "datasetDisplayName"

  field :migrate_data_labeling_annotated_dataset_configs, 3,
    repeated: true,
    type:
      Google.Cloud.Aiplatform.V1beta1.MigrateResourceRequest.MigrateDataLabelingDatasetConfig.MigrateDataLabelingAnnotatedDatasetConfig,
    json_name: "migrateDataLabelingAnnotatedDatasetConfigs"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Aiplatform.V1beta1.MigrateResourceRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          request:
            {:migrate_ml_engine_model_version_config,
             Google.Cloud.Aiplatform.V1beta1.MigrateResourceRequest.MigrateMlEngineModelVersionConfig.t()
             | nil}
            | {:migrate_automl_model_config,
               Google.Cloud.Aiplatform.V1beta1.MigrateResourceRequest.MigrateAutomlModelConfig.t()
               | nil}
            | {:migrate_automl_dataset_config,
               Google.Cloud.Aiplatform.V1beta1.MigrateResourceRequest.MigrateAutomlDatasetConfig.t()
               | nil}
            | {:migrate_data_labeling_dataset_config,
               Google.Cloud.Aiplatform.V1beta1.MigrateResourceRequest.MigrateDataLabelingDatasetConfig.t()
               | nil}
        }

  defstruct [:request]

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

  def transform_module(), do: nil
end

defmodule Google.Cloud.Aiplatform.V1beta1.BatchMigrateResourcesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          migrate_resource_responses: [
            Google.Cloud.Aiplatform.V1beta1.MigrateResourceResponse.t()
          ]
        }

  defstruct [:migrate_resource_responses]

  field :migrate_resource_responses, 1,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.MigrateResourceResponse,
    json_name: "migrateResourceResponses"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Aiplatform.V1beta1.MigrateResourceResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          migrated_resource: {:dataset, String.t()} | {:model, String.t()},
          migratable_resource: Google.Cloud.Aiplatform.V1beta1.MigratableResource.t() | nil
        }

  defstruct [:migrated_resource, :migratable_resource]

  oneof :migrated_resource, 0

  field :dataset, 1, type: :string, oneof: 0
  field :model, 2, type: :string, oneof: 0

  field :migratable_resource, 3,
    type: Google.Cloud.Aiplatform.V1beta1.MigratableResource,
    json_name: "migratableResource"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Aiplatform.V1beta1.BatchMigrateResourcesOperationMetadata.PartialResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          result:
            {:error, Google.Rpc.Status.t() | nil} | {:model, String.t()} | {:dataset, String.t()},
          request: Google.Cloud.Aiplatform.V1beta1.MigrateResourceRequest.t() | nil
        }

  defstruct [:result, :request]

  oneof :result, 0

  field :error, 2, type: Google.Rpc.Status, oneof: 0
  field :model, 3, type: :string, oneof: 0
  field :dataset, 4, type: :string, oneof: 0
  field :request, 1, type: Google.Cloud.Aiplatform.V1beta1.MigrateResourceRequest

  def transform_module(), do: nil
end

defmodule Google.Cloud.Aiplatform.V1beta1.BatchMigrateResourcesOperationMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          generic_metadata: Google.Cloud.Aiplatform.V1beta1.GenericOperationMetadata.t() | nil,
          partial_results: [
            Google.Cloud.Aiplatform.V1beta1.BatchMigrateResourcesOperationMetadata.PartialResult.t()
          ]
        }

  defstruct [:generic_metadata, :partial_results]

  field :generic_metadata, 1,
    type: Google.Cloud.Aiplatform.V1beta1.GenericOperationMetadata,
    json_name: "genericMetadata"

  field :partial_results, 2,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.BatchMigrateResourcesOperationMetadata.PartialResult,
    json_name: "partialResults"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Aiplatform.V1beta1.MigrationService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.aiplatform.v1beta1.MigrationService"

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
