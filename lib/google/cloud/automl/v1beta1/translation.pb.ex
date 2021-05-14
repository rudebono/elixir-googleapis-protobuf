defmodule Google.Cloud.Automl.V1beta1.TranslationDatasetMetadata do
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

defmodule Google.Cloud.Automl.V1beta1.TranslationEvaluationMetrics do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          bleu_score: float | :infinity | :negative_infinity | :nan,
          base_bleu_score: float | :infinity | :negative_infinity | :nan
        }

  defstruct [:bleu_score, :base_bleu_score]

  field :bleu_score, 1, type: :double
  field :base_bleu_score, 2, type: :double
end

defmodule Google.Cloud.Automl.V1beta1.TranslationModelMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          base_model: String.t(),
          source_language_code: String.t(),
          target_language_code: String.t()
        }

  defstruct [:base_model, :source_language_code, :target_language_code]

  field :base_model, 1, type: :string
  field :source_language_code, 2, type: :string
  field :target_language_code, 3, type: :string
end

defmodule Google.Cloud.Automl.V1beta1.TranslationAnnotation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          translated_content: Google.Cloud.Automl.V1beta1.TextSnippet.t() | nil
        }

  defstruct [:translated_content]

  field :translated_content, 1, type: Google.Cloud.Automl.V1beta1.TextSnippet
end
