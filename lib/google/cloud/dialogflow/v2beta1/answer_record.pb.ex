defmodule Google.Cloud.Dialogflow.V2beta1.AnswerFeedback.CorrectnessLevel do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :CORRECTNESS_LEVEL_UNSPECIFIED, 0
  field :NOT_CORRECT, 1
  field :PARTIALLY_CORRECT, 2
  field :FULLY_CORRECT, 3
end

defmodule Google.Cloud.Dialogflow.V2beta1.AgentAssistantFeedback.AnswerRelevance do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :ANSWER_RELEVANCE_UNSPECIFIED, 0
  field :IRRELEVANT, 1
  field :RELEVANT, 2
end

defmodule Google.Cloud.Dialogflow.V2beta1.AgentAssistantFeedback.DocumentCorrectness do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :DOCUMENT_CORRECTNESS_UNSPECIFIED, 0
  field :INCORRECT, 1
  field :CORRECT, 2
end

defmodule Google.Cloud.Dialogflow.V2beta1.AgentAssistantFeedback.DocumentEfficiency do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :DOCUMENT_EFFICIENCY_UNSPECIFIED, 0
  field :INEFFICIENT, 1
  field :EFFICIENT, 2
end

defmodule Google.Cloud.Dialogflow.V2beta1.AnswerRecord do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :record, 0

  field :name, 1, type: :string

  field :answer_feedback, 3,
    type: Google.Cloud.Dialogflow.V2beta1.AnswerFeedback,
    json_name: "answerFeedback"

  field :agent_assistant_record, 4,
    type: Google.Cloud.Dialogflow.V2beta1.AgentAssistantRecord,
    json_name: "agentAssistantRecord",
    oneof: 0
end

defmodule Google.Cloud.Dialogflow.V2beta1.AgentAssistantRecord do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :answer, 0

  field :article_suggestion_answer, 5,
    type: Google.Cloud.Dialogflow.V2beta1.ArticleAnswer,
    json_name: "articleSuggestionAnswer",
    oneof: 0,
    deprecated: false

  field :faq_answer, 6,
    type: Google.Cloud.Dialogflow.V2beta1.FaqAnswer,
    json_name: "faqAnswer",
    oneof: 0,
    deprecated: false

  field :dialogflow_assist_answer, 7,
    type: Google.Cloud.Dialogflow.V2beta1.DialogflowAssistAnswer,
    json_name: "dialogflowAssistAnswer",
    oneof: 0,
    deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2beta1.AnswerFeedback do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :detail_feedback, 0

  field :correctness_level, 1,
    type: Google.Cloud.Dialogflow.V2beta1.AnswerFeedback.CorrectnessLevel,
    json_name: "correctnessLevel",
    enum: true

  field :agent_assistant_detail_feedback, 2,
    type: Google.Cloud.Dialogflow.V2beta1.AgentAssistantFeedback,
    json_name: "agentAssistantDetailFeedback",
    oneof: 0

  field :clicked, 3, type: :bool
  field :click_time, 5, type: Google.Protobuf.Timestamp, json_name: "clickTime"
  field :displayed, 4, type: :bool
  field :display_time, 6, type: Google.Protobuf.Timestamp, json_name: "displayTime"
end

defmodule Google.Cloud.Dialogflow.V2beta1.AgentAssistantFeedback.SummarizationFeedback do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :start_timestamp, 1, type: Google.Protobuf.Timestamp, json_name: "startTimestamp"
  field :submit_timestamp, 2, type: Google.Protobuf.Timestamp, json_name: "submitTimestamp"
  field :summary_text, 3, type: :string, json_name: "summaryText"
end

defmodule Google.Cloud.Dialogflow.V2beta1.AgentAssistantFeedback.KnowledgeSearchFeedback do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :answer_copied, 1, type: :bool, json_name: "answerCopied"
  field :clicked_uris, 2, repeated: true, type: :string, json_name: "clickedUris"
end

defmodule Google.Cloud.Dialogflow.V2beta1.AgentAssistantFeedback do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :answer_relevance, 1,
    type: Google.Cloud.Dialogflow.V2beta1.AgentAssistantFeedback.AnswerRelevance,
    json_name: "answerRelevance",
    enum: true

  field :document_correctness, 2,
    type: Google.Cloud.Dialogflow.V2beta1.AgentAssistantFeedback.DocumentCorrectness,
    json_name: "documentCorrectness",
    enum: true

  field :document_efficiency, 3,
    type: Google.Cloud.Dialogflow.V2beta1.AgentAssistantFeedback.DocumentEfficiency,
    json_name: "documentEfficiency",
    enum: true

  field :summarization_feedback, 4,
    type: Google.Cloud.Dialogflow.V2beta1.AgentAssistantFeedback.SummarizationFeedback,
    json_name: "summarizationFeedback"

  field :knowledge_search_feedback, 5,
    type: Google.Cloud.Dialogflow.V2beta1.AgentAssistantFeedback.KnowledgeSearchFeedback,
    json_name: "knowledgeSearchFeedback",
    deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2beta1.GetAnswerRecordRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string
end

defmodule Google.Cloud.Dialogflow.V2beta1.ListAnswerRecordsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :filter, 2, type: :string, deprecated: true
  field :page_size, 3, type: :int32, json_name: "pageSize"
  field :page_token, 4, type: :string, json_name: "pageToken"
end

defmodule Google.Cloud.Dialogflow.V2beta1.ListAnswerRecordsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :answer_records, 1,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2beta1.AnswerRecord,
    json_name: "answerRecords"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Dialogflow.V2beta1.UpdateAnswerRecordRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :answer_record, 1,
    type: Google.Cloud.Dialogflow.V2beta1.AnswerRecord,
    json_name: "answerRecord",
    deprecated: false

  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end

defmodule Google.Cloud.Dialogflow.V2beta1.AnswerRecords.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.dialogflow.v2beta1.AnswerRecords",
    protoc_gen_elixir_version: "0.12.0"

  rpc :GetAnswerRecord,
      Google.Cloud.Dialogflow.V2beta1.GetAnswerRecordRequest,
      Google.Cloud.Dialogflow.V2beta1.AnswerRecord

  rpc :ListAnswerRecords,
      Google.Cloud.Dialogflow.V2beta1.ListAnswerRecordsRequest,
      Google.Cloud.Dialogflow.V2beta1.ListAnswerRecordsResponse

  rpc :UpdateAnswerRecord,
      Google.Cloud.Dialogflow.V2beta1.UpdateAnswerRecordRequest,
      Google.Cloud.Dialogflow.V2beta1.AnswerRecord
end

defmodule Google.Cloud.Dialogflow.V2beta1.AnswerRecords.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Dialogflow.V2beta1.AnswerRecords.Service
end