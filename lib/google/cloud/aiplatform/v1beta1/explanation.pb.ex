defmodule Google.Cloud.Aiplatform.V1beta1.Presets.Query do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :PRECISE, 0
  field :FAST, 1
end

defmodule Google.Cloud.Aiplatform.V1beta1.Presets.Modality do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :MODALITY_UNSPECIFIED, 0
  field :IMAGE, 1
  field :TEXT, 2
  field :TABULAR, 3
end

defmodule Google.Cloud.Aiplatform.V1beta1.ExamplesOverride.DataFormat do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :DATA_FORMAT_UNSPECIFIED, 0
  field :INSTANCES, 1
  field :EMBEDDINGS, 2
end

defmodule Google.Cloud.Aiplatform.V1beta1.Explanation do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :attributions, 1,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.Attribution,
    deprecated: false

  field :neighbors, 2,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.Neighbor,
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.ModelExplanation do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :mean_attributions, 1,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.Attribution,
    json_name: "meanAttributions",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.Attribution do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :baseline_output_value, 1,
    type: :double,
    json_name: "baselineOutputValue",
    deprecated: false

  field :instance_output_value, 2,
    type: :double,
    json_name: "instanceOutputValue",
    deprecated: false

  field :feature_attributions, 3,
    type: Google.Protobuf.Value,
    json_name: "featureAttributions",
    deprecated: false

  field :output_index, 4,
    repeated: true,
    type: :int32,
    json_name: "outputIndex",
    deprecated: false

  field :output_display_name, 5, type: :string, json_name: "outputDisplayName", deprecated: false
  field :approximation_error, 6, type: :double, json_name: "approximationError", deprecated: false
  field :output_name, 7, type: :string, json_name: "outputName", deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.Neighbor do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :neighbor_id, 1, type: :string, json_name: "neighborId", deprecated: false
  field :neighbor_distance, 2, type: :double, json_name: "neighborDistance", deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.ExplanationSpec do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parameters, 1,
    type: Google.Cloud.Aiplatform.V1beta1.ExplanationParameters,
    deprecated: false

  field :metadata, 2, type: Google.Cloud.Aiplatform.V1beta1.ExplanationMetadata, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.ExplanationParameters do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

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

  field :examples, 7, type: Google.Cloud.Aiplatform.V1beta1.Examples, oneof: 0
  field :top_k, 4, type: :int32, json_name: "topK"
  field :output_indices, 5, type: Google.Protobuf.ListValue, json_name: "outputIndices"
end

defmodule Google.Cloud.Aiplatform.V1beta1.SampledShapleyAttribution do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :path_count, 1, type: :int32, json_name: "pathCount", deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.IntegratedGradientsAttribution do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :step_count, 1, type: :int32, json_name: "stepCount", deprecated: false

  field :smooth_grad_config, 2,
    type: Google.Cloud.Aiplatform.V1beta1.SmoothGradConfig,
    json_name: "smoothGradConfig"

  field :blur_baseline_config, 3,
    type: Google.Cloud.Aiplatform.V1beta1.BlurBaselineConfig,
    json_name: "blurBaselineConfig"
end

defmodule Google.Cloud.Aiplatform.V1beta1.XraiAttribution do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :step_count, 1, type: :int32, json_name: "stepCount", deprecated: false

  field :smooth_grad_config, 2,
    type: Google.Cloud.Aiplatform.V1beta1.SmoothGradConfig,
    json_name: "smoothGradConfig"

  field :blur_baseline_config, 3,
    type: Google.Cloud.Aiplatform.V1beta1.BlurBaselineConfig,
    json_name: "blurBaselineConfig"
end

defmodule Google.Cloud.Aiplatform.V1beta1.SmoothGradConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :GradientNoiseSigma, 0

  field :noise_sigma, 1, type: :float, json_name: "noiseSigma", oneof: 0

  field :feature_noise_sigma, 2,
    type: Google.Cloud.Aiplatform.V1beta1.FeatureNoiseSigma,
    json_name: "featureNoiseSigma",
    oneof: 0

  field :noisy_sample_count, 3, type: :int32, json_name: "noisySampleCount"
end

defmodule Google.Cloud.Aiplatform.V1beta1.FeatureNoiseSigma.NoiseSigmaForFeature do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string
  field :sigma, 2, type: :float
end

defmodule Google.Cloud.Aiplatform.V1beta1.FeatureNoiseSigma do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :noise_sigma, 1,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.FeatureNoiseSigma.NoiseSigmaForFeature,
    json_name: "noiseSigma"
end

defmodule Google.Cloud.Aiplatform.V1beta1.BlurBaselineConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :max_blur_sigma, 1, type: :float, json_name: "maxBlurSigma"
end

defmodule Google.Cloud.Aiplatform.V1beta1.Examples do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :config, 0

  field :nearest_neighbor_search_config, 2,
    type: Google.Protobuf.Value,
    json_name: "nearestNeighborSearchConfig",
    oneof: 0

  field :presets, 4, type: Google.Cloud.Aiplatform.V1beta1.Presets, oneof: 0
  field :gcs_source, 1, type: Google.Cloud.Aiplatform.V1beta1.GcsSource, json_name: "gcsSource"
  field :neighbor_count, 3, type: :int32, json_name: "neighborCount"
end

defmodule Google.Cloud.Aiplatform.V1beta1.Presets do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :query, 1,
    proto3_optional: true,
    type: Google.Cloud.Aiplatform.V1beta1.Presets.Query,
    enum: true

  field :modality, 2, type: Google.Cloud.Aiplatform.V1beta1.Presets.Modality, enum: true
end

defmodule Google.Cloud.Aiplatform.V1beta1.ExplanationSpecOverride do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parameters, 1, type: Google.Cloud.Aiplatform.V1beta1.ExplanationParameters
  field :metadata, 2, type: Google.Cloud.Aiplatform.V1beta1.ExplanationMetadataOverride

  field :examples_override, 3,
    type: Google.Cloud.Aiplatform.V1beta1.ExamplesOverride,
    json_name: "examplesOverride"
end

defmodule Google.Cloud.Aiplatform.V1beta1.ExplanationMetadataOverride.InputMetadataOverride do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :input_baselines, 1,
    repeated: true,
    type: Google.Protobuf.Value,
    json_name: "inputBaselines"
end

defmodule Google.Cloud.Aiplatform.V1beta1.ExplanationMetadataOverride.InputsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :string

  field :value, 2,
    type: Google.Cloud.Aiplatform.V1beta1.ExplanationMetadataOverride.InputMetadataOverride
end

defmodule Google.Cloud.Aiplatform.V1beta1.ExplanationMetadataOverride do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :inputs, 1,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.ExplanationMetadataOverride.InputsEntry,
    map: true,
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.ExamplesOverride do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :neighbor_count, 1, type: :int32, json_name: "neighborCount"
  field :crowding_count, 2, type: :int32, json_name: "crowdingCount"

  field :restrictions, 3,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.ExamplesRestrictionsNamespace

  field :return_embeddings, 4, type: :bool, json_name: "returnEmbeddings"

  field :data_format, 5,
    type: Google.Cloud.Aiplatform.V1beta1.ExamplesOverride.DataFormat,
    json_name: "dataFormat",
    enum: true
end

defmodule Google.Cloud.Aiplatform.V1beta1.ExamplesRestrictionsNamespace do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :namespace_name, 1, type: :string, json_name: "namespaceName"
  field :allow, 2, repeated: true, type: :string
  field :deny, 3, repeated: true, type: :string
end