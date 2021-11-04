defmodule Google.Cloud.Automl.V1.TranslationDatasetMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          source_language_code: String.t(),
          target_language_code: String.t()
        }

  defstruct [:source_language_code, :target_language_code]

  field :source_language_code, 1, type: :string, json_name: "sourceLanguageCode"
  field :target_language_code, 2, type: :string, json_name: "targetLanguageCode"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Automl.V1.TranslationEvaluationMetrics do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          bleu_score: float | :infinity | :negative_infinity | :nan,
          base_bleu_score: float | :infinity | :negative_infinity | :nan
        }

  defstruct [:bleu_score, :base_bleu_score]

  field :bleu_score, 1, type: :double, json_name: "bleuScore"
  field :base_bleu_score, 2, type: :double, json_name: "baseBleuScore"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Automl.V1.TranslationModelMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          base_model: String.t(),
          source_language_code: String.t(),
          target_language_code: String.t()
        }

  defstruct [:base_model, :source_language_code, :target_language_code]

  field :base_model, 1, type: :string, json_name: "baseModel"
  field :source_language_code, 2, type: :string, json_name: "sourceLanguageCode"
  field :target_language_code, 3, type: :string, json_name: "targetLanguageCode"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Automl.V1.TranslationAnnotation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          translated_content: Google.Cloud.Automl.V1.TextSnippet.t() | nil
        }

  defstruct [:translated_content]

  field :translated_content, 1,
    type: Google.Cloud.Automl.V1.TextSnippet,
    json_name: "translatedContent"

  def transform_module(), do: nil
end
