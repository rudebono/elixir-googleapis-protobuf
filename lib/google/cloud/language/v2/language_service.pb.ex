defmodule Google.Cloud.Language.V2.EncodingType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :NONE, 0
  field :UTF8, 1
  field :UTF16, 2
  field :UTF32, 3
end

defmodule Google.Cloud.Language.V2.Document.Type do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :TYPE_UNSPECIFIED, 0
  field :PLAIN_TEXT, 1
  field :HTML, 2
end

defmodule Google.Cloud.Language.V2.Entity.Type do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :UNKNOWN, 0
  field :PERSON, 1
  field :LOCATION, 2
  field :ORGANIZATION, 3
  field :EVENT, 4
  field :WORK_OF_ART, 5
  field :CONSUMER_GOOD, 6
  field :OTHER, 7
  field :PHONE_NUMBER, 9
  field :ADDRESS, 10
  field :DATE, 11
  field :NUMBER, 12
  field :PRICE, 13
end

defmodule Google.Cloud.Language.V2.EntityMention.Type do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :TYPE_UNKNOWN, 0
  field :PROPER, 1
  field :COMMON, 2
end

defmodule Google.Cloud.Language.V2.ModerateTextRequest.ModelVersion do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :MODEL_VERSION_UNSPECIFIED, 0
  field :MODEL_VERSION_1, 1
  field :MODEL_VERSION_2, 2
end

defmodule Google.Cloud.Language.V2.Document do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :source, 0

  field :type, 1, type: Google.Cloud.Language.V2.Document.Type, enum: true
  field :content, 2, type: :string, oneof: 0
  field :gcs_content_uri, 3, type: :string, json_name: "gcsContentUri", oneof: 0
  field :language_code, 4, type: :string, json_name: "languageCode", deprecated: false
end

defmodule Google.Cloud.Language.V2.Sentence do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :text, 1, type: Google.Cloud.Language.V2.TextSpan
  field :sentiment, 2, type: Google.Cloud.Language.V2.Sentiment
end

defmodule Google.Cloud.Language.V2.Entity.MetadataEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Language.V2.Entity do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string
  field :type, 2, type: Google.Cloud.Language.V2.Entity.Type, enum: true

  field :metadata, 3,
    repeated: true,
    type: Google.Cloud.Language.V2.Entity.MetadataEntry,
    map: true

  field :mentions, 5, repeated: true, type: Google.Cloud.Language.V2.EntityMention
  field :sentiment, 6, type: Google.Cloud.Language.V2.Sentiment
end

defmodule Google.Cloud.Language.V2.Sentiment do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :magnitude, 1, type: :float
  field :score, 2, type: :float
end

defmodule Google.Cloud.Language.V2.EntityMention do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :text, 1, type: Google.Cloud.Language.V2.TextSpan
  field :type, 2, type: Google.Cloud.Language.V2.EntityMention.Type, enum: true
  field :sentiment, 3, type: Google.Cloud.Language.V2.Sentiment
  field :probability, 4, type: :float
end

defmodule Google.Cloud.Language.V2.TextSpan do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :content, 1, type: :string
  field :begin_offset, 2, type: :int32, json_name: "beginOffset"
end

defmodule Google.Cloud.Language.V2.ClassificationCategory do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string
  field :confidence, 2, type: :float
  field :severity, 3, type: :float, deprecated: false
end

defmodule Google.Cloud.Language.V2.AnalyzeSentimentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :document, 1, type: Google.Cloud.Language.V2.Document, deprecated: false

  field :encoding_type, 2,
    type: Google.Cloud.Language.V2.EncodingType,
    json_name: "encodingType",
    enum: true
end

defmodule Google.Cloud.Language.V2.AnalyzeSentimentResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :document_sentiment, 1,
    type: Google.Cloud.Language.V2.Sentiment,
    json_name: "documentSentiment"

  field :language_code, 2, type: :string, json_name: "languageCode"
  field :sentences, 3, repeated: true, type: Google.Cloud.Language.V2.Sentence
  field :language_supported, 4, type: :bool, json_name: "languageSupported"
end

defmodule Google.Cloud.Language.V2.AnalyzeEntitiesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :document, 1, type: Google.Cloud.Language.V2.Document, deprecated: false

  field :encoding_type, 2,
    type: Google.Cloud.Language.V2.EncodingType,
    json_name: "encodingType",
    enum: true
end

defmodule Google.Cloud.Language.V2.AnalyzeEntitiesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :entities, 1, repeated: true, type: Google.Cloud.Language.V2.Entity
  field :language_code, 2, type: :string, json_name: "languageCode"
  field :language_supported, 3, type: :bool, json_name: "languageSupported"
end

defmodule Google.Cloud.Language.V2.ClassifyTextRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :document, 1, type: Google.Cloud.Language.V2.Document, deprecated: false
end

defmodule Google.Cloud.Language.V2.ClassifyTextResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :categories, 1, repeated: true, type: Google.Cloud.Language.V2.ClassificationCategory
  field :language_code, 2, type: :string, json_name: "languageCode"
  field :language_supported, 3, type: :bool, json_name: "languageSupported"
end

defmodule Google.Cloud.Language.V2.ModerateTextRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :document, 1, type: Google.Cloud.Language.V2.Document, deprecated: false

  field :model_version, 2,
    type: Google.Cloud.Language.V2.ModerateTextRequest.ModelVersion,
    json_name: "modelVersion",
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Language.V2.ModerateTextResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :moderation_categories, 1,
    repeated: true,
    type: Google.Cloud.Language.V2.ClassificationCategory,
    json_name: "moderationCategories"

  field :language_code, 2, type: :string, json_name: "languageCode"
  field :language_supported, 3, type: :bool, json_name: "languageSupported"
end

defmodule Google.Cloud.Language.V2.AnnotateTextRequest.Features do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :extract_entities, 1, type: :bool, json_name: "extractEntities", deprecated: false

  field :extract_document_sentiment, 2,
    type: :bool,
    json_name: "extractDocumentSentiment",
    deprecated: false

  field :classify_text, 4, type: :bool, json_name: "classifyText", deprecated: false
  field :moderate_text, 5, type: :bool, json_name: "moderateText", deprecated: false
end

defmodule Google.Cloud.Language.V2.AnnotateTextRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :document, 1, type: Google.Cloud.Language.V2.Document, deprecated: false

  field :features, 2,
    type: Google.Cloud.Language.V2.AnnotateTextRequest.Features,
    deprecated: false

  field :encoding_type, 3,
    type: Google.Cloud.Language.V2.EncodingType,
    json_name: "encodingType",
    enum: true
end

defmodule Google.Cloud.Language.V2.AnnotateTextResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :sentences, 1, repeated: true, type: Google.Cloud.Language.V2.Sentence
  field :entities, 2, repeated: true, type: Google.Cloud.Language.V2.Entity

  field :document_sentiment, 3,
    type: Google.Cloud.Language.V2.Sentiment,
    json_name: "documentSentiment"

  field :language_code, 4, type: :string, json_name: "languageCode"
  field :categories, 5, repeated: true, type: Google.Cloud.Language.V2.ClassificationCategory

  field :moderation_categories, 6,
    repeated: true,
    type: Google.Cloud.Language.V2.ClassificationCategory,
    json_name: "moderationCategories"

  field :language_supported, 7, type: :bool, json_name: "languageSupported"
end

defmodule Google.Cloud.Language.V2.LanguageService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.language.v2.LanguageService",
    protoc_gen_elixir_version: "0.12.0"

  rpc :AnalyzeSentiment,
      Google.Cloud.Language.V2.AnalyzeSentimentRequest,
      Google.Cloud.Language.V2.AnalyzeSentimentResponse

  rpc :AnalyzeEntities,
      Google.Cloud.Language.V2.AnalyzeEntitiesRequest,
      Google.Cloud.Language.V2.AnalyzeEntitiesResponse

  rpc :ClassifyText,
      Google.Cloud.Language.V2.ClassifyTextRequest,
      Google.Cloud.Language.V2.ClassifyTextResponse

  rpc :ModerateText,
      Google.Cloud.Language.V2.ModerateTextRequest,
      Google.Cloud.Language.V2.ModerateTextResponse

  rpc :AnnotateText,
      Google.Cloud.Language.V2.AnnotateTextRequest,
      Google.Cloud.Language.V2.AnnotateTextResponse
end

defmodule Google.Cloud.Language.V2.LanguageService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Language.V2.LanguageService.Service
end