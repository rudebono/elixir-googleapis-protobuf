defmodule Google.Cloud.Language.V1beta2.EncodingType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :NONE, 0
  field :UTF8, 1
  field :UTF16, 2
  field :UTF32, 3
end

defmodule Google.Cloud.Language.V1beta2.Document.Type do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :TYPE_UNSPECIFIED, 0
  field :PLAIN_TEXT, 1
  field :HTML, 2
end

defmodule Google.Cloud.Language.V1beta2.Document.BoilerplateHandling do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :BOILERPLATE_HANDLING_UNSPECIFIED, 0
  field :SKIP_BOILERPLATE, 1
  field :KEEP_BOILERPLATE, 2
end

defmodule Google.Cloud.Language.V1beta2.Entity.Type do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

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

defmodule Google.Cloud.Language.V1beta2.PartOfSpeech.Tag do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :UNKNOWN, 0
  field :ADJ, 1
  field :ADP, 2
  field :ADV, 3
  field :CONJ, 4
  field :DET, 5
  field :NOUN, 6
  field :NUM, 7
  field :PRON, 8
  field :PRT, 9
  field :PUNCT, 10
  field :VERB, 11
  field :X, 12
  field :AFFIX, 13
end

defmodule Google.Cloud.Language.V1beta2.PartOfSpeech.Aspect do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :ASPECT_UNKNOWN, 0
  field :PERFECTIVE, 1
  field :IMPERFECTIVE, 2
  field :PROGRESSIVE, 3
end

defmodule Google.Cloud.Language.V1beta2.PartOfSpeech.Case do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :CASE_UNKNOWN, 0
  field :ACCUSATIVE, 1
  field :ADVERBIAL, 2
  field :COMPLEMENTIVE, 3
  field :DATIVE, 4
  field :GENITIVE, 5
  field :INSTRUMENTAL, 6
  field :LOCATIVE, 7
  field :NOMINATIVE, 8
  field :OBLIQUE, 9
  field :PARTITIVE, 10
  field :PREPOSITIONAL, 11
  field :REFLEXIVE_CASE, 12
  field :RELATIVE_CASE, 13
  field :VOCATIVE, 14
end

defmodule Google.Cloud.Language.V1beta2.PartOfSpeech.Form do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :FORM_UNKNOWN, 0
  field :ADNOMIAL, 1
  field :AUXILIARY, 2
  field :COMPLEMENTIZER, 3
  field :FINAL_ENDING, 4
  field :GERUND, 5
  field :REALIS, 6
  field :IRREALIS, 7
  field :SHORT, 8
  field :LONG, 9
  field :ORDER, 10
  field :SPECIFIC, 11
end

defmodule Google.Cloud.Language.V1beta2.PartOfSpeech.Gender do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :GENDER_UNKNOWN, 0
  field :FEMININE, 1
  field :MASCULINE, 2
  field :NEUTER, 3
end

defmodule Google.Cloud.Language.V1beta2.PartOfSpeech.Mood do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :MOOD_UNKNOWN, 0
  field :CONDITIONAL_MOOD, 1
  field :IMPERATIVE, 2
  field :INDICATIVE, 3
  field :INTERROGATIVE, 4
  field :JUSSIVE, 5
  field :SUBJUNCTIVE, 6
end

defmodule Google.Cloud.Language.V1beta2.PartOfSpeech.Number do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :NUMBER_UNKNOWN, 0
  field :SINGULAR, 1
  field :PLURAL, 2
  field :DUAL, 3
end

defmodule Google.Cloud.Language.V1beta2.PartOfSpeech.Person do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :PERSON_UNKNOWN, 0
  field :FIRST, 1
  field :SECOND, 2
  field :THIRD, 3
  field :REFLEXIVE_PERSON, 4
end

defmodule Google.Cloud.Language.V1beta2.PartOfSpeech.Proper do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :PROPER_UNKNOWN, 0
  field :PROPER, 1
  field :NOT_PROPER, 2
end

defmodule Google.Cloud.Language.V1beta2.PartOfSpeech.Reciprocity do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :RECIPROCITY_UNKNOWN, 0
  field :RECIPROCAL, 1
  field :NON_RECIPROCAL, 2
end

defmodule Google.Cloud.Language.V1beta2.PartOfSpeech.Tense do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :TENSE_UNKNOWN, 0
  field :CONDITIONAL_TENSE, 1
  field :FUTURE, 2
  field :PAST, 3
  field :PRESENT, 4
  field :IMPERFECT, 5
  field :PLUPERFECT, 6
end

defmodule Google.Cloud.Language.V1beta2.PartOfSpeech.Voice do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :VOICE_UNKNOWN, 0
  field :ACTIVE, 1
  field :CAUSATIVE, 2
  field :PASSIVE, 3
end

defmodule Google.Cloud.Language.V1beta2.DependencyEdge.Label do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :UNKNOWN, 0
  field :ABBREV, 1
  field :ACOMP, 2
  field :ADVCL, 3
  field :ADVMOD, 4
  field :AMOD, 5
  field :APPOS, 6
  field :ATTR, 7
  field :AUX, 8
  field :AUXPASS, 9
  field :CC, 10
  field :CCOMP, 11
  field :CONJ, 12
  field :CSUBJ, 13
  field :CSUBJPASS, 14
  field :DEP, 15
  field :DET, 16
  field :DISCOURSE, 17
  field :DOBJ, 18
  field :EXPL, 19
  field :GOESWITH, 20
  field :IOBJ, 21
  field :MARK, 22
  field :MWE, 23
  field :MWV, 24
  field :NEG, 25
  field :NN, 26
  field :NPADVMOD, 27
  field :NSUBJ, 28
  field :NSUBJPASS, 29
  field :NUM, 30
  field :NUMBER, 31
  field :P, 32
  field :PARATAXIS, 33
  field :PARTMOD, 34
  field :PCOMP, 35
  field :POBJ, 36
  field :POSS, 37
  field :POSTNEG, 38
  field :PRECOMP, 39
  field :PRECONJ, 40
  field :PREDET, 41
  field :PREF, 42
  field :PREP, 43
  field :PRONL, 44
  field :PRT, 45
  field :PS, 46
  field :QUANTMOD, 47
  field :RCMOD, 48
  field :RCMODREL, 49
  field :RDROP, 50
  field :REF, 51
  field :REMNANT, 52
  field :REPARANDUM, 53
  field :ROOT, 54
  field :SNUM, 55
  field :SUFF, 56
  field :TMOD, 57
  field :TOPIC, 58
  field :VMOD, 59
  field :VOCATIVE, 60
  field :XCOMP, 61
  field :SUFFIX, 62
  field :TITLE, 63
  field :ADVPHMOD, 64
  field :AUXCAUS, 65
  field :AUXVV, 66
  field :DTMOD, 67
  field :FOREIGN, 68
  field :KW, 69
  field :LIST, 70
  field :NOMC, 71
  field :NOMCSUBJ, 72
  field :NOMCSUBJPASS, 73
  field :NUMC, 74
  field :COP, 75
  field :DISLOCATED, 76
  field :ASP, 77
  field :GMOD, 78
  field :GOBJ, 79
  field :INFMOD, 80
  field :MES, 81
  field :NCOMP, 82
end

defmodule Google.Cloud.Language.V1beta2.EntityMention.Type do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :TYPE_UNKNOWN, 0
  field :PROPER, 1
  field :COMMON, 2
end

defmodule Google.Cloud.Language.V1beta2.ClassificationModelOptions.V2Model.ContentCategoriesVersion do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :CONTENT_CATEGORIES_VERSION_UNSPECIFIED, 0
  field :V1, 1
  field :V2, 2
end

defmodule Google.Cloud.Language.V1beta2.Document do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :source, 0

  field :type, 1, type: Google.Cloud.Language.V1beta2.Document.Type, enum: true
  field :content, 2, type: :string, oneof: 0
  field :gcs_content_uri, 3, type: :string, json_name: "gcsContentUri", oneof: 0
  field :language, 4, type: :string
  field :reference_web_uri, 5, type: :string, json_name: "referenceWebUri"

  field :boilerplate_handling, 6,
    type: Google.Cloud.Language.V1beta2.Document.BoilerplateHandling,
    json_name: "boilerplateHandling",
    enum: true
end

defmodule Google.Cloud.Language.V1beta2.Sentence do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :text, 1, type: Google.Cloud.Language.V1beta2.TextSpan
  field :sentiment, 2, type: Google.Cloud.Language.V1beta2.Sentiment
end

defmodule Google.Cloud.Language.V1beta2.Entity.MetadataEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Language.V1beta2.Entity do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string
  field :type, 2, type: Google.Cloud.Language.V1beta2.Entity.Type, enum: true

  field :metadata, 3,
    repeated: true,
    type: Google.Cloud.Language.V1beta2.Entity.MetadataEntry,
    map: true

  field :salience, 4, type: :float
  field :mentions, 5, repeated: true, type: Google.Cloud.Language.V1beta2.EntityMention
  field :sentiment, 6, type: Google.Cloud.Language.V1beta2.Sentiment
end

defmodule Google.Cloud.Language.V1beta2.Token do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :text, 1, type: Google.Cloud.Language.V1beta2.TextSpan

  field :part_of_speech, 2,
    type: Google.Cloud.Language.V1beta2.PartOfSpeech,
    json_name: "partOfSpeech"

  field :dependency_edge, 3,
    type: Google.Cloud.Language.V1beta2.DependencyEdge,
    json_name: "dependencyEdge"

  field :lemma, 4, type: :string
end

defmodule Google.Cloud.Language.V1beta2.Sentiment do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :magnitude, 2, type: :float
  field :score, 3, type: :float
end

defmodule Google.Cloud.Language.V1beta2.PartOfSpeech do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :tag, 1, type: Google.Cloud.Language.V1beta2.PartOfSpeech.Tag, enum: true
  field :aspect, 2, type: Google.Cloud.Language.V1beta2.PartOfSpeech.Aspect, enum: true
  field :case, 3, type: Google.Cloud.Language.V1beta2.PartOfSpeech.Case, enum: true
  field :form, 4, type: Google.Cloud.Language.V1beta2.PartOfSpeech.Form, enum: true
  field :gender, 5, type: Google.Cloud.Language.V1beta2.PartOfSpeech.Gender, enum: true
  field :mood, 6, type: Google.Cloud.Language.V1beta2.PartOfSpeech.Mood, enum: true
  field :number, 7, type: Google.Cloud.Language.V1beta2.PartOfSpeech.Number, enum: true
  field :person, 8, type: Google.Cloud.Language.V1beta2.PartOfSpeech.Person, enum: true
  field :proper, 9, type: Google.Cloud.Language.V1beta2.PartOfSpeech.Proper, enum: true
  field :reciprocity, 10, type: Google.Cloud.Language.V1beta2.PartOfSpeech.Reciprocity, enum: true
  field :tense, 11, type: Google.Cloud.Language.V1beta2.PartOfSpeech.Tense, enum: true
  field :voice, 12, type: Google.Cloud.Language.V1beta2.PartOfSpeech.Voice, enum: true
end

defmodule Google.Cloud.Language.V1beta2.DependencyEdge do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :head_token_index, 1, type: :int32, json_name: "headTokenIndex"
  field :label, 2, type: Google.Cloud.Language.V1beta2.DependencyEdge.Label, enum: true
end

defmodule Google.Cloud.Language.V1beta2.EntityMention do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :text, 1, type: Google.Cloud.Language.V1beta2.TextSpan
  field :type, 2, type: Google.Cloud.Language.V1beta2.EntityMention.Type, enum: true
  field :sentiment, 3, type: Google.Cloud.Language.V1beta2.Sentiment
end

defmodule Google.Cloud.Language.V1beta2.TextSpan do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :content, 1, type: :string
  field :begin_offset, 2, type: :int32, json_name: "beginOffset"
end

defmodule Google.Cloud.Language.V1beta2.ClassificationCategory do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string
  field :confidence, 2, type: :float
end

defmodule Google.Cloud.Language.V1beta2.ClassificationModelOptions.V1Model do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3
end

defmodule Google.Cloud.Language.V1beta2.ClassificationModelOptions.V2Model do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :content_categories_version, 1,
    type:
      Google.Cloud.Language.V1beta2.ClassificationModelOptions.V2Model.ContentCategoriesVersion,
    json_name: "contentCategoriesVersion",
    enum: true
end

defmodule Google.Cloud.Language.V1beta2.ClassificationModelOptions do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :model_type, 0

  field :v1_model, 1,
    type: Google.Cloud.Language.V1beta2.ClassificationModelOptions.V1Model,
    json_name: "v1Model",
    oneof: 0

  field :v2_model, 2,
    type: Google.Cloud.Language.V1beta2.ClassificationModelOptions.V2Model,
    json_name: "v2Model",
    oneof: 0
end

defmodule Google.Cloud.Language.V1beta2.AnalyzeSentimentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :document, 1, type: Google.Cloud.Language.V1beta2.Document, deprecated: false

  field :encoding_type, 2,
    type: Google.Cloud.Language.V1beta2.EncodingType,
    json_name: "encodingType",
    enum: true
end

defmodule Google.Cloud.Language.V1beta2.AnalyzeSentimentResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :document_sentiment, 1,
    type: Google.Cloud.Language.V1beta2.Sentiment,
    json_name: "documentSentiment"

  field :language, 2, type: :string
  field :sentences, 3, repeated: true, type: Google.Cloud.Language.V1beta2.Sentence
end

defmodule Google.Cloud.Language.V1beta2.AnalyzeEntitySentimentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :document, 1, type: Google.Cloud.Language.V1beta2.Document, deprecated: false

  field :encoding_type, 2,
    type: Google.Cloud.Language.V1beta2.EncodingType,
    json_name: "encodingType",
    enum: true
end

defmodule Google.Cloud.Language.V1beta2.AnalyzeEntitySentimentResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :entities, 1, repeated: true, type: Google.Cloud.Language.V1beta2.Entity
  field :language, 2, type: :string
end

defmodule Google.Cloud.Language.V1beta2.AnalyzeEntitiesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :document, 1, type: Google.Cloud.Language.V1beta2.Document, deprecated: false

  field :encoding_type, 2,
    type: Google.Cloud.Language.V1beta2.EncodingType,
    json_name: "encodingType",
    enum: true
end

defmodule Google.Cloud.Language.V1beta2.AnalyzeEntitiesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :entities, 1, repeated: true, type: Google.Cloud.Language.V1beta2.Entity
  field :language, 2, type: :string
end

defmodule Google.Cloud.Language.V1beta2.AnalyzeSyntaxRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :document, 1, type: Google.Cloud.Language.V1beta2.Document, deprecated: false

  field :encoding_type, 2,
    type: Google.Cloud.Language.V1beta2.EncodingType,
    json_name: "encodingType",
    enum: true
end

defmodule Google.Cloud.Language.V1beta2.AnalyzeSyntaxResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :sentences, 1, repeated: true, type: Google.Cloud.Language.V1beta2.Sentence
  field :tokens, 2, repeated: true, type: Google.Cloud.Language.V1beta2.Token
  field :language, 3, type: :string
end

defmodule Google.Cloud.Language.V1beta2.ClassifyTextRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :document, 1, type: Google.Cloud.Language.V1beta2.Document, deprecated: false

  field :classification_model_options, 3,
    type: Google.Cloud.Language.V1beta2.ClassificationModelOptions,
    json_name: "classificationModelOptions"
end

defmodule Google.Cloud.Language.V1beta2.ClassifyTextResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :categories, 1, repeated: true, type: Google.Cloud.Language.V1beta2.ClassificationCategory
end

defmodule Google.Cloud.Language.V1beta2.ModerateTextRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :document, 1, type: Google.Cloud.Language.V1beta2.Document, deprecated: false
end

defmodule Google.Cloud.Language.V1beta2.ModerateTextResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :moderation_categories, 1,
    repeated: true,
    type: Google.Cloud.Language.V1beta2.ClassificationCategory,
    json_name: "moderationCategories"
end

defmodule Google.Cloud.Language.V1beta2.AnnotateTextRequest.Features do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :extract_syntax, 1, type: :bool, json_name: "extractSyntax"
  field :extract_entities, 2, type: :bool, json_name: "extractEntities"
  field :extract_document_sentiment, 3, type: :bool, json_name: "extractDocumentSentiment"
  field :extract_entity_sentiment, 4, type: :bool, json_name: "extractEntitySentiment"
  field :classify_text, 6, type: :bool, json_name: "classifyText"
  field :moderate_text, 11, type: :bool, json_name: "moderateText"

  field :classification_model_options, 10,
    type: Google.Cloud.Language.V1beta2.ClassificationModelOptions,
    json_name: "classificationModelOptions"
end

defmodule Google.Cloud.Language.V1beta2.AnnotateTextRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :document, 1, type: Google.Cloud.Language.V1beta2.Document, deprecated: false

  field :features, 2,
    type: Google.Cloud.Language.V1beta2.AnnotateTextRequest.Features,
    deprecated: false

  field :encoding_type, 3,
    type: Google.Cloud.Language.V1beta2.EncodingType,
    json_name: "encodingType",
    enum: true
end

defmodule Google.Cloud.Language.V1beta2.AnnotateTextResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :sentences, 1, repeated: true, type: Google.Cloud.Language.V1beta2.Sentence
  field :tokens, 2, repeated: true, type: Google.Cloud.Language.V1beta2.Token
  field :entities, 3, repeated: true, type: Google.Cloud.Language.V1beta2.Entity

  field :document_sentiment, 4,
    type: Google.Cloud.Language.V1beta2.Sentiment,
    json_name: "documentSentiment"

  field :language, 5, type: :string
  field :categories, 6, repeated: true, type: Google.Cloud.Language.V1beta2.ClassificationCategory

  field :moderation_categories, 8,
    repeated: true,
    type: Google.Cloud.Language.V1beta2.ClassificationCategory,
    json_name: "moderationCategories"
end

defmodule Google.Cloud.Language.V1beta2.LanguageService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.language.v1beta2.LanguageService",
    protoc_gen_elixir_version: "0.14.1"

  rpc :AnalyzeSentiment,
      Google.Cloud.Language.V1beta2.AnalyzeSentimentRequest,
      Google.Cloud.Language.V1beta2.AnalyzeSentimentResponse

  rpc :AnalyzeEntities,
      Google.Cloud.Language.V1beta2.AnalyzeEntitiesRequest,
      Google.Cloud.Language.V1beta2.AnalyzeEntitiesResponse

  rpc :AnalyzeEntitySentiment,
      Google.Cloud.Language.V1beta2.AnalyzeEntitySentimentRequest,
      Google.Cloud.Language.V1beta2.AnalyzeEntitySentimentResponse

  rpc :AnalyzeSyntax,
      Google.Cloud.Language.V1beta2.AnalyzeSyntaxRequest,
      Google.Cloud.Language.V1beta2.AnalyzeSyntaxResponse

  rpc :ClassifyText,
      Google.Cloud.Language.V1beta2.ClassifyTextRequest,
      Google.Cloud.Language.V1beta2.ClassifyTextResponse

  rpc :ModerateText,
      Google.Cloud.Language.V1beta2.ModerateTextRequest,
      Google.Cloud.Language.V1beta2.ModerateTextResponse

  rpc :AnnotateText,
      Google.Cloud.Language.V1beta2.AnnotateTextRequest,
      Google.Cloud.Language.V1beta2.AnnotateTextResponse
end

defmodule Google.Cloud.Language.V1beta2.LanguageService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Language.V1beta2.LanguageService.Service
end
