defmodule Google.Cloud.Mediatranslation.V1beta1.StreamingTranslateSpeechResponse.SpeechEventType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :SPEECH_EVENT_TYPE_UNSPECIFIED | :END_OF_SINGLE_UTTERANCE

  field :SPEECH_EVENT_TYPE_UNSPECIFIED, 0

  field :END_OF_SINGLE_UTTERANCE, 1
end

defmodule Google.Cloud.Mediatranslation.V1beta1.TranslateSpeechConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          audio_encoding: String.t(),
          source_language_code: String.t(),
          target_language_code: String.t(),
          sample_rate_hertz: integer,
          model: String.t()
        }

  defstruct [
    :audio_encoding,
    :source_language_code,
    :target_language_code,
    :sample_rate_hertz,
    :model
  ]

  field :audio_encoding, 1, type: :string
  field :source_language_code, 2, type: :string
  field :target_language_code, 3, type: :string
  field :sample_rate_hertz, 4, type: :int32
  field :model, 5, type: :string
end

defmodule Google.Cloud.Mediatranslation.V1beta1.StreamingTranslateSpeechConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          audio_config: Google.Cloud.Mediatranslation.V1beta1.TranslateSpeechConfig.t() | nil,
          single_utterance: boolean
        }

  defstruct [:audio_config, :single_utterance]

  field :audio_config, 1, type: Google.Cloud.Mediatranslation.V1beta1.TranslateSpeechConfig
  field :single_utterance, 2, type: :bool
end

defmodule Google.Cloud.Mediatranslation.V1beta1.StreamingTranslateSpeechRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          streaming_request: {atom, any}
        }

  defstruct [:streaming_request]

  oneof :streaming_request, 0

  field :streaming_config, 1,
    type: Google.Cloud.Mediatranslation.V1beta1.StreamingTranslateSpeechConfig,
    oneof: 0

  field :audio_content, 2, type: :bytes, oneof: 0
end

defmodule Google.Cloud.Mediatranslation.V1beta1.StreamingTranslateSpeechResult.TextTranslationResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          translation: String.t(),
          is_final: boolean
        }

  defstruct [:translation, :is_final]

  field :translation, 1, type: :string
  field :is_final, 2, type: :bool
end

defmodule Google.Cloud.Mediatranslation.V1beta1.StreamingTranslateSpeechResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          result: {atom, any}
        }

  defstruct [:result]

  oneof :result, 0

  field :text_translation_result, 1,
    type:
      Google.Cloud.Mediatranslation.V1beta1.StreamingTranslateSpeechResult.TextTranslationResult,
    oneof: 0
end

defmodule Google.Cloud.Mediatranslation.V1beta1.StreamingTranslateSpeechResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          error: Google.Rpc.Status.t() | nil,
          result: Google.Cloud.Mediatranslation.V1beta1.StreamingTranslateSpeechResult.t() | nil,
          speech_event_type:
            Google.Cloud.Mediatranslation.V1beta1.StreamingTranslateSpeechResponse.SpeechEventType.t()
        }

  defstruct [:error, :result, :speech_event_type]

  field :error, 1, type: Google.Rpc.Status
  field :result, 2, type: Google.Cloud.Mediatranslation.V1beta1.StreamingTranslateSpeechResult

  field :speech_event_type, 3,
    type: Google.Cloud.Mediatranslation.V1beta1.StreamingTranslateSpeechResponse.SpeechEventType,
    enum: true
end

defmodule Google.Cloud.Mediatranslation.V1beta1.SpeechTranslationService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.mediatranslation.v1beta1.SpeechTranslationService"

  rpc :StreamingTranslateSpeech,
      stream(Google.Cloud.Mediatranslation.V1beta1.StreamingTranslateSpeechRequest),
      stream(Google.Cloud.Mediatranslation.V1beta1.StreamingTranslateSpeechResponse)
end

defmodule Google.Cloud.Mediatranslation.V1beta1.SpeechTranslationService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Mediatranslation.V1beta1.SpeechTranslationService.Service
end
