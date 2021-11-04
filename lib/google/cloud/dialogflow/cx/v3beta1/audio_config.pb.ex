defmodule Google.Cloud.Dialogflow.Cx.V3beta1.AudioEncoding do
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

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.SpeechModelVariant do
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

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.SsmlVoiceGender do
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

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.OutputAudioEncoding do
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

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.SpeechWordInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          word: String.t(),
          start_offset: Google.Protobuf.Duration.t() | nil,
          end_offset: Google.Protobuf.Duration.t() | nil,
          confidence: float | :infinity | :negative_infinity | :nan
        }

  defstruct [:word, :start_offset, :end_offset, :confidence]

  field :word, 3, type: :string
  field :start_offset, 1, type: Google.Protobuf.Duration, json_name: "startOffset"
  field :end_offset, 2, type: Google.Protobuf.Duration, json_name: "endOffset"
  field :confidence, 4, type: :float

  def transform_module(), do: nil
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.InputAudioConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          audio_encoding: Google.Cloud.Dialogflow.Cx.V3beta1.AudioEncoding.t(),
          sample_rate_hertz: integer,
          enable_word_info: boolean,
          phrase_hints: [String.t()],
          model: String.t(),
          model_variant: Google.Cloud.Dialogflow.Cx.V3beta1.SpeechModelVariant.t(),
          single_utterance: boolean
        }

  defstruct [
    :audio_encoding,
    :sample_rate_hertz,
    :enable_word_info,
    :phrase_hints,
    :model,
    :model_variant,
    :single_utterance
  ]

  field :audio_encoding, 1,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.AudioEncoding,
    enum: true,
    json_name: "audioEncoding"

  field :sample_rate_hertz, 2, type: :int32, json_name: "sampleRateHertz"
  field :enable_word_info, 13, type: :bool, json_name: "enableWordInfo"
  field :phrase_hints, 4, repeated: true, type: :string, json_name: "phraseHints"
  field :model, 7, type: :string

  field :model_variant, 10,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.SpeechModelVariant,
    enum: true,
    json_name: "modelVariant"

  field :single_utterance, 8, type: :bool, json_name: "singleUtterance"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.VoiceSelectionParams do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          ssml_gender: Google.Cloud.Dialogflow.Cx.V3beta1.SsmlVoiceGender.t()
        }

  defstruct [:name, :ssml_gender]

  field :name, 1, type: :string

  field :ssml_gender, 2,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.SsmlVoiceGender,
    enum: true,
    json_name: "ssmlGender"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.SynthesizeSpeechConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          speaking_rate: float | :infinity | :negative_infinity | :nan,
          pitch: float | :infinity | :negative_infinity | :nan,
          volume_gain_db: float | :infinity | :negative_infinity | :nan,
          effects_profile_id: [String.t()],
          voice: Google.Cloud.Dialogflow.Cx.V3beta1.VoiceSelectionParams.t() | nil
        }

  defstruct [:speaking_rate, :pitch, :volume_gain_db, :effects_profile_id, :voice]

  field :speaking_rate, 1, type: :double, json_name: "speakingRate"
  field :pitch, 2, type: :double
  field :volume_gain_db, 3, type: :double, json_name: "volumeGainDb"
  field :effects_profile_id, 5, repeated: true, type: :string, json_name: "effectsProfileId"
  field :voice, 4, type: Google.Cloud.Dialogflow.Cx.V3beta1.VoiceSelectionParams

  def transform_module(), do: nil
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.OutputAudioConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          audio_encoding: Google.Cloud.Dialogflow.Cx.V3beta1.OutputAudioEncoding.t(),
          sample_rate_hertz: integer,
          synthesize_speech_config:
            Google.Cloud.Dialogflow.Cx.V3beta1.SynthesizeSpeechConfig.t() | nil
        }

  defstruct [:audio_encoding, :sample_rate_hertz, :synthesize_speech_config]

  field :audio_encoding, 1,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.OutputAudioEncoding,
    enum: true,
    json_name: "audioEncoding"

  field :sample_rate_hertz, 2, type: :int32, json_name: "sampleRateHertz"

  field :synthesize_speech_config, 3,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.SynthesizeSpeechConfig,
    json_name: "synthesizeSpeechConfig"

  def transform_module(), do: nil
end
