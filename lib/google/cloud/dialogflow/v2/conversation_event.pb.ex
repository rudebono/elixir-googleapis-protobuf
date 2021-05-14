defmodule Google.Cloud.Dialogflow.V2.ConversationEvent.Type do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :TYPE_UNSPECIFIED
          | :CONVERSATION_STARTED
          | :CONVERSATION_FINISHED
          | :HUMAN_INTERVENTION_NEEDED
          | :NEW_MESSAGE
          | :UNRECOVERABLE_ERROR

  field :TYPE_UNSPECIFIED, 0

  field :CONVERSATION_STARTED, 1

  field :CONVERSATION_FINISHED, 2

  field :HUMAN_INTERVENTION_NEEDED, 3

  field :NEW_MESSAGE, 5

  field :UNRECOVERABLE_ERROR, 4
end

defmodule Google.Cloud.Dialogflow.V2.ConversationEvent do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          payload: {atom, any},
          conversation: String.t(),
          type: Google.Cloud.Dialogflow.V2.ConversationEvent.Type.t(),
          error_status: Google.Rpc.Status.t() | nil
        }

  defstruct [:payload, :conversation, :type, :error_status]

  oneof :payload, 0
  field :conversation, 1, type: :string
  field :type, 2, type: Google.Cloud.Dialogflow.V2.ConversationEvent.Type, enum: true
  field :error_status, 3, type: Google.Rpc.Status
  field :new_message_payload, 4, type: Google.Cloud.Dialogflow.V2.Message, oneof: 0
end
