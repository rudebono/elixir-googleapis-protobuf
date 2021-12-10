defmodule Google.Cloud.Dialogflow.V2beta1.AnswerFeedback.CorrectnessLevel do
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
defmodule Google.Cloud.Dialogflow.V2beta1.AgentAssistantFeedback.AnswerRelevance do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :ANSWER_RELEVANCE_UNSPECIFIED | :IRRELEVANT | :RELEVANT

  field :ANSWER_RELEVANCE_UNSPECIFIED, 0
  field :IRRELEVANT, 1
  field :RELEVANT, 2
end
defmodule Google.Cloud.Dialogflow.V2beta1.AgentAssistantFeedback.DocumentCorrectness do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :DOCUMENT_CORRECTNESS_UNSPECIFIED | :INCORRECT | :CORRECT

  field :DOCUMENT_CORRECTNESS_UNSPECIFIED, 0
  field :INCORRECT, 1
  field :CORRECT, 2
end
defmodule Google.Cloud.Dialogflow.V2beta1.AgentAssistantFeedback.DocumentEfficiency do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :DOCUMENT_EFFICIENCY_UNSPECIFIED | :INEFFICIENT | :EFFICIENT

  field :DOCUMENT_EFFICIENCY_UNSPECIFIED, 0
  field :INEFFICIENT, 1
  field :EFFICIENT, 2
end
defmodule Google.Cloud.Dialogflow.V2beta1.AnswerRecord do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          record:
            {:agent_assistant_record,
             Google.Cloud.Dialogflow.V2beta1.AgentAssistantRecord.t() | nil},
          name: String.t(),
          answer_feedback: Google.Cloud.Dialogflow.V2beta1.AnswerFeedback.t() | nil
        }

  defstruct record: nil,
            name: "",
            answer_feedback: nil

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          answer:
            {:article_suggestion_answer, Google.Cloud.Dialogflow.V2beta1.ArticleAnswer.t() | nil}
            | {:faq_answer, Google.Cloud.Dialogflow.V2beta1.FaqAnswer.t() | nil}
        }

  defstruct answer: nil

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
end
defmodule Google.Cloud.Dialogflow.V2beta1.AnswerFeedback do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          detail_feedback:
            {:agent_assistant_detail_feedback,
             Google.Cloud.Dialogflow.V2beta1.AgentAssistantFeedback.t() | nil},
          correctness_level: Google.Cloud.Dialogflow.V2beta1.AnswerFeedback.CorrectnessLevel.t(),
          clicked: boolean,
          click_time: Google.Protobuf.Timestamp.t() | nil,
          displayed: boolean,
          display_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct detail_feedback: nil,
            correctness_level: :CORRECTNESS_LEVEL_UNSPECIFIED,
            clicked: false,
            click_time: nil,
            displayed: false,
            display_time: nil

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          start_timestamp: Google.Protobuf.Timestamp.t() | nil,
          submit_timestamp: Google.Protobuf.Timestamp.t() | nil,
          summary_text: String.t()
        }

  defstruct start_timestamp: nil,
            submit_timestamp: nil,
            summary_text: ""

  field :start_timestamp, 1, type: Google.Protobuf.Timestamp, json_name: "startTimestamp"
  field :submit_timestamp, 2, type: Google.Protobuf.Timestamp, json_name: "submitTimestamp"
  field :summary_text, 3, type: :string, json_name: "summaryText"
end
defmodule Google.Cloud.Dialogflow.V2beta1.AgentAssistantFeedback do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          answer_relevance:
            Google.Cloud.Dialogflow.V2beta1.AgentAssistantFeedback.AnswerRelevance.t(),
          document_correctness:
            Google.Cloud.Dialogflow.V2beta1.AgentAssistantFeedback.DocumentCorrectness.t(),
          document_efficiency:
            Google.Cloud.Dialogflow.V2beta1.AgentAssistantFeedback.DocumentEfficiency.t(),
          summarization_feedback:
            Google.Cloud.Dialogflow.V2beta1.AgentAssistantFeedback.SummarizationFeedback.t() | nil
        }

  defstruct answer_relevance: :ANSWER_RELEVANCE_UNSPECIFIED,
            document_correctness: :DOCUMENT_CORRECTNESS_UNSPECIFIED,
            document_efficiency: :DOCUMENT_EFFICIENCY_UNSPECIFIED,
            summarization_feedback: nil

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
end
defmodule Google.Cloud.Dialogflow.V2beta1.GetAnswerRecordRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string
end
defmodule Google.Cloud.Dialogflow.V2beta1.ListAnswerRecordsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct parent: "",
            page_size: 0,
            page_token: ""

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 3, type: :int32, json_name: "pageSize"
  field :page_token, 4, type: :string, json_name: "pageToken"
end
defmodule Google.Cloud.Dialogflow.V2beta1.ListAnswerRecordsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          answer_records: [Google.Cloud.Dialogflow.V2beta1.AnswerRecord.t()],
          next_page_token: String.t()
        }

  defstruct answer_records: [],
            next_page_token: ""

  field :answer_records, 1,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2beta1.AnswerRecord,
    json_name: "answerRecords"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Google.Cloud.Dialogflow.V2beta1.UpdateAnswerRecordRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          answer_record: Google.Cloud.Dialogflow.V2beta1.AnswerRecord.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct answer_record: nil,
            update_mask: nil

  field :answer_record, 1,
    type: Google.Cloud.Dialogflow.V2beta1.AnswerRecord,
    json_name: "answerRecord",
    deprecated: false

  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end
defmodule Google.Cloud.Dialogflow.V2beta1.AnswerRecords.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.dialogflow.v2beta1.AnswerRecords"

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
