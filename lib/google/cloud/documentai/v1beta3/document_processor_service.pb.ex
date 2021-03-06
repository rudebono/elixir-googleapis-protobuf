defmodule Google.Cloud.Documentai.V1beta3.HumanReviewStatus.State do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :SKIPPED, 1
  field :VALIDATION_PASSED, 2
  field :IN_PROGRESS, 3
  field :ERROR, 4
end
defmodule Google.Cloud.Documentai.V1beta3.BatchProcessMetadata.State do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :WAITING, 1
  field :RUNNING, 2
  field :SUCCEEDED, 3
  field :CANCELLING, 4
  field :CANCELLED, 5
  field :FAILED, 6
end
defmodule Google.Cloud.Documentai.V1beta3.ReviewDocumentRequest.Priority do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :DEFAULT, 0
  field :URGENT, 1
end
defmodule Google.Cloud.Documentai.V1beta3.ReviewDocumentOperationMetadata.State do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :RUNNING, 1
  field :CANCELLING, 2
  field :SUCCEEDED, 3
  field :FAILED, 4
  field :CANCELLED, 5
end
defmodule Google.Cloud.Documentai.V1beta3.ProcessRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  oneof :source, 0

  field :inline_document, 4,
    type: Google.Cloud.Documentai.V1beta3.Document,
    json_name: "inlineDocument",
    oneof: 0

  field :raw_document, 5,
    type: Google.Cloud.Documentai.V1beta3.RawDocument,
    json_name: "rawDocument",
    oneof: 0

  field :name, 1, type: :string, deprecated: false
  field :document, 2, type: Google.Cloud.Documentai.V1beta3.Document, deprecated: true
  field :skip_human_review, 3, type: :bool, json_name: "skipHumanReview"
end
defmodule Google.Cloud.Documentai.V1beta3.HumanReviewStatus do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :state, 1, type: Google.Cloud.Documentai.V1beta3.HumanReviewStatus.State, enum: true
  field :state_message, 2, type: :string, json_name: "stateMessage"
  field :human_review_operation, 3, type: :string, json_name: "humanReviewOperation"
end
defmodule Google.Cloud.Documentai.V1beta3.ProcessResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :document, 1, type: Google.Cloud.Documentai.V1beta3.Document

  field :human_review_operation, 2,
    type: :string,
    json_name: "humanReviewOperation",
    deprecated: true

  field :human_review_status, 3,
    type: Google.Cloud.Documentai.V1beta3.HumanReviewStatus,
    json_name: "humanReviewStatus"
end
defmodule Google.Cloud.Documentai.V1beta3.BatchProcessRequest.BatchInputConfig do
  @moduledoc false
  use Protobuf, deprecated: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :gcs_source, 1, type: :string, json_name: "gcsSource"
  field :mime_type, 2, type: :string, json_name: "mimeType"
end
defmodule Google.Cloud.Documentai.V1beta3.BatchProcessRequest.BatchOutputConfig do
  @moduledoc false
  use Protobuf, deprecated: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :gcs_destination, 1, type: :string, json_name: "gcsDestination"
end
defmodule Google.Cloud.Documentai.V1beta3.BatchProcessRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :input_configs, 2,
    repeated: true,
    type: Google.Cloud.Documentai.V1beta3.BatchProcessRequest.BatchInputConfig,
    json_name: "inputConfigs",
    deprecated: true

  field :output_config, 3,
    type: Google.Cloud.Documentai.V1beta3.BatchProcessRequest.BatchOutputConfig,
    json_name: "outputConfig",
    deprecated: true

  field :input_documents, 5,
    type: Google.Cloud.Documentai.V1beta3.BatchDocumentsInputConfig,
    json_name: "inputDocuments"

  field :document_output_config, 6,
    type: Google.Cloud.Documentai.V1beta3.DocumentOutputConfig,
    json_name: "documentOutputConfig"

  field :skip_human_review, 4, type: :bool, json_name: "skipHumanReview"
end
defmodule Google.Cloud.Documentai.V1beta3.BatchProcessResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3
end
defmodule Google.Cloud.Documentai.V1beta3.BatchProcessMetadata.IndividualProcessStatus do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :input_gcs_source, 1, type: :string, json_name: "inputGcsSource"
  field :status, 2, type: Google.Rpc.Status
  field :output_gcs_destination, 3, type: :string, json_name: "outputGcsDestination"

  field :human_review_operation, 4,
    type: :string,
    json_name: "humanReviewOperation",
    deprecated: true

  field :human_review_status, 5,
    type: Google.Cloud.Documentai.V1beta3.HumanReviewStatus,
    json_name: "humanReviewStatus"
end
defmodule Google.Cloud.Documentai.V1beta3.BatchProcessMetadata do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :state, 1, type: Google.Cloud.Documentai.V1beta3.BatchProcessMetadata.State, enum: true
  field :state_message, 2, type: :string, json_name: "stateMessage"
  field :create_time, 3, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :update_time, 4, type: Google.Protobuf.Timestamp, json_name: "updateTime"

  field :individual_process_statuses, 5,
    repeated: true,
    type: Google.Cloud.Documentai.V1beta3.BatchProcessMetadata.IndividualProcessStatus,
    json_name: "individualProcessStatuses"
end
defmodule Google.Cloud.Documentai.V1beta3.FetchProcessorTypesRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Documentai.V1beta3.FetchProcessorTypesResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :processor_types, 1,
    repeated: true,
    type: Google.Cloud.Documentai.V1beta3.ProcessorType,
    json_name: "processorTypes"
end
defmodule Google.Cloud.Documentai.V1beta3.ListProcessorsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end
defmodule Google.Cloud.Documentai.V1beta3.ListProcessorsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :processors, 1, repeated: true, type: Google.Cloud.Documentai.V1beta3.Processor
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Google.Cloud.Documentai.V1beta3.CreateProcessorRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :processor, 2, type: Google.Cloud.Documentai.V1beta3.Processor, deprecated: false
end
defmodule Google.Cloud.Documentai.V1beta3.DeleteProcessorRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Documentai.V1beta3.DeleteProcessorMetadata do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :common_metadata, 5,
    type: Google.Cloud.Documentai.V1beta3.CommonOperationMetadata,
    json_name: "commonMetadata"
end
defmodule Google.Cloud.Documentai.V1beta3.EnableProcessorRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Documentai.V1beta3.EnableProcessorResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3
end
defmodule Google.Cloud.Documentai.V1beta3.EnableProcessorMetadata do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :common_metadata, 5,
    type: Google.Cloud.Documentai.V1beta3.CommonOperationMetadata,
    json_name: "commonMetadata"
end
defmodule Google.Cloud.Documentai.V1beta3.DisableProcessorRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Documentai.V1beta3.DisableProcessorResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3
end
defmodule Google.Cloud.Documentai.V1beta3.DisableProcessorMetadata do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :common_metadata, 5,
    type: Google.Cloud.Documentai.V1beta3.CommonOperationMetadata,
    json_name: "commonMetadata"
end
defmodule Google.Cloud.Documentai.V1beta3.ReviewDocumentRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  oneof :source, 0

  field :inline_document, 4,
    type: Google.Cloud.Documentai.V1beta3.Document,
    json_name: "inlineDocument",
    oneof: 0

  field :human_review_config, 1, type: :string, json_name: "humanReviewConfig", deprecated: false
  field :document, 2, type: Google.Cloud.Documentai.V1beta3.Document, deprecated: true
  field :enable_schema_validation, 3, type: :bool, json_name: "enableSchemaValidation"

  field :priority, 5,
    type: Google.Cloud.Documentai.V1beta3.ReviewDocumentRequest.Priority,
    enum: true
end
defmodule Google.Cloud.Documentai.V1beta3.ReviewDocumentResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :gcs_destination, 1, type: :string, json_name: "gcsDestination"
end
defmodule Google.Cloud.Documentai.V1beta3.ReviewDocumentOperationMetadata do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :state, 1,
    type: Google.Cloud.Documentai.V1beta3.ReviewDocumentOperationMetadata.State,
    enum: true

  field :state_message, 2, type: :string, json_name: "stateMessage"
  field :create_time, 3, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :update_time, 4, type: Google.Protobuf.Timestamp, json_name: "updateTime"

  field :common_metadata, 5,
    type: Google.Cloud.Documentai.V1beta3.CommonOperationMetadata,
    json_name: "commonMetadata"

  field :question_id, 6, type: :string, json_name: "questionId"
end
defmodule Google.Cloud.Documentai.V1beta3.DocumentProcessorService.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.cloud.documentai.v1beta3.DocumentProcessorService",
    protoc_gen_elixir_version: "0.10.0"

  rpc :ProcessDocument,
      Google.Cloud.Documentai.V1beta3.ProcessRequest,
      Google.Cloud.Documentai.V1beta3.ProcessResponse

  rpc :BatchProcessDocuments,
      Google.Cloud.Documentai.V1beta3.BatchProcessRequest,
      Google.Longrunning.Operation

  rpc :FetchProcessorTypes,
      Google.Cloud.Documentai.V1beta3.FetchProcessorTypesRequest,
      Google.Cloud.Documentai.V1beta3.FetchProcessorTypesResponse

  rpc :ListProcessors,
      Google.Cloud.Documentai.V1beta3.ListProcessorsRequest,
      Google.Cloud.Documentai.V1beta3.ListProcessorsResponse

  rpc :CreateProcessor,
      Google.Cloud.Documentai.V1beta3.CreateProcessorRequest,
      Google.Cloud.Documentai.V1beta3.Processor

  rpc :DeleteProcessor,
      Google.Cloud.Documentai.V1beta3.DeleteProcessorRequest,
      Google.Longrunning.Operation

  rpc :EnableProcessor,
      Google.Cloud.Documentai.V1beta3.EnableProcessorRequest,
      Google.Longrunning.Operation

  rpc :DisableProcessor,
      Google.Cloud.Documentai.V1beta3.DisableProcessorRequest,
      Google.Longrunning.Operation

  rpc :ReviewDocument,
      Google.Cloud.Documentai.V1beta3.ReviewDocumentRequest,
      Google.Longrunning.Operation
end

defmodule Google.Cloud.Documentai.V1beta3.DocumentProcessorService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Documentai.V1beta3.DocumentProcessorService.Service
end
