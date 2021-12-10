defmodule Google.Cloud.Dialogflow.V2beta1.Conversation.LifecycleState do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :LIFECYCLE_STATE_UNSPECIFIED | :IN_PROGRESS | :COMPLETED

  field :LIFECYCLE_STATE_UNSPECIFIED, 0
  field :IN_PROGRESS, 1
  field :COMPLETED, 2
end
defmodule Google.Cloud.Dialogflow.V2beta1.Conversation.ConversationStage do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer | :CONVERSATION_STAGE_UNSPECIFIED | :VIRTUAL_AGENT_STAGE | :HUMAN_ASSIST_STAGE

  field :CONVERSATION_STAGE_UNSPECIFIED, 0
  field :VIRTUAL_AGENT_STAGE, 1
  field :HUMAN_ASSIST_STAGE, 2
end
defmodule Google.Cloud.Dialogflow.V2beta1.Conversation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          lifecycle_state: Google.Cloud.Dialogflow.V2beta1.Conversation.LifecycleState.t(),
          conversation_profile: String.t(),
          phone_number: Google.Cloud.Dialogflow.V2beta1.ConversationPhoneNumber.t() | nil,
          conversation_stage: Google.Cloud.Dialogflow.V2beta1.Conversation.ConversationStage.t(),
          start_time: Google.Protobuf.Timestamp.t() | nil,
          end_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct name: "",
            lifecycle_state: :LIFECYCLE_STATE_UNSPECIFIED,
            conversation_profile: "",
            phone_number: nil,
            conversation_stage: :CONVERSATION_STAGE_UNSPECIFIED,
            start_time: nil,
            end_time: nil

  field :name, 1, type: :string, deprecated: false

  field :lifecycle_state, 2,
    type: Google.Cloud.Dialogflow.V2beta1.Conversation.LifecycleState,
    json_name: "lifecycleState",
    enum: true,
    deprecated: false

  field :conversation_profile, 3,
    type: :string,
    json_name: "conversationProfile",
    deprecated: false

  field :phone_number, 4,
    type: Google.Cloud.Dialogflow.V2beta1.ConversationPhoneNumber,
    json_name: "phoneNumber",
    deprecated: false

  field :conversation_stage, 7,
    type: Google.Cloud.Dialogflow.V2beta1.Conversation.ConversationStage,
    json_name: "conversationStage",
    enum: true

  field :start_time, 5, type: Google.Protobuf.Timestamp, json_name: "startTime", deprecated: false
  field :end_time, 6, type: Google.Protobuf.Timestamp, json_name: "endTime", deprecated: false
end
defmodule Google.Cloud.Dialogflow.V2beta1.ConversationPhoneNumber do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          phone_number: String.t()
        }

  defstruct phone_number: ""

  field :phone_number, 3, type: :string, json_name: "phoneNumber", deprecated: false
end
defmodule Google.Cloud.Dialogflow.V2beta1.CreateConversationRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          conversation: Google.Cloud.Dialogflow.V2beta1.Conversation.t() | nil,
          conversation_id: String.t()
        }

  defstruct parent: "",
            conversation: nil,
            conversation_id: ""

  field :parent, 1, type: :string, deprecated: false
  field :conversation, 2, type: Google.Cloud.Dialogflow.V2beta1.Conversation, deprecated: false
  field :conversation_id, 3, type: :string, json_name: "conversationId", deprecated: false
end
defmodule Google.Cloud.Dialogflow.V2beta1.ListConversationsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t(),
          filter: String.t()
        }

  defstruct parent: "",
            page_size: 0,
            page_token: "",
            filter: ""

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
end
defmodule Google.Cloud.Dialogflow.V2beta1.ListConversationsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          conversations: [Google.Cloud.Dialogflow.V2beta1.Conversation.t()],
          next_page_token: String.t()
        }

  defstruct conversations: [],
            next_page_token: ""

  field :conversations, 1, repeated: true, type: Google.Cloud.Dialogflow.V2beta1.Conversation
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Google.Cloud.Dialogflow.V2beta1.GetConversationRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Dialogflow.V2beta1.CompleteConversationRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Dialogflow.V2beta1.CreateMessageRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          message: Google.Cloud.Dialogflow.V2beta1.Message.t() | nil
        }

  defstruct parent: "",
            message: nil

  field :parent, 1, type: :string, deprecated: false
  field :message, 2, type: Google.Cloud.Dialogflow.V2beta1.Message, deprecated: false
end
defmodule Google.Cloud.Dialogflow.V2beta1.BatchCreateMessagesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          requests: [Google.Cloud.Dialogflow.V2beta1.CreateMessageRequest.t()]
        }

  defstruct parent: "",
            requests: []

  field :parent, 1, type: :string, deprecated: false

  field :requests, 2,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2beta1.CreateMessageRequest,
    deprecated: false
end
defmodule Google.Cloud.Dialogflow.V2beta1.BatchCreateMessagesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          messages: [Google.Cloud.Dialogflow.V2beta1.Message.t()]
        }

  defstruct messages: []

  field :messages, 1, repeated: true, type: Google.Cloud.Dialogflow.V2beta1.Message
end
defmodule Google.Cloud.Dialogflow.V2beta1.ListMessagesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          filter: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct parent: "",
            filter: "",
            page_size: 0,
            page_token: ""

  field :parent, 1, type: :string, deprecated: false
  field :filter, 4, type: :string
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end
defmodule Google.Cloud.Dialogflow.V2beta1.ListMessagesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          messages: [Google.Cloud.Dialogflow.V2beta1.Message.t()],
          next_page_token: String.t()
        }

  defstruct messages: [],
            next_page_token: ""

  field :messages, 1, repeated: true, type: Google.Cloud.Dialogflow.V2beta1.Message
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Google.Cloud.Dialogflow.V2beta1.Conversations.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.dialogflow.v2beta1.Conversations"

  rpc :CreateConversation,
      Google.Cloud.Dialogflow.V2beta1.CreateConversationRequest,
      Google.Cloud.Dialogflow.V2beta1.Conversation

  rpc :ListConversations,
      Google.Cloud.Dialogflow.V2beta1.ListConversationsRequest,
      Google.Cloud.Dialogflow.V2beta1.ListConversationsResponse

  rpc :GetConversation,
      Google.Cloud.Dialogflow.V2beta1.GetConversationRequest,
      Google.Cloud.Dialogflow.V2beta1.Conversation

  rpc :CompleteConversation,
      Google.Cloud.Dialogflow.V2beta1.CompleteConversationRequest,
      Google.Cloud.Dialogflow.V2beta1.Conversation

  rpc :BatchCreateMessages,
      Google.Cloud.Dialogflow.V2beta1.BatchCreateMessagesRequest,
      Google.Cloud.Dialogflow.V2beta1.BatchCreateMessagesResponse

  rpc :ListMessages,
      Google.Cloud.Dialogflow.V2beta1.ListMessagesRequest,
      Google.Cloud.Dialogflow.V2beta1.ListMessagesResponse
end

defmodule Google.Cloud.Dialogflow.V2beta1.Conversations.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Dialogflow.V2beta1.Conversations.Service
end
