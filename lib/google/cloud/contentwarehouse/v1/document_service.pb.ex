defmodule Google.Cloud.Contentwarehouse.V1.CreateDocumentResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :document, 1, type: Google.Cloud.Contentwarehouse.V1.Document

  field :rule_engine_output, 2,
    type: Google.Cloud.Contentwarehouse.V1.RuleEngineOutput,
    json_name: "ruleEngineOutput"

  field :metadata, 3, type: Google.Cloud.Contentwarehouse.V1.ResponseMetadata

  field :long_running_operations, 4,
    repeated: true,
    type: Google.Longrunning.Operation,
    json_name: "longRunningOperations"
end

defmodule Google.Cloud.Contentwarehouse.V1.UpdateDocumentResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :document, 1, type: Google.Cloud.Contentwarehouse.V1.Document

  field :rule_engine_output, 2,
    type: Google.Cloud.Contentwarehouse.V1.RuleEngineOutput,
    json_name: "ruleEngineOutput"

  field :metadata, 3, type: Google.Cloud.Contentwarehouse.V1.ResponseMetadata
end

defmodule Google.Cloud.Contentwarehouse.V1.QAResult.Highlight do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :start_index, 1, type: :int32, json_name: "startIndex"
  field :end_index, 2, type: :int32, json_name: "endIndex"
end

defmodule Google.Cloud.Contentwarehouse.V1.QAResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :highlights, 1, repeated: true, type: Google.Cloud.Contentwarehouse.V1.QAResult.Highlight
  field :confidence_score, 2, type: :float, json_name: "confidenceScore"
end

defmodule Google.Cloud.Contentwarehouse.V1.SearchDocumentsResponse.MatchingDocument do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :document, 1, type: Google.Cloud.Contentwarehouse.V1.Document
  field :search_text_snippet, 2, type: :string, json_name: "searchTextSnippet"
  field :qa_result, 3, type: Google.Cloud.Contentwarehouse.V1.QAResult, json_name: "qaResult"

  field :matched_token_page_indices, 4,
    repeated: true,
    type: :int64,
    json_name: "matchedTokenPageIndices"
end

defmodule Google.Cloud.Contentwarehouse.V1.SearchDocumentsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :matching_documents, 1,
    repeated: true,
    type: Google.Cloud.Contentwarehouse.V1.SearchDocumentsResponse.MatchingDocument,
    json_name: "matchingDocuments"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :total_size, 3, type: :int32, json_name: "totalSize"
  field :metadata, 4, type: Google.Cloud.Contentwarehouse.V1.ResponseMetadata

  field :histogram_query_results, 6,
    repeated: true,
    type: Google.Cloud.Contentwarehouse.V1.HistogramQueryResult,
    json_name: "histogramQueryResults"

  field :question_answer, 7, type: :string, json_name: "questionAnswer"
end

defmodule Google.Cloud.Contentwarehouse.V1.FetchAclResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :policy, 1, type: Google.Iam.V1.Policy
  field :metadata, 2, type: Google.Cloud.Contentwarehouse.V1.ResponseMetadata
end

defmodule Google.Cloud.Contentwarehouse.V1.SetAclResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :policy, 1, type: Google.Iam.V1.Policy
  field :metadata, 2, type: Google.Cloud.Contentwarehouse.V1.ResponseMetadata
end

defmodule Google.Cloud.Contentwarehouse.V1.DocumentService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.contentwarehouse.v1.DocumentService",
    protoc_gen_elixir_version: "0.12.0"

  rpc :CreateDocument,
      Google.Cloud.Contentwarehouse.V1.CreateDocumentRequest,
      Google.Cloud.Contentwarehouse.V1.CreateDocumentResponse

  rpc :GetDocument,
      Google.Cloud.Contentwarehouse.V1.GetDocumentRequest,
      Google.Cloud.Contentwarehouse.V1.Document

  rpc :UpdateDocument,
      Google.Cloud.Contentwarehouse.V1.UpdateDocumentRequest,
      Google.Cloud.Contentwarehouse.V1.UpdateDocumentResponse

  rpc :DeleteDocument,
      Google.Cloud.Contentwarehouse.V1.DeleteDocumentRequest,
      Google.Protobuf.Empty

  rpc :SearchDocuments,
      Google.Cloud.Contentwarehouse.V1.SearchDocumentsRequest,
      Google.Cloud.Contentwarehouse.V1.SearchDocumentsResponse

  rpc :LockDocument,
      Google.Cloud.Contentwarehouse.V1.LockDocumentRequest,
      Google.Cloud.Contentwarehouse.V1.Document

  rpc :FetchAcl,
      Google.Cloud.Contentwarehouse.V1.FetchAclRequest,
      Google.Cloud.Contentwarehouse.V1.FetchAclResponse

  rpc :SetAcl,
      Google.Cloud.Contentwarehouse.V1.SetAclRequest,
      Google.Cloud.Contentwarehouse.V1.SetAclResponse
end

defmodule Google.Cloud.Contentwarehouse.V1.DocumentService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Contentwarehouse.V1.DocumentService.Service
end