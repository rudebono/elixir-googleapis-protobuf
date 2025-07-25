defmodule Google.Cloud.Discoveryengine.V1.AssistAnswer.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :IN_PROGRESS, 1
  field :FAILED, 2
  field :SUCCEEDED, 3
  field :SKIPPED, 4
end

defmodule Google.Cloud.Discoveryengine.V1.AssistAnswer.AssistSkippedReason do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :ASSIST_SKIPPED_REASON_UNSPECIFIED, 0
  field :NON_ASSIST_SEEKING_QUERY_IGNORED, 1
  field :CUSTOMER_POLICY_VIOLATION, 2
end

defmodule Google.Cloud.Discoveryengine.V1.AssistantContent.CodeExecutionResult.Outcome do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :OUTCOME_UNSPECIFIED, 0
  field :OUTCOME_OK, 1
  field :OUTCOME_FAILED, 2
  field :OUTCOME_DEADLINE_EXCEEDED, 3
end

defmodule Google.Cloud.Discoveryengine.V1.AssistAnswer.Reply do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :reply, 0

  field :grounded_content, 1,
    type: Google.Cloud.Discoveryengine.V1.AssistantGroundedContent,
    json_name: "groundedContent",
    oneof: 0
end

defmodule Google.Cloud.Discoveryengine.V1.AssistAnswer do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :state, 2, type: Google.Cloud.Discoveryengine.V1.AssistAnswer.State, enum: true
  field :replies, 3, repeated: true, type: Google.Cloud.Discoveryengine.V1.AssistAnswer.Reply

  field :assist_skipped_reasons, 5,
    repeated: true,
    type: Google.Cloud.Discoveryengine.V1.AssistAnswer.AssistSkippedReason,
    json_name: "assistSkippedReasons",
    enum: true
end

defmodule Google.Cloud.Discoveryengine.V1.AssistantContent.Blob do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :mime_type, 1, type: :string, json_name: "mimeType", deprecated: false
  field :data, 2, type: :bytes, deprecated: false
end

defmodule Google.Cloud.Discoveryengine.V1.AssistantContent.File do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :mime_type, 1, type: :string, json_name: "mimeType", deprecated: false
  field :file_id, 2, type: :string, json_name: "fileId", deprecated: false
end

defmodule Google.Cloud.Discoveryengine.V1.AssistantContent.ExecutableCode do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :code, 2, type: :string, deprecated: false
end

defmodule Google.Cloud.Discoveryengine.V1.AssistantContent.CodeExecutionResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :outcome, 1,
    type: Google.Cloud.Discoveryengine.V1.AssistantContent.CodeExecutionResult.Outcome,
    enum: true,
    deprecated: false

  field :output, 2, type: :string, deprecated: false
end

defmodule Google.Cloud.Discoveryengine.V1.AssistantContent do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :data, 0

  field :text, 2, type: :string, oneof: 0

  field :inline_data, 3,
    type: Google.Cloud.Discoveryengine.V1.AssistantContent.Blob,
    json_name: "inlineData",
    oneof: 0

  field :file, 4, type: Google.Cloud.Discoveryengine.V1.AssistantContent.File, oneof: 0

  field :executable_code, 7,
    type: Google.Cloud.Discoveryengine.V1.AssistantContent.ExecutableCode,
    json_name: "executableCode",
    oneof: 0

  field :code_execution_result, 8,
    type: Google.Cloud.Discoveryengine.V1.AssistantContent.CodeExecutionResult,
    json_name: "codeExecutionResult",
    oneof: 0

  field :role, 1, type: :string
  field :thought, 6, type: :bool, deprecated: false
end

defmodule Google.Cloud.Discoveryengine.V1.AssistantGroundedContent.TextGroundingMetadata.Segment do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :start_index, 1, type: :int64, json_name: "startIndex"
  field :end_index, 2, type: :int64, json_name: "endIndex"
  field :reference_indices, 4, repeated: true, type: :int32, json_name: "referenceIndices"
  field :grounding_score, 5, type: :float, json_name: "groundingScore"
  field :text, 6, type: :string
end

defmodule Google.Cloud.Discoveryengine.V1.AssistantGroundedContent.TextGroundingMetadata.Reference.DocumentMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :document, 1, proto3_optional: true, type: :string, deprecated: false
  field :uri, 2, proto3_optional: true, type: :string
  field :title, 3, proto3_optional: true, type: :string
  field :page_identifier, 4, proto3_optional: true, type: :string, json_name: "pageIdentifier"
  field :domain, 5, proto3_optional: true, type: :string
end

defmodule Google.Cloud.Discoveryengine.V1.AssistantGroundedContent.TextGroundingMetadata.Reference do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :content, 1, type: :string

  field :document_metadata, 2,
    type:
      Google.Cloud.Discoveryengine.V1.AssistantGroundedContent.TextGroundingMetadata.Reference.DocumentMetadata,
    json_name: "documentMetadata"
end

defmodule Google.Cloud.Discoveryengine.V1.AssistantGroundedContent.TextGroundingMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :segments, 4,
    repeated: true,
    type: Google.Cloud.Discoveryengine.V1.AssistantGroundedContent.TextGroundingMetadata.Segment

  field :references, 2,
    repeated: true,
    type: Google.Cloud.Discoveryengine.V1.AssistantGroundedContent.TextGroundingMetadata.Reference
end

defmodule Google.Cloud.Discoveryengine.V1.AssistantGroundedContent do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :metadata, 0

  field :text_grounding_metadata, 3,
    type: Google.Cloud.Discoveryengine.V1.AssistantGroundedContent.TextGroundingMetadata,
    json_name: "textGroundingMetadata",
    oneof: 0

  field :content, 1, type: Google.Cloud.Discoveryengine.V1.AssistantContent
end
