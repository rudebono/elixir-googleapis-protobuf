defmodule Google.Cloud.Texttospeech.V1.SsmlVoiceGender do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :SSML_VOICE_GENDER_UNSPECIFIED, 0
  field :MALE, 1
  field :FEMALE, 2
  field :NEUTRAL, 3
end

defmodule Google.Cloud.Texttospeech.V1.AudioEncoding do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :AUDIO_ENCODING_UNSPECIFIED, 0
  field :LINEAR16, 1
  field :MP3, 2
  field :OGG_OPUS, 3
  field :MULAW, 5
  field :ALAW, 6
  field :PCM, 7
  field :M4A, 8
end

defmodule Google.Cloud.Texttospeech.V1.CustomPronunciationParams.PhoneticEncoding do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :PHONETIC_ENCODING_UNSPECIFIED, 0
  field :PHONETIC_ENCODING_IPA, 1
  field :PHONETIC_ENCODING_X_SAMPA, 2
  field :PHONETIC_ENCODING_JAPANESE_YOMIGANA, 3
  field :PHONETIC_ENCODING_PINYIN, 4
end

defmodule Google.Cloud.Texttospeech.V1.CustomVoiceParams.ReportedUsage do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :REPORTED_USAGE_UNSPECIFIED, 0
  field :REALTIME, 1
  field :OFFLINE, 2
end

defmodule Google.Cloud.Texttospeech.V1.ListVoicesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :language_code, 1, type: :string, json_name: "languageCode", deprecated: false
end

defmodule Google.Cloud.Texttospeech.V1.ListVoicesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :voices, 1, repeated: true, type: Google.Cloud.Texttospeech.V1.Voice
end

defmodule Google.Cloud.Texttospeech.V1.Voice do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :language_codes, 1, repeated: true, type: :string, json_name: "languageCodes"
  field :name, 2, type: :string

  field :ssml_gender, 3,
    type: Google.Cloud.Texttospeech.V1.SsmlVoiceGender,
    json_name: "ssmlGender",
    enum: true

  field :natural_sample_rate_hertz, 4, type: :int32, json_name: "naturalSampleRateHertz"
end

defmodule Google.Cloud.Texttospeech.V1.AdvancedVoiceOptions do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :low_latency_journey_synthesis, 1,
    proto3_optional: true,
    type: :bool,
    json_name: "lowLatencyJourneySynthesis"

  field :relax_safety_filters, 8, type: :bool, json_name: "relaxSafetyFilters", deprecated: false
end

defmodule Google.Cloud.Texttospeech.V1.SynthesizeSpeechRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :input, 1, type: Google.Cloud.Texttospeech.V1.SynthesisInput, deprecated: false
  field :voice, 2, type: Google.Cloud.Texttospeech.V1.VoiceSelectionParams, deprecated: false

  field :audio_config, 3,
    type: Google.Cloud.Texttospeech.V1.AudioConfig,
    json_name: "audioConfig",
    deprecated: false

  field :advanced_voice_options, 8,
    proto3_optional: true,
    type: Google.Cloud.Texttospeech.V1.AdvancedVoiceOptions,
    json_name: "advancedVoiceOptions"
end

defmodule Google.Cloud.Texttospeech.V1.CustomPronunciationParams do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :phrase, 1, proto3_optional: true, type: :string

  field :phonetic_encoding, 2,
    proto3_optional: true,
    type: Google.Cloud.Texttospeech.V1.CustomPronunciationParams.PhoneticEncoding,
    json_name: "phoneticEncoding",
    enum: true

  field :pronunciation, 3, proto3_optional: true, type: :string
end

defmodule Google.Cloud.Texttospeech.V1.CustomPronunciations do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :pronunciations, 1,
    repeated: true,
    type: Google.Cloud.Texttospeech.V1.CustomPronunciationParams
end

defmodule Google.Cloud.Texttospeech.V1.MultiSpeakerMarkup.Turn do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :speaker, 1, type: :string, deprecated: false
  field :text, 2, type: :string, deprecated: false
end

defmodule Google.Cloud.Texttospeech.V1.MultiSpeakerMarkup do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :turns, 1,
    repeated: true,
    type: Google.Cloud.Texttospeech.V1.MultiSpeakerMarkup.Turn,
    deprecated: false
end

defmodule Google.Cloud.Texttospeech.V1.MultispeakerPrebuiltVoice do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :speaker_alias, 1, type: :string, json_name: "speakerAlias", deprecated: false
  field :speaker_id, 2, type: :string, json_name: "speakerId", deprecated: false
end

defmodule Google.Cloud.Texttospeech.V1.MultiSpeakerVoiceConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :speaker_voice_configs, 2,
    repeated: true,
    type: Google.Cloud.Texttospeech.V1.MultispeakerPrebuiltVoice,
    json_name: "speakerVoiceConfigs",
    deprecated: false
end

defmodule Google.Cloud.Texttospeech.V1.SynthesisInput do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :input_source, 0

  field :text, 1, type: :string, oneof: 0
  field :markup, 5, type: :string, oneof: 0
  field :ssml, 2, type: :string, oneof: 0

  field :multi_speaker_markup, 4,
    type: Google.Cloud.Texttospeech.V1.MultiSpeakerMarkup,
    json_name: "multiSpeakerMarkup",
    oneof: 0

  field :prompt, 6, proto3_optional: true, type: :string

  field :custom_pronunciations, 3,
    type: Google.Cloud.Texttospeech.V1.CustomPronunciations,
    json_name: "customPronunciations",
    deprecated: false
end

defmodule Google.Cloud.Texttospeech.V1.VoiceSelectionParams do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :language_code, 1, type: :string, json_name: "languageCode", deprecated: false
  field :name, 2, type: :string

  field :ssml_gender, 3,
    type: Google.Cloud.Texttospeech.V1.SsmlVoiceGender,
    json_name: "ssmlGender",
    enum: true

  field :custom_voice, 4,
    type: Google.Cloud.Texttospeech.V1.CustomVoiceParams,
    json_name: "customVoice"

  field :voice_clone, 5,
    type: Google.Cloud.Texttospeech.V1.VoiceCloneParams,
    json_name: "voiceClone",
    deprecated: false

  field :model_name, 6, type: :string, json_name: "modelName", deprecated: false

  field :multi_speaker_voice_config, 7,
    type: Google.Cloud.Texttospeech.V1.MultiSpeakerVoiceConfig,
    json_name: "multiSpeakerVoiceConfig",
    deprecated: false
end

defmodule Google.Cloud.Texttospeech.V1.AudioConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :audio_encoding, 1,
    type: Google.Cloud.Texttospeech.V1.AudioEncoding,
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

defmodule Google.Cloud.Texttospeech.V1.CustomVoiceParams do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :model, 1, type: :string, deprecated: false

  field :reported_usage, 3,
    type: Google.Cloud.Texttospeech.V1.CustomVoiceParams.ReportedUsage,
    json_name: "reportedUsage",
    enum: true,
    deprecated: true
end

defmodule Google.Cloud.Texttospeech.V1.VoiceCloneParams do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :voice_cloning_key, 1, type: :string, json_name: "voiceCloningKey", deprecated: false
end

defmodule Google.Cloud.Texttospeech.V1.SynthesizeSpeechResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :audio_content, 1, type: :bytes, json_name: "audioContent"
end

defmodule Google.Cloud.Texttospeech.V1.StreamingAudioConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :audio_encoding, 1,
    type: Google.Cloud.Texttospeech.V1.AudioEncoding,
    json_name: "audioEncoding",
    enum: true,
    deprecated: false

  field :sample_rate_hertz, 2, type: :int32, json_name: "sampleRateHertz", deprecated: false
  field :speaking_rate, 3, type: :double, json_name: "speakingRate", deprecated: false
end

defmodule Google.Cloud.Texttospeech.V1.StreamingSynthesizeConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :voice, 1, type: Google.Cloud.Texttospeech.V1.VoiceSelectionParams, deprecated: false

  field :streaming_audio_config, 4,
    type: Google.Cloud.Texttospeech.V1.StreamingAudioConfig,
    json_name: "streamingAudioConfig",
    deprecated: false

  field :custom_pronunciations, 5,
    type: Google.Cloud.Texttospeech.V1.CustomPronunciations,
    json_name: "customPronunciations",
    deprecated: false
end

defmodule Google.Cloud.Texttospeech.V1.StreamingSynthesisInput do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :input_source, 0

  field :text, 1, type: :string, oneof: 0
  field :markup, 5, type: :string, oneof: 0

  field :multi_speaker_markup, 7,
    type: Google.Cloud.Texttospeech.V1.MultiSpeakerMarkup,
    json_name: "multiSpeakerMarkup",
    oneof: 0

  field :prompt, 6, proto3_optional: true, type: :string
end

defmodule Google.Cloud.Texttospeech.V1.StreamingSynthesizeRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :streaming_request, 0

  field :streaming_config, 1,
    type: Google.Cloud.Texttospeech.V1.StreamingSynthesizeConfig,
    json_name: "streamingConfig",
    oneof: 0

  field :input, 2, type: Google.Cloud.Texttospeech.V1.StreamingSynthesisInput, oneof: 0
end

defmodule Google.Cloud.Texttospeech.V1.StreamingSynthesizeResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :audio_content, 1, type: :bytes, json_name: "audioContent"
end

defmodule Google.Cloud.Texttospeech.V1.TextToSpeech.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.texttospeech.v1.TextToSpeech",
    protoc_gen_elixir_version: "0.15.0"

  rpc :ListVoices,
      Google.Cloud.Texttospeech.V1.ListVoicesRequest,
      Google.Cloud.Texttospeech.V1.ListVoicesResponse

  rpc :SynthesizeSpeech,
      Google.Cloud.Texttospeech.V1.SynthesizeSpeechRequest,
      Google.Cloud.Texttospeech.V1.SynthesizeSpeechResponse

  rpc :StreamingSynthesize,
      stream(Google.Cloud.Texttospeech.V1.StreamingSynthesizeRequest),
      stream(Google.Cloud.Texttospeech.V1.StreamingSynthesizeResponse)
end

defmodule Google.Cloud.Texttospeech.V1.TextToSpeech.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Texttospeech.V1.TextToSpeech.Service
end
