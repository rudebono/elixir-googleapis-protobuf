defmodule Google.Cloud.Dialogflow.Cx.V3.AudioEncoding do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :AUDIO_ENCODING_UNSPECIFIED, 0
  field :AUDIO_ENCODING_LINEAR_16, 1
  field :AUDIO_ENCODING_FLAC, 2
  field :AUDIO_ENCODING_MULAW, 3
  field :AUDIO_ENCODING_AMR, 4
  field :AUDIO_ENCODING_AMR_WB, 5
  field :AUDIO_ENCODING_OGG_OPUS, 6
  field :AUDIO_ENCODING_SPEEX_WITH_HEADER_BYTE, 7
end

defmodule Google.Cloud.Dialogflow.Cx.V3.SpeechModelVariant do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :SPEECH_MODEL_VARIANT_UNSPECIFIED, 0
  field :USE_BEST_AVAILABLE, 1
  field :USE_STANDARD, 2
  field :USE_ENHANCED, 3
end

defmodule Google.Cloud.Dialogflow.Cx.V3.SsmlVoiceGender do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :SSML_VOICE_GENDER_UNSPECIFIED, 0
  field :SSML_VOICE_GENDER_MALE, 1
  field :SSML_VOICE_GENDER_FEMALE, 2
  field :SSML_VOICE_GENDER_NEUTRAL, 3
end

defmodule Google.Cloud.Dialogflow.Cx.V3.OutputAudioEncoding do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :OUTPUT_AUDIO_ENCODING_UNSPECIFIED, 0
  field :OUTPUT_AUDIO_ENCODING_LINEAR_16, 1
  field :OUTPUT_AUDIO_ENCODING_MP3, 2
  field :OUTPUT_AUDIO_ENCODING_MP3_64_KBPS, 4
  field :OUTPUT_AUDIO_ENCODING_OGG_OPUS, 3
  field :OUTPUT_AUDIO_ENCODING_MULAW, 5
end

defmodule Google.Cloud.Dialogflow.Cx.V3.SpeechWordInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :word, 3, type: :string
  field :start_offset, 1, type: Google.Protobuf.Duration, json_name: "startOffset"
  field :end_offset, 2, type: Google.Protobuf.Duration, json_name: "endOffset"
  field :confidence, 4, type: :float
end

defmodule Google.Cloud.Dialogflow.Cx.V3.InputAudioConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :audio_encoding, 1,
    type: Google.Cloud.Dialogflow.Cx.V3.AudioEncoding,
    json_name: "audioEncoding",
    enum: true,
    deprecated: false

  field :sample_rate_hertz, 2, type: :int32, json_name: "sampleRateHertz"
  field :enable_word_info, 13, type: :bool, json_name: "enableWordInfo"
  field :phrase_hints, 4, repeated: true, type: :string, json_name: "phraseHints"
  field :model, 7, type: :string

  field :model_variant, 10,
    type: Google.Cloud.Dialogflow.Cx.V3.SpeechModelVariant,
    json_name: "modelVariant",
    enum: true

  field :single_utterance, 8, type: :bool, json_name: "singleUtterance"
end

defmodule Google.Cloud.Dialogflow.Cx.V3.VoiceSelectionParams do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string

  field :ssml_gender, 2,
    type: Google.Cloud.Dialogflow.Cx.V3.SsmlVoiceGender,
    json_name: "ssmlGender",
    enum: true
end

defmodule Google.Cloud.Dialogflow.Cx.V3.SynthesizeSpeechConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :speaking_rate, 1, type: :double, json_name: "speakingRate"
  field :pitch, 2, type: :double
  field :volume_gain_db, 3, type: :double, json_name: "volumeGainDb"
  field :effects_profile_id, 5, repeated: true, type: :string, json_name: "effectsProfileId"
  field :voice, 4, type: Google.Cloud.Dialogflow.Cx.V3.VoiceSelectionParams
end

defmodule Google.Cloud.Dialogflow.Cx.V3.OutputAudioConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :audio_encoding, 1,
    type: Google.Cloud.Dialogflow.Cx.V3.OutputAudioEncoding,
    json_name: "audioEncoding",
    enum: true,
    deprecated: false

  field :sample_rate_hertz, 2, type: :int32, json_name: "sampleRateHertz"

  field :synthesize_speech_config, 3,
    type: Google.Cloud.Dialogflow.Cx.V3.SynthesizeSpeechConfig,
    json_name: "synthesizeSpeechConfig"
end

defmodule Google.Cloud.Dialogflow.Cx.V3.TextToSpeechSettings.SynthesizeSpeechConfigsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Dialogflow.Cx.V3.SynthesizeSpeechConfig
end

defmodule Google.Cloud.Dialogflow.Cx.V3.TextToSpeechSettings do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :synthesize_speech_configs, 1,
    repeated: true,
    type: Google.Cloud.Dialogflow.Cx.V3.TextToSpeechSettings.SynthesizeSpeechConfigsEntry,
    json_name: "synthesizeSpeechConfigs",
    map: true
end