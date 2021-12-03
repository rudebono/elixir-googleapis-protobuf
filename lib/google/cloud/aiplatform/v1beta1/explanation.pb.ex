defmodule Google.Cloud.Aiplatform.V1beta1.Explanation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          attributions: [Google.Cloud.Aiplatform.V1beta1.Attribution.t()]
        }

  defstruct [:attributions]

  field :attributions, 1, repeated: true, type: Google.Cloud.Aiplatform.V1beta1.Attribution

  def transform_module(), do: nil
end

defmodule Google.Cloud.Aiplatform.V1beta1.ModelExplanation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          mean_attributions: [Google.Cloud.Aiplatform.V1beta1.Attribution.t()]
        }

  defstruct [:mean_attributions]

  field :mean_attributions, 1,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.Attribution,
    json_name: "meanAttributions"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Aiplatform.V1beta1.Attribution do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          baseline_output_value: float | :infinity | :negative_infinity | :nan,
          instance_output_value: float | :infinity | :negative_infinity | :nan,
          feature_attributions: Google.Protobuf.Value.t() | nil,
          output_index: [integer],
          output_display_name: String.t(),
          approximation_error: float | :infinity | :negative_infinity | :nan,
          output_name: String.t()
        }

  defstruct [
    :baseline_output_value,
    :instance_output_value,
    :feature_attributions,
    :output_index,
    :output_display_name,
    :approximation_error,
    :output_name
  ]

  field :baseline_output_value, 1, type: :double, json_name: "baselineOutputValue"
  field :instance_output_value, 2, type: :double, json_name: "instanceOutputValue"
  field :feature_attributions, 3, type: Google.Protobuf.Value, json_name: "featureAttributions"
  field :output_index, 4, repeated: true, type: :int32, json_name: "outputIndex"
  field :output_display_name, 5, type: :string, json_name: "outputDisplayName"
  field :approximation_error, 6, type: :double, json_name: "approximationError"
  field :output_name, 7, type: :string, json_name: "outputName"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Aiplatform.V1beta1.ExplanationSpec do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parameters: Google.Cloud.Aiplatform.V1beta1.ExplanationParameters.t() | nil,
          metadata: Google.Cloud.Aiplatform.V1beta1.ExplanationMetadata.t() | nil
        }

  defstruct [:parameters, :metadata]

  field :parameters, 1, type: Google.Cloud.Aiplatform.V1beta1.ExplanationParameters
  field :metadata, 2, type: Google.Cloud.Aiplatform.V1beta1.ExplanationMetadata

  def transform_module(), do: nil
end

defmodule Google.Cloud.Aiplatform.V1beta1.ExplanationParameters do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          method:
            {:sampled_shapley_attribution,
             Google.Cloud.Aiplatform.V1beta1.SampledShapleyAttribution.t() | nil}
            | {:integrated_gradients_attribution,
               Google.Cloud.Aiplatform.V1beta1.IntegratedGradientsAttribution.t() | nil}
            | {:xrai_attribution, Google.Cloud.Aiplatform.V1beta1.XraiAttribution.t() | nil}
            | {:similarity, Google.Cloud.Aiplatform.V1beta1.Similarity.t() | nil},
          top_k: integer,
          output_indices: Google.Protobuf.ListValue.t() | nil
        }

  defstruct [:method, :top_k, :output_indices]

  oneof :method, 0

  field :sampled_shapley_attribution, 1,
    type: Google.Cloud.Aiplatform.V1beta1.SampledShapleyAttribution,
    json_name: "sampledShapleyAttribution",
    oneof: 0

  field :integrated_gradients_attribution, 2,
    type: Google.Cloud.Aiplatform.V1beta1.IntegratedGradientsAttribution,
    json_name: "integratedGradientsAttribution",
    oneof: 0

  field :xrai_attribution, 3,
    type: Google.Cloud.Aiplatform.V1beta1.XraiAttribution,
    json_name: "xraiAttribution",
    oneof: 0

  field :similarity, 7, type: Google.Cloud.Aiplatform.V1beta1.Similarity, oneof: 0
  field :top_k, 4, type: :int32, json_name: "topK"
  field :output_indices, 5, type: Google.Protobuf.ListValue, json_name: "outputIndices"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Aiplatform.V1beta1.SampledShapleyAttribution do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          path_count: integer
        }

  defstruct [:path_count]

  field :path_count, 1, type: :int32, json_name: "pathCount"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Aiplatform.V1beta1.IntegratedGradientsAttribution do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          step_count: integer,
          smooth_grad_config: Google.Cloud.Aiplatform.V1beta1.SmoothGradConfig.t() | nil,
          blur_baseline_config: Google.Cloud.Aiplatform.V1beta1.BlurBaselineConfig.t() | nil
        }

  defstruct [:step_count, :smooth_grad_config, :blur_baseline_config]

  field :step_count, 1, type: :int32, json_name: "stepCount"

  field :smooth_grad_config, 2,
    type: Google.Cloud.Aiplatform.V1beta1.SmoothGradConfig,
    json_name: "smoothGradConfig"

  field :blur_baseline_config, 3,
    type: Google.Cloud.Aiplatform.V1beta1.BlurBaselineConfig,
    json_name: "blurBaselineConfig"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Aiplatform.V1beta1.XraiAttribution do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          step_count: integer,
          smooth_grad_config: Google.Cloud.Aiplatform.V1beta1.SmoothGradConfig.t() | nil,
          blur_baseline_config: Google.Cloud.Aiplatform.V1beta1.BlurBaselineConfig.t() | nil
        }

  defstruct [:step_count, :smooth_grad_config, :blur_baseline_config]

  field :step_count, 1, type: :int32, json_name: "stepCount"

  field :smooth_grad_config, 2,
    type: Google.Cloud.Aiplatform.V1beta1.SmoothGradConfig,
    json_name: "smoothGradConfig"

  field :blur_baseline_config, 3,
    type: Google.Cloud.Aiplatform.V1beta1.BlurBaselineConfig,
    json_name: "blurBaselineConfig"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Aiplatform.V1beta1.SmoothGradConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          GradientNoiseSigma:
            {:noise_sigma, float | :infinity | :negative_infinity | :nan}
            | {:feature_noise_sigma, Google.Cloud.Aiplatform.V1beta1.FeatureNoiseSigma.t() | nil},
          noisy_sample_count: integer
        }

  defstruct [:GradientNoiseSigma, :noisy_sample_count]

  oneof :GradientNoiseSigma, 0

  field :noise_sigma, 1, type: :float, json_name: "noiseSigma", oneof: 0

  field :feature_noise_sigma, 2,
    type: Google.Cloud.Aiplatform.V1beta1.FeatureNoiseSigma,
    json_name: "featureNoiseSigma",
    oneof: 0

  field :noisy_sample_count, 3, type: :int32, json_name: "noisySampleCount"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Aiplatform.V1beta1.FeatureNoiseSigma.NoiseSigmaForFeature do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          sigma: float | :infinity | :negative_infinity | :nan
        }

  defstruct [:name, :sigma]

  field :name, 1, type: :string
  field :sigma, 2, type: :float

  def transform_module(), do: nil
end

defmodule Google.Cloud.Aiplatform.V1beta1.FeatureNoiseSigma do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          noise_sigma: [
            Google.Cloud.Aiplatform.V1beta1.FeatureNoiseSigma.NoiseSigmaForFeature.t()
          ]
        }

  defstruct [:noise_sigma]

  field :noise_sigma, 1,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.FeatureNoiseSigma.NoiseSigmaForFeature,
    json_name: "noiseSigma"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Aiplatform.V1beta1.BlurBaselineConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          max_blur_sigma: float | :infinity | :negative_infinity | :nan
        }

  defstruct [:max_blur_sigma]

  field :max_blur_sigma, 1, type: :float, json_name: "maxBlurSigma"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Aiplatform.V1beta1.Similarity do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          gcs_source: Google.Cloud.Aiplatform.V1beta1.GcsSource.t() | nil,
          nearest_neighbor_search_config: Google.Protobuf.Value.t() | nil
        }

  defstruct [:gcs_source, :nearest_neighbor_search_config]

  field :gcs_source, 1, type: Google.Cloud.Aiplatform.V1beta1.GcsSource, json_name: "gcsSource"

  field :nearest_neighbor_search_config, 2,
    type: Google.Protobuf.Value,
    json_name: "nearestNeighborSearchConfig"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Aiplatform.V1beta1.ExplanationSpecOverride do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parameters: Google.Cloud.Aiplatform.V1beta1.ExplanationParameters.t() | nil,
          metadata: Google.Cloud.Aiplatform.V1beta1.ExplanationMetadataOverride.t() | nil
        }

  defstruct [:parameters, :metadata]

  field :parameters, 1, type: Google.Cloud.Aiplatform.V1beta1.ExplanationParameters
  field :metadata, 2, type: Google.Cloud.Aiplatform.V1beta1.ExplanationMetadataOverride

  def transform_module(), do: nil
end

defmodule Google.Cloud.Aiplatform.V1beta1.ExplanationMetadataOverride.InputMetadataOverride do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          input_baselines: [Google.Protobuf.Value.t()]
        }

  defstruct [:input_baselines]

  field :input_baselines, 1,
    repeated: true,
    type: Google.Protobuf.Value,
    json_name: "inputBaselines"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Aiplatform.V1beta1.ExplanationMetadataOverride.InputsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value:
            Google.Cloud.Aiplatform.V1beta1.ExplanationMetadataOverride.InputMetadataOverride.t()
            | nil
        }

  defstruct [:key, :value]

  field :key, 1, type: :string

  field :value, 2,
    type: Google.Cloud.Aiplatform.V1beta1.ExplanationMetadataOverride.InputMetadataOverride

  def transform_module(), do: nil
end

defmodule Google.Cloud.Aiplatform.V1beta1.ExplanationMetadataOverride do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          inputs: %{
            String.t() =>
              Google.Cloud.Aiplatform.V1beta1.ExplanationMetadataOverride.InputMetadataOverride.t()
              | nil
          }
        }

  defstruct [:inputs]

  field :inputs, 1,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.ExplanationMetadataOverride.InputsEntry,
    map: true

  def transform_module(), do: nil
end
