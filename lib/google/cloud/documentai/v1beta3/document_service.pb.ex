defmodule Google.Cloud.Documentai.V1beta3.DatasetSplitType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :DATASET_SPLIT_TYPE_UNSPECIFIED, 0
  field :DATASET_SPLIT_TRAIN, 1
  field :DATASET_SPLIT_TEST, 2
  field :DATASET_SPLIT_UNASSIGNED, 3
end

defmodule Google.Cloud.Documentai.V1beta3.UpdateDatasetRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :dataset, 1, type: Google.Cloud.Documentai.V1beta3.Dataset, deprecated: false
  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end

defmodule Google.Cloud.Documentai.V1beta3.UpdateDatasetOperationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :common_metadata, 1,
    type: Google.Cloud.Documentai.V1beta3.CommonOperationMetadata,
    json_name: "commonMetadata"
end

defmodule Google.Cloud.Documentai.V1beta3.ImportDocumentsRequest.BatchDocumentsImportConfig.AutoSplitConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :training_split_ratio, 1, type: :float, json_name: "trainingSplitRatio"
end

defmodule Google.Cloud.Documentai.V1beta3.ImportDocumentsRequest.BatchDocumentsImportConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :split_type_config, 0

  field :dataset_split, 2,
    type: Google.Cloud.Documentai.V1beta3.DatasetSplitType,
    json_name: "datasetSplit",
    enum: true,
    oneof: 0

  field :auto_split_config, 3,
    type:
      Google.Cloud.Documentai.V1beta3.ImportDocumentsRequest.BatchDocumentsImportConfig.AutoSplitConfig,
    json_name: "autoSplitConfig",
    oneof: 0

  field :batch_input_config, 1,
    type: Google.Cloud.Documentai.V1beta3.BatchDocumentsInputConfig,
    json_name: "batchInputConfig"
end

defmodule Google.Cloud.Documentai.V1beta3.ImportDocumentsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :dataset, 1, type: :string, deprecated: false

  field :batch_documents_import_configs, 4,
    repeated: true,
    type: Google.Cloud.Documentai.V1beta3.ImportDocumentsRequest.BatchDocumentsImportConfig,
    json_name: "batchDocumentsImportConfigs",
    deprecated: false
end

defmodule Google.Cloud.Documentai.V1beta3.ImportDocumentsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3
end

defmodule Google.Cloud.Documentai.V1beta3.ImportDocumentsMetadata.IndividualImportStatus do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :input_gcs_source, 1, type: :string, json_name: "inputGcsSource"
  field :status, 2, type: Google.Rpc.Status

  field :output_document_id, 4,
    type: Google.Cloud.Documentai.V1beta3.DocumentId,
    json_name: "outputDocumentId"
end

defmodule Google.Cloud.Documentai.V1beta3.ImportDocumentsMetadata.ImportConfigValidationResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :input_gcs_source, 1, type: :string, json_name: "inputGcsSource"
  field :status, 2, type: Google.Rpc.Status
end

defmodule Google.Cloud.Documentai.V1beta3.ImportDocumentsMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :common_metadata, 1,
    type: Google.Cloud.Documentai.V1beta3.CommonOperationMetadata,
    json_name: "commonMetadata"

  field :individual_import_statuses, 2,
    repeated: true,
    type: Google.Cloud.Documentai.V1beta3.ImportDocumentsMetadata.IndividualImportStatus,
    json_name: "individualImportStatuses"

  field :import_config_validation_results, 4,
    repeated: true,
    type: Google.Cloud.Documentai.V1beta3.ImportDocumentsMetadata.ImportConfigValidationResult,
    json_name: "importConfigValidationResults"

  field :total_document_count, 3, type: :int32, json_name: "totalDocumentCount"
end

defmodule Google.Cloud.Documentai.V1beta3.GetDocumentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :dataset, 1, type: :string, deprecated: false

  field :document_id, 2,
    type: Google.Cloud.Documentai.V1beta3.DocumentId,
    json_name: "documentId",
    deprecated: false

  field :read_mask, 3, type: Google.Protobuf.FieldMask, json_name: "readMask"

  field :page_range, 4,
    type: Google.Cloud.Documentai.V1beta3.DocumentPageRange,
    json_name: "pageRange"
end

defmodule Google.Cloud.Documentai.V1beta3.GetDocumentResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :document, 1, type: Google.Cloud.Documentai.V1beta3.Document
end

defmodule Google.Cloud.Documentai.V1beta3.BatchDeleteDocumentsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :dataset, 1, type: :string, deprecated: false

  field :dataset_documents, 3,
    type: Google.Cloud.Documentai.V1beta3.BatchDatasetDocuments,
    json_name: "datasetDocuments",
    deprecated: false
end

defmodule Google.Cloud.Documentai.V1beta3.BatchDeleteDocumentsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3
end

defmodule Google.Cloud.Documentai.V1beta3.BatchDeleteDocumentsMetadata.IndividualBatchDeleteStatus do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :document_id, 1, type: Google.Cloud.Documentai.V1beta3.DocumentId, json_name: "documentId"
  field :status, 2, type: Google.Rpc.Status
end

defmodule Google.Cloud.Documentai.V1beta3.BatchDeleteDocumentsMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :common_metadata, 1,
    type: Google.Cloud.Documentai.V1beta3.CommonOperationMetadata,
    json_name: "commonMetadata"

  field :individual_batch_delete_statuses, 2,
    repeated: true,
    type:
      Google.Cloud.Documentai.V1beta3.BatchDeleteDocumentsMetadata.IndividualBatchDeleteStatus,
    json_name: "individualBatchDeleteStatuses"

  field :total_document_count, 3, type: :int32, json_name: "totalDocumentCount"
  field :error_document_count, 4, type: :int32, json_name: "errorDocumentCount"
end

defmodule Google.Cloud.Documentai.V1beta3.GetDatasetSchemaRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :visible_fields_only, 2, type: :bool, json_name: "visibleFieldsOnly"
end

defmodule Google.Cloud.Documentai.V1beta3.UpdateDatasetSchemaRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :dataset_schema, 1,
    type: Google.Cloud.Documentai.V1beta3.DatasetSchema,
    json_name: "datasetSchema",
    deprecated: false

  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end

defmodule Google.Cloud.Documentai.V1beta3.DocumentPageRange do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :start, 1, type: :int32
  field :end, 2, type: :int32
end

defmodule Google.Cloud.Documentai.V1beta3.DocumentService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.documentai.v1beta3.DocumentService",
    protoc_gen_elixir_version: "0.12.0"

  rpc :UpdateDataset,
      Google.Cloud.Documentai.V1beta3.UpdateDatasetRequest,
      Google.Longrunning.Operation

  rpc :ImportDocuments,
      Google.Cloud.Documentai.V1beta3.ImportDocumentsRequest,
      Google.Longrunning.Operation

  rpc :GetDocument,
      Google.Cloud.Documentai.V1beta3.GetDocumentRequest,
      Google.Cloud.Documentai.V1beta3.GetDocumentResponse

  rpc :BatchDeleteDocuments,
      Google.Cloud.Documentai.V1beta3.BatchDeleteDocumentsRequest,
      Google.Longrunning.Operation

  rpc :GetDatasetSchema,
      Google.Cloud.Documentai.V1beta3.GetDatasetSchemaRequest,
      Google.Cloud.Documentai.V1beta3.DatasetSchema

  rpc :UpdateDatasetSchema,
      Google.Cloud.Documentai.V1beta3.UpdateDatasetSchemaRequest,
      Google.Cloud.Documentai.V1beta3.DatasetSchema
end

defmodule Google.Cloud.Documentai.V1beta3.DocumentService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Documentai.V1beta3.DocumentService.Service
end