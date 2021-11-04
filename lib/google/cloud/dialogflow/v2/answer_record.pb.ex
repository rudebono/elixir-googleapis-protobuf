defmodule Google.Cloud.Dialogflow.V2.AnswerFeedback.CorrectnessLevel do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :CORRECTNESS_LEVEL_UNSPECIFIED
          | :NOT_CORRECT
          | :PARTIALLY_CORRECT
          | :FULLY_CORRECT

  field :CORRECTNESS_LEVEL_UNSPECIFIED, 0
  field :NOT_CORRECT, 1
  field :PARTIALLY_CORRECT, 2
  field :FULLY_CORRECT, 3
end

defmodule Google.Cloud.Dialogflow.V2.AgentAssistantFeedback.AnswerRelevance do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :ANSWER_RELEVANCE_UNSPECIFIED | :IRRELEVANT | :RELEVANT

  field :ANSWER_RELEVANCE_UNSPECIFIED, 0
  field :IRRELEVANT, 1
  field :RELEVANT, 2
end

defmodule Google.Cloud.Dialogflow.V2.AgentAssistantFeedback.DocumentCorrectness do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :DOCUMENT_CORRECTNESS_UNSPECIFIED | :INCORRECT | :CORRECT

  field :DOCUMENT_CORRECTNESS_UNSPECIFIED, 0
  field :INCORRECT, 1
  field :CORRECT, 2
end

defmodule Google.Cloud.Dialogflow.V2.AgentAssistantFeedback.DocumentEfficiency do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :DOCUMENT_EFFICIENCY_UNSPECIFIED | :INEFFICIENT | :EFFICIENT

  field :DOCUMENT_EFFICIENCY_UNSPECIFIED, 0
  field :INEFFICIENT, 1
  field :EFFICIENT, 2
end

defmodule Google.Cloud.Dialogflow.V2.AnswerRecord do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          record:
            {:agent_assistant_record, Google.Cloud.Dialogflow.V2.AgentAssistantRecord.t() | nil},
          name: String.t(),
          answer_feedback: Google.Cloud.Dialogflow.V2.AnswerFeedback.t() | nil
        }

  defstruct [:record, :name, :answer_feedback]

  oneof :record, 0

  field :name, 1, type: :string

  field :answer_feedback, 2,
    type: Google.Cloud.Dialogflow.V2.AnswerFeedback,
    json_name: "answerFeedback"

  field :agent_assistant_record, 4,
    type: Google.Cloud.Dialogflow.V2.AgentAssistantRecord,
    json_name: "agentAssistantRecord",
    oneof: 0

  def transform_module(), do: nil
end

defmodule Google.Cloud.Dialogflow.V2.ListAnswerRecordsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          filter: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct [:parent, :filter, :page_size, :page_token]

  field :parent, 1, type: :string
  field :filter, 2, type: :string
  field :page_size, 3, type: :int32, json_name: "pageSize"
  field :page_token, 4, type: :string, json_name: "pageToken"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Dialogflow.V2.ListAnswerRecordsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          answer_records: [Google.Cloud.Dialogflow.V2.AnswerRecord.t()],
          next_page_token: String.t()
        }

  defstruct [:answer_records, :next_page_token]

  field :answer_records, 1,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2.AnswerRecord,
    json_name: "answerRecords"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Dialogflow.V2.UpdateAnswerRecordRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          answer_record: Google.Cloud.Dialogflow.V2.AnswerRecord.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:answer_record, :update_mask]

  field :answer_record, 1,
    type: Google.Cloud.Dialogflow.V2.AnswerRecord,
    json_name: "answerRecord"

  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Dialogflow.V2.AnswerFeedback do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          detail_feedback:
            {:agent_assistant_detail_feedback,
             Google.Cloud.Dialogflow.V2.AgentAssistantFeedback.t() | nil},
          correctness_level: Google.Cloud.Dialogflow.V2.AnswerFeedback.CorrectnessLevel.t(),
          clicked: boolean,
          click_time: Google.Protobuf.Timestamp.t() | nil,
          displayed: boolean,
          display_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct [
    :detail_feedback,
    :correctness_level,
    :clicked,
    :click_time,
    :displayed,
    :display_time
  ]

  oneof :detail_feedback, 0

  field :correctness_level, 1,
    type: Google.Cloud.Dialogflow.V2.AnswerFeedback.CorrectnessLevel,
    enum: true,
    json_name: "correctnessLevel"

  field :agent_assistant_detail_feedback, 2,
    type: Google.Cloud.Dialogflow.V2.AgentAssistantFeedback,
    json_name: "agentAssistantDetailFeedback",
    oneof: 0

  field :clicked, 3, type: :bool
  field :click_time, 5, type: Google.Protobuf.Timestamp, json_name: "clickTime"
  field :displayed, 4, type: :bool
  field :display_time, 6, type: Google.Protobuf.Timestamp, json_name: "displayTime"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Dialogflow.V2.AgentAssistantFeedback do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          answer_relevance: Google.Cloud.Dialogflow.V2.AgentAssistantFeedback.AnswerRelevance.t(),
          document_correctness:
            Google.Cloud.Dialogflow.V2.AgentAssistantFeedback.DocumentCorrectness.t(),
          document_efficiency:
            Google.Cloud.Dialogflow.V2.AgentAssistantFeedback.DocumentEfficiency.t()
        }

  defstruct [:answer_relevance, :document_correctness, :document_efficiency]

  field :answer_relevance, 1,
    type: Google.Cloud.Dialogflow.V2.AgentAssistantFeedback.AnswerRelevance,
    enum: true,
    json_name: "answerRelevance"

  field :document_correctness, 2,
    type: Google.Cloud.Dialogflow.V2.AgentAssistantFeedback.DocumentCorrectness,
    enum: true,
    json_name: "documentCorrectness"

  field :document_efficiency, 3,
    type: Google.Cloud.Dialogflow.V2.AgentAssistantFeedback.DocumentEfficiency,
    enum: true,
    json_name: "documentEfficiency"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Dialogflow.V2.AgentAssistantRecord do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          answer:
            {:article_suggestion_answer, Google.Cloud.Dialogflow.V2.ArticleAnswer.t() | nil}
            | {:faq_answer, Google.Cloud.Dialogflow.V2.FaqAnswer.t() | nil}
        }

  defstruct [:answer]

  oneof :answer, 0

  field :article_suggestion_answer, 5,
    type: Google.Cloud.Dialogflow.V2.ArticleAnswer,
    json_name: "articleSuggestionAnswer",
    oneof: 0

  field :faq_answer, 6,
    type: Google.Cloud.Dialogflow.V2.FaqAnswer,
    json_name: "faqAnswer",
    oneof: 0

  def transform_module(), do: nil
end

defmodule Google.Cloud.Dialogflow.V2.AnswerRecords.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.dialogflow.v2.AnswerRecords"

  rpc :ListAnswerRecords,
      Google.Cloud.Dialogflow.V2.ListAnswerRecordsRequest,
      Google.Cloud.Dialogflow.V2.ListAnswerRecordsResponse

  rpc :UpdateAnswerRecord,
      Google.Cloud.Dialogflow.V2.UpdateAnswerRecordRequest,
      Google.Cloud.Dialogflow.V2.AnswerRecord
end

defmodule Google.Cloud.Dialogflow.V2.AnswerRecords.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Dialogflow.V2.AnswerRecords.Service
end
