defmodule Google.Cloud.Mediatranslation.V1alpha1.StreamingTranslateSpeechResponse.SpeechEventType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :SPEECH_EVENT_TYPE_UNSPECIFIED, 0
  field :END_OF_SINGLE_UTTERANCE, 1
end

defmodule Google.Cloud.Mediatranslation.V1alpha1.TranslateSpeechConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :audio_encoding, 1, type: :string, json_name: "audioEncoding", deprecated: false

  field :source_language_code, 2,
    type: :string,
    json_name: "sourceLanguageCode",
    deprecated: false

  field :target_language_code, 3,
    type: :string,
    json_name: "targetLanguageCode",
    deprecated: false

  field :alternative_source_language_codes, 6,
    repeated: true,
    type: :string,
    json_name: "alternativeSourceLanguageCodes",
    deprecated: false

  field :sample_rate_hertz, 4, type: :int32, json_name: "sampleRateHertz", deprecated: false
  field :model, 5, type: :string, deprecated: false
end

defmodule Google.Cloud.Mediatranslation.V1alpha1.StreamingTranslateSpeechConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :audio_config, 1,
    type: Google.Cloud.Mediatranslation.V1alpha1.TranslateSpeechConfig,
    json_name: "audioConfig",
    deprecated: false

  field :single_utterance, 2, type: :bool, json_name: "singleUtterance", deprecated: false
  field :stability, 3, type: :string, deprecated: false
  field :translation_mode, 4, type: :string, json_name: "translationMode", deprecated: false

  field :disable_interim_results, 5,
    type: :bool,
    json_name: "disableInterimResults",
    deprecated: false
end

defmodule Google.Cloud.Mediatranslation.V1alpha1.StreamingTranslateSpeechRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  oneof :streaming_request, 0

  field :streaming_config, 1,
    type: Google.Cloud.Mediatranslation.V1alpha1.StreamingTranslateSpeechConfig,
    json_name: "streamingConfig",
    oneof: 0

  field :audio_content, 2, type: :bytes, json_name: "audioContent", oneof: 0
end

defmodule Google.Cloud.Mediatranslation.V1alpha1.StreamingTranslateSpeechResult.TextTranslationResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :translation, 1, type: :string, deprecated: false
  field :is_final, 2, type: :bool, json_name: "isFinal", deprecated: false
end

defmodule Google.Cloud.Mediatranslation.V1alpha1.StreamingTranslateSpeechResult.AudioTranslationResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :audio_translation, 1, type: :bytes, json_name: "audioTranslation", deprecated: false
end

defmodule Google.Cloud.Mediatranslation.V1alpha1.StreamingTranslateSpeechResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :text_translation_result, 1,
    type:
      Google.Cloud.Mediatranslation.V1alpha1.StreamingTranslateSpeechResult.TextTranslationResult,
    json_name: "textTranslationResult"

  field :audio_translation_result, 2,
    type:
      Google.Cloud.Mediatranslation.V1alpha1.StreamingTranslateSpeechResult.AudioTranslationResult,
    json_name: "audioTranslationResult"

  field :recognition_result, 3, type: :string, json_name: "recognitionResult", deprecated: false

  field :detected_source_language_code, 4,
    type: :string,
    json_name: "detectedSourceLanguageCode",
    deprecated: false
end

defmodule Google.Cloud.Mediatranslation.V1alpha1.StreamingTranslateSpeechResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :error, 1, type: Google.Rpc.Status, deprecated: false

  field :result, 2,
    type: Google.Cloud.Mediatranslation.V1alpha1.StreamingTranslateSpeechResult,
    deprecated: false

  field :speech_event_type, 3,
    type: Google.Cloud.Mediatranslation.V1alpha1.StreamingTranslateSpeechResponse.SpeechEventType,
    json_name: "speechEventType",
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Mediatranslation.V1alpha1.SpeechTranslationService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.mediatranslation.v1alpha1.SpeechTranslationService",
    protoc_gen_elixir_version: "0.13.0"

  rpc :StreamingTranslateSpeech,
      stream(Google.Cloud.Mediatranslation.V1alpha1.StreamingTranslateSpeechRequest),
      stream(Google.Cloud.Mediatranslation.V1alpha1.StreamingTranslateSpeechResponse)
end

defmodule Google.Cloud.Mediatranslation.V1alpha1.SpeechTranslationService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Mediatranslation.V1alpha1.SpeechTranslationService.Service
end