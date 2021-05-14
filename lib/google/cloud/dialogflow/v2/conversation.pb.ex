defmodule Google.Cloud.Dialogflow.V2.Conversation.LifecycleState do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :LIFECYCLE_STATE_UNSPECIFIED | :IN_PROGRESS | :COMPLETED

  field :LIFECYCLE_STATE_UNSPECIFIED, 0

  field :IN_PROGRESS, 1

  field :COMPLETED, 2
end

defmodule Google.Cloud.Dialogflow.V2.Conversation.ConversationStage do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer | :CONVERSATION_STAGE_UNSPECIFIED | :VIRTUAL_AGENT_STAGE | :HUMAN_ASSIST_STAGE

  field :CONVERSATION_STAGE_UNSPECIFIED, 0

  field :VIRTUAL_AGENT_STAGE, 1

  field :HUMAN_ASSIST_STAGE, 2
end

defmodule Google.Cloud.Dialogflow.V2.Conversation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          lifecycle_state: Google.Cloud.Dialogflow.V2.Conversation.LifecycleState.t(),
          conversation_profile: String.t(),
          phone_number: Google.Cloud.Dialogflow.V2.ConversationPhoneNumber.t() | nil,
          start_time: Google.Protobuf.Timestamp.t() | nil,
          end_time: Google.Protobuf.Timestamp.t() | nil,
          conversation_stage: Google.Cloud.Dialogflow.V2.Conversation.ConversationStage.t()
        }

  defstruct [
    :name,
    :lifecycle_state,
    :conversation_profile,
    :phone_number,
    :start_time,
    :end_time,
    :conversation_stage
  ]

  field :name, 1, type: :string

  field :lifecycle_state, 2,
    type: Google.Cloud.Dialogflow.V2.Conversation.LifecycleState,
    enum: true

  field :conversation_profile, 3, type: :string
  field :phone_number, 4, type: Google.Cloud.Dialogflow.V2.ConversationPhoneNumber
  field :start_time, 5, type: Google.Protobuf.Timestamp
  field :end_time, 6, type: Google.Protobuf.Timestamp

  field :conversation_stage, 7,
    type: Google.Cloud.Dialogflow.V2.Conversation.ConversationStage,
    enum: true
end

defmodule Google.Cloud.Dialogflow.V2.CreateConversationRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          conversation: Google.Cloud.Dialogflow.V2.Conversation.t() | nil,
          conversation_id: String.t()
        }

  defstruct [:parent, :conversation, :conversation_id]

  field :parent, 1, type: :string
  field :conversation, 2, type: Google.Cloud.Dialogflow.V2.Conversation
  field :conversation_id, 3, type: :string
end

defmodule Google.Cloud.Dialogflow.V2.ListConversationsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t(),
          filter: String.t()
        }

  defstruct [:parent, :page_size, :page_token, :filter]

  field :parent, 1, type: :string
  field :page_size, 2, type: :int32
  field :page_token, 3, type: :string
  field :filter, 4, type: :string
end

defmodule Google.Cloud.Dialogflow.V2.ListConversationsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          conversations: [Google.Cloud.Dialogflow.V2.Conversation.t()],
          next_page_token: String.t()
        }

  defstruct [:conversations, :next_page_token]

  field :conversations, 1, repeated: true, type: Google.Cloud.Dialogflow.V2.Conversation
  field :next_page_token, 2, type: :string
end

defmodule Google.Cloud.Dialogflow.V2.GetConversationRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Dialogflow.V2.CompleteConversationRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Dialogflow.V2.ListMessagesRequest do
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
  field :filter, 4, type: :string
  field :page_size, 2, type: :int32
  field :page_token, 3, type: :string
end

defmodule Google.Cloud.Dialogflow.V2.ListMessagesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          messages: [Google.Cloud.Dialogflow.V2.Message.t()],
          next_page_token: String.t()
        }

  defstruct [:messages, :next_page_token]

  field :messages, 1, repeated: true, type: Google.Cloud.Dialogflow.V2.Message
  field :next_page_token, 2, type: :string
end

defmodule Google.Cloud.Dialogflow.V2.ConversationPhoneNumber do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          phone_number: String.t()
        }

  defstruct [:phone_number]

  field :phone_number, 3, type: :string
end
