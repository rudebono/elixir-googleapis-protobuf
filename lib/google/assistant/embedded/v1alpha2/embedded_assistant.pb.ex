defmodule Google.Assistant.Embedded.V1alpha2.AssistResponse.EventType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :EVENT_TYPE_UNSPECIFIED, 0
  field :END_OF_UTTERANCE, 1
end

defmodule Google.Assistant.Embedded.V1alpha2.AudioInConfig.Encoding do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :ENCODING_UNSPECIFIED, 0
  field :LINEAR16, 1
  field :FLAC, 2
end

defmodule Google.Assistant.Embedded.V1alpha2.AudioOutConfig.Encoding do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :ENCODING_UNSPECIFIED, 0
  field :LINEAR16, 1
  field :MP3, 2
  field :OPUS_IN_OGG, 3
end

defmodule Google.Assistant.Embedded.V1alpha2.ScreenOutConfig.ScreenMode do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :SCREEN_MODE_UNSPECIFIED, 0
  field :OFF, 1
  field :PLAYING, 3
end

defmodule Google.Assistant.Embedded.V1alpha2.ScreenOut.Format do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :FORMAT_UNSPECIFIED, 0
  field :HTML, 1
end

defmodule Google.Assistant.Embedded.V1alpha2.DialogStateOut.MicrophoneMode do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :MICROPHONE_MODE_UNSPECIFIED, 0
  field :CLOSE_MICROPHONE, 1
  field :DIALOG_FOLLOW_ON, 2
end

defmodule Google.Assistant.Embedded.V1alpha2.AssistRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :type, 0

  field :config, 1, type: Google.Assistant.Embedded.V1alpha2.AssistConfig, oneof: 0
  field :audio_in, 2, type: :bytes, json_name: "audioIn", oneof: 0
end

defmodule Google.Assistant.Embedded.V1alpha2.AssistResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :event_type, 1,
    type: Google.Assistant.Embedded.V1alpha2.AssistResponse.EventType,
    json_name: "eventType",
    enum: true

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
end

defmodule Google.Assistant.Embedded.V1alpha2.DebugInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :aog_agent_to_assistant_json, 1, type: :string, json_name: "aogAgentToAssistantJson"
end

defmodule Google.Assistant.Embedded.V1alpha2.AssistConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

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
end

defmodule Google.Assistant.Embedded.V1alpha2.AudioInConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :encoding, 1, type: Google.Assistant.Embedded.V1alpha2.AudioInConfig.Encoding, enum: true
  field :sample_rate_hertz, 2, type: :int32, json_name: "sampleRateHertz"
end

defmodule Google.Assistant.Embedded.V1alpha2.AudioOutConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :encoding, 1, type: Google.Assistant.Embedded.V1alpha2.AudioOutConfig.Encoding, enum: true
  field :sample_rate_hertz, 2, type: :int32, json_name: "sampleRateHertz"
  field :volume_percentage, 3, type: :int32, json_name: "volumePercentage"
end

defmodule Google.Assistant.Embedded.V1alpha2.ScreenOutConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :screen_mode, 1,
    type: Google.Assistant.Embedded.V1alpha2.ScreenOutConfig.ScreenMode,
    json_name: "screenMode",
    enum: true
end

defmodule Google.Assistant.Embedded.V1alpha2.DialogStateIn do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :conversation_state, 1, type: :bytes, json_name: "conversationState"
  field :language_code, 2, type: :string, json_name: "languageCode"

  field :device_location, 5,
    type: Google.Assistant.Embedded.V1alpha2.DeviceLocation,
    json_name: "deviceLocation"

  field :is_new_conversation, 7, type: :bool, json_name: "isNewConversation"
end

defmodule Google.Assistant.Embedded.V1alpha2.DeviceConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :device_id, 1, type: :string, json_name: "deviceId"
  field :device_model_id, 3, type: :string, json_name: "deviceModelId"
end

defmodule Google.Assistant.Embedded.V1alpha2.AudioOut do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :audio_data, 1, type: :bytes, json_name: "audioData"
end

defmodule Google.Assistant.Embedded.V1alpha2.ScreenOut do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :format, 1, type: Google.Assistant.Embedded.V1alpha2.ScreenOut.Format, enum: true
  field :data, 2, type: :bytes
end

defmodule Google.Assistant.Embedded.V1alpha2.DeviceAction do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :device_request_json, 1, type: :string, json_name: "deviceRequestJson"
end

defmodule Google.Assistant.Embedded.V1alpha2.SpeechRecognitionResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :transcript, 1, type: :string
  field :stability, 2, type: :float
end

defmodule Google.Assistant.Embedded.V1alpha2.DialogStateOut do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :supplemental_display_text, 1, type: :string, json_name: "supplementalDisplayText"
  field :conversation_state, 2, type: :bytes, json_name: "conversationState"

  field :microphone_mode, 3,
    type: Google.Assistant.Embedded.V1alpha2.DialogStateOut.MicrophoneMode,
    json_name: "microphoneMode",
    enum: true

  field :volume_percentage, 4, type: :int32, json_name: "volumePercentage"
end

defmodule Google.Assistant.Embedded.V1alpha2.DebugConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :return_debug_info, 6, type: :bool, json_name: "returnDebugInfo"
end

defmodule Google.Assistant.Embedded.V1alpha2.DeviceLocation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :type, 0

  field :coordinates, 1, type: Google.Type.LatLng, oneof: 0
end

defmodule Google.Assistant.Embedded.V1alpha2.EmbeddedAssistant.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.assistant.embedded.v1alpha2.EmbeddedAssistant",
    protoc_gen_elixir_version: "0.14.1"

  rpc :Assist,
      stream(Google.Assistant.Embedded.V1alpha2.AssistRequest),
      stream(Google.Assistant.Embedded.V1alpha2.AssistResponse)
end

defmodule Google.Assistant.Embedded.V1alpha2.EmbeddedAssistant.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Assistant.Embedded.V1alpha2.EmbeddedAssistant.Service
end
