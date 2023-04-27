defmodule Google.Cloud.Texttospeech.V1beta1.SynthesizeLongAudioRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string
  field :input, 2, type: Google.Cloud.Texttospeech.V1beta1.SynthesisInput, deprecated: false

  field :audio_config, 3,
    type: Google.Cloud.Texttospeech.V1beta1.AudioConfig,
    json_name: "audioConfig",
    deprecated: false

  field :output_gcs_uri, 4, type: :string, json_name: "outputGcsUri"
  field :voice, 5, type: Google.Cloud.Texttospeech.V1beta1.VoiceSelectionParams
end

defmodule Google.Cloud.Texttospeech.V1beta1.SynthesizeLongAudioResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3
end

defmodule Google.Cloud.Texttospeech.V1beta1.SynthesizeLongAudioMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :start_time, 1, type: Google.Protobuf.Timestamp, json_name: "startTime"
  field :last_update_time, 2, type: Google.Protobuf.Timestamp, json_name: "lastUpdateTime"
  field :progress_percentage, 3, type: :double, json_name: "progressPercentage"
end

defmodule Google.Cloud.Texttospeech.V1beta1.TextToSpeechLongAudioSynthesize.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.texttospeech.v1beta1.TextToSpeechLongAudioSynthesize",
    protoc_gen_elixir_version: "0.12.0"

  rpc :SynthesizeLongAudio,
      Google.Cloud.Texttospeech.V1beta1.SynthesizeLongAudioRequest,
      Google.Longrunning.Operation
end

defmodule Google.Cloud.Texttospeech.V1beta1.TextToSpeechLongAudioSynthesize.Stub do
  @moduledoc false

  use GRPC.Stub,
    service: Google.Cloud.Texttospeech.V1beta1.TextToSpeechLongAudioSynthesize.Service
end