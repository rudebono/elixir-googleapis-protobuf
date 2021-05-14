defmodule Google.Cloud.Dialogflow.V2.AudioEncoding do
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

defmodule Google.Cloud.Dialogflow.V2.SpeechModelVariant do
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

defmodule Google.Cloud.Dialogflow.V2.SsmlVoiceGender do
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

defmodule Google.Cloud.Dialogflow.V2.OutputAudioEncoding do
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

defmodule Google.Cloud.Dialogflow.V2.SpeechContext do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          phrases: [String.t()],
          boost: float | :infinity | :negative_infinity | :nan
        }

  defstruct [:phrases, :boost]

  field :phrases, 1, repeated: true, type: :string
  field :boost, 2, type: :float
end

defmodule Google.Cloud.Dialogflow.V2.SpeechWordInfo do
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
  field :start_offset, 1, type: Google.Protobuf.Duration
  field :end_offset, 2, type: Google.Protobuf.Duration
  field :confidence, 4, type: :float
end

defmodule Google.Cloud.Dialogflow.V2.InputAudioConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          audio_encoding: Google.Cloud.Dialogflow.V2.AudioEncoding.t(),
          sample_rate_hertz: integer,
          language_code: String.t(),
          enable_word_info: boolean,
          phrase_hints: [String.t()],
          speech_contexts: [Google.Cloud.Dialogflow.V2.SpeechContext.t()],
          model: String.t(),
          model_variant: Google.Cloud.Dialogflow.V2.SpeechModelVariant.t(),
          single_utterance: boolean,
          disable_no_speech_recognized_event: boolean
        }

  defstruct [
    :audio_encoding,
    :sample_rate_hertz,
    :language_code,
    :enable_word_info,
    :phrase_hints,
    :speech_contexts,
    :model,
    :model_variant,
    :single_utterance,
    :disable_no_speech_recognized_event
  ]

  field :audio_encoding, 1, type: Google.Cloud.Dialogflow.V2.AudioEncoding, enum: true
  field :sample_rate_hertz, 2, type: :int32
  field :language_code, 3, type: :string
  field :enable_word_info, 13, type: :bool
  field :phrase_hints, 4, repeated: true, type: :string, deprecated: true
  field :speech_contexts, 11, repeated: true, type: Google.Cloud.Dialogflow.V2.SpeechContext
  field :model, 7, type: :string
  field :model_variant, 10, type: Google.Cloud.Dialogflow.V2.SpeechModelVariant, enum: true
  field :single_utterance, 8, type: :bool
  field :disable_no_speech_recognized_event, 14, type: :bool
end

defmodule Google.Cloud.Dialogflow.V2.VoiceSelectionParams do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          ssml_gender: Google.Cloud.Dialogflow.V2.SsmlVoiceGender.t()
        }

  defstruct [:name, :ssml_gender]

  field :name, 1, type: :string
  field :ssml_gender, 2, type: Google.Cloud.Dialogflow.V2.SsmlVoiceGender, enum: true
end

defmodule Google.Cloud.Dialogflow.V2.SynthesizeSpeechConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          speaking_rate: float | :infinity | :negative_infinity | :nan,
          pitch: float | :infinity | :negative_infinity | :nan,
          volume_gain_db: float | :infinity | :negative_infinity | :nan,
          effects_profile_id: [String.t()],
          voice: Google.Cloud.Dialogflow.V2.VoiceSelectionParams.t() | nil
        }

  defstruct [:speaking_rate, :pitch, :volume_gain_db, :effects_profile_id, :voice]

  field :speaking_rate, 1, type: :double
  field :pitch, 2, type: :double
  field :volume_gain_db, 3, type: :double
  field :effects_profile_id, 5, repeated: true, type: :string
  field :voice, 4, type: Google.Cloud.Dialogflow.V2.VoiceSelectionParams
end

defmodule Google.Cloud.Dialogflow.V2.OutputAudioConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          audio_encoding: Google.Cloud.Dialogflow.V2.OutputAudioEncoding.t(),
          sample_rate_hertz: integer,
          synthesize_speech_config: Google.Cloud.Dialogflow.V2.SynthesizeSpeechConfig.t() | nil
        }

  defstruct [:audio_encoding, :sample_rate_hertz, :synthesize_speech_config]

  field :audio_encoding, 1, type: Google.Cloud.Dialogflow.V2.OutputAudioEncoding, enum: true
  field :sample_rate_hertz, 2, type: :int32
  field :synthesize_speech_config, 3, type: Google.Cloud.Dialogflow.V2.SynthesizeSpeechConfig
end

defmodule Google.Cloud.Dialogflow.V2.SpeechToTextConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          speech_model_variant: Google.Cloud.Dialogflow.V2.SpeechModelVariant.t()
        }

  defstruct [:speech_model_variant]

  field :speech_model_variant, 1, type: Google.Cloud.Dialogflow.V2.SpeechModelVariant, enum: true
end
