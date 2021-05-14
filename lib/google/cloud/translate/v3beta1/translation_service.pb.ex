defmodule Google.Cloud.Translation.V3beta1.BatchTranslateMetadata.State do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :STATE_UNSPECIFIED
          | :RUNNING
          | :SUCCEEDED
          | :FAILED
          | :CANCELLING
          | :CANCELLED

  field :STATE_UNSPECIFIED, 0

  field :RUNNING, 1

  field :SUCCEEDED, 2

  field :FAILED, 3

  field :CANCELLING, 4

  field :CANCELLED, 5
end

defmodule Google.Cloud.Translation.V3beta1.CreateGlossaryMetadata.State do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :STATE_UNSPECIFIED
          | :RUNNING
          | :SUCCEEDED
          | :FAILED
          | :CANCELLING
          | :CANCELLED

  field :STATE_UNSPECIFIED, 0

  field :RUNNING, 1

  field :SUCCEEDED, 2

  field :FAILED, 3

  field :CANCELLING, 4

  field :CANCELLED, 5
end

defmodule Google.Cloud.Translation.V3beta1.DeleteGlossaryMetadata.State do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :STATE_UNSPECIFIED
          | :RUNNING
          | :SUCCEEDED
          | :FAILED
          | :CANCELLING
          | :CANCELLED

  field :STATE_UNSPECIFIED, 0

  field :RUNNING, 1

  field :SUCCEEDED, 2

  field :FAILED, 3

  field :CANCELLING, 4

  field :CANCELLED, 5
end

defmodule Google.Cloud.Translation.V3beta1.BatchTranslateDocumentMetadata.State do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :STATE_UNSPECIFIED
          | :RUNNING
          | :SUCCEEDED
          | :FAILED
          | :CANCELLING
          | :CANCELLED

  field :STATE_UNSPECIFIED, 0

  field :RUNNING, 1

  field :SUCCEEDED, 2

  field :FAILED, 3

  field :CANCELLING, 4

  field :CANCELLED, 5
end

defmodule Google.Cloud.Translation.V3beta1.TranslateTextGlossaryConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          glossary: String.t(),
          ignore_case: boolean
        }

  defstruct [:glossary, :ignore_case]

  field :glossary, 1, type: :string
  field :ignore_case, 2, type: :bool
end

defmodule Google.Cloud.Translation.V3beta1.TranslateTextRequest.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Translation.V3beta1.TranslateTextRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          contents: [String.t()],
          mime_type: String.t(),
          source_language_code: String.t(),
          target_language_code: String.t(),
          parent: String.t(),
          model: String.t(),
          glossary_config: Google.Cloud.Translation.V3beta1.TranslateTextGlossaryConfig.t() | nil,
          labels: %{String.t() => String.t()}
        }

  defstruct [
    :contents,
    :mime_type,
    :source_language_code,
    :target_language_code,
    :parent,
    :model,
    :glossary_config,
    :labels
  ]

  field :contents, 1, repeated: true, type: :string
  field :mime_type, 3, type: :string
  field :source_language_code, 4, type: :string
  field :target_language_code, 5, type: :string
  field :parent, 8, type: :string
  field :model, 6, type: :string
  field :glossary_config, 7, type: Google.Cloud.Translation.V3beta1.TranslateTextGlossaryConfig

  field :labels, 10,
    repeated: true,
    type: Google.Cloud.Translation.V3beta1.TranslateTextRequest.LabelsEntry,
    map: true
end

defmodule Google.Cloud.Translation.V3beta1.TranslateTextResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          translations: [Google.Cloud.Translation.V3beta1.Translation.t()],
          glossary_translations: [Google.Cloud.Translation.V3beta1.Translation.t()]
        }

  defstruct [:translations, :glossary_translations]

  field :translations, 1, repeated: true, type: Google.Cloud.Translation.V3beta1.Translation

  field :glossary_translations, 3,
    repeated: true,
    type: Google.Cloud.Translation.V3beta1.Translation
end

defmodule Google.Cloud.Translation.V3beta1.Translation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          translated_text: String.t(),
          model: String.t(),
          detected_language_code: String.t(),
          glossary_config: Google.Cloud.Translation.V3beta1.TranslateTextGlossaryConfig.t() | nil
        }

  defstruct [:translated_text, :model, :detected_language_code, :glossary_config]

  field :translated_text, 1, type: :string
  field :model, 2, type: :string
  field :detected_language_code, 4, type: :string
  field :glossary_config, 3, type: Google.Cloud.Translation.V3beta1.TranslateTextGlossaryConfig
end

defmodule Google.Cloud.Translation.V3beta1.DetectLanguageRequest.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Translation.V3beta1.DetectLanguageRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          source: {atom, any},
          parent: String.t(),
          model: String.t(),
          mime_type: String.t(),
          labels: %{String.t() => String.t()}
        }

  defstruct [:source, :parent, :model, :mime_type, :labels]

  oneof :source, 0
  field :parent, 5, type: :string
  field :model, 4, type: :string
  field :content, 1, type: :string, oneof: 0
  field :mime_type, 3, type: :string

  field :labels, 6,
    repeated: true,
    type: Google.Cloud.Translation.V3beta1.DetectLanguageRequest.LabelsEntry,
    map: true
end

defmodule Google.Cloud.Translation.V3beta1.DetectedLanguage do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          language_code: String.t(),
          confidence: float | :infinity | :negative_infinity | :nan
        }

  defstruct [:language_code, :confidence]

  field :language_code, 1, type: :string
  field :confidence, 2, type: :float
end

defmodule Google.Cloud.Translation.V3beta1.DetectLanguageResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          languages: [Google.Cloud.Translation.V3beta1.DetectedLanguage.t()]
        }

  defstruct [:languages]

  field :languages, 1, repeated: true, type: Google.Cloud.Translation.V3beta1.DetectedLanguage
end

defmodule Google.Cloud.Translation.V3beta1.GetSupportedLanguagesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          display_language_code: String.t(),
          model: String.t()
        }

  defstruct [:parent, :display_language_code, :model]

  field :parent, 3, type: :string
  field :display_language_code, 1, type: :string
  field :model, 2, type: :string
end

defmodule Google.Cloud.Translation.V3beta1.SupportedLanguages do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          languages: [Google.Cloud.Translation.V3beta1.SupportedLanguage.t()]
        }

  defstruct [:languages]

  field :languages, 1, repeated: true, type: Google.Cloud.Translation.V3beta1.SupportedLanguage
end

defmodule Google.Cloud.Translation.V3beta1.SupportedLanguage do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          language_code: String.t(),
          display_name: String.t(),
          support_source: boolean,
          support_target: boolean
        }

  defstruct [:language_code, :display_name, :support_source, :support_target]

  field :language_code, 1, type: :string
  field :display_name, 2, type: :string
  field :support_source, 3, type: :bool
  field :support_target, 4, type: :bool
end

defmodule Google.Cloud.Translation.V3beta1.GcsSource do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          input_uri: String.t()
        }

  defstruct [:input_uri]

  field :input_uri, 1, type: :string
end

defmodule Google.Cloud.Translation.V3beta1.InputConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          source: {atom, any},
          mime_type: String.t()
        }

  defstruct [:source, :mime_type]

  oneof :source, 0
  field :mime_type, 1, type: :string
  field :gcs_source, 2, type: Google.Cloud.Translation.V3beta1.GcsSource, oneof: 0
end

defmodule Google.Cloud.Translation.V3beta1.GcsDestination do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          output_uri_prefix: String.t()
        }

  defstruct [:output_uri_prefix]

  field :output_uri_prefix, 1, type: :string
end

defmodule Google.Cloud.Translation.V3beta1.OutputConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          destination: {atom, any}
        }

  defstruct [:destination]

  oneof :destination, 0
  field :gcs_destination, 1, type: Google.Cloud.Translation.V3beta1.GcsDestination, oneof: 0
end

defmodule Google.Cloud.Translation.V3beta1.DocumentInputConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          source: {atom, any},
          mime_type: String.t()
        }

  defstruct [:source, :mime_type]

  oneof :source, 0
  field :content, 1, type: :bytes, oneof: 0
  field :gcs_source, 2, type: Google.Cloud.Translation.V3beta1.GcsSource, oneof: 0
  field :mime_type, 4, type: :string
end

defmodule Google.Cloud.Translation.V3beta1.DocumentOutputConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          destination: {atom, any},
          mime_type: String.t()
        }

  defstruct [:destination, :mime_type]

  oneof :destination, 0
  field :gcs_destination, 1, type: Google.Cloud.Translation.V3beta1.GcsDestination, oneof: 0
  field :mime_type, 3, type: :string
end

defmodule Google.Cloud.Translation.V3beta1.TranslateDocumentRequest.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Translation.V3beta1.TranslateDocumentRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          source_language_code: String.t(),
          target_language_code: String.t(),
          document_input_config: Google.Cloud.Translation.V3beta1.DocumentInputConfig.t() | nil,
          document_output_config: Google.Cloud.Translation.V3beta1.DocumentOutputConfig.t() | nil,
          model: String.t(),
          glossary_config: Google.Cloud.Translation.V3beta1.TranslateTextGlossaryConfig.t() | nil,
          labels: %{String.t() => String.t()}
        }

  defstruct [
    :parent,
    :source_language_code,
    :target_language_code,
    :document_input_config,
    :document_output_config,
    :model,
    :glossary_config,
    :labels
  ]

  field :parent, 1, type: :string
  field :source_language_code, 2, type: :string
  field :target_language_code, 3, type: :string
  field :document_input_config, 4, type: Google.Cloud.Translation.V3beta1.DocumentInputConfig
  field :document_output_config, 5, type: Google.Cloud.Translation.V3beta1.DocumentOutputConfig
  field :model, 6, type: :string
  field :glossary_config, 7, type: Google.Cloud.Translation.V3beta1.TranslateTextGlossaryConfig

  field :labels, 8,
    repeated: true,
    type: Google.Cloud.Translation.V3beta1.TranslateDocumentRequest.LabelsEntry,
    map: true
end

defmodule Google.Cloud.Translation.V3beta1.DocumentTranslation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          byte_stream_outputs: [binary],
          mime_type: String.t(),
          detected_language_code: String.t()
        }

  defstruct [:byte_stream_outputs, :mime_type, :detected_language_code]

  field :byte_stream_outputs, 1, repeated: true, type: :bytes
  field :mime_type, 2, type: :string
  field :detected_language_code, 3, type: :string
end

defmodule Google.Cloud.Translation.V3beta1.TranslateDocumentResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          document_translation: Google.Cloud.Translation.V3beta1.DocumentTranslation.t() | nil,
          glossary_document_translation:
            Google.Cloud.Translation.V3beta1.DocumentTranslation.t() | nil,
          model: String.t(),
          glossary_config: Google.Cloud.Translation.V3beta1.TranslateTextGlossaryConfig.t() | nil
        }

  defstruct [:document_translation, :glossary_document_translation, :model, :glossary_config]

  field :document_translation, 1, type: Google.Cloud.Translation.V3beta1.DocumentTranslation

  field :glossary_document_translation, 2,
    type: Google.Cloud.Translation.V3beta1.DocumentTranslation

  field :model, 3, type: :string
  field :glossary_config, 4, type: Google.Cloud.Translation.V3beta1.TranslateTextGlossaryConfig
end

defmodule Google.Cloud.Translation.V3beta1.BatchTranslateTextRequest.ModelsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Translation.V3beta1.BatchTranslateTextRequest.GlossariesEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: Google.Cloud.Translation.V3beta1.TranslateTextGlossaryConfig.t() | nil
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Translation.V3beta1.TranslateTextGlossaryConfig
end

defmodule Google.Cloud.Translation.V3beta1.BatchTranslateTextRequest.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Translation.V3beta1.BatchTranslateTextRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          source_language_code: String.t(),
          target_language_codes: [String.t()],
          models: %{String.t() => String.t()},
          input_configs: [Google.Cloud.Translation.V3beta1.InputConfig.t()],
          output_config: Google.Cloud.Translation.V3beta1.OutputConfig.t() | nil,
          glossaries: %{
            String.t() => Google.Cloud.Translation.V3beta1.TranslateTextGlossaryConfig.t() | nil
          },
          labels: %{String.t() => String.t()}
        }

  defstruct [
    :parent,
    :source_language_code,
    :target_language_codes,
    :models,
    :input_configs,
    :output_config,
    :glossaries,
    :labels
  ]

  field :parent, 1, type: :string
  field :source_language_code, 2, type: :string
  field :target_language_codes, 3, repeated: true, type: :string

  field :models, 4,
    repeated: true,
    type: Google.Cloud.Translation.V3beta1.BatchTranslateTextRequest.ModelsEntry,
    map: true

  field :input_configs, 5, repeated: true, type: Google.Cloud.Translation.V3beta1.InputConfig
  field :output_config, 6, type: Google.Cloud.Translation.V3beta1.OutputConfig

  field :glossaries, 7,
    repeated: true,
    type: Google.Cloud.Translation.V3beta1.BatchTranslateTextRequest.GlossariesEntry,
    map: true

  field :labels, 9,
    repeated: true,
    type: Google.Cloud.Translation.V3beta1.BatchTranslateTextRequest.LabelsEntry,
    map: true
end

defmodule Google.Cloud.Translation.V3beta1.BatchTranslateMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          state: Google.Cloud.Translation.V3beta1.BatchTranslateMetadata.State.t(),
          translated_characters: integer,
          failed_characters: integer,
          total_characters: integer,
          submit_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct [:state, :translated_characters, :failed_characters, :total_characters, :submit_time]

  field :state, 1, type: Google.Cloud.Translation.V3beta1.BatchTranslateMetadata.State, enum: true
  field :translated_characters, 2, type: :int64
  field :failed_characters, 3, type: :int64
  field :total_characters, 4, type: :int64
  field :submit_time, 5, type: Google.Protobuf.Timestamp
end

defmodule Google.Cloud.Translation.V3beta1.BatchTranslateResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          total_characters: integer,
          translated_characters: integer,
          failed_characters: integer,
          submit_time: Google.Protobuf.Timestamp.t() | nil,
          end_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct [
    :total_characters,
    :translated_characters,
    :failed_characters,
    :submit_time,
    :end_time
  ]

  field :total_characters, 1, type: :int64
  field :translated_characters, 2, type: :int64
  field :failed_characters, 3, type: :int64
  field :submit_time, 4, type: Google.Protobuf.Timestamp
  field :end_time, 5, type: Google.Protobuf.Timestamp
end

defmodule Google.Cloud.Translation.V3beta1.GlossaryInputConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          source: {atom, any}
        }

  defstruct [:source]

  oneof :source, 0
  field :gcs_source, 1, type: Google.Cloud.Translation.V3beta1.GcsSource, oneof: 0
end

defmodule Google.Cloud.Translation.V3beta1.Glossary.LanguageCodePair do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          source_language_code: String.t(),
          target_language_code: String.t()
        }

  defstruct [:source_language_code, :target_language_code]

  field :source_language_code, 1, type: :string
  field :target_language_code, 2, type: :string
end

defmodule Google.Cloud.Translation.V3beta1.Glossary.LanguageCodesSet do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          language_codes: [String.t()]
        }

  defstruct [:language_codes]

  field :language_codes, 1, repeated: true, type: :string
end

defmodule Google.Cloud.Translation.V3beta1.Glossary do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          languages: {atom, any},
          name: String.t(),
          input_config: Google.Cloud.Translation.V3beta1.GlossaryInputConfig.t() | nil,
          entry_count: integer,
          submit_time: Google.Protobuf.Timestamp.t() | nil,
          end_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct [:languages, :name, :input_config, :entry_count, :submit_time, :end_time]

  oneof :languages, 0
  field :name, 1, type: :string

  field :language_pair, 3,
    type: Google.Cloud.Translation.V3beta1.Glossary.LanguageCodePair,
    oneof: 0

  field :language_codes_set, 4,
    type: Google.Cloud.Translation.V3beta1.Glossary.LanguageCodesSet,
    oneof: 0

  field :input_config, 5, type: Google.Cloud.Translation.V3beta1.GlossaryInputConfig
  field :entry_count, 6, type: :int32
  field :submit_time, 7, type: Google.Protobuf.Timestamp
  field :end_time, 8, type: Google.Protobuf.Timestamp
end

defmodule Google.Cloud.Translation.V3beta1.CreateGlossaryRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          glossary: Google.Cloud.Translation.V3beta1.Glossary.t() | nil
        }

  defstruct [:parent, :glossary]

  field :parent, 1, type: :string
  field :glossary, 2, type: Google.Cloud.Translation.V3beta1.Glossary
end

defmodule Google.Cloud.Translation.V3beta1.GetGlossaryRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Translation.V3beta1.DeleteGlossaryRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Translation.V3beta1.ListGlossariesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t(),
          filter: String.t()
        }

  defstruct [:parent, :page_size, :page_token, :filter]

  field :parent, 1, type: :string
  field :page_size, 2, type: :int32
  field :page_token, 3, type: :string
  field :filter, 4, type: :string
end

defmodule Google.Cloud.Translation.V3beta1.ListGlossariesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          glossaries: [Google.Cloud.Translation.V3beta1.Glossary.t()],
          next_page_token: String.t()
        }

  defstruct [:glossaries, :next_page_token]

  field :glossaries, 1, repeated: true, type: Google.Cloud.Translation.V3beta1.Glossary
  field :next_page_token, 2, type: :string
end

defmodule Google.Cloud.Translation.V3beta1.CreateGlossaryMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          state: Google.Cloud.Translation.V3beta1.CreateGlossaryMetadata.State.t(),
          submit_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct [:name, :state, :submit_time]

  field :name, 1, type: :string
  field :state, 2, type: Google.Cloud.Translation.V3beta1.CreateGlossaryMetadata.State, enum: true
  field :submit_time, 3, type: Google.Protobuf.Timestamp
end

defmodule Google.Cloud.Translation.V3beta1.DeleteGlossaryMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          state: Google.Cloud.Translation.V3beta1.DeleteGlossaryMetadata.State.t(),
          submit_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct [:name, :state, :submit_time]

  field :name, 1, type: :string
  field :state, 2, type: Google.Cloud.Translation.V3beta1.DeleteGlossaryMetadata.State, enum: true
  field :submit_time, 3, type: Google.Protobuf.Timestamp
end

defmodule Google.Cloud.Translation.V3beta1.DeleteGlossaryResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          submit_time: Google.Protobuf.Timestamp.t() | nil,
          end_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct [:name, :submit_time, :end_time]

  field :name, 1, type: :string
  field :submit_time, 2, type: Google.Protobuf.Timestamp
  field :end_time, 3, type: Google.Protobuf.Timestamp
end

defmodule Google.Cloud.Translation.V3beta1.BatchTranslateDocumentRequest.ModelsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Translation.V3beta1.BatchTranslateDocumentRequest.GlossariesEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: Google.Cloud.Translation.V3beta1.TranslateTextGlossaryConfig.t() | nil
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Translation.V3beta1.TranslateTextGlossaryConfig
end

defmodule Google.Cloud.Translation.V3beta1.BatchTranslateDocumentRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          source_language_code: String.t(),
          target_language_codes: [String.t()],
          input_configs: [Google.Cloud.Translation.V3beta1.BatchDocumentInputConfig.t()],
          output_config: Google.Cloud.Translation.V3beta1.BatchDocumentOutputConfig.t() | nil,
          models: %{String.t() => String.t()},
          glossaries: %{
            String.t() => Google.Cloud.Translation.V3beta1.TranslateTextGlossaryConfig.t() | nil
          }
        }

  defstruct [
    :parent,
    :source_language_code,
    :target_language_codes,
    :input_configs,
    :output_config,
    :models,
    :glossaries
  ]

  field :parent, 1, type: :string
  field :source_language_code, 2, type: :string
  field :target_language_codes, 3, repeated: true, type: :string

  field :input_configs, 4,
    repeated: true,
    type: Google.Cloud.Translation.V3beta1.BatchDocumentInputConfig

  field :output_config, 5, type: Google.Cloud.Translation.V3beta1.BatchDocumentOutputConfig

  field :models, 6,
    repeated: true,
    type: Google.Cloud.Translation.V3beta1.BatchTranslateDocumentRequest.ModelsEntry,
    map: true

  field :glossaries, 7,
    repeated: true,
    type: Google.Cloud.Translation.V3beta1.BatchTranslateDocumentRequest.GlossariesEntry,
    map: true
end

defmodule Google.Cloud.Translation.V3beta1.BatchDocumentInputConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          source: {atom, any}
        }

  defstruct [:source]

  oneof :source, 0
  field :gcs_source, 1, type: Google.Cloud.Translation.V3beta1.GcsSource, oneof: 0
end

defmodule Google.Cloud.Translation.V3beta1.BatchDocumentOutputConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          destination: {atom, any}
        }

  defstruct [:destination]

  oneof :destination, 0
  field :gcs_destination, 1, type: Google.Cloud.Translation.V3beta1.GcsDestination, oneof: 0
end

defmodule Google.Cloud.Translation.V3beta1.BatchTranslateDocumentResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          total_pages: integer,
          translated_pages: integer,
          failed_pages: integer,
          total_billable_pages: integer,
          total_characters: integer,
          translated_characters: integer,
          failed_characters: integer,
          total_billable_characters: integer,
          submit_time: Google.Protobuf.Timestamp.t() | nil,
          end_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct [
    :total_pages,
    :translated_pages,
    :failed_pages,
    :total_billable_pages,
    :total_characters,
    :translated_characters,
    :failed_characters,
    :total_billable_characters,
    :submit_time,
    :end_time
  ]

  field :total_pages, 1, type: :int64
  field :translated_pages, 2, type: :int64
  field :failed_pages, 3, type: :int64
  field :total_billable_pages, 4, type: :int64
  field :total_characters, 5, type: :int64
  field :translated_characters, 6, type: :int64
  field :failed_characters, 7, type: :int64
  field :total_billable_characters, 8, type: :int64
  field :submit_time, 9, type: Google.Protobuf.Timestamp
  field :end_time, 10, type: Google.Protobuf.Timestamp
end

defmodule Google.Cloud.Translation.V3beta1.BatchTranslateDocumentMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          state: Google.Cloud.Translation.V3beta1.BatchTranslateDocumentMetadata.State.t(),
          total_pages: integer,
          translated_pages: integer,
          failed_pages: integer,
          total_billable_pages: integer,
          total_characters: integer,
          translated_characters: integer,
          failed_characters: integer,
          total_billable_characters: integer,
          submit_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct [
    :state,
    :total_pages,
    :translated_pages,
    :failed_pages,
    :total_billable_pages,
    :total_characters,
    :translated_characters,
    :failed_characters,
    :total_billable_characters,
    :submit_time
  ]

  field :state, 1,
    type: Google.Cloud.Translation.V3beta1.BatchTranslateDocumentMetadata.State,
    enum: true

  field :total_pages, 2, type: :int64
  field :translated_pages, 3, type: :int64
  field :failed_pages, 4, type: :int64
  field :total_billable_pages, 5, type: :int64
  field :total_characters, 6, type: :int64
  field :translated_characters, 7, type: :int64
  field :failed_characters, 8, type: :int64
  field :total_billable_characters, 9, type: :int64
  field :submit_time, 10, type: Google.Protobuf.Timestamp
end
