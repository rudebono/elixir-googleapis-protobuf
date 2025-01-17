defmodule Google.Cloud.Dialogflow.V2beta1.ConversationEvent.Type do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :TYPE_UNSPECIFIED, 0
  field :CONVERSATION_STARTED, 1
  field :CONVERSATION_FINISHED, 2
  field :HUMAN_INTERVENTION_NEEDED, 3
  field :NEW_MESSAGE, 5
  field :NEW_RECOGNITION_RESULT, 7
  field :UNRECOVERABLE_ERROR, 4
end

defmodule Google.Cloud.Dialogflow.V2beta1.ConversationEvent do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  oneof :payload, 0

  field :conversation, 1, type: :string
  field :type, 2, type: Google.Cloud.Dialogflow.V2beta1.ConversationEvent.Type, enum: true
  field :error_status, 3, type: Google.Rpc.Status, json_name: "errorStatus"

  field :new_message_payload, 4,
    type: Google.Cloud.Dialogflow.V2beta1.Message,
    json_name: "newMessagePayload",
    oneof: 0

  field :new_recognition_result_payload, 5,
    type: Google.Cloud.Dialogflow.V2beta1.StreamingRecognitionResult,
    json_name: "newRecognitionResultPayload",
    oneof: 0
end
