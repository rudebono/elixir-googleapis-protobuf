defmodule Google.Cloud.Documentai.V1.HumanReviewStatus.State do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :SKIPPED, 1
  field :VALIDATION_PASSED, 2
  field :IN_PROGRESS, 3
  field :ERROR, 4
end
defmodule Google.Cloud.Documentai.V1.BatchProcessMetadata.State do
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
defmodule Google.Cloud.Documentai.V1.ReviewDocumentRequest.Priority do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :DEFAULT, 0
  field :URGENT, 1
end
defmodule Google.Cloud.Documentai.V1.ProcessRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  oneof :source, 0

  field :inline_document, 4,
    type: Google.Cloud.Documentai.V1.Document,
    json_name: "inlineDocument",
    oneof: 0

  field :raw_document, 5,
    type: Google.Cloud.Documentai.V1.RawDocument,
    json_name: "rawDocument",
    oneof: 0

  field :name, 1, type: :string, deprecated: false
  field :skip_human_review, 3, type: :bool, json_name: "skipHumanReview"
end
defmodule Google.Cloud.Documentai.V1.HumanReviewStatus do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :state, 1, type: Google.Cloud.Documentai.V1.HumanReviewStatus.State, enum: true
  field :state_message, 2, type: :string, json_name: "stateMessage"
  field :human_review_operation, 3, type: :string, json_name: "humanReviewOperation"
end
defmodule Google.Cloud.Documentai.V1.ProcessResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :document, 1, type: Google.Cloud.Documentai.V1.Document

  field :human_review_status, 3,
    type: Google.Cloud.Documentai.V1.HumanReviewStatus,
    json_name: "humanReviewStatus"
end
defmodule Google.Cloud.Documentai.V1.BatchProcessRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :input_documents, 5,
    type: Google.Cloud.Documentai.V1.BatchDocumentsInputConfig,
    json_name: "inputDocuments"

  field :document_output_config, 6,
    type: Google.Cloud.Documentai.V1.DocumentOutputConfig,
    json_name: "documentOutputConfig"

  field :skip_human_review, 4, type: :bool, json_name: "skipHumanReview"
end
defmodule Google.Cloud.Documentai.V1.BatchProcessResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3
end
defmodule Google.Cloud.Documentai.V1.BatchProcessMetadata.IndividualProcessStatus do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :input_gcs_source, 1, type: :string, json_name: "inputGcsSource"
  field :status, 2, type: Google.Rpc.Status
  field :output_gcs_destination, 3, type: :string, json_name: "outputGcsDestination"

  field :human_review_status, 5,
    type: Google.Cloud.Documentai.V1.HumanReviewStatus,
    json_name: "humanReviewStatus"
end
defmodule Google.Cloud.Documentai.V1.BatchProcessMetadata do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :state, 1, type: Google.Cloud.Documentai.V1.BatchProcessMetadata.State, enum: true
  field :state_message, 2, type: :string, json_name: "stateMessage"
  field :create_time, 3, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :update_time, 4, type: Google.Protobuf.Timestamp, json_name: "updateTime"

  field :individual_process_statuses, 5,
    repeated: true,
    type: Google.Cloud.Documentai.V1.BatchProcessMetadata.IndividualProcessStatus,
    json_name: "individualProcessStatuses"
end
defmodule Google.Cloud.Documentai.V1.ReviewDocumentRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  oneof :source, 0

  field :inline_document, 4,
    type: Google.Cloud.Documentai.V1.Document,
    json_name: "inlineDocument",
    oneof: 0

  field :human_review_config, 1, type: :string, json_name: "humanReviewConfig", deprecated: false
  field :enable_schema_validation, 3, type: :bool, json_name: "enableSchemaValidation"
  field :priority, 5, type: Google.Cloud.Documentai.V1.ReviewDocumentRequest.Priority, enum: true
end
defmodule Google.Cloud.Documentai.V1.ReviewDocumentResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :gcs_destination, 1, type: :string, json_name: "gcsDestination"
end
defmodule Google.Cloud.Documentai.V1.ReviewDocumentOperationMetadata do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :common_metadata, 5,
    type: Google.Cloud.Documentai.V1.CommonOperationMetadata,
    json_name: "commonMetadata"

  field :question_id, 6, type: :string, json_name: "questionId"
end
defmodule Google.Cloud.Documentai.V1.DocumentProcessorService.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.cloud.documentai.v1.DocumentProcessorService",
    protoc_gen_elixir_version: "0.10.0"

  rpc :ProcessDocument,
      Google.Cloud.Documentai.V1.ProcessRequest,
      Google.Cloud.Documentai.V1.ProcessResponse

  rpc :BatchProcessDocuments,
      Google.Cloud.Documentai.V1.BatchProcessRequest,
      Google.Longrunning.Operation

  rpc :ReviewDocument,
      Google.Cloud.Documentai.V1.ReviewDocumentRequest,
      Google.Longrunning.Operation
end

defmodule Google.Cloud.Documentai.V1.DocumentProcessorService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Documentai.V1.DocumentProcessorService.Service
end
