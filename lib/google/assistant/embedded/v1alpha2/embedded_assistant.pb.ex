defmodule Google.Assistant.Embedded.V1alpha2.AssistResponse.EventType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :EVENT_TYPE_UNSPECIFIED | :END_OF_UTTERANCE

  field :EVENT_TYPE_UNSPECIFIED, 0
  field :END_OF_UTTERANCE, 1
end

defmodule Google.Assistant.Embedded.V1alpha2.AudioInConfig.Encoding do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :ENCODING_UNSPECIFIED | :LINEAR16 | :FLAC

  field :ENCODING_UNSPECIFIED, 0
  field :LINEAR16, 1
  field :FLAC, 2
end

defmodule Google.Assistant.Embedded.V1alpha2.AudioOutConfig.Encoding do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :ENCODING_UNSPECIFIED | :LINEAR16 | :MP3 | :OPUS_IN_OGG

  field :ENCODING_UNSPECIFIED, 0
  field :LINEAR16, 1
  field :MP3, 2
  field :OPUS_IN_OGG, 3
end

defmodule Google.Assistant.Embedded.V1alpha2.ScreenOutConfig.ScreenMode do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :SCREEN_MODE_UNSPECIFIED | :OFF | :PLAYING

  field :SCREEN_MODE_UNSPECIFIED, 0
  field :OFF, 1
  field :PLAYING, 3
end

defmodule Google.Assistant.Embedded.V1alpha2.ScreenOut.Format do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :FORMAT_UNSPECIFIED | :HTML

  field :FORMAT_UNSPECIFIED, 0
  field :HTML, 1
end

defmodule Google.Assistant.Embedded.V1alpha2.DialogStateOut.MicrophoneMode do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :MICROPHONE_MODE_UNSPECIFIED | :CLOSE_MICROPHONE | :DIALOG_FOLLOW_ON

  field :MICROPHONE_MODE_UNSPECIFIED, 0
  field :CLOSE_MICROPHONE, 1
  field :DIALOG_FOLLOW_ON, 2
end

defmodule Google.Assistant.Embedded.V1alpha2.AssistRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          type:
            {:config, Google.Assistant.Embedded.V1alpha2.AssistConfig.t() | nil}
            | {:audio_in, binary}
        }

  defstruct [:type]

  oneof :type, 0

  field :config, 1, type: Google.Assistant.Embedded.V1alpha2.AssistConfig, oneof: 0
  field :audio_in, 2, type: :bytes, json_name: "audioIn", oneof: 0

  def transform_module(), do: nil
end

defmodule Google.Assistant.Embedded.V1alpha2.AssistResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          event_type: Google.Assistant.Embedded.V1alpha2.AssistResponse.EventType.t(),
          audio_out: Google.Assistant.Embedded.V1alpha2.AudioOut.t() | nil,
          screen_out: Google.Assistant.Embedded.V1alpha2.ScreenOut.t() | nil,
          device_action: Google.Assistant.Embedded.V1alpha2.DeviceAction.t() | nil,
          speech_results: [Google.Assistant.Embedded.V1alpha2.SpeechRecognitionResult.t()],
          dialog_state_out: Google.Assistant.Embedded.V1alpha2.DialogStateOut.t() | nil,
          debug_info: Google.Assistant.Embedded.V1alpha2.DebugInfo.t() | nil
        }

  defstruct [
    :event_type,
    :audio_out,
    :screen_out,
    :device_action,
    :speech_results,
    :dialog_state_out,
    :debug_info
  ]

  field :event_type, 1,
    type: Google.Assistant.Embedded.V1alpha2.AssistResponse.EventType,
    enum: true,
    json_name: "eventType"

  field :audio_out, 3, type: Google.Assistant.Embedded.V1alpha2.AudioOut, json_name: "audioOut"
  field :screen_out, 4, type: Google.Assistant.Embedded.V1alpha2.ScreenOut, json_name: "screenOut"

  field :device_action, 6,
    type: Google.Assistant.Embedded.V1alpha2.DeviceAction,
    json_name: "deviceAction"

  field :speech_results, 2,
    repeated: true,
    type: Google.Assistant.Embedded.V1alpha2.SpeechRecognitionResult,
    json_name: "speechResults"

  field :dialog_state_out, 5,
    type: Google.Assistant.Embedded.V1alpha2.DialogStateOut,
    json_name: "dialogStateOut"

  field :debug_info, 8, type: Google.Assistant.Embedded.V1alpha2.DebugInfo, json_name: "debugInfo"

  def transform_module(), do: nil
end

defmodule Google.Assistant.Embedded.V1alpha2.DebugInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          aog_agent_to_assistant_json: String.t()
        }

  defstruct [:aog_agent_to_assistant_json]

  field :aog_agent_to_assistant_json, 1, type: :string, json_name: "aogAgentToAssistantJson"

  def transform_module(), do: nil
end

defmodule Google.Assistant.Embedded.V1alpha2.AssistConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          type:
            {:audio_in_config, Google.Assistant.Embedded.V1alpha2.AudioInConfig.t() | nil}
            | {:text_query, String.t()},
          audio_out_config: Google.Assistant.Embedded.V1alpha2.AudioOutConfig.t() | nil,
          screen_out_config: Google.Assistant.Embedded.V1alpha2.ScreenOutConfig.t() | nil,
          dialog_state_in: Google.Assistant.Embedded.V1alpha2.DialogStateIn.t() | nil,
          device_config: Google.Assistant.Embedded.V1alpha2.DeviceConfig.t() | nil,
          debug_config: Google.Assistant.Embedded.V1alpha2.DebugConfig.t() | nil
        }

  defstruct [
    :type,
    :audio_out_config,
    :screen_out_config,
    :dialog_state_in,
    :device_config,
    :debug_config
  ]

  oneof :type, 0

  field :audio_in_config, 1,
    type: Google.Assistant.Embedded.V1alpha2.AudioInConfig,
    json_name: "audioInConfig",
    oneof: 0

  field :text_query, 6, type: :string, json_name: "textQuery", oneof: 0

  field :audio_out_config, 2,
    type: Google.Assistant.Embedded.V1alpha2.AudioOutConfig,
    json_name: "audioOutConfig"

  field :screen_out_config, 8,
    type: Google.Assistant.Embedded.V1alpha2.ScreenOutConfig,
    json_name: "screenOutConfig"

  field :dialog_state_in, 3,
    type: Google.Assistant.Embedded.V1alpha2.DialogStateIn,
    json_name: "dialogStateIn"

  field :device_config, 4,
    type: Google.Assistant.Embedded.V1alpha2.DeviceConfig,
    json_name: "deviceConfig"

  field :debug_config, 5,
    type: Google.Assistant.Embedded.V1alpha2.DebugConfig,
    json_name: "debugConfig"

  def transform_module(), do: nil
end

defmodule Google.Assistant.Embedded.V1alpha2.AudioInConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          encoding: Google.Assistant.Embedded.V1alpha2.AudioInConfig.Encoding.t(),
          sample_rate_hertz: integer
        }

  defstruct [:encoding, :sample_rate_hertz]

  field :encoding, 1, type: Google.Assistant.Embedded.V1alpha2.AudioInConfig.Encoding, enum: true
  field :sample_rate_hertz, 2, type: :int32, json_name: "sampleRateHertz"

  def transform_module(), do: nil
end

defmodule Google.Assistant.Embedded.V1alpha2.AudioOutConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          encoding: Google.Assistant.Embedded.V1alpha2.AudioOutConfig.Encoding.t(),
          sample_rate_hertz: integer,
          volume_percentage: integer
        }

  defstruct [:encoding, :sample_rate_hertz, :volume_percentage]

  field :encoding, 1, type: Google.Assistant.Embedded.V1alpha2.AudioOutConfig.Encoding, enum: true
  field :sample_rate_hertz, 2, type: :int32, json_name: "sampleRateHertz"
  field :volume_percentage, 3, type: :int32, json_name: "volumePercentage"

  def transform_module(), do: nil
end

defmodule Google.Assistant.Embedded.V1alpha2.ScreenOutConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          screen_mode: Google.Assistant.Embedded.V1alpha2.ScreenOutConfig.ScreenMode.t()
        }

  defstruct [:screen_mode]

  field :screen_mode, 1,
    type: Google.Assistant.Embedded.V1alpha2.ScreenOutConfig.ScreenMode,
    enum: true,
    json_name: "screenMode"

  def transform_module(), do: nil
end

defmodule Google.Assistant.Embedded.V1alpha2.DialogStateIn do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          conversation_state: binary,
          language_code: String.t(),
          device_location: Google.Assistant.Embedded.V1alpha2.DeviceLocation.t() | nil,
          is_new_conversation: boolean
        }

  defstruct [:conversation_state, :language_code, :device_location, :is_new_conversation]

  field :conversation_state, 1, type: :bytes, json_name: "conversationState"
  field :language_code, 2, type: :string, json_name: "languageCode"

  field :device_location, 5,
    type: Google.Assistant.Embedded.V1alpha2.DeviceLocation,
    json_name: "deviceLocation"

  field :is_new_conversation, 7, type: :bool, json_name: "isNewConversation"

  def transform_module(), do: nil
end

defmodule Google.Assistant.Embedded.V1alpha2.DeviceConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          device_id: String.t(),
          device_model_id: String.t()
        }

  defstruct [:device_id, :device_model_id]

  field :device_id, 1, type: :string, json_name: "deviceId"
  field :device_model_id, 3, type: :string, json_name: "deviceModelId"

  def transform_module(), do: nil
end

defmodule Google.Assistant.Embedded.V1alpha2.AudioOut do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          audio_data: binary
        }

  defstruct [:audio_data]

  field :audio_data, 1, type: :bytes, json_name: "audioData"

  def transform_module(), do: nil
end

defmodule Google.Assistant.Embedded.V1alpha2.ScreenOut do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          format: Google.Assistant.Embedded.V1alpha2.ScreenOut.Format.t(),
          data: binary
        }

  defstruct [:format, :data]

  field :format, 1, type: Google.Assistant.Embedded.V1alpha2.ScreenOut.Format, enum: true
  field :data, 2, type: :bytes

  def transform_module(), do: nil
end

defmodule Google.Assistant.Embedded.V1alpha2.DeviceAction do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          device_request_json: String.t()
        }

  defstruct [:device_request_json]

  field :device_request_json, 1, type: :string, json_name: "deviceRequestJson"

  def transform_module(), do: nil
end

defmodule Google.Assistant.Embedded.V1alpha2.SpeechRecognitionResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          transcript: String.t(),
          stability: float | :infinity | :negative_infinity | :nan
        }

  defstruct [:transcript, :stability]

  field :transcript, 1, type: :string
  field :stability, 2, type: :float

  def transform_module(), do: nil
end

defmodule Google.Assistant.Embedded.V1alpha2.DialogStateOut do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          supplemental_display_text: String.t(),
          conversation_state: binary,
          microphone_mode: Google.Assistant.Embedded.V1alpha2.DialogStateOut.MicrophoneMode.t(),
          volume_percentage: integer
        }

  defstruct [
    :supplemental_display_text,
    :conversation_state,
    :microphone_mode,
    :volume_percentage
  ]

  field :supplemental_display_text, 1, type: :string, json_name: "supplementalDisplayText"
  field :conversation_state, 2, type: :bytes, json_name: "conversationState"

  field :microphone_mode, 3,
    type: Google.Assistant.Embedded.V1alpha2.DialogStateOut.MicrophoneMode,
    enum: true,
    json_name: "microphoneMode"

  field :volume_percentage, 4, type: :int32, json_name: "volumePercentage"

  def transform_module(), do: nil
end

defmodule Google.Assistant.Embedded.V1alpha2.DebugConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          return_debug_info: boolean
        }

  defstruct [:return_debug_info]

  field :return_debug_info, 6, type: :bool, json_name: "returnDebugInfo"

  def transform_module(), do: nil
end

defmodule Google.Assistant.Embedded.V1alpha2.DeviceLocation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          type: {:coordinates, Google.Type.LatLng.t() | nil}
        }

  defstruct [:type]

  oneof :type, 0

  field :coordinates, 1, type: Google.Type.LatLng, oneof: 0

  def transform_module(), do: nil
end

defmodule Google.Assistant.Embedded.V1alpha2.EmbeddedAssistant.Service do
  @moduledoc false
  use GRPC.Service, name: "google.assistant.embedded.v1alpha2.EmbeddedAssistant"

  rpc :Assist,
      stream(Google.Assistant.Embedded.V1alpha2.AssistRequest),
      stream(Google.Assistant.Embedded.V1alpha2.AssistResponse)
end

defmodule Google.Assistant.Embedded.V1alpha2.EmbeddedAssistant.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Assistant.Embedded.V1alpha2.EmbeddedAssistant.Service
end
