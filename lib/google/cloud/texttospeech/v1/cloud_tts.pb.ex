defmodule Google.Cloud.Texttospeech.V1.SsmlVoiceGender do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :SSML_VOICE_GENDER_UNSPECIFIED | :MALE | :FEMALE | :NEUTRAL

  field :SSML_VOICE_GENDER_UNSPECIFIED, 0

  field :MALE, 1

  field :FEMALE, 2

  field :NEUTRAL, 3
end

defmodule Google.Cloud.Texttospeech.V1.AudioEncoding do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :AUDIO_ENCODING_UNSPECIFIED | :LINEAR16 | :MP3 | :OGG_OPUS

  field :AUDIO_ENCODING_UNSPECIFIED, 0

  field :LINEAR16, 1

  field :MP3, 2

  field :OGG_OPUS, 3
end

defmodule Google.Cloud.Texttospeech.V1.ListVoicesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          language_code: String.t()
        }

  defstruct [:language_code]

  field :language_code, 1, type: :string
end

defmodule Google.Cloud.Texttospeech.V1.ListVoicesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          voices: [Google.Cloud.Texttospeech.V1.Voice.t()]
        }

  defstruct [:voices]

  field :voices, 1, repeated: true, type: Google.Cloud.Texttospeech.V1.Voice
end

defmodule Google.Cloud.Texttospeech.V1.Voice do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          language_codes: [String.t()],
          name: String.t(),
          ssml_gender: Google.Cloud.Texttospeech.V1.SsmlVoiceGender.t(),
          natural_sample_rate_hertz: integer
        }

  defstruct [:language_codes, :name, :ssml_gender, :natural_sample_rate_hertz]

  field :language_codes, 1, repeated: true, type: :string
  field :name, 2, type: :string
  field :ssml_gender, 3, type: Google.Cloud.Texttospeech.V1.SsmlVoiceGender, enum: true
  field :natural_sample_rate_hertz, 4, type: :int32
end

defmodule Google.Cloud.Texttospeech.V1.SynthesizeSpeechRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          input: Google.Cloud.Texttospeech.V1.SynthesisInput.t() | nil,
          voice: Google.Cloud.Texttospeech.V1.VoiceSelectionParams.t() | nil,
          audio_config: Google.Cloud.Texttospeech.V1.AudioConfig.t() | nil
        }

  defstruct [:input, :voice, :audio_config]

  field :input, 1, type: Google.Cloud.Texttospeech.V1.SynthesisInput
  field :voice, 2, type: Google.Cloud.Texttospeech.V1.VoiceSelectionParams
  field :audio_config, 3, type: Google.Cloud.Texttospeech.V1.AudioConfig
end

defmodule Google.Cloud.Texttospeech.V1.SynthesisInput do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          input_source: {atom, any}
        }

  defstruct [:input_source]

  oneof :input_source, 0
  field :text, 1, type: :string, oneof: 0
  field :ssml, 2, type: :string, oneof: 0
end

defmodule Google.Cloud.Texttospeech.V1.VoiceSelectionParams do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          language_code: String.t(),
          name: String.t(),
          ssml_gender: Google.Cloud.Texttospeech.V1.SsmlVoiceGender.t()
        }

  defstruct [:language_code, :name, :ssml_gender]

  field :language_code, 1, type: :string
  field :name, 2, type: :string
  field :ssml_gender, 3, type: Google.Cloud.Texttospeech.V1.SsmlVoiceGender, enum: true
end

defmodule Google.Cloud.Texttospeech.V1.AudioConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          audio_encoding: Google.Cloud.Texttospeech.V1.AudioEncoding.t(),
          speaking_rate: float | :infinity | :negative_infinity | :nan,
          pitch: float | :infinity | :negative_infinity | :nan,
          volume_gain_db: float | :infinity | :negative_infinity | :nan,
          sample_rate_hertz: integer,
          effects_profile_id: [String.t()]
        }

  defstruct [
    :audio_encoding,
    :speaking_rate,
    :pitch,
    :volume_gain_db,
    :sample_rate_hertz,
    :effects_profile_id
  ]

  field :audio_encoding, 1, type: Google.Cloud.Texttospeech.V1.AudioEncoding, enum: true
  field :speaking_rate, 2, type: :double
  field :pitch, 3, type: :double
  field :volume_gain_db, 4, type: :double
  field :sample_rate_hertz, 5, type: :int32
  field :effects_profile_id, 6, repeated: true, type: :string
end

defmodule Google.Cloud.Texttospeech.V1.SynthesizeSpeechResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          audio_content: binary
        }

  defstruct [:audio_content]

  field :audio_content, 1, type: :bytes
end
