defmodule Google.Cloud.Dialogflow.V2.TelephonyDtmf do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :TELEPHONY_DTMF_UNSPECIFIED, 0
  field :DTMF_ONE, 1
  field :DTMF_TWO, 2
  field :DTMF_THREE, 3
  field :DTMF_FOUR, 4
  field :DTMF_FIVE, 5
  field :DTMF_SIX, 6
  field :DTMF_SEVEN, 7
  field :DTMF_EIGHT, 8
  field :DTMF_NINE, 9
  field :DTMF_ZERO, 10
  field :DTMF_A, 11
  field :DTMF_B, 12
  field :DTMF_C, 13
  field :DTMF_D, 14
  field :DTMF_STAR, 15
  field :DTMF_POUND, 16
end

defmodule Google.Cloud.Dialogflow.V2.AudioEncoding do
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

defmodule Google.Cloud.Dialogflow.V2.SpeechModelVariant do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :SPEECH_MODEL_VARIANT_UNSPECIFIED, 0
  field :USE_BEST_AVAILABLE, 1
  field :USE_STANDARD, 2
  field :USE_ENHANCED, 3
end

defmodule Google.Cloud.Dialogflow.V2.SsmlVoiceGender do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :SSML_VOICE_GENDER_UNSPECIFIED, 0
  field :SSML_VOICE_GENDER_MALE, 1
  field :SSML_VOICE_GENDER_FEMALE, 2
  field :SSML_VOICE_GENDER_NEUTRAL, 3
end

defmodule Google.Cloud.Dialogflow.V2.OutputAudioEncoding do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :OUTPUT_AUDIO_ENCODING_UNSPECIFIED, 0
  field :OUTPUT_AUDIO_ENCODING_LINEAR_16, 1
  field :OUTPUT_AUDIO_ENCODING_MP3, 2
  field :OUTPUT_AUDIO_ENCODING_MP3_64_KBPS, 4
  field :OUTPUT_AUDIO_ENCODING_OGG_OPUS, 3
  field :OUTPUT_AUDIO_ENCODING_MULAW, 5
end

defmodule Google.Cloud.Dialogflow.V2.SpeechContext do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :phrases, 1, repeated: true, type: :string, deprecated: false
  field :boost, 2, type: :float, deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2.SpeechWordInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :word, 3, type: :string
  field :start_offset, 1, type: Google.Protobuf.Duration, json_name: "startOffset"
  field :end_offset, 2, type: Google.Protobuf.Duration, json_name: "endOffset"
  field :confidence, 4, type: :float
end

defmodule Google.Cloud.Dialogflow.V2.InputAudioConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :audio_encoding, 1,
    type: Google.Cloud.Dialogflow.V2.AudioEncoding,
    json_name: "audioEncoding",
    enum: true,
    deprecated: false

  field :sample_rate_hertz, 2, type: :int32, json_name: "sampleRateHertz", deprecated: false
  field :language_code, 3, type: :string, json_name: "languageCode", deprecated: false
  field :enable_word_info, 13, type: :bool, json_name: "enableWordInfo"

  field :phrase_hints, 4,
    repeated: true,
    type: :string,
    json_name: "phraseHints",
    deprecated: true

  field :speech_contexts, 11,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2.SpeechContext,
    json_name: "speechContexts"

  field :model, 7, type: :string

  field :model_variant, 10,
    type: Google.Cloud.Dialogflow.V2.SpeechModelVariant,
    json_name: "modelVariant",
    enum: true

  field :single_utterance, 8, type: :bool, json_name: "singleUtterance"

  field :disable_no_speech_recognized_event, 14,
    type: :bool,
    json_name: "disableNoSpeechRecognizedEvent"

  field :enable_automatic_punctuation, 17, type: :bool, json_name: "enableAutomaticPunctuation"
end

defmodule Google.Cloud.Dialogflow.V2.VoiceSelectionParams do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :ssml_gender, 2,
    type: Google.Cloud.Dialogflow.V2.SsmlVoiceGender,
    json_name: "ssmlGender",
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2.SynthesizeSpeechConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :speaking_rate, 1, type: :double, json_name: "speakingRate", deprecated: false
  field :pitch, 2, type: :double, deprecated: false
  field :volume_gain_db, 3, type: :double, json_name: "volumeGainDb", deprecated: false

  field :effects_profile_id, 5,
    repeated: true,
    type: :string,
    json_name: "effectsProfileId",
    deprecated: false

  field :voice, 4, type: Google.Cloud.Dialogflow.V2.VoiceSelectionParams, deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2.OutputAudioConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :audio_encoding, 1,
    type: Google.Cloud.Dialogflow.V2.OutputAudioEncoding,
    json_name: "audioEncoding",
    enum: true,
    deprecated: false

  field :sample_rate_hertz, 2, type: :int32, json_name: "sampleRateHertz"

  field :synthesize_speech_config, 3,
    type: Google.Cloud.Dialogflow.V2.SynthesizeSpeechConfig,
    json_name: "synthesizeSpeechConfig"
end

defmodule Google.Cloud.Dialogflow.V2.TelephonyDtmfEvents do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :dtmf_events, 1,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2.TelephonyDtmf,
    json_name: "dtmfEvents",
    enum: true
end

defmodule Google.Cloud.Dialogflow.V2.SpeechToTextConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :speech_model_variant, 1,
    type: Google.Cloud.Dialogflow.V2.SpeechModelVariant,
    json_name: "speechModelVariant",
    enum: true

  field :model, 2, type: :string
  field :use_timeout_based_endpointing, 11, type: :bool, json_name: "useTimeoutBasedEndpointing"
end