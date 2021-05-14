defmodule Google.Cloud.Dialogflow.Cx.V3beta1.ResponseMessage.Text do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          text: [String.t()],
          allow_playback_interruption: boolean
        }

  defstruct [:text, :allow_playback_interruption]

  field :text, 1, repeated: true, type: :string
  field :allow_playback_interruption, 2, type: :bool
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.ResponseMessage.LiveAgentHandoff do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          metadata: Google.Protobuf.Struct.t() | nil
        }

  defstruct [:metadata]

  field :metadata, 1, type: Google.Protobuf.Struct
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.ResponseMessage.ConversationSuccess do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          metadata: Google.Protobuf.Struct.t() | nil
        }

  defstruct [:metadata]

  field :metadata, 1, type: Google.Protobuf.Struct
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.ResponseMessage.OutputAudioText do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          source: {atom, any},
          allow_playback_interruption: boolean
        }

  defstruct [:source, :allow_playback_interruption]

  oneof :source, 0
  field :text, 1, type: :string, oneof: 0
  field :ssml, 2, type: :string, oneof: 0
  field :allow_playback_interruption, 3, type: :bool
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.ResponseMessage.EndInteraction do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.ResponseMessage.PlayAudio do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          audio_uri: String.t(),
          allow_playback_interruption: boolean
        }

  defstruct [:audio_uri, :allow_playback_interruption]

  field :audio_uri, 1, type: :string
  field :allow_playback_interruption, 2, type: :bool
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.ResponseMessage.MixedAudio.Segment do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          content: {atom, any},
          allow_playback_interruption: boolean
        }

  defstruct [:content, :allow_playback_interruption]

  oneof :content, 0
  field :audio, 1, type: :bytes, oneof: 0
  field :uri, 2, type: :string, oneof: 0
  field :allow_playback_interruption, 3, type: :bool
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.ResponseMessage.MixedAudio do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          segments: [Google.Cloud.Dialogflow.Cx.V3beta1.ResponseMessage.MixedAudio.Segment.t()]
        }

  defstruct [:segments]

  field :segments, 1,
    repeated: true,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.ResponseMessage.MixedAudio.Segment
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.ResponseMessage do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          message: {atom, any}
        }

  defstruct [:message]

  oneof :message, 0
  field :text, 1, type: Google.Cloud.Dialogflow.Cx.V3beta1.ResponseMessage.Text, oneof: 0
  field :payload, 2, type: Google.Protobuf.Struct, oneof: 0

  field :conversation_success, 9,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.ResponseMessage.ConversationSuccess,
    oneof: 0

  field :output_audio_text, 8,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.ResponseMessage.OutputAudioText,
    oneof: 0

  field :live_agent_handoff, 10,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.ResponseMessage.LiveAgentHandoff,
    oneof: 0

  field :end_interaction, 11,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.ResponseMessage.EndInteraction,
    oneof: 0

  field :play_audio, 12,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.ResponseMessage.PlayAudio,
    oneof: 0

  field :mixed_audio, 13,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.ResponseMessage.MixedAudio,
    oneof: 0
end
