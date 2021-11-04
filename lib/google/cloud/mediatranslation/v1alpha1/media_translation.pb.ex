defmodule Google.Cloud.Mediatranslation.V1alpha1.StreamingTranslateSpeechResponse.SpeechEventType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :SPEECH_EVENT_TYPE_UNSPECIFIED | :END_OF_SINGLE_UTTERANCE

  field :SPEECH_EVENT_TYPE_UNSPECIFIED, 0
  field :END_OF_SINGLE_UTTERANCE, 1
end

defmodule Google.Cloud.Mediatranslation.V1alpha1.TranslateSpeechConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          audio_encoding: String.t(),
          source_language_code: String.t(),
          target_language_code: String.t(),
          alternative_source_language_codes: [String.t()],
          sample_rate_hertz: integer,
          model: String.t()
        }

  defstruct [
    :audio_encoding,
    :source_language_code,
    :target_language_code,
    :alternative_source_language_codes,
    :sample_rate_hertz,
    :model
  ]

  field :audio_encoding, 1, type: :string, json_name: "audioEncoding"
  field :source_language_code, 2, type: :string, json_name: "sourceLanguageCode"
  field :target_language_code, 3, type: :string, json_name: "targetLanguageCode"

  field :alternative_source_language_codes, 6,
    repeated: true,
    type: :string,
    json_name: "alternativeSourceLanguageCodes"

  field :sample_rate_hertz, 4, type: :int32, json_name: "sampleRateHertz"
  field :model, 5, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Mediatranslation.V1alpha1.StreamingTranslateSpeechConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          audio_config: Google.Cloud.Mediatranslation.V1alpha1.TranslateSpeechConfig.t() | nil,
          single_utterance: boolean,
          stability: String.t(),
          translation_mode: String.t(),
          disable_interim_results: boolean
        }

  defstruct [
    :audio_config,
    :single_utterance,
    :stability,
    :translation_mode,
    :disable_interim_results
  ]

  field :audio_config, 1,
    type: Google.Cloud.Mediatranslation.V1alpha1.TranslateSpeechConfig,
    json_name: "audioConfig"

  field :single_utterance, 2, type: :bool, json_name: "singleUtterance"
  field :stability, 3, type: :string
  field :translation_mode, 4, type: :string, json_name: "translationMode"
  field :disable_interim_results, 5, type: :bool, json_name: "disableInterimResults"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Mediatranslation.V1alpha1.StreamingTranslateSpeechRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          streaming_request:
            {:streaming_config,
             Google.Cloud.Mediatranslation.V1alpha1.StreamingTranslateSpeechConfig.t() | nil}
            | {:audio_content, binary}
        }

  defstruct [:streaming_request]

  oneof :streaming_request, 0

  field :streaming_config, 1,
    type: Google.Cloud.Mediatranslation.V1alpha1.StreamingTranslateSpeechConfig,
    json_name: "streamingConfig",
    oneof: 0

  field :audio_content, 2, type: :bytes, json_name: "audioContent", oneof: 0

  def transform_module(), do: nil
end

defmodule Google.Cloud.Mediatranslation.V1alpha1.StreamingTranslateSpeechResult.TextTranslationResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          translation: String.t(),
          is_final: boolean
        }

  defstruct [:translation, :is_final]

  field :translation, 1, type: :string
  field :is_final, 2, type: :bool, json_name: "isFinal"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Mediatranslation.V1alpha1.StreamingTranslateSpeechResult.AudioTranslationResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          audio_translation: binary
        }

  defstruct [:audio_translation]

  field :audio_translation, 1, type: :bytes, json_name: "audioTranslation"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Mediatranslation.V1alpha1.StreamingTranslateSpeechResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          text_translation_result:
            Google.Cloud.Mediatranslation.V1alpha1.StreamingTranslateSpeechResult.TextTranslationResult.t()
            | nil,
          audio_translation_result:
            Google.Cloud.Mediatranslation.V1alpha1.StreamingTranslateSpeechResult.AudioTranslationResult.t()
            | nil,
          recognition_result: String.t(),
          detected_source_language_code: String.t()
        }

  defstruct [
    :text_translation_result,
    :audio_translation_result,
    :recognition_result,
    :detected_source_language_code
  ]

  field :text_translation_result, 1,
    type:
      Google.Cloud.Mediatranslation.V1alpha1.StreamingTranslateSpeechResult.TextTranslationResult,
    json_name: "textTranslationResult"

  field :audio_translation_result, 2,
    type:
      Google.Cloud.Mediatranslation.V1alpha1.StreamingTranslateSpeechResult.AudioTranslationResult,
    json_name: "audioTranslationResult"

  field :recognition_result, 3, type: :string, json_name: "recognitionResult"
  field :detected_source_language_code, 4, type: :string, json_name: "detectedSourceLanguageCode"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Mediatranslation.V1alpha1.StreamingTranslateSpeechResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          error: Google.Rpc.Status.t() | nil,
          result: Google.Cloud.Mediatranslation.V1alpha1.StreamingTranslateSpeechResult.t() | nil,
          speech_event_type:
            Google.Cloud.Mediatranslation.V1alpha1.StreamingTranslateSpeechResponse.SpeechEventType.t()
        }

  defstruct [:error, :result, :speech_event_type]

  field :error, 1, type: Google.Rpc.Status
  field :result, 2, type: Google.Cloud.Mediatranslation.V1alpha1.StreamingTranslateSpeechResult

  field :speech_event_type, 3,
    type: Google.Cloud.Mediatranslation.V1alpha1.StreamingTranslateSpeechResponse.SpeechEventType,
    enum: true,
    json_name: "speechEventType"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Mediatranslation.V1alpha1.SpeechTranslationService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.mediatranslation.v1alpha1.SpeechTranslationService"

  rpc :StreamingTranslateSpeech,
      stream(Google.Cloud.Mediatranslation.V1alpha1.StreamingTranslateSpeechRequest),
      stream(Google.Cloud.Mediatranslation.V1alpha1.StreamingTranslateSpeechResponse)
end

defmodule Google.Cloud.Mediatranslation.V1alpha1.SpeechTranslationService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Mediatranslation.V1alpha1.SpeechTranslationService.Service
end
