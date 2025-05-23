defmodule Google.Cloud.Dialogflow.Cx.V3.ResponseMessage.ResponseType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :RESPONSE_TYPE_UNSPECIFIED, 0
  field :ENTRY_PROMPT, 1
  field :PARAMETER_PROMPT, 2
  field :HANDLER_PROMPT, 3
end

defmodule Google.Cloud.Dialogflow.Cx.V3.ResponseMessage.Text do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :text, 1, repeated: true, type: :string, deprecated: false

  field :allow_playback_interruption, 2,
    type: :bool,
    json_name: "allowPlaybackInterruption",
    deprecated: false
end

defmodule Google.Cloud.Dialogflow.Cx.V3.ResponseMessage.LiveAgentHandoff do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :metadata, 1, type: Google.Protobuf.Struct
end

defmodule Google.Cloud.Dialogflow.Cx.V3.ResponseMessage.ConversationSuccess do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :metadata, 1, type: Google.Protobuf.Struct
end

defmodule Google.Cloud.Dialogflow.Cx.V3.ResponseMessage.OutputAudioText do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :source, 0

  field :text, 1, type: :string, oneof: 0
  field :ssml, 2, type: :string, oneof: 0

  field :allow_playback_interruption, 3,
    type: :bool,
    json_name: "allowPlaybackInterruption",
    deprecated: false
end

defmodule Google.Cloud.Dialogflow.Cx.V3.ResponseMessage.EndInteraction do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3
end

defmodule Google.Cloud.Dialogflow.Cx.V3.ResponseMessage.PlayAudio do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :audio_uri, 1, type: :string, json_name: "audioUri", deprecated: false

  field :allow_playback_interruption, 2,
    type: :bool,
    json_name: "allowPlaybackInterruption",
    deprecated: false
end

defmodule Google.Cloud.Dialogflow.Cx.V3.ResponseMessage.MixedAudio.Segment do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :content, 0

  field :audio, 1, type: :bytes, oneof: 0
  field :uri, 2, type: :string, oneof: 0

  field :allow_playback_interruption, 3,
    type: :bool,
    json_name: "allowPlaybackInterruption",
    deprecated: false
end

defmodule Google.Cloud.Dialogflow.Cx.V3.ResponseMessage.MixedAudio do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :segments, 1,
    repeated: true,
    type: Google.Cloud.Dialogflow.Cx.V3.ResponseMessage.MixedAudio.Segment
end

defmodule Google.Cloud.Dialogflow.Cx.V3.ResponseMessage.TelephonyTransferCall do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :endpoint, 0

  field :phone_number, 1, type: :string, json_name: "phoneNumber", oneof: 0
end

defmodule Google.Cloud.Dialogflow.Cx.V3.ResponseMessage.KnowledgeInfoCard do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3
end

defmodule Google.Cloud.Dialogflow.Cx.V3.ResponseMessage do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :message, 0

  field :text, 1, type: Google.Cloud.Dialogflow.Cx.V3.ResponseMessage.Text, oneof: 0
  field :payload, 2, type: Google.Protobuf.Struct, oneof: 0

  field :conversation_success, 9,
    type: Google.Cloud.Dialogflow.Cx.V3.ResponseMessage.ConversationSuccess,
    json_name: "conversationSuccess",
    oneof: 0

  field :output_audio_text, 8,
    type: Google.Cloud.Dialogflow.Cx.V3.ResponseMessage.OutputAudioText,
    json_name: "outputAudioText",
    oneof: 0

  field :live_agent_handoff, 10,
    type: Google.Cloud.Dialogflow.Cx.V3.ResponseMessage.LiveAgentHandoff,
    json_name: "liveAgentHandoff",
    oneof: 0

  field :end_interaction, 11,
    type: Google.Cloud.Dialogflow.Cx.V3.ResponseMessage.EndInteraction,
    json_name: "endInteraction",
    oneof: 0,
    deprecated: false

  field :play_audio, 12,
    type: Google.Cloud.Dialogflow.Cx.V3.ResponseMessage.PlayAudio,
    json_name: "playAudio",
    oneof: 0

  field :mixed_audio, 13,
    type: Google.Cloud.Dialogflow.Cx.V3.ResponseMessage.MixedAudio,
    json_name: "mixedAudio",
    oneof: 0,
    deprecated: false

  field :telephony_transfer_call, 18,
    type: Google.Cloud.Dialogflow.Cx.V3.ResponseMessage.TelephonyTransferCall,
    json_name: "telephonyTransferCall",
    oneof: 0

  field :knowledge_info_card, 20,
    type: Google.Cloud.Dialogflow.Cx.V3.ResponseMessage.KnowledgeInfoCard,
    json_name: "knowledgeInfoCard",
    oneof: 0

  field :response_type, 4,
    type: Google.Cloud.Dialogflow.Cx.V3.ResponseMessage.ResponseType,
    json_name: "responseType",
    enum: true

  field :channel, 19, type: :string
end
