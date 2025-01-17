defmodule Google.Cloud.Discoveryengine.V1.Answer.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :IN_PROGRESS, 1
  field :FAILED, 2
  field :SUCCEEDED, 3
end

defmodule Google.Cloud.Discoveryengine.V1.Answer.AnswerSkippedReason do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :ANSWER_SKIPPED_REASON_UNSPECIFIED, 0
  field :ADVERSARIAL_QUERY_IGNORED, 1
  field :NON_ANSWER_SEEKING_QUERY_IGNORED, 2
  field :OUT_OF_DOMAIN_QUERY_IGNORED, 3
  field :POTENTIAL_POLICY_VIOLATION, 4
  field :NO_RELEVANT_CONTENT, 5
  field :JAIL_BREAKING_QUERY_IGNORED, 6
  field :CUSTOMER_POLICY_VIOLATION, 7
  field :NON_ANSWER_SEEKING_QUERY_IGNORED_V2, 8
  field :LOW_GROUNDED_ANSWER, 9
end

defmodule Google.Cloud.Discoveryengine.V1.Answer.Step.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :IN_PROGRESS, 1
  field :FAILED, 2
  field :SUCCEEDED, 3
end

defmodule Google.Cloud.Discoveryengine.V1.Answer.QueryUnderstandingInfo.QueryClassificationInfo.Type do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :TYPE_UNSPECIFIED, 0
  field :ADVERSARIAL_QUERY, 1
  field :NON_ANSWER_SEEKING_QUERY, 2
  field :JAIL_BREAKING_QUERY, 3
  field :NON_ANSWER_SEEKING_QUERY_V2, 4
end

defmodule Google.Cloud.Discoveryengine.V1.Answer.Citation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :start_index, 1, type: :int64, json_name: "startIndex"
  field :end_index, 2, type: :int64, json_name: "endIndex"
  field :sources, 3, repeated: true, type: Google.Cloud.Discoveryengine.V1.Answer.CitationSource
end

defmodule Google.Cloud.Discoveryengine.V1.Answer.CitationSource do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :reference_id, 1, type: :string, json_name: "referenceId"
end

defmodule Google.Cloud.Discoveryengine.V1.Answer.Reference.UnstructuredDocumentInfo.ChunkContent do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :content, 1, type: :string
  field :page_identifier, 2, type: :string, json_name: "pageIdentifier"
  field :relevance_score, 3, proto3_optional: true, type: :float, json_name: "relevanceScore"
end

defmodule Google.Cloud.Discoveryengine.V1.Answer.Reference.UnstructuredDocumentInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :document, 1, type: :string, deprecated: false
  field :uri, 2, type: :string
  field :title, 3, type: :string

  field :chunk_contents, 4,
    repeated: true,
    type: Google.Cloud.Discoveryengine.V1.Answer.Reference.UnstructuredDocumentInfo.ChunkContent,
    json_name: "chunkContents"

  field :struct_data, 5, type: Google.Protobuf.Struct, json_name: "structData"
end

defmodule Google.Cloud.Discoveryengine.V1.Answer.Reference.ChunkInfo.DocumentMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :document, 1, type: :string, deprecated: false
  field :uri, 2, type: :string
  field :title, 3, type: :string
  field :page_identifier, 4, type: :string, json_name: "pageIdentifier"
  field :struct_data, 5, type: Google.Protobuf.Struct, json_name: "structData"
end

defmodule Google.Cloud.Discoveryengine.V1.Answer.Reference.ChunkInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :chunk, 1, type: :string, deprecated: false
  field :content, 2, type: :string
  field :relevance_score, 3, proto3_optional: true, type: :float, json_name: "relevanceScore"

  field :document_metadata, 4,
    type: Google.Cloud.Discoveryengine.V1.Answer.Reference.ChunkInfo.DocumentMetadata,
    json_name: "documentMetadata"
end

defmodule Google.Cloud.Discoveryengine.V1.Answer.Reference.StructuredDocumentInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :document, 1, type: :string, deprecated: false
  field :struct_data, 2, type: Google.Protobuf.Struct, json_name: "structData"
end

defmodule Google.Cloud.Discoveryengine.V1.Answer.Reference do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  oneof :content, 0

  field :unstructured_document_info, 1,
    type: Google.Cloud.Discoveryengine.V1.Answer.Reference.UnstructuredDocumentInfo,
    json_name: "unstructuredDocumentInfo",
    oneof: 0

  field :chunk_info, 2,
    type: Google.Cloud.Discoveryengine.V1.Answer.Reference.ChunkInfo,
    json_name: "chunkInfo",
    oneof: 0

  field :structured_document_info, 3,
    type: Google.Cloud.Discoveryengine.V1.Answer.Reference.StructuredDocumentInfo,
    json_name: "structuredDocumentInfo",
    oneof: 0
end

defmodule Google.Cloud.Discoveryengine.V1.Answer.Step.Action.SearchAction do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :query, 1, type: :string
end

defmodule Google.Cloud.Discoveryengine.V1.Answer.Step.Action.Observation.SearchResult.SnippetInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :snippet, 1, type: :string
  field :snippet_status, 2, type: :string, json_name: "snippetStatus"
end

defmodule Google.Cloud.Discoveryengine.V1.Answer.Step.Action.Observation.SearchResult.ChunkInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :chunk, 1, type: :string
  field :content, 2, type: :string
  field :relevance_score, 3, proto3_optional: true, type: :float, json_name: "relevanceScore"
end

defmodule Google.Cloud.Discoveryengine.V1.Answer.Step.Action.Observation.SearchResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :document, 1, type: :string
  field :uri, 2, type: :string
  field :title, 3, type: :string

  field :snippet_info, 4,
    repeated: true,
    type: Google.Cloud.Discoveryengine.V1.Answer.Step.Action.Observation.SearchResult.SnippetInfo,
    json_name: "snippetInfo"

  field :chunk_info, 5,
    repeated: true,
    type: Google.Cloud.Discoveryengine.V1.Answer.Step.Action.Observation.SearchResult.ChunkInfo,
    json_name: "chunkInfo"

  field :struct_data, 6, type: Google.Protobuf.Struct, json_name: "structData"
end

defmodule Google.Cloud.Discoveryengine.V1.Answer.Step.Action.Observation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :search_results, 2,
    repeated: true,
    type: Google.Cloud.Discoveryengine.V1.Answer.Step.Action.Observation.SearchResult,
    json_name: "searchResults"
end

defmodule Google.Cloud.Discoveryengine.V1.Answer.Step.Action do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  oneof :action, 0

  field :search_action, 2,
    type: Google.Cloud.Discoveryengine.V1.Answer.Step.Action.SearchAction,
    json_name: "searchAction",
    oneof: 0

  field :observation, 3, type: Google.Cloud.Discoveryengine.V1.Answer.Step.Action.Observation
end

defmodule Google.Cloud.Discoveryengine.V1.Answer.Step do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :state, 1, type: Google.Cloud.Discoveryengine.V1.Answer.Step.State, enum: true
  field :description, 2, type: :string
  field :thought, 3, type: :string
  field :actions, 4, repeated: true, type: Google.Cloud.Discoveryengine.V1.Answer.Step.Action
end

defmodule Google.Cloud.Discoveryengine.V1.Answer.QueryUnderstandingInfo.QueryClassificationInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :type, 1,
    type:
      Google.Cloud.Discoveryengine.V1.Answer.QueryUnderstandingInfo.QueryClassificationInfo.Type,
    enum: true

  field :positive, 2, type: :bool
end

defmodule Google.Cloud.Discoveryengine.V1.Answer.QueryUnderstandingInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :query_classification_info, 1,
    repeated: true,
    type: Google.Cloud.Discoveryengine.V1.Answer.QueryUnderstandingInfo.QueryClassificationInfo,
    json_name: "queryClassificationInfo"
end

defmodule Google.Cloud.Discoveryengine.V1.Answer do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :state, 2, type: Google.Cloud.Discoveryengine.V1.Answer.State, enum: true
  field :answer_text, 3, type: :string, json_name: "answerText"
  field :citations, 4, repeated: true, type: Google.Cloud.Discoveryengine.V1.Answer.Citation
  field :references, 5, repeated: true, type: Google.Cloud.Discoveryengine.V1.Answer.Reference
  field :related_questions, 6, repeated: true, type: :string, json_name: "relatedQuestions"
  field :steps, 7, repeated: true, type: Google.Cloud.Discoveryengine.V1.Answer.Step

  field :query_understanding_info, 10,
    type: Google.Cloud.Discoveryengine.V1.Answer.QueryUnderstandingInfo,
    json_name: "queryUnderstandingInfo"

  field :answer_skipped_reasons, 11,
    repeated: true,
    type: Google.Cloud.Discoveryengine.V1.Answer.AnswerSkippedReason,
    json_name: "answerSkippedReasons",
    enum: true

  field :create_time, 8,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :complete_time, 9,
    type: Google.Protobuf.Timestamp,
    json_name: "completeTime",
    deprecated: false
end
