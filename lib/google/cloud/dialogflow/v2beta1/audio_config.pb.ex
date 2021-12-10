defmodule Google.Cloud.Dialogflow.V2beta1.AudioEncoding do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :AUDIO_ENCODING_UNSPECIFIED
          | :AUDIO_ENCODING_LINEAR_16
          | :AUDIO_ENCODING_FLAC
          | :AUDIO_ENCODING_MULAW
          | :AUDIO_ENCODING_AMR
          | :AUDIO_ENCODING_AMR_WB
          | :AUDIO_ENCODING_OGG_OPUS
          | :AUDIO_ENCODING_SPEEX_WITH_HEADER_BYTE

  field :AUDIO_ENCODING_UNSPECIFIED, 0
  field :AUDIO_ENCODING_LINEAR_16, 1
  field :AUDIO_ENCODING_FLAC, 2
  field :AUDIO_ENCODING_MULAW, 3
  field :AUDIO_ENCODING_AMR, 4
  field :AUDIO_ENCODING_AMR_WB, 5
  field :AUDIO_ENCODING_OGG_OPUS, 6
  field :AUDIO_ENCODING_SPEEX_WITH_HEADER_BYTE, 7
end
defmodule Google.Cloud.Dialogflow.V2beta1.SpeechModelVariant do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :SPEECH_MODEL_VARIANT_UNSPECIFIED
          | :USE_BEST_AVAILABLE
          | :USE_STANDARD
          | :USE_ENHANCED

  field :SPEECH_MODEL_VARIANT_UNSPECIFIED, 0
  field :USE_BEST_AVAILABLE, 1
  field :USE_STANDARD, 2
  field :USE_ENHANCED, 3
end
defmodule Google.Cloud.Dialogflow.V2beta1.SsmlVoiceGender do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :SSML_VOICE_GENDER_UNSPECIFIED
          | :SSML_VOICE_GENDER_MALE
          | :SSML_VOICE_GENDER_FEMALE
          | :SSML_VOICE_GENDER_NEUTRAL

  field :SSML_VOICE_GENDER_UNSPECIFIED, 0
  field :SSML_VOICE_GENDER_MALE, 1
  field :SSML_VOICE_GENDER_FEMALE, 2
  field :SSML_VOICE_GENDER_NEUTRAL, 3
end
defmodule Google.Cloud.Dialogflow.V2beta1.OutputAudioEncoding do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :OUTPUT_AUDIO_ENCODING_UNSPECIFIED
          | :OUTPUT_AUDIO_ENCODING_LINEAR_16
          | :OUTPUT_AUDIO_ENCODING_MP3
          | :OUTPUT_AUDIO_ENCODING_MP3_64_KBPS
          | :OUTPUT_AUDIO_ENCODING_OGG_OPUS
          | :OUTPUT_AUDIO_ENCODING_MULAW

  field :OUTPUT_AUDIO_ENCODING_UNSPECIFIED, 0
  field :OUTPUT_AUDIO_ENCODING_LINEAR_16, 1
  field :OUTPUT_AUDIO_ENCODING_MP3, 2
  field :OUTPUT_AUDIO_ENCODING_MP3_64_KBPS, 4
  field :OUTPUT_AUDIO_ENCODING_OGG_OPUS, 3
  field :OUTPUT_AUDIO_ENCODING_MULAW, 5
end
defmodule Google.Cloud.Dialogflow.V2beta1.TelephonyDtmf do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :TELEPHONY_DTMF_UNSPECIFIED
          | :DTMF_ONE
          | :DTMF_TWO
          | :DTMF_THREE
          | :DTMF_FOUR
          | :DTMF_FIVE
          | :DTMF_SIX
          | :DTMF_SEVEN
          | :DTMF_EIGHT
          | :DTMF_NINE
          | :DTMF_ZERO
          | :DTMF_A
          | :DTMF_B
          | :DTMF_C
          | :DTMF_D
          | :DTMF_STAR
          | :DTMF_POUND

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
defmodule Google.Cloud.Dialogflow.V2beta1.SpeechContext do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          phrases: [String.t()],
          boost: float | :infinity | :negative_infinity | :nan
        }

  defstruct phrases: [],
            boost: 0.0

  field :phrases, 1, repeated: true, type: :string
  field :boost, 2, type: :float
end
defmodule Google.Cloud.Dialogflow.V2beta1.SpeechWordInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          word: String.t(),
          start_offset: Google.Protobuf.Duration.t() | nil,
          end_offset: Google.Protobuf.Duration.t() | nil,
          confidence: float | :infinity | :negative_infinity | :nan
        }

  defstruct word: "",
            start_offset: nil,
            end_offset: nil,
            confidence: 0.0

  field :word, 3, type: :string
  field :start_offset, 1, type: Google.Protobuf.Duration, json_name: "startOffset"
  field :end_offset, 2, type: Google.Protobuf.Duration, json_name: "endOffset"
  field :confidence, 4, type: :float
end
defmodule Google.Cloud.Dialogflow.V2beta1.InputAudioConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          audio_encoding: Google.Cloud.Dialogflow.V2beta1.AudioEncoding.t(),
          sample_rate_hertz: integer,
          language_code: String.t(),
          enable_word_info: boolean,
          phrase_hints: [String.t()],
          speech_contexts: [Google.Cloud.Dialogflow.V2beta1.SpeechContext.t()],
          model: String.t(),
          model_variant: Google.Cloud.Dialogflow.V2beta1.SpeechModelVariant.t(),
          single_utterance: boolean,
          disable_no_speech_recognized_event: boolean
        }

  defstruct audio_encoding: :AUDIO_ENCODING_UNSPECIFIED,
            sample_rate_hertz: 0,
            language_code: "",
            enable_word_info: false,
            phrase_hints: [],
            speech_contexts: [],
            model: "",
            model_variant: :SPEECH_MODEL_VARIANT_UNSPECIFIED,
            single_utterance: false,
            disable_no_speech_recognized_event: false

  field :audio_encoding, 1,
    type: Google.Cloud.Dialogflow.V2beta1.AudioEncoding,
    json_name: "audioEncoding",
    enum: true

  field :sample_rate_hertz, 2, type: :int32, json_name: "sampleRateHertz"
  field :language_code, 3, type: :string, json_name: "languageCode"
  field :enable_word_info, 13, type: :bool, json_name: "enableWordInfo"

  field :phrase_hints, 4,
    repeated: true,
    type: :string,
    json_name: "phraseHints",
    deprecated: true

  field :speech_contexts, 11,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2beta1.SpeechContext,
    json_name: "speechContexts"

  field :model, 7, type: :string

  field :model_variant, 10,
    type: Google.Cloud.Dialogflow.V2beta1.SpeechModelVariant,
    json_name: "modelVariant",
    enum: true

  field :single_utterance, 8, type: :bool, json_name: "singleUtterance"

  field :disable_no_speech_recognized_event, 14,
    type: :bool,
    json_name: "disableNoSpeechRecognizedEvent"
end
defmodule Google.Cloud.Dialogflow.V2beta1.VoiceSelectionParams do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          ssml_gender: Google.Cloud.Dialogflow.V2beta1.SsmlVoiceGender.t()
        }

  defstruct name: "",
            ssml_gender: :SSML_VOICE_GENDER_UNSPECIFIED

  field :name, 1, type: :string

  field :ssml_gender, 2,
    type: Google.Cloud.Dialogflow.V2beta1.SsmlVoiceGender,
    json_name: "ssmlGender",
    enum: true
end
defmodule Google.Cloud.Dialogflow.V2beta1.SynthesizeSpeechConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          speaking_rate: float | :infinity | :negative_infinity | :nan,
          pitch: float | :infinity | :negative_infinity | :nan,
          volume_gain_db: float | :infinity | :negative_infinity | :nan,
          effects_profile_id: [String.t()],
          voice: Google.Cloud.Dialogflow.V2beta1.VoiceSelectionParams.t() | nil
        }

  defstruct speaking_rate: 0.0,
            pitch: 0.0,
            volume_gain_db: 0.0,
            effects_profile_id: [],
            voice: nil

  field :speaking_rate, 1, type: :double, json_name: "speakingRate"
  field :pitch, 2, type: :double
  field :volume_gain_db, 3, type: :double, json_name: "volumeGainDb"
  field :effects_profile_id, 5, repeated: true, type: :string, json_name: "effectsProfileId"
  field :voice, 4, type: Google.Cloud.Dialogflow.V2beta1.VoiceSelectionParams
end
defmodule Google.Cloud.Dialogflow.V2beta1.OutputAudioConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          audio_encoding: Google.Cloud.Dialogflow.V2beta1.OutputAudioEncoding.t(),
          sample_rate_hertz: integer,
          synthesize_speech_config:
            Google.Cloud.Dialogflow.V2beta1.SynthesizeSpeechConfig.t() | nil
        }

  defstruct audio_encoding: :OUTPUT_AUDIO_ENCODING_UNSPECIFIED,
            sample_rate_hertz: 0,
            synthesize_speech_config: nil

  field :audio_encoding, 1,
    type: Google.Cloud.Dialogflow.V2beta1.OutputAudioEncoding,
    json_name: "audioEncoding",
    enum: true,
    deprecated: false

  field :sample_rate_hertz, 2, type: :int32, json_name: "sampleRateHertz"

  field :synthesize_speech_config, 3,
    type: Google.Cloud.Dialogflow.V2beta1.SynthesizeSpeechConfig,
    json_name: "synthesizeSpeechConfig"
end
defmodule Google.Cloud.Dialogflow.V2beta1.TelephonyDtmfEvents do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          dtmf_events: [Google.Cloud.Dialogflow.V2beta1.TelephonyDtmf.t()]
        }

  defstruct dtmf_events: []

  field :dtmf_events, 1,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2beta1.TelephonyDtmf,
    json_name: "dtmfEvents",
    enum: true
end
defmodule Google.Cloud.Dialogflow.V2beta1.SpeechToTextConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          speech_model_variant: Google.Cloud.Dialogflow.V2beta1.SpeechModelVariant.t()
        }

  defstruct speech_model_variant: :SPEECH_MODEL_VARIANT_UNSPECIFIED

  field :speech_model_variant, 1,
    type: Google.Cloud.Dialogflow.V2beta1.SpeechModelVariant,
    json_name: "speechModelVariant",
    enum: true,
    deprecated: false
end
