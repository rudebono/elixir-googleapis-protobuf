defmodule Google.Cloud.Texttospeech.V1beta1.SsmlVoiceGender do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :SSML_VOICE_GENDER_UNSPECIFIED, 0
  field :MALE, 1
  field :FEMALE, 2
  field :NEUTRAL, 3
end

defmodule Google.Cloud.Texttospeech.V1beta1.AudioEncoding do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :AUDIO_ENCODING_UNSPECIFIED, 0
  field :LINEAR16, 1
  field :MP3, 2
  field :MP3_64_KBPS, 4
  field :OGG_OPUS, 3
  field :MULAW, 5
  field :ALAW, 6
end

defmodule Google.Cloud.Texttospeech.V1beta1.SynthesizeSpeechRequest.TimepointType do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :TIMEPOINT_TYPE_UNSPECIFIED, 0
  field :SSML_MARK, 1
end

defmodule Google.Cloud.Texttospeech.V1beta1.CustomVoiceParams.ReportedUsage do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :REPORTED_USAGE_UNSPECIFIED, 0
  field :REALTIME, 1
  field :OFFLINE, 2
end

defmodule Google.Cloud.Texttospeech.V1beta1.ListVoicesRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :language_code, 1, type: :string, json_name: "languageCode", deprecated: false
end

defmodule Google.Cloud.Texttospeech.V1beta1.ListVoicesResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :voices, 1, repeated: true, type: Google.Cloud.Texttospeech.V1beta1.Voice
end

defmodule Google.Cloud.Texttospeech.V1beta1.Voice do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :language_codes, 1, repeated: true, type: :string, json_name: "languageCodes"
  field :name, 2, type: :string

  field :ssml_gender, 3,
    type: Google.Cloud.Texttospeech.V1beta1.SsmlVoiceGender,
    json_name: "ssmlGender",
    enum: true

  field :natural_sample_rate_hertz, 4, type: :int32, json_name: "naturalSampleRateHertz"
end

defmodule Google.Cloud.Texttospeech.V1beta1.SynthesizeSpeechRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :input, 1, type: Google.Cloud.Texttospeech.V1beta1.SynthesisInput, deprecated: false
  field :voice, 2, type: Google.Cloud.Texttospeech.V1beta1.VoiceSelectionParams, deprecated: false

  field :audio_config, 3,
    type: Google.Cloud.Texttospeech.V1beta1.AudioConfig,
    json_name: "audioConfig",
    deprecated: false

  field :enable_time_pointing, 4,
    repeated: true,
    type: Google.Cloud.Texttospeech.V1beta1.SynthesizeSpeechRequest.TimepointType,
    json_name: "enableTimePointing",
    enum: true
end

defmodule Google.Cloud.Texttospeech.V1beta1.SynthesisInput do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :input_source, 0

  field :text, 1, type: :string, oneof: 0
  field :ssml, 2, type: :string, oneof: 0
end

defmodule Google.Cloud.Texttospeech.V1beta1.VoiceSelectionParams do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :language_code, 1, type: :string, json_name: "languageCode", deprecated: false
  field :name, 2, type: :string

  field :ssml_gender, 3,
    type: Google.Cloud.Texttospeech.V1beta1.SsmlVoiceGender,
    json_name: "ssmlGender",
    enum: true

  field :custom_voice, 4,
    type: Google.Cloud.Texttospeech.V1beta1.CustomVoiceParams,
    json_name: "customVoice"
end

defmodule Google.Cloud.Texttospeech.V1beta1.AudioConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :audio_encoding, 1,
    type: Google.Cloud.Texttospeech.V1beta1.AudioEncoding,
    json_name: "audioEncoding",
    enum: true,
    deprecated: false

  field :speaking_rate, 2, type: :double, json_name: "speakingRate", deprecated: false
  field :pitch, 3, type: :double, deprecated: false
  field :volume_gain_db, 4, type: :double, json_name: "volumeGainDb", deprecated: false
  field :sample_rate_hertz, 5, type: :int32, json_name: "sampleRateHertz", deprecated: false

  field :effects_profile_id, 6,
    repeated: true,
    type: :string,
    json_name: "effectsProfileId",
    deprecated: false
end

defmodule Google.Cloud.Texttospeech.V1beta1.CustomVoiceParams do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :model, 1, type: :string, deprecated: false

  field :reported_usage, 3,
    type: Google.Cloud.Texttospeech.V1beta1.CustomVoiceParams.ReportedUsage,
    json_name: "reportedUsage",
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Texttospeech.V1beta1.SynthesizeSpeechResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :audio_content, 1, type: :bytes, json_name: "audioContent"
  field :timepoints, 2, repeated: true, type: Google.Cloud.Texttospeech.V1beta1.Timepoint

  field :audio_config, 4,
    type: Google.Cloud.Texttospeech.V1beta1.AudioConfig,
    json_name: "audioConfig"
end

defmodule Google.Cloud.Texttospeech.V1beta1.Timepoint do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :mark_name, 4, type: :string, json_name: "markName"
  field :time_seconds, 3, type: :double, json_name: "timeSeconds"
end

defmodule Google.Cloud.Texttospeech.V1beta1.TextToSpeech.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.cloud.texttospeech.v1beta1.TextToSpeech",
    protoc_gen_elixir_version: "0.11.0"

  rpc :ListVoices,
      Google.Cloud.Texttospeech.V1beta1.ListVoicesRequest,
      Google.Cloud.Texttospeech.V1beta1.ListVoicesResponse

  rpc :SynthesizeSpeech,
      Google.Cloud.Texttospeech.V1beta1.SynthesizeSpeechRequest,
      Google.Cloud.Texttospeech.V1beta1.SynthesizeSpeechResponse
end

defmodule Google.Cloud.Texttospeech.V1beta1.TextToSpeech.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Texttospeech.V1beta1.TextToSpeech.Service
end