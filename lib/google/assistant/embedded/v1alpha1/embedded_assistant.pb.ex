defmodule Google.Assistant.Embedded.V1alpha1.AudioInConfig.Encoding do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :ENCODING_UNSPECIFIED | :LINEAR16 | :FLAC

  field :ENCODING_UNSPECIFIED, 0

  field :LINEAR16, 1

  field :FLAC, 2
end

defmodule Google.Assistant.Embedded.V1alpha1.AudioOutConfig.Encoding do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :ENCODING_UNSPECIFIED | :LINEAR16 | :MP3 | :OPUS_IN_OGG

  field :ENCODING_UNSPECIFIED, 0

  field :LINEAR16, 1

  field :MP3, 2

  field :OPUS_IN_OGG, 3
end

defmodule Google.Assistant.Embedded.V1alpha1.ConverseResult.MicrophoneMode do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :MICROPHONE_MODE_UNSPECIFIED | :CLOSE_MICROPHONE | :DIALOG_FOLLOW_ON

  field :MICROPHONE_MODE_UNSPECIFIED, 0

  field :CLOSE_MICROPHONE, 1

  field :DIALOG_FOLLOW_ON, 2
end

defmodule Google.Assistant.Embedded.V1alpha1.ConverseResponse.EventType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :EVENT_TYPE_UNSPECIFIED | :END_OF_UTTERANCE

  field :EVENT_TYPE_UNSPECIFIED, 0

  field :END_OF_UTTERANCE, 1
end

defmodule Google.Assistant.Embedded.V1alpha1.ConverseConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          audio_in_config: Google.Assistant.Embedded.V1alpha1.AudioInConfig.t() | nil,
          audio_out_config: Google.Assistant.Embedded.V1alpha1.AudioOutConfig.t() | nil,
          converse_state: Google.Assistant.Embedded.V1alpha1.ConverseState.t() | nil
        }

  defstruct [:audio_in_config, :audio_out_config, :converse_state]

  field :audio_in_config, 1, type: Google.Assistant.Embedded.V1alpha1.AudioInConfig
  field :audio_out_config, 2, type: Google.Assistant.Embedded.V1alpha1.AudioOutConfig
  field :converse_state, 3, type: Google.Assistant.Embedded.V1alpha1.ConverseState
end

defmodule Google.Assistant.Embedded.V1alpha1.AudioInConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          encoding: Google.Assistant.Embedded.V1alpha1.AudioInConfig.Encoding.t(),
          sample_rate_hertz: integer
        }

  defstruct [:encoding, :sample_rate_hertz]

  field :encoding, 1, type: Google.Assistant.Embedded.V1alpha1.AudioInConfig.Encoding, enum: true
  field :sample_rate_hertz, 2, type: :int32
end

defmodule Google.Assistant.Embedded.V1alpha1.AudioOutConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          encoding: Google.Assistant.Embedded.V1alpha1.AudioOutConfig.Encoding.t(),
          sample_rate_hertz: integer,
          volume_percentage: integer
        }

  defstruct [:encoding, :sample_rate_hertz, :volume_percentage]

  field :encoding, 1, type: Google.Assistant.Embedded.V1alpha1.AudioOutConfig.Encoding, enum: true
  field :sample_rate_hertz, 2, type: :int32
  field :volume_percentage, 3, type: :int32
end

defmodule Google.Assistant.Embedded.V1alpha1.ConverseState do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          conversation_state: binary
        }

  defstruct [:conversation_state]

  field :conversation_state, 1, type: :bytes
end

defmodule Google.Assistant.Embedded.V1alpha1.AudioOut do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          audio_data: binary
        }

  defstruct [:audio_data]

  field :audio_data, 1, type: :bytes
end

defmodule Google.Assistant.Embedded.V1alpha1.ConverseResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          spoken_request_text: String.t(),
          spoken_response_text: String.t(),
          conversation_state: binary,
          microphone_mode: Google.Assistant.Embedded.V1alpha1.ConverseResult.MicrophoneMode.t(),
          volume_percentage: integer
        }

  defstruct [
    :spoken_request_text,
    :spoken_response_text,
    :conversation_state,
    :microphone_mode,
    :volume_percentage
  ]

  field :spoken_request_text, 1, type: :string
  field :spoken_response_text, 2, type: :string
  field :conversation_state, 3, type: :bytes

  field :microphone_mode, 4,
    type: Google.Assistant.Embedded.V1alpha1.ConverseResult.MicrophoneMode,
    enum: true

  field :volume_percentage, 5, type: :int32
end

defmodule Google.Assistant.Embedded.V1alpha1.ConverseRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          converse_request: {atom, any}
        }

  defstruct [:converse_request]

  oneof :converse_request, 0
  field :config, 1, type: Google.Assistant.Embedded.V1alpha1.ConverseConfig, oneof: 0
  field :audio_in, 2, type: :bytes, oneof: 0
end

defmodule Google.Assistant.Embedded.V1alpha1.ConverseResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          converse_response: {atom, any}
        }

  defstruct [:converse_response]

  oneof :converse_response, 0
  field :error, 1, type: Google.Rpc.Status, oneof: 0

  field :event_type, 2,
    type: Google.Assistant.Embedded.V1alpha1.ConverseResponse.EventType,
    enum: true,
    oneof: 0

  field :audio_out, 3, type: Google.Assistant.Embedded.V1alpha1.AudioOut, oneof: 0
  field :result, 5, type: Google.Assistant.Embedded.V1alpha1.ConverseResult, oneof: 0
end

defmodule Google.Assistant.Embedded.V1alpha1.EmbeddedAssistant.Service do
  @moduledoc false
  use GRPC.Service, name: "google.assistant.embedded.v1alpha1.EmbeddedAssistant"

  rpc :Converse,
      stream(Google.Assistant.Embedded.V1alpha1.ConverseRequest),
      stream(Google.Assistant.Embedded.V1alpha1.ConverseResponse)
end

defmodule Google.Assistant.Embedded.V1alpha1.EmbeddedAssistant.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Assistant.Embedded.V1alpha1.EmbeddedAssistant.Service
end
