defmodule Google.Cloud.Dialogflow.Cx.V3.ResponseMessage.Text do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          text: [String.t()],
          allow_playback_interruption: boolean
        }

  defstruct text: [],
            allow_playback_interruption: false

  field :text, 1, repeated: true, type: :string, deprecated: false

  field :allow_playback_interruption, 2,
    type: :bool,
    json_name: "allowPlaybackInterruption",
    deprecated: false
end
defmodule Google.Cloud.Dialogflow.Cx.V3.ResponseMessage.LiveAgentHandoff do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          metadata: Google.Protobuf.Struct.t() | nil
        }

  defstruct metadata: nil

  field :metadata, 1, type: Google.Protobuf.Struct
end
defmodule Google.Cloud.Dialogflow.Cx.V3.ResponseMessage.ConversationSuccess do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          metadata: Google.Protobuf.Struct.t() | nil
        }

  defstruct metadata: nil

  field :metadata, 1, type: Google.Protobuf.Struct
end
defmodule Google.Cloud.Dialogflow.Cx.V3.ResponseMessage.OutputAudioText do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          source: {:text, String.t()} | {:ssml, String.t()},
          allow_playback_interruption: boolean
        }

  defstruct source: nil,
            allow_playback_interruption: false

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
defmodule Google.Cloud.Dialogflow.Cx.V3.ResponseMessage.PlayAudio do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          audio_uri: String.t(),
          allow_playback_interruption: boolean
        }

  defstruct audio_uri: "",
            allow_playback_interruption: false

  field :audio_uri, 1, type: :string, json_name: "audioUri", deprecated: false

  field :allow_playback_interruption, 2,
    type: :bool,
    json_name: "allowPlaybackInterruption",
    deprecated: false
end
defmodule Google.Cloud.Dialogflow.Cx.V3.ResponseMessage.MixedAudio.Segment do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          content: {:audio, binary} | {:uri, String.t()},
          allow_playback_interruption: boolean
        }

  defstruct content: nil,
            allow_playback_interruption: false

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          segments: [Google.Cloud.Dialogflow.Cx.V3.ResponseMessage.MixedAudio.Segment.t()]
        }

  defstruct segments: []

  field :segments, 1,
    repeated: true,
    type: Google.Cloud.Dialogflow.Cx.V3.ResponseMessage.MixedAudio.Segment
end
defmodule Google.Cloud.Dialogflow.Cx.V3.ResponseMessage.TelephonyTransferCall do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          endpoint: {:phone_number, String.t()}
        }

  defstruct endpoint: nil

  oneof :endpoint, 0

  field :phone_number, 1, type: :string, json_name: "phoneNumber", oneof: 0
end
defmodule Google.Cloud.Dialogflow.Cx.V3.ResponseMessage do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          message:
            {:text, Google.Cloud.Dialogflow.Cx.V3.ResponseMessage.Text.t() | nil}
            | {:payload, Google.Protobuf.Struct.t() | nil}
            | {:conversation_success,
               Google.Cloud.Dialogflow.Cx.V3.ResponseMessage.ConversationSuccess.t() | nil}
            | {:output_audio_text,
               Google.Cloud.Dialogflow.Cx.V3.ResponseMessage.OutputAudioText.t() | nil}
            | {:live_agent_handoff,
               Google.Cloud.Dialogflow.Cx.V3.ResponseMessage.LiveAgentHandoff.t() | nil}
            | {:end_interaction,
               Google.Cloud.Dialogflow.Cx.V3.ResponseMessage.EndInteraction.t() | nil}
            | {:play_audio, Google.Cloud.Dialogflow.Cx.V3.ResponseMessage.PlayAudio.t() | nil}
            | {:mixed_audio, Google.Cloud.Dialogflow.Cx.V3.ResponseMessage.MixedAudio.t() | nil}
            | {:telephony_transfer_call,
               Google.Cloud.Dialogflow.Cx.V3.ResponseMessage.TelephonyTransferCall.t() | nil}
        }

  defstruct message: nil

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
end
