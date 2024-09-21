defmodule Google.Assistant.Embedded.V1alpha1.AudioInConfig.Encoding do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :ENCODING_UNSPECIFIED, 0
  field :LINEAR16, 1
  field :FLAC, 2
end

defmodule Google.Assistant.Embedded.V1alpha1.AudioOutConfig.Encoding do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :ENCODING_UNSPECIFIED, 0
  field :LINEAR16, 1
  field :MP3, 2
  field :OPUS_IN_OGG, 3
end

defmodule Google.Assistant.Embedded.V1alpha1.ConverseResult.MicrophoneMode do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :MICROPHONE_MODE_UNSPECIFIED, 0
  field :CLOSE_MICROPHONE, 1
  field :DIALOG_FOLLOW_ON, 2
end

defmodule Google.Assistant.Embedded.V1alpha1.ConverseResponse.EventType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :EVENT_TYPE_UNSPECIFIED, 0
  field :END_OF_UTTERANCE, 1
end

defmodule Google.Assistant.Embedded.V1alpha1.ConverseConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :audio_in_config, 1,
    type: Google.Assistant.Embedded.V1alpha1.AudioInConfig,
    json_name: "audioInConfig"

  field :audio_out_config, 2,
    type: Google.Assistant.Embedded.V1alpha1.AudioOutConfig,
    json_name: "audioOutConfig"

  field :converse_state, 3,
    type: Google.Assistant.Embedded.V1alpha1.ConverseState,
    json_name: "converseState"
end

defmodule Google.Assistant.Embedded.V1alpha1.AudioInConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :encoding, 1, type: Google.Assistant.Embedded.V1alpha1.AudioInConfig.Encoding, enum: true
  field :sample_rate_hertz, 2, type: :int32, json_name: "sampleRateHertz"
end

defmodule Google.Assistant.Embedded.V1alpha1.AudioOutConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :encoding, 1, type: Google.Assistant.Embedded.V1alpha1.AudioOutConfig.Encoding, enum: true
  field :sample_rate_hertz, 2, type: :int32, json_name: "sampleRateHertz"
  field :volume_percentage, 3, type: :int32, json_name: "volumePercentage"
end

defmodule Google.Assistant.Embedded.V1alpha1.ConverseState do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :conversation_state, 1, type: :bytes, json_name: "conversationState"
end

defmodule Google.Assistant.Embedded.V1alpha1.AudioOut do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :audio_data, 1, type: :bytes, json_name: "audioData"
end

defmodule Google.Assistant.Embedded.V1alpha1.ConverseResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :spoken_request_text, 1, type: :string, json_name: "spokenRequestText"
  field :spoken_response_text, 2, type: :string, json_name: "spokenResponseText"
  field :conversation_state, 3, type: :bytes, json_name: "conversationState"

  field :microphone_mode, 4,
    type: Google.Assistant.Embedded.V1alpha1.ConverseResult.MicrophoneMode,
    json_name: "microphoneMode",
    enum: true

  field :volume_percentage, 5, type: :int32, json_name: "volumePercentage"
end

defmodule Google.Assistant.Embedded.V1alpha1.ConverseRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  oneof :converse_request, 0

  field :config, 1, type: Google.Assistant.Embedded.V1alpha1.ConverseConfig, oneof: 0
  field :audio_in, 2, type: :bytes, json_name: "audioIn", oneof: 0
end

defmodule Google.Assistant.Embedded.V1alpha1.ConverseResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  oneof :converse_response, 0

  field :error, 1, type: Google.Rpc.Status, oneof: 0

  field :event_type, 2,
    type: Google.Assistant.Embedded.V1alpha1.ConverseResponse.EventType,
    json_name: "eventType",
    enum: true,
    oneof: 0

  field :audio_out, 3,
    type: Google.Assistant.Embedded.V1alpha1.AudioOut,
    json_name: "audioOut",
    oneof: 0

  field :result, 5, type: Google.Assistant.Embedded.V1alpha1.ConverseResult, oneof: 0
end

defmodule Google.Assistant.Embedded.V1alpha1.EmbeddedAssistant.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.assistant.embedded.v1alpha1.EmbeddedAssistant",
    protoc_gen_elixir_version: "0.13.0"

  rpc :Converse,
      stream(Google.Assistant.Embedded.V1alpha1.ConverseRequest),
      stream(Google.Assistant.Embedded.V1alpha1.ConverseResponse)
end

defmodule Google.Assistant.Embedded.V1alpha1.EmbeddedAssistant.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Assistant.Embedded.V1alpha1.EmbeddedAssistant.Service
end