defmodule Google.Cloud.Translation.V3.AdaptiveMtDataset do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :display_name, 2, type: :string, json_name: "displayName"
  field :source_language_code, 3, type: :string, json_name: "sourceLanguageCode"
  field :target_language_code, 4, type: :string, json_name: "targetLanguageCode"
  field :example_count, 5, type: :int32, json_name: "exampleCount"

  field :create_time, 9,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 10,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false
end

defmodule Google.Cloud.Translation.V3.CreateAdaptiveMtDatasetRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :adaptive_mt_dataset, 2,
    type: Google.Cloud.Translation.V3.AdaptiveMtDataset,
    json_name: "adaptiveMtDataset",
    deprecated: false
end

defmodule Google.Cloud.Translation.V3.DeleteAdaptiveMtDatasetRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Translation.V3.GetAdaptiveMtDatasetRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Translation.V3.ListAdaptiveMtDatasetsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
end

defmodule Google.Cloud.Translation.V3.ListAdaptiveMtDatasetsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :adaptive_mt_datasets, 1,
    repeated: true,
    type: Google.Cloud.Translation.V3.AdaptiveMtDataset,
    json_name: "adaptiveMtDatasets",
    deprecated: false

  field :next_page_token, 2, type: :string, json_name: "nextPageToken", deprecated: false
end

defmodule Google.Cloud.Translation.V3.AdaptiveMtTranslateRequest.ReferenceSentencePair do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :source_sentence, 1, type: :string, json_name: "sourceSentence"
  field :target_sentence, 2, type: :string, json_name: "targetSentence"
end

defmodule Google.Cloud.Translation.V3.AdaptiveMtTranslateRequest.ReferenceSentencePairList do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :reference_sentence_pairs, 1,
    repeated: true,
    type: Google.Cloud.Translation.V3.AdaptiveMtTranslateRequest.ReferenceSentencePair,
    json_name: "referenceSentencePairs"
end

defmodule Google.Cloud.Translation.V3.AdaptiveMtTranslateRequest.ReferenceSentenceConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :reference_sentence_pair_lists, 1,
    repeated: true,
    type: Google.Cloud.Translation.V3.AdaptiveMtTranslateRequest.ReferenceSentencePairList,
    json_name: "referenceSentencePairLists"

  field :source_language_code, 2, type: :string, json_name: "sourceLanguageCode"
  field :target_language_code, 3, type: :string, json_name: "targetLanguageCode"
end

defmodule Google.Cloud.Translation.V3.AdaptiveMtTranslateRequest.GlossaryConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :glossary, 1, type: :string, deprecated: false
  field :ignore_case, 2, type: :bool, json_name: "ignoreCase", deprecated: false

  field :contextual_translation_enabled, 4,
    type: :bool,
    json_name: "contextualTranslationEnabled",
    deprecated: false
end

defmodule Google.Cloud.Translation.V3.AdaptiveMtTranslateRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :dataset, 2, type: :string, deprecated: false
  field :content, 3, repeated: true, type: :string, deprecated: false

  field :reference_sentence_config, 6,
    proto3_optional: true,
    type: Google.Cloud.Translation.V3.AdaptiveMtTranslateRequest.ReferenceSentenceConfig,
    json_name: "referenceSentenceConfig"

  field :glossary_config, 7,
    proto3_optional: true,
    type: Google.Cloud.Translation.V3.AdaptiveMtTranslateRequest.GlossaryConfig,
    json_name: "glossaryConfig",
    deprecated: false
end

defmodule Google.Cloud.Translation.V3.AdaptiveMtTranslation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :translated_text, 1, type: :string, json_name: "translatedText", deprecated: false
end

defmodule Google.Cloud.Translation.V3.AdaptiveMtTranslateResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :translations, 1,
    repeated: true,
    type: Google.Cloud.Translation.V3.AdaptiveMtTranslation,
    deprecated: false

  field :language_code, 2, type: :string, json_name: "languageCode", deprecated: false

  field :glossary_translations, 4,
    repeated: true,
    type: Google.Cloud.Translation.V3.AdaptiveMtTranslation,
    json_name: "glossaryTranslations"
end

defmodule Google.Cloud.Translation.V3.AdaptiveMtFile do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :display_name, 2, type: :string, json_name: "displayName"
  field :entry_count, 3, type: :int32, json_name: "entryCount"

  field :create_time, 4,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 5,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false
end

defmodule Google.Cloud.Translation.V3.GetAdaptiveMtFileRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Translation.V3.DeleteAdaptiveMtFileRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Translation.V3.ImportAdaptiveMtFileRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :source, 0

  field :parent, 1, type: :string, deprecated: false

  field :file_input_source, 2,
    type: Google.Cloud.Translation.V3.FileInputSource,
    json_name: "fileInputSource",
    oneof: 0

  field :gcs_input_source, 3,
    type: Google.Cloud.Translation.V3.GcsInputSource,
    json_name: "gcsInputSource",
    oneof: 0
end

defmodule Google.Cloud.Translation.V3.ImportAdaptiveMtFileResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :adaptive_mt_file, 1,
    type: Google.Cloud.Translation.V3.AdaptiveMtFile,
    json_name: "adaptiveMtFile",
    deprecated: false
end

defmodule Google.Cloud.Translation.V3.ListAdaptiveMtFilesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Cloud.Translation.V3.ListAdaptiveMtFilesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :adaptive_mt_files, 1,
    repeated: true,
    type: Google.Cloud.Translation.V3.AdaptiveMtFile,
    json_name: "adaptiveMtFiles",
    deprecated: false

  field :next_page_token, 3, type: :string, json_name: "nextPageToken", deprecated: false
end

defmodule Google.Cloud.Translation.V3.AdaptiveMtSentence do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :source_sentence, 2, type: :string, json_name: "sourceSentence", deprecated: false
  field :target_sentence, 3, type: :string, json_name: "targetSentence", deprecated: false

  field :create_time, 4,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 5,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false
end

defmodule Google.Cloud.Translation.V3.ListAdaptiveMtSentencesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Cloud.Translation.V3.ListAdaptiveMtSentencesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :adaptive_mt_sentences, 1,
    repeated: true,
    type: Google.Cloud.Translation.V3.AdaptiveMtSentence,
    json_name: "adaptiveMtSentences",
    deprecated: false

  field :next_page_token, 2, type: :string, json_name: "nextPageToken", deprecated: false
end
