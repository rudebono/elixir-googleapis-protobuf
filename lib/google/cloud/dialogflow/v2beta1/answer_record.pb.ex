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
          record: {atom, any},
          name: String.t(),
          answer_feedback: Google.Cloud.Dialogflow.V2beta1.AnswerFeedback.t() | nil
        }

  defstruct [:record, :name, :answer_feedback]

  oneof :record, 0
  field :name, 1, type: :string
  field :answer_feedback, 3, type: Google.Cloud.Dialogflow.V2beta1.AnswerFeedback

  field :agent_assistant_record, 4,
    type: Google.Cloud.Dialogflow.V2beta1.AgentAssistantRecord,
    oneof: 0
end

defmodule Google.Cloud.Dialogflow.V2beta1.AgentAssistantRecord do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          answer: {atom, any}
        }

  defstruct [:answer]

  oneof :answer, 0

  field :article_suggestion_answer, 5,
    type: Google.Cloud.Dialogflow.V2beta1.ArticleAnswer,
    oneof: 0

  field :faq_answer, 6, type: Google.Cloud.Dialogflow.V2beta1.FaqAnswer, oneof: 0
end

defmodule Google.Cloud.Dialogflow.V2beta1.AnswerFeedback do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          detail_feedback: {atom, any},
          correctness_level: Google.Cloud.Dialogflow.V2beta1.AnswerFeedback.CorrectnessLevel.t(),
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
    type: Google.Cloud.Dialogflow.V2beta1.AnswerFeedback.CorrectnessLevel,
    enum: true

  field :agent_assistant_detail_feedback, 2,
    type: Google.Cloud.Dialogflow.V2beta1.AgentAssistantFeedback,
    oneof: 0

  field :clicked, 3, type: :bool
  field :click_time, 5, type: Google.Protobuf.Timestamp
  field :displayed, 4, type: :bool
  field :display_time, 6, type: Google.Protobuf.Timestamp
end

defmodule Google.Cloud.Dialogflow.V2beta1.AgentAssistantFeedback.SummarizationFeedback do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          start_timestamp: Google.Protobuf.Timestamp.t() | nil,
          submit_timestamp: Google.Protobuf.Timestamp.t() | nil,
          summary_text: String.t()
        }

  defstruct [:start_timestamp, :submit_timestamp, :summary_text]

  field :start_timestamp, 1, type: Google.Protobuf.Timestamp
  field :submit_timestamp, 2, type: Google.Protobuf.Timestamp
  field :summary_text, 3, type: :string
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

  defstruct [
    :answer_relevance,
    :document_correctness,
    :document_efficiency,
    :summarization_feedback
  ]

  field :answer_relevance, 1,
    type: Google.Cloud.Dialogflow.V2beta1.AgentAssistantFeedback.AnswerRelevance,
    enum: true

  field :document_correctness, 2,
    type: Google.Cloud.Dialogflow.V2beta1.AgentAssistantFeedback.DocumentCorrectness,
    enum: true

  field :document_efficiency, 3,
    type: Google.Cloud.Dialogflow.V2beta1.AgentAssistantFeedback.DocumentEfficiency,
    enum: true

  field :summarization_feedback, 4,
    type: Google.Cloud.Dialogflow.V2beta1.AgentAssistantFeedback.SummarizationFeedback
end

defmodule Google.Cloud.Dialogflow.V2beta1.GetAnswerRecordRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

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

  defstruct [:parent, :page_size, :page_token]

  field :parent, 1, type: :string
  field :page_size, 3, type: :int32
  field :page_token, 4, type: :string
end

defmodule Google.Cloud.Dialogflow.V2beta1.ListAnswerRecordsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          answer_records: [Google.Cloud.Dialogflow.V2beta1.AnswerRecord.t()],
          next_page_token: String.t()
        }

  defstruct [:answer_records, :next_page_token]

  field :answer_records, 1, repeated: true, type: Google.Cloud.Dialogflow.V2beta1.AnswerRecord
  field :next_page_token, 2, type: :string
end

defmodule Google.Cloud.Dialogflow.V2beta1.UpdateAnswerRecordRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          answer_record: Google.Cloud.Dialogflow.V2beta1.AnswerRecord.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:answer_record, :update_mask]

  field :answer_record, 1, type: Google.Cloud.Dialogflow.V2beta1.AnswerRecord
  field :update_mask, 2, type: Google.Protobuf.FieldMask
end
