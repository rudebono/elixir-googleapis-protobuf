defmodule Google.Cloud.Translation.V3.BatchTranslateMetadata.State do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :RUNNING, 1
  field :SUCCEEDED, 2
  field :FAILED, 3
  field :CANCELLING, 4
  field :CANCELLED, 5
end

defmodule Google.Cloud.Translation.V3.CreateGlossaryMetadata.State do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :RUNNING, 1
  field :SUCCEEDED, 2
  field :FAILED, 3
  field :CANCELLING, 4
  field :CANCELLED, 5
end

defmodule Google.Cloud.Translation.V3.DeleteGlossaryMetadata.State do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :RUNNING, 1
  field :SUCCEEDED, 2
  field :FAILED, 3
  field :CANCELLING, 4
  field :CANCELLED, 5
end

defmodule Google.Cloud.Translation.V3.BatchTranslateDocumentMetadata.State do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :RUNNING, 1
  field :SUCCEEDED, 2
  field :FAILED, 3
  field :CANCELLING, 4
  field :CANCELLED, 5
end

defmodule Google.Cloud.Translation.V3.TranslateTextGlossaryConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :glossary, 1, type: :string, deprecated: false
  field :ignore_case, 2, type: :bool, json_name: "ignoreCase", deprecated: false
end

defmodule Google.Cloud.Translation.V3.TranslateTextRequest.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Translation.V3.TranslateTextRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :contents, 1, repeated: true, type: :string, deprecated: false
  field :mime_type, 3, type: :string, json_name: "mimeType", deprecated: false

  field :source_language_code, 4,
    type: :string,
    json_name: "sourceLanguageCode",
    deprecated: false

  field :target_language_code, 5,
    type: :string,
    json_name: "targetLanguageCode",
    deprecated: false

  field :parent, 8, type: :string, deprecated: false
  field :model, 6, type: :string, deprecated: false

  field :glossary_config, 7,
    type: Google.Cloud.Translation.V3.TranslateTextGlossaryConfig,
    json_name: "glossaryConfig",
    deprecated: false

  field :labels, 10,
    repeated: true,
    type: Google.Cloud.Translation.V3.TranslateTextRequest.LabelsEntry,
    map: true,
    deprecated: false
end

defmodule Google.Cloud.Translation.V3.TranslateTextResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :translations, 1, repeated: true, type: Google.Cloud.Translation.V3.Translation

  field :glossary_translations, 3,
    repeated: true,
    type: Google.Cloud.Translation.V3.Translation,
    json_name: "glossaryTranslations"
end

defmodule Google.Cloud.Translation.V3.Translation do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :translated_text, 1, type: :string, json_name: "translatedText"
  field :model, 2, type: :string
  field :detected_language_code, 4, type: :string, json_name: "detectedLanguageCode"

  field :glossary_config, 3,
    type: Google.Cloud.Translation.V3.TranslateTextGlossaryConfig,
    json_name: "glossaryConfig"
end

defmodule Google.Cloud.Translation.V3.DetectLanguageRequest.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Translation.V3.DetectLanguageRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :source, 0

  field :parent, 5, type: :string, deprecated: false
  field :model, 4, type: :string, deprecated: false
  field :content, 1, type: :string, oneof: 0
  field :mime_type, 3, type: :string, json_name: "mimeType", deprecated: false

  field :labels, 6,
    repeated: true,
    type: Google.Cloud.Translation.V3.DetectLanguageRequest.LabelsEntry,
    map: true,
    deprecated: false
end

defmodule Google.Cloud.Translation.V3.DetectedLanguage do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :language_code, 1, type: :string, json_name: "languageCode"
  field :confidence, 2, type: :float
end

defmodule Google.Cloud.Translation.V3.DetectLanguageResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :languages, 1, repeated: true, type: Google.Cloud.Translation.V3.DetectedLanguage
end

defmodule Google.Cloud.Translation.V3.GetSupportedLanguagesRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 3, type: :string, deprecated: false

  field :display_language_code, 1,
    type: :string,
    json_name: "displayLanguageCode",
    deprecated: false

  field :model, 2, type: :string, deprecated: false
end

defmodule Google.Cloud.Translation.V3.SupportedLanguages do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :languages, 1, repeated: true, type: Google.Cloud.Translation.V3.SupportedLanguage
end

defmodule Google.Cloud.Translation.V3.SupportedLanguage do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :language_code, 1, type: :string, json_name: "languageCode"
  field :display_name, 2, type: :string, json_name: "displayName"
  field :support_source, 3, type: :bool, json_name: "supportSource"
  field :support_target, 4, type: :bool, json_name: "supportTarget"
end

defmodule Google.Cloud.Translation.V3.GcsSource do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :input_uri, 1, type: :string, json_name: "inputUri", deprecated: false
end

defmodule Google.Cloud.Translation.V3.InputConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :source, 0

  field :mime_type, 1, type: :string, json_name: "mimeType", deprecated: false

  field :gcs_source, 2,
    type: Google.Cloud.Translation.V3.GcsSource,
    json_name: "gcsSource",
    oneof: 0
end

defmodule Google.Cloud.Translation.V3.GcsDestination do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :output_uri_prefix, 1, type: :string, json_name: "outputUriPrefix", deprecated: false
end

defmodule Google.Cloud.Translation.V3.OutputConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :destination, 0

  field :gcs_destination, 1,
    type: Google.Cloud.Translation.V3.GcsDestination,
    json_name: "gcsDestination",
    oneof: 0
end

defmodule Google.Cloud.Translation.V3.DocumentInputConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :source, 0

  field :content, 1, type: :bytes, oneof: 0

  field :gcs_source, 2,
    type: Google.Cloud.Translation.V3.GcsSource,
    json_name: "gcsSource",
    oneof: 0

  field :mime_type, 4, type: :string, json_name: "mimeType"
end

defmodule Google.Cloud.Translation.V3.DocumentOutputConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :destination, 0

  field :gcs_destination, 1,
    type: Google.Cloud.Translation.V3.GcsDestination,
    json_name: "gcsDestination",
    oneof: 0,
    deprecated: false

  field :mime_type, 3, type: :string, json_name: "mimeType", deprecated: false
end

defmodule Google.Cloud.Translation.V3.TranslateDocumentRequest.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Translation.V3.TranslateDocumentRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :source_language_code, 2,
    type: :string,
    json_name: "sourceLanguageCode",
    deprecated: false

  field :target_language_code, 3,
    type: :string,
    json_name: "targetLanguageCode",
    deprecated: false

  field :document_input_config, 4,
    type: Google.Cloud.Translation.V3.DocumentInputConfig,
    json_name: "documentInputConfig",
    deprecated: false

  field :document_output_config, 5,
    type: Google.Cloud.Translation.V3.DocumentOutputConfig,
    json_name: "documentOutputConfig",
    deprecated: false

  field :model, 6, type: :string, deprecated: false

  field :glossary_config, 7,
    type: Google.Cloud.Translation.V3.TranslateTextGlossaryConfig,
    json_name: "glossaryConfig",
    deprecated: false

  field :labels, 8,
    repeated: true,
    type: Google.Cloud.Translation.V3.TranslateDocumentRequest.LabelsEntry,
    map: true,
    deprecated: false

  field :customized_attribution, 10,
    type: :string,
    json_name: "customizedAttribution",
    deprecated: false

  field :is_translate_native_pdf_only, 11,
    type: :bool,
    json_name: "isTranslateNativePdfOnly",
    deprecated: false

  field :enable_shadow_removal_native_pdf, 12,
    type: :bool,
    json_name: "enableShadowRemovalNativePdf",
    deprecated: false
end

defmodule Google.Cloud.Translation.V3.DocumentTranslation do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :byte_stream_outputs, 1, repeated: true, type: :bytes, json_name: "byteStreamOutputs"
  field :mime_type, 2, type: :string, json_name: "mimeType"
  field :detected_language_code, 3, type: :string, json_name: "detectedLanguageCode"
end

defmodule Google.Cloud.Translation.V3.TranslateDocumentResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :document_translation, 1,
    type: Google.Cloud.Translation.V3.DocumentTranslation,
    json_name: "documentTranslation"

  field :glossary_document_translation, 2,
    type: Google.Cloud.Translation.V3.DocumentTranslation,
    json_name: "glossaryDocumentTranslation"

  field :model, 3, type: :string

  field :glossary_config, 4,
    type: Google.Cloud.Translation.V3.TranslateTextGlossaryConfig,
    json_name: "glossaryConfig"
end

defmodule Google.Cloud.Translation.V3.BatchTranslateTextRequest.ModelsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Translation.V3.BatchTranslateTextRequest.GlossariesEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Translation.V3.TranslateTextGlossaryConfig
end

defmodule Google.Cloud.Translation.V3.BatchTranslateTextRequest.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Translation.V3.BatchTranslateTextRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :source_language_code, 2,
    type: :string,
    json_name: "sourceLanguageCode",
    deprecated: false

  field :target_language_codes, 3,
    repeated: true,
    type: :string,
    json_name: "targetLanguageCodes",
    deprecated: false

  field :models, 4,
    repeated: true,
    type: Google.Cloud.Translation.V3.BatchTranslateTextRequest.ModelsEntry,
    map: true,
    deprecated: false

  field :input_configs, 5,
    repeated: true,
    type: Google.Cloud.Translation.V3.InputConfig,
    json_name: "inputConfigs",
    deprecated: false

  field :output_config, 6,
    type: Google.Cloud.Translation.V3.OutputConfig,
    json_name: "outputConfig",
    deprecated: false

  field :glossaries, 7,
    repeated: true,
    type: Google.Cloud.Translation.V3.BatchTranslateTextRequest.GlossariesEntry,
    map: true,
    deprecated: false

  field :labels, 9,
    repeated: true,
    type: Google.Cloud.Translation.V3.BatchTranslateTextRequest.LabelsEntry,
    map: true,
    deprecated: false
end

defmodule Google.Cloud.Translation.V3.BatchTranslateMetadata do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :state, 1, type: Google.Cloud.Translation.V3.BatchTranslateMetadata.State, enum: true
  field :translated_characters, 2, type: :int64, json_name: "translatedCharacters"
  field :failed_characters, 3, type: :int64, json_name: "failedCharacters"
  field :total_characters, 4, type: :int64, json_name: "totalCharacters"
  field :submit_time, 5, type: Google.Protobuf.Timestamp, json_name: "submitTime"
end

defmodule Google.Cloud.Translation.V3.BatchTranslateResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :total_characters, 1, type: :int64, json_name: "totalCharacters"
  field :translated_characters, 2, type: :int64, json_name: "translatedCharacters"
  field :failed_characters, 3, type: :int64, json_name: "failedCharacters"
  field :submit_time, 4, type: Google.Protobuf.Timestamp, json_name: "submitTime"
  field :end_time, 5, type: Google.Protobuf.Timestamp, json_name: "endTime"
end

defmodule Google.Cloud.Translation.V3.GlossaryInputConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :source, 0

  field :gcs_source, 1,
    type: Google.Cloud.Translation.V3.GcsSource,
    json_name: "gcsSource",
    oneof: 0
end

defmodule Google.Cloud.Translation.V3.Glossary.LanguageCodePair do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :source_language_code, 1, type: :string, json_name: "sourceLanguageCode"
  field :target_language_code, 2, type: :string, json_name: "targetLanguageCode"
end

defmodule Google.Cloud.Translation.V3.Glossary.LanguageCodesSet do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :language_codes, 1, repeated: true, type: :string, json_name: "languageCodes"
end

defmodule Google.Cloud.Translation.V3.Glossary do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :languages, 0

  field :name, 1, type: :string, deprecated: false

  field :language_pair, 3,
    type: Google.Cloud.Translation.V3.Glossary.LanguageCodePair,
    json_name: "languagePair",
    oneof: 0

  field :language_codes_set, 4,
    type: Google.Cloud.Translation.V3.Glossary.LanguageCodesSet,
    json_name: "languageCodesSet",
    oneof: 0

  field :input_config, 5,
    type: Google.Cloud.Translation.V3.GlossaryInputConfig,
    json_name: "inputConfig"

  field :entry_count, 6, type: :int32, json_name: "entryCount", deprecated: false

  field :submit_time, 7,
    type: Google.Protobuf.Timestamp,
    json_name: "submitTime",
    deprecated: false

  field :end_time, 8, type: Google.Protobuf.Timestamp, json_name: "endTime", deprecated: false
  field :display_name, 9, type: :string, json_name: "displayName", deprecated: false
end

defmodule Google.Cloud.Translation.V3.CreateGlossaryRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :glossary, 2, type: Google.Cloud.Translation.V3.Glossary, deprecated: false
end

defmodule Google.Cloud.Translation.V3.GetGlossaryRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Translation.V3.DeleteGlossaryRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Translation.V3.ListGlossariesRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
end

defmodule Google.Cloud.Translation.V3.ListGlossariesResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :glossaries, 1, repeated: true, type: Google.Cloud.Translation.V3.Glossary
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Translation.V3.CreateGlossaryMetadata do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string
  field :state, 2, type: Google.Cloud.Translation.V3.CreateGlossaryMetadata.State, enum: true
  field :submit_time, 3, type: Google.Protobuf.Timestamp, json_name: "submitTime"
end

defmodule Google.Cloud.Translation.V3.DeleteGlossaryMetadata do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string
  field :state, 2, type: Google.Cloud.Translation.V3.DeleteGlossaryMetadata.State, enum: true
  field :submit_time, 3, type: Google.Protobuf.Timestamp, json_name: "submitTime"
end

defmodule Google.Cloud.Translation.V3.DeleteGlossaryResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string
  field :submit_time, 2, type: Google.Protobuf.Timestamp, json_name: "submitTime"
  field :end_time, 3, type: Google.Protobuf.Timestamp, json_name: "endTime"
end

defmodule Google.Cloud.Translation.V3.BatchTranslateDocumentRequest.ModelsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Translation.V3.BatchTranslateDocumentRequest.GlossariesEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Translation.V3.TranslateTextGlossaryConfig
end

defmodule Google.Cloud.Translation.V3.BatchTranslateDocumentRequest.FormatConversionsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Translation.V3.BatchTranslateDocumentRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :source_language_code, 2,
    type: :string,
    json_name: "sourceLanguageCode",
    deprecated: false

  field :target_language_codes, 3,
    repeated: true,
    type: :string,
    json_name: "targetLanguageCodes",
    deprecated: false

  field :input_configs, 4,
    repeated: true,
    type: Google.Cloud.Translation.V3.BatchDocumentInputConfig,
    json_name: "inputConfigs",
    deprecated: false

  field :output_config, 5,
    type: Google.Cloud.Translation.V3.BatchDocumentOutputConfig,
    json_name: "outputConfig",
    deprecated: false

  field :models, 6,
    repeated: true,
    type: Google.Cloud.Translation.V3.BatchTranslateDocumentRequest.ModelsEntry,
    map: true,
    deprecated: false

  field :glossaries, 7,
    repeated: true,
    type: Google.Cloud.Translation.V3.BatchTranslateDocumentRequest.GlossariesEntry,
    map: true,
    deprecated: false

  field :format_conversions, 8,
    repeated: true,
    type: Google.Cloud.Translation.V3.BatchTranslateDocumentRequest.FormatConversionsEntry,
    json_name: "formatConversions",
    map: true,
    deprecated: false

  field :customized_attribution, 10,
    type: :string,
    json_name: "customizedAttribution",
    deprecated: false
end

defmodule Google.Cloud.Translation.V3.BatchDocumentInputConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :source, 0

  field :gcs_source, 1,
    type: Google.Cloud.Translation.V3.GcsSource,
    json_name: "gcsSource",
    oneof: 0
end

defmodule Google.Cloud.Translation.V3.BatchDocumentOutputConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :destination, 0

  field :gcs_destination, 1,
    type: Google.Cloud.Translation.V3.GcsDestination,
    json_name: "gcsDestination",
    oneof: 0
end

defmodule Google.Cloud.Translation.V3.BatchTranslateDocumentResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :total_pages, 1, type: :int64, json_name: "totalPages"
  field :translated_pages, 2, type: :int64, json_name: "translatedPages"
  field :failed_pages, 3, type: :int64, json_name: "failedPages"
  field :total_billable_pages, 4, type: :int64, json_name: "totalBillablePages"
  field :total_characters, 5, type: :int64, json_name: "totalCharacters"
  field :translated_characters, 6, type: :int64, json_name: "translatedCharacters"
  field :failed_characters, 7, type: :int64, json_name: "failedCharacters"
  field :total_billable_characters, 8, type: :int64, json_name: "totalBillableCharacters"
  field :submit_time, 9, type: Google.Protobuf.Timestamp, json_name: "submitTime"
  field :end_time, 10, type: Google.Protobuf.Timestamp, json_name: "endTime"
end

defmodule Google.Cloud.Translation.V3.BatchTranslateDocumentMetadata do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :state, 1,
    type: Google.Cloud.Translation.V3.BatchTranslateDocumentMetadata.State,
    enum: true

  field :total_pages, 2, type: :int64, json_name: "totalPages"
  field :translated_pages, 3, type: :int64, json_name: "translatedPages"
  field :failed_pages, 4, type: :int64, json_name: "failedPages"
  field :total_billable_pages, 5, type: :int64, json_name: "totalBillablePages"
  field :total_characters, 6, type: :int64, json_name: "totalCharacters"
  field :translated_characters, 7, type: :int64, json_name: "translatedCharacters"
  field :failed_characters, 8, type: :int64, json_name: "failedCharacters"
  field :total_billable_characters, 9, type: :int64, json_name: "totalBillableCharacters"
  field :submit_time, 10, type: Google.Protobuf.Timestamp, json_name: "submitTime"
end

defmodule Google.Cloud.Translation.V3.TranslationService.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.cloud.translation.v3.TranslationService",
    protoc_gen_elixir_version: "0.11.0"

  rpc :TranslateText,
      Google.Cloud.Translation.V3.TranslateTextRequest,
      Google.Cloud.Translation.V3.TranslateTextResponse

  rpc :DetectLanguage,
      Google.Cloud.Translation.V3.DetectLanguageRequest,
      Google.Cloud.Translation.V3.DetectLanguageResponse

  rpc :GetSupportedLanguages,
      Google.Cloud.Translation.V3.GetSupportedLanguagesRequest,
      Google.Cloud.Translation.V3.SupportedLanguages

  rpc :TranslateDocument,
      Google.Cloud.Translation.V3.TranslateDocumentRequest,
      Google.Cloud.Translation.V3.TranslateDocumentResponse

  rpc :BatchTranslateText,
      Google.Cloud.Translation.V3.BatchTranslateTextRequest,
      Google.Longrunning.Operation

  rpc :BatchTranslateDocument,
      Google.Cloud.Translation.V3.BatchTranslateDocumentRequest,
      Google.Longrunning.Operation

  rpc :CreateGlossary,
      Google.Cloud.Translation.V3.CreateGlossaryRequest,
      Google.Longrunning.Operation

  rpc :ListGlossaries,
      Google.Cloud.Translation.V3.ListGlossariesRequest,
      Google.Cloud.Translation.V3.ListGlossariesResponse

  rpc :GetGlossary,
      Google.Cloud.Translation.V3.GetGlossaryRequest,
      Google.Cloud.Translation.V3.Glossary

  rpc :DeleteGlossary,
      Google.Cloud.Translation.V3.DeleteGlossaryRequest,
      Google.Longrunning.Operation
end

defmodule Google.Cloud.Translation.V3.TranslationService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Translation.V3.TranslationService.Service
end