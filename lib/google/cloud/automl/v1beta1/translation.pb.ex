defmodule Google.Cloud.Automl.V1beta1.TranslationDatasetMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :source_language_code, 1,
    type: :string,
    json_name: "sourceLanguageCode",
    deprecated: false

  field :target_language_code, 2,
    type: :string,
    json_name: "targetLanguageCode",
    deprecated: false
end

defmodule Google.Cloud.Automl.V1beta1.TranslationEvaluationMetrics do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :bleu_score, 1, type: :double, json_name: "bleuScore"
  field :base_bleu_score, 2, type: :double, json_name: "baseBleuScore"
end

defmodule Google.Cloud.Automl.V1beta1.TranslationModelMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :base_model, 1, type: :string, json_name: "baseModel"
  field :source_language_code, 2, type: :string, json_name: "sourceLanguageCode"
  field :target_language_code, 3, type: :string, json_name: "targetLanguageCode"
end

defmodule Google.Cloud.Automl.V1beta1.TranslationAnnotation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :translated_content, 1,
    type: Google.Cloud.Automl.V1beta1.TextSnippet,
    json_name: "translatedContent"
end
