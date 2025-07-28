defmodule Google.Cloud.Aiplatform.V1beta1.ExplanationMetadata.InputMetadata.Encoding do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :ENCODING_UNSPECIFIED, 0
  field :IDENTITY, 1
  field :BAG_OF_FEATURES, 2
  field :BAG_OF_FEATURES_SPARSE, 3
  field :INDICATOR, 4
  field :COMBINED_EMBEDDING, 5
  field :CONCAT_EMBEDDING, 6
end

defmodule Google.Cloud.Aiplatform.V1beta1.ExplanationMetadata.InputMetadata.Visualization.Type do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :TYPE_UNSPECIFIED, 0
  field :PIXELS, 1
  field :OUTLINES, 2
end

defmodule Google.Cloud.Aiplatform.V1beta1.ExplanationMetadata.InputMetadata.Visualization.Polarity do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :POLARITY_UNSPECIFIED, 0
  field :POSITIVE, 1
  field :NEGATIVE, 2
  field :BOTH, 3
end

defmodule Google.Cloud.Aiplatform.V1beta1.ExplanationMetadata.InputMetadata.Visualization.ColorMap do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :COLOR_MAP_UNSPECIFIED, 0
  field :PINK_GREEN, 1
  field :VIRIDIS, 2
  field :RED, 3
  field :GREEN, 4
  field :RED_GREEN, 6
  field :PINK_WHITE_GREEN, 5
end

defmodule Google.Cloud.Aiplatform.V1beta1.ExplanationMetadata.InputMetadata.Visualization.OverlayType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :OVERLAY_TYPE_UNSPECIFIED, 0
  field :NONE, 1
  field :ORIGINAL, 2
  field :GRAYSCALE, 3
  field :MASK_BLACK, 4
end

defmodule Google.Cloud.Aiplatform.V1beta1.ExplanationMetadata.InputMetadata.FeatureValueDomain do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :min_value, 1, type: :float, json_name: "minValue"
  field :max_value, 2, type: :float, json_name: "maxValue"
  field :original_mean, 3, type: :float, json_name: "originalMean"
  field :original_stddev, 4, type: :float, json_name: "originalStddev"
end

defmodule Google.Cloud.Aiplatform.V1beta1.ExplanationMetadata.InputMetadata.Visualization do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :type, 1,
    type: Google.Cloud.Aiplatform.V1beta1.ExplanationMetadata.InputMetadata.Visualization.Type,
    enum: true

  field :polarity, 2,
    type:
      Google.Cloud.Aiplatform.V1beta1.ExplanationMetadata.InputMetadata.Visualization.Polarity,
    enum: true

  field :color_map, 3,
    type:
      Google.Cloud.Aiplatform.V1beta1.ExplanationMetadata.InputMetadata.Visualization.ColorMap,
    json_name: "colorMap",
    enum: true

  field :clip_percent_upperbound, 4, type: :float, json_name: "clipPercentUpperbound"
  field :clip_percent_lowerbound, 5, type: :float, json_name: "clipPercentLowerbound"

  field :overlay_type, 6,
    type:
      Google.Cloud.Aiplatform.V1beta1.ExplanationMetadata.InputMetadata.Visualization.OverlayType,
    json_name: "overlayType",
    enum: true
end

defmodule Google.Cloud.Aiplatform.V1beta1.ExplanationMetadata.InputMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :input_baselines, 1,
    repeated: true,
    type: Google.Protobuf.Value,
    json_name: "inputBaselines"

  field :input_tensor_name, 2, type: :string, json_name: "inputTensorName"

  field :encoding, 3,
    type: Google.Cloud.Aiplatform.V1beta1.ExplanationMetadata.InputMetadata.Encoding,
    enum: true

  field :modality, 4, type: :string

  field :feature_value_domain, 5,
    type: Google.Cloud.Aiplatform.V1beta1.ExplanationMetadata.InputMetadata.FeatureValueDomain,
    json_name: "featureValueDomain"

  field :indices_tensor_name, 6, type: :string, json_name: "indicesTensorName"
  field :dense_shape_tensor_name, 7, type: :string, json_name: "denseShapeTensorName"
  field :index_feature_mapping, 8, repeated: true, type: :string, json_name: "indexFeatureMapping"
  field :encoded_tensor_name, 9, type: :string, json_name: "encodedTensorName"

  field :encoded_baselines, 10,
    repeated: true,
    type: Google.Protobuf.Value,
    json_name: "encodedBaselines"

  field :visualization, 11,
    type: Google.Cloud.Aiplatform.V1beta1.ExplanationMetadata.InputMetadata.Visualization

  field :group_name, 12, type: :string, json_name: "groupName"
end

defmodule Google.Cloud.Aiplatform.V1beta1.ExplanationMetadata.OutputMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :display_name_mapping, 0

  field :index_display_name_mapping, 1,
    type: Google.Protobuf.Value,
    json_name: "indexDisplayNameMapping",
    oneof: 0

  field :display_name_mapping_key, 2, type: :string, json_name: "displayNameMappingKey", oneof: 0
  field :output_tensor_name, 3, type: :string, json_name: "outputTensorName"
end

defmodule Google.Cloud.Aiplatform.V1beta1.ExplanationMetadata.InputsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Aiplatform.V1beta1.ExplanationMetadata.InputMetadata
end

defmodule Google.Cloud.Aiplatform.V1beta1.ExplanationMetadata.OutputsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Aiplatform.V1beta1.ExplanationMetadata.OutputMetadata
end

defmodule Google.Cloud.Aiplatform.V1beta1.ExplanationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :inputs, 1,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.ExplanationMetadata.InputsEntry,
    map: true,
    deprecated: false

  field :outputs, 2,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.ExplanationMetadata.OutputsEntry,
    map: true,
    deprecated: false

  field :feature_attributions_schema_uri, 3,
    type: :string,
    json_name: "featureAttributionsSchemaUri"

  field :latent_space_source, 5, type: :string, json_name: "latentSpaceSource"
end
