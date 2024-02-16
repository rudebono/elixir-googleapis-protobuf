defmodule Google.Cloud.Documentai.V1.HumanReviewStatus.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :SKIPPED, 1
  field :VALIDATION_PASSED, 2
  field :IN_PROGRESS, 3
  field :ERROR, 4
end

defmodule Google.Cloud.Documentai.V1.BatchProcessMetadata.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :WAITING, 1
  field :RUNNING, 2
  field :SUCCEEDED, 3
  field :CANCELLING, 4
  field :CANCELLED, 5
  field :FAILED, 6
end

defmodule Google.Cloud.Documentai.V1.TrainProcessorVersionRequest.CustomDocumentExtractionOptions.TrainingMethod do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :TRAINING_METHOD_UNSPECIFIED, 0
  field :MODEL_BASED, 1
  field :TEMPLATE_BASED, 2
end

defmodule Google.Cloud.Documentai.V1.ReviewDocumentRequest.Priority do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :DEFAULT, 0
  field :URGENT, 1
end

defmodule Google.Cloud.Documentai.V1.ReviewDocumentResponse.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :REJECTED, 1
  field :SUCCEEDED, 2
end

defmodule Google.Cloud.Documentai.V1.ProcessOptions.IndividualPageSelector do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :pages, 1, repeated: true, type: :int32, deprecated: false
end

defmodule Google.Cloud.Documentai.V1.ProcessOptions do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :page_range, 0

  field :individual_page_selector, 5,
    type: Google.Cloud.Documentai.V1.ProcessOptions.IndividualPageSelector,
    json_name: "individualPageSelector",
    oneof: 0

  field :from_start, 6, type: :int32, json_name: "fromStart", oneof: 0
  field :from_end, 7, type: :int32, json_name: "fromEnd", oneof: 0
  field :ocr_config, 1, type: Google.Cloud.Documentai.V1.OcrConfig, json_name: "ocrConfig"

  field :schema_override, 8,
    type: Google.Cloud.Documentai.V1.DocumentSchema,
    json_name: "schemaOverride",
    deprecated: false
end

defmodule Google.Cloud.Documentai.V1.ProcessRequest.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Documentai.V1.ProcessRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :source, 0

  field :inline_document, 4,
    type: Google.Cloud.Documentai.V1.Document,
    json_name: "inlineDocument",
    oneof: 0

  field :raw_document, 5,
    type: Google.Cloud.Documentai.V1.RawDocument,
    json_name: "rawDocument",
    oneof: 0

  field :gcs_document, 8,
    type: Google.Cloud.Documentai.V1.GcsDocument,
    json_name: "gcsDocument",
    oneof: 0

  field :name, 1, type: :string, deprecated: false
  field :skip_human_review, 3, type: :bool, json_name: "skipHumanReview"
  field :field_mask, 6, type: Google.Protobuf.FieldMask, json_name: "fieldMask"

  field :process_options, 7,
    type: Google.Cloud.Documentai.V1.ProcessOptions,
    json_name: "processOptions"

  field :labels, 10,
    repeated: true,
    type: Google.Cloud.Documentai.V1.ProcessRequest.LabelsEntry,
    map: true,
    deprecated: false
end

defmodule Google.Cloud.Documentai.V1.HumanReviewStatus do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :state, 1, type: Google.Cloud.Documentai.V1.HumanReviewStatus.State, enum: true
  field :state_message, 2, type: :string, json_name: "stateMessage"
  field :human_review_operation, 3, type: :string, json_name: "humanReviewOperation"
end

defmodule Google.Cloud.Documentai.V1.ProcessResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :document, 1, type: Google.Cloud.Documentai.V1.Document

  field :human_review_status, 3,
    type: Google.Cloud.Documentai.V1.HumanReviewStatus,
    json_name: "humanReviewStatus"
end

defmodule Google.Cloud.Documentai.V1.BatchProcessRequest.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Documentai.V1.BatchProcessRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :input_documents, 5,
    type: Google.Cloud.Documentai.V1.BatchDocumentsInputConfig,
    json_name: "inputDocuments"

  field :document_output_config, 6,
    type: Google.Cloud.Documentai.V1.DocumentOutputConfig,
    json_name: "documentOutputConfig"

  field :skip_human_review, 4, type: :bool, json_name: "skipHumanReview"

  field :process_options, 7,
    type: Google.Cloud.Documentai.V1.ProcessOptions,
    json_name: "processOptions"

  field :labels, 9,
    repeated: true,
    type: Google.Cloud.Documentai.V1.BatchProcessRequest.LabelsEntry,
    map: true,
    deprecated: false
end

defmodule Google.Cloud.Documentai.V1.BatchProcessResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3
end

defmodule Google.Cloud.Documentai.V1.BatchProcessMetadata.IndividualProcessStatus do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :input_gcs_source, 1, type: :string, json_name: "inputGcsSource"
  field :status, 2, type: Google.Rpc.Status
  field :output_gcs_destination, 3, type: :string, json_name: "outputGcsDestination"

  field :human_review_status, 5,
    type: Google.Cloud.Documentai.V1.HumanReviewStatus,
    json_name: "humanReviewStatus"
end

defmodule Google.Cloud.Documentai.V1.BatchProcessMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :state, 1, type: Google.Cloud.Documentai.V1.BatchProcessMetadata.State, enum: true
  field :state_message, 2, type: :string, json_name: "stateMessage"
  field :create_time, 3, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :update_time, 4, type: Google.Protobuf.Timestamp, json_name: "updateTime"

  field :individual_process_statuses, 5,
    repeated: true,
    type: Google.Cloud.Documentai.V1.BatchProcessMetadata.IndividualProcessStatus,
    json_name: "individualProcessStatuses"
end

defmodule Google.Cloud.Documentai.V1.FetchProcessorTypesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Documentai.V1.FetchProcessorTypesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :processor_types, 1,
    repeated: true,
    type: Google.Cloud.Documentai.V1.ProcessorType,
    json_name: "processorTypes"
end

defmodule Google.Cloud.Documentai.V1.ListProcessorTypesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Cloud.Documentai.V1.ListProcessorTypesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :processor_types, 1,
    repeated: true,
    type: Google.Cloud.Documentai.V1.ProcessorType,
    json_name: "processorTypes"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Documentai.V1.ListProcessorsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Cloud.Documentai.V1.ListProcessorsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :processors, 1, repeated: true, type: Google.Cloud.Documentai.V1.Processor
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Documentai.V1.GetProcessorTypeRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Documentai.V1.GetProcessorRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Documentai.V1.GetProcessorVersionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Documentai.V1.ListProcessorVersionsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Cloud.Documentai.V1.ListProcessorVersionsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :processor_versions, 1,
    repeated: true,
    type: Google.Cloud.Documentai.V1.ProcessorVersion,
    json_name: "processorVersions"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Documentai.V1.DeleteProcessorVersionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Documentai.V1.DeleteProcessorVersionMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :common_metadata, 1,
    type: Google.Cloud.Documentai.V1.CommonOperationMetadata,
    json_name: "commonMetadata"
end

defmodule Google.Cloud.Documentai.V1.DeployProcessorVersionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Documentai.V1.DeployProcessorVersionResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3
end

defmodule Google.Cloud.Documentai.V1.DeployProcessorVersionMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :common_metadata, 1,
    type: Google.Cloud.Documentai.V1.CommonOperationMetadata,
    json_name: "commonMetadata"
end

defmodule Google.Cloud.Documentai.V1.UndeployProcessorVersionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Documentai.V1.UndeployProcessorVersionResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3
end

defmodule Google.Cloud.Documentai.V1.UndeployProcessorVersionMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :common_metadata, 1,
    type: Google.Cloud.Documentai.V1.CommonOperationMetadata,
    json_name: "commonMetadata"
end

defmodule Google.Cloud.Documentai.V1.CreateProcessorRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :processor, 2, type: Google.Cloud.Documentai.V1.Processor, deprecated: false
end

defmodule Google.Cloud.Documentai.V1.DeleteProcessorRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Documentai.V1.DeleteProcessorMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :common_metadata, 5,
    type: Google.Cloud.Documentai.V1.CommonOperationMetadata,
    json_name: "commonMetadata"
end

defmodule Google.Cloud.Documentai.V1.EnableProcessorRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Documentai.V1.EnableProcessorResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3
end

defmodule Google.Cloud.Documentai.V1.EnableProcessorMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :common_metadata, 5,
    type: Google.Cloud.Documentai.V1.CommonOperationMetadata,
    json_name: "commonMetadata"
end

defmodule Google.Cloud.Documentai.V1.DisableProcessorRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Documentai.V1.DisableProcessorResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3
end

defmodule Google.Cloud.Documentai.V1.DisableProcessorMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :common_metadata, 5,
    type: Google.Cloud.Documentai.V1.CommonOperationMetadata,
    json_name: "commonMetadata"
end

defmodule Google.Cloud.Documentai.V1.SetDefaultProcessorVersionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :processor, 1, type: :string, deprecated: false

  field :default_processor_version, 2,
    type: :string,
    json_name: "defaultProcessorVersion",
    deprecated: false
end

defmodule Google.Cloud.Documentai.V1.SetDefaultProcessorVersionResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3
end

defmodule Google.Cloud.Documentai.V1.SetDefaultProcessorVersionMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :common_metadata, 1,
    type: Google.Cloud.Documentai.V1.CommonOperationMetadata,
    json_name: "commonMetadata"
end

defmodule Google.Cloud.Documentai.V1.TrainProcessorVersionRequest.InputData do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :training_documents, 3,
    type: Google.Cloud.Documentai.V1.BatchDocumentsInputConfig,
    json_name: "trainingDocuments"

  field :test_documents, 4,
    type: Google.Cloud.Documentai.V1.BatchDocumentsInputConfig,
    json_name: "testDocuments"
end

defmodule Google.Cloud.Documentai.V1.TrainProcessorVersionRequest.CustomDocumentExtractionOptions do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :training_method, 3,
    type:
      Google.Cloud.Documentai.V1.TrainProcessorVersionRequest.CustomDocumentExtractionOptions.TrainingMethod,
    json_name: "trainingMethod",
    enum: true
end

defmodule Google.Cloud.Documentai.V1.TrainProcessorVersionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :processor_flags, 0

  field :custom_document_extraction_options, 5,
    type: Google.Cloud.Documentai.V1.TrainProcessorVersionRequest.CustomDocumentExtractionOptions,
    json_name: "customDocumentExtractionOptions",
    oneof: 0

  field :parent, 1, type: :string, deprecated: false

  field :processor_version, 2,
    type: Google.Cloud.Documentai.V1.ProcessorVersion,
    json_name: "processorVersion",
    deprecated: false

  field :document_schema, 10,
    type: Google.Cloud.Documentai.V1.DocumentSchema,
    json_name: "documentSchema",
    deprecated: false

  field :input_data, 4,
    type: Google.Cloud.Documentai.V1.TrainProcessorVersionRequest.InputData,
    json_name: "inputData",
    deprecated: false

  field :base_processor_version, 8,
    type: :string,
    json_name: "baseProcessorVersion",
    deprecated: false
end

defmodule Google.Cloud.Documentai.V1.TrainProcessorVersionResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :processor_version, 1, type: :string, json_name: "processorVersion"
end

defmodule Google.Cloud.Documentai.V1.TrainProcessorVersionMetadata.DatasetValidation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :document_error_count, 3, type: :int32, json_name: "documentErrorCount"
  field :dataset_error_count, 4, type: :int32, json_name: "datasetErrorCount"
  field :document_errors, 1, repeated: true, type: Google.Rpc.Status, json_name: "documentErrors"
  field :dataset_errors, 2, repeated: true, type: Google.Rpc.Status, json_name: "datasetErrors"
end

defmodule Google.Cloud.Documentai.V1.TrainProcessorVersionMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :common_metadata, 1,
    type: Google.Cloud.Documentai.V1.CommonOperationMetadata,
    json_name: "commonMetadata"

  field :training_dataset_validation, 2,
    type: Google.Cloud.Documentai.V1.TrainProcessorVersionMetadata.DatasetValidation,
    json_name: "trainingDatasetValidation"

  field :test_dataset_validation, 3,
    type: Google.Cloud.Documentai.V1.TrainProcessorVersionMetadata.DatasetValidation,
    json_name: "testDatasetValidation"
end

defmodule Google.Cloud.Documentai.V1.ReviewDocumentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :source, 0

  field :inline_document, 4,
    type: Google.Cloud.Documentai.V1.Document,
    json_name: "inlineDocument",
    oneof: 0

  field :human_review_config, 1, type: :string, json_name: "humanReviewConfig", deprecated: false
  field :enable_schema_validation, 3, type: :bool, json_name: "enableSchemaValidation"
  field :priority, 5, type: Google.Cloud.Documentai.V1.ReviewDocumentRequest.Priority, enum: true

  field :document_schema, 6,
    type: Google.Cloud.Documentai.V1.DocumentSchema,
    json_name: "documentSchema"
end

defmodule Google.Cloud.Documentai.V1.ReviewDocumentResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :gcs_destination, 1, type: :string, json_name: "gcsDestination"
  field :state, 2, type: Google.Cloud.Documentai.V1.ReviewDocumentResponse.State, enum: true
  field :rejection_reason, 3, type: :string, json_name: "rejectionReason"
end

defmodule Google.Cloud.Documentai.V1.ReviewDocumentOperationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :common_metadata, 5,
    type: Google.Cloud.Documentai.V1.CommonOperationMetadata,
    json_name: "commonMetadata"

  field :question_id, 6, type: :string, json_name: "questionId"
end

defmodule Google.Cloud.Documentai.V1.EvaluateProcessorVersionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :processor_version, 1, type: :string, json_name: "processorVersion", deprecated: false

  field :evaluation_documents, 3,
    type: Google.Cloud.Documentai.V1.BatchDocumentsInputConfig,
    json_name: "evaluationDocuments",
    deprecated: false
end

defmodule Google.Cloud.Documentai.V1.EvaluateProcessorVersionMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :common_metadata, 1,
    type: Google.Cloud.Documentai.V1.CommonOperationMetadata,
    json_name: "commonMetadata"
end

defmodule Google.Cloud.Documentai.V1.EvaluateProcessorVersionResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :evaluation, 2, type: :string
end

defmodule Google.Cloud.Documentai.V1.GetEvaluationRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Documentai.V1.ListEvaluationsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Cloud.Documentai.V1.ListEvaluationsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :evaluations, 1, repeated: true, type: Google.Cloud.Documentai.V1.Evaluation
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Documentai.V1.DocumentProcessorService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.documentai.v1.DocumentProcessorService",
    protoc_gen_elixir_version: "0.12.0"

  rpc :ProcessDocument,
      Google.Cloud.Documentai.V1.ProcessRequest,
      Google.Cloud.Documentai.V1.ProcessResponse

  rpc :BatchProcessDocuments,
      Google.Cloud.Documentai.V1.BatchProcessRequest,
      Google.Longrunning.Operation

  rpc :FetchProcessorTypes,
      Google.Cloud.Documentai.V1.FetchProcessorTypesRequest,
      Google.Cloud.Documentai.V1.FetchProcessorTypesResponse

  rpc :ListProcessorTypes,
      Google.Cloud.Documentai.V1.ListProcessorTypesRequest,
      Google.Cloud.Documentai.V1.ListProcessorTypesResponse

  rpc :GetProcessorType,
      Google.Cloud.Documentai.V1.GetProcessorTypeRequest,
      Google.Cloud.Documentai.V1.ProcessorType

  rpc :ListProcessors,
      Google.Cloud.Documentai.V1.ListProcessorsRequest,
      Google.Cloud.Documentai.V1.ListProcessorsResponse

  rpc :GetProcessor,
      Google.Cloud.Documentai.V1.GetProcessorRequest,
      Google.Cloud.Documentai.V1.Processor

  rpc :TrainProcessorVersion,
      Google.Cloud.Documentai.V1.TrainProcessorVersionRequest,
      Google.Longrunning.Operation

  rpc :GetProcessorVersion,
      Google.Cloud.Documentai.V1.GetProcessorVersionRequest,
      Google.Cloud.Documentai.V1.ProcessorVersion

  rpc :ListProcessorVersions,
      Google.Cloud.Documentai.V1.ListProcessorVersionsRequest,
      Google.Cloud.Documentai.V1.ListProcessorVersionsResponse

  rpc :DeleteProcessorVersion,
      Google.Cloud.Documentai.V1.DeleteProcessorVersionRequest,
      Google.Longrunning.Operation

  rpc :DeployProcessorVersion,
      Google.Cloud.Documentai.V1.DeployProcessorVersionRequest,
      Google.Longrunning.Operation

  rpc :UndeployProcessorVersion,
      Google.Cloud.Documentai.V1.UndeployProcessorVersionRequest,
      Google.Longrunning.Operation

  rpc :CreateProcessor,
      Google.Cloud.Documentai.V1.CreateProcessorRequest,
      Google.Cloud.Documentai.V1.Processor

  rpc :DeleteProcessor,
      Google.Cloud.Documentai.V1.DeleteProcessorRequest,
      Google.Longrunning.Operation

  rpc :EnableProcessor,
      Google.Cloud.Documentai.V1.EnableProcessorRequest,
      Google.Longrunning.Operation

  rpc :DisableProcessor,
      Google.Cloud.Documentai.V1.DisableProcessorRequest,
      Google.Longrunning.Operation

  rpc :SetDefaultProcessorVersion,
      Google.Cloud.Documentai.V1.SetDefaultProcessorVersionRequest,
      Google.Longrunning.Operation

  rpc :ReviewDocument,
      Google.Cloud.Documentai.V1.ReviewDocumentRequest,
      Google.Longrunning.Operation

  rpc :EvaluateProcessorVersion,
      Google.Cloud.Documentai.V1.EvaluateProcessorVersionRequest,
      Google.Longrunning.Operation

  rpc :GetEvaluation,
      Google.Cloud.Documentai.V1.GetEvaluationRequest,
      Google.Cloud.Documentai.V1.Evaluation

  rpc :ListEvaluations,
      Google.Cloud.Documentai.V1.ListEvaluationsRequest,
      Google.Cloud.Documentai.V1.ListEvaluationsResponse
end

defmodule Google.Cloud.Documentai.V1.DocumentProcessorService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Documentai.V1.DocumentProcessorService.Service
end