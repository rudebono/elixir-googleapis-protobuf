defmodule Google.Cloud.Aiplatform.V1beta1.Explanation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          attributions: [Google.Cloud.Aiplatform.V1beta1.Attribution.t()]
        }

  defstruct [:attributions]

  field :attributions, 1, repeated: true, type: Google.Cloud.Aiplatform.V1beta1.Attribution
end

defmodule Google.Cloud.Aiplatform.V1beta1.ModelExplanation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          mean_attributions: [Google.Cloud.Aiplatform.V1beta1.Attribution.t()]
        }

  defstruct [:mean_attributions]

  field :mean_attributions, 1, repeated: true, type: Google.Cloud.Aiplatform.V1beta1.Attribution
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

  field :baseline_output_value, 1, type: :double
  field :instance_output_value, 2, type: :double
  field :feature_attributions, 3, type: Google.Protobuf.Value
  field :output_index, 4, repeated: true, type: :int32
  field :output_display_name, 5, type: :string
  field :approximation_error, 6, type: :double
  field :output_name, 7, type: :string
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
end

defmodule Google.Cloud.Aiplatform.V1beta1.ExplanationParameters do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          method: {atom, any},
          top_k: integer,
          output_indices: Google.Protobuf.ListValue.t() | nil
        }

  defstruct [:method, :top_k, :output_indices]

  oneof :method, 0

  field :sampled_shapley_attribution, 1,
    type: Google.Cloud.Aiplatform.V1beta1.SampledShapleyAttribution,
    oneof: 0

  field :integrated_gradients_attribution, 2,
    type: Google.Cloud.Aiplatform.V1beta1.IntegratedGradientsAttribution,
    oneof: 0

  field :xrai_attribution, 3, type: Google.Cloud.Aiplatform.V1beta1.XraiAttribution, oneof: 0
  field :top_k, 4, type: :int32
  field :output_indices, 5, type: Google.Protobuf.ListValue
end

defmodule Google.Cloud.Aiplatform.V1beta1.SampledShapleyAttribution do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          path_count: integer
        }

  defstruct [:path_count]

  field :path_count, 1, type: :int32
end

defmodule Google.Cloud.Aiplatform.V1beta1.IntegratedGradientsAttribution do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          step_count: integer,
          smooth_grad_config: Google.Cloud.Aiplatform.V1beta1.SmoothGradConfig.t() | nil
        }

  defstruct [:step_count, :smooth_grad_config]

  field :step_count, 1, type: :int32
  field :smooth_grad_config, 2, type: Google.Cloud.Aiplatform.V1beta1.SmoothGradConfig
end

defmodule Google.Cloud.Aiplatform.V1beta1.XraiAttribution do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          step_count: integer,
          smooth_grad_config: Google.Cloud.Aiplatform.V1beta1.SmoothGradConfig.t() | nil
        }

  defstruct [:step_count, :smooth_grad_config]

  field :step_count, 1, type: :int32
  field :smooth_grad_config, 2, type: Google.Cloud.Aiplatform.V1beta1.SmoothGradConfig
end

defmodule Google.Cloud.Aiplatform.V1beta1.SmoothGradConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          GradientNoiseSigma: {atom, any},
          noisy_sample_count: integer
        }

  defstruct [:GradientNoiseSigma, :noisy_sample_count]

  oneof :GradientNoiseSigma, 0
  field :noise_sigma, 1, type: :float, oneof: 0
  field :feature_noise_sigma, 2, type: Google.Cloud.Aiplatform.V1beta1.FeatureNoiseSigma, oneof: 0
  field :noisy_sample_count, 3, type: :int32
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
    type: Google.Cloud.Aiplatform.V1beta1.FeatureNoiseSigma.NoiseSigmaForFeature
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
end

defmodule Google.Cloud.Aiplatform.V1beta1.ExplanationMetadataOverride.InputMetadataOverride do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          input_baselines: [Google.Protobuf.Value.t()]
        }

  defstruct [:input_baselines]

  field :input_baselines, 1, repeated: true, type: Google.Protobuf.Value
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
end
