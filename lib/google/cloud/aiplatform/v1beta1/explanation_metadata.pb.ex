defmodule Google.Cloud.Aiplatform.V1beta1.ExplanationMetadata.InputMetadata.Encoding do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :ENCODING_UNSPECIFIED
          | :IDENTITY
          | :BAG_OF_FEATURES
          | :BAG_OF_FEATURES_SPARSE
          | :INDICATOR
          | :COMBINED_EMBEDDING
          | :CONCAT_EMBEDDING

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
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :TYPE_UNSPECIFIED | :PIXELS | :OUTLINES

  field :TYPE_UNSPECIFIED, 0
  field :PIXELS, 1
  field :OUTLINES, 2
end
defmodule Google.Cloud.Aiplatform.V1beta1.ExplanationMetadata.InputMetadata.Visualization.Polarity do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :POLARITY_UNSPECIFIED | :POSITIVE | :NEGATIVE | :BOTH

  field :POLARITY_UNSPECIFIED, 0
  field :POSITIVE, 1
  field :NEGATIVE, 2
  field :BOTH, 3
end
defmodule Google.Cloud.Aiplatform.V1beta1.ExplanationMetadata.InputMetadata.Visualization.ColorMap do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :COLOR_MAP_UNSPECIFIED
          | :PINK_GREEN
          | :VIRIDIS
          | :RED
          | :GREEN
          | :RED_GREEN
          | :PINK_WHITE_GREEN

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
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :OVERLAY_TYPE_UNSPECIFIED | :NONE | :ORIGINAL | :GRAYSCALE | :MASK_BLACK

  field :OVERLAY_TYPE_UNSPECIFIED, 0
  field :NONE, 1
  field :ORIGINAL, 2
  field :GRAYSCALE, 3
  field :MASK_BLACK, 4
end
defmodule Google.Cloud.Aiplatform.V1beta1.ExplanationMetadata.InputMetadata.FeatureValueDomain do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          min_value: float | :infinity | :negative_infinity | :nan,
          max_value: float | :infinity | :negative_infinity | :nan,
          original_mean: float | :infinity | :negative_infinity | :nan,
          original_stddev: float | :infinity | :negative_infinity | :nan
        }

  defstruct min_value: 0.0,
            max_value: 0.0,
            original_mean: 0.0,
            original_stddev: 0.0

  field :min_value, 1, type: :float, json_name: "minValue"
  field :max_value, 2, type: :float, json_name: "maxValue"
  field :original_mean, 3, type: :float, json_name: "originalMean"
  field :original_stddev, 4, type: :float, json_name: "originalStddev"
end
defmodule Google.Cloud.Aiplatform.V1beta1.ExplanationMetadata.InputMetadata.Visualization do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          type:
            Google.Cloud.Aiplatform.V1beta1.ExplanationMetadata.InputMetadata.Visualization.Type.t(),
          polarity:
            Google.Cloud.Aiplatform.V1beta1.ExplanationMetadata.InputMetadata.Visualization.Polarity.t(),
          color_map:
            Google.Cloud.Aiplatform.V1beta1.ExplanationMetadata.InputMetadata.Visualization.ColorMap.t(),
          clip_percent_upperbound: float | :infinity | :negative_infinity | :nan,
          clip_percent_lowerbound: float | :infinity | :negative_infinity | :nan,
          overlay_type:
            Google.Cloud.Aiplatform.V1beta1.ExplanationMetadata.InputMetadata.Visualization.OverlayType.t()
        }

  defstruct type: :TYPE_UNSPECIFIED,
            polarity: :POLARITY_UNSPECIFIED,
            color_map: :COLOR_MAP_UNSPECIFIED,
            clip_percent_upperbound: 0.0,
            clip_percent_lowerbound: 0.0,
            overlay_type: :OVERLAY_TYPE_UNSPECIFIED

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          input_baselines: [Google.Protobuf.Value.t()],
          input_tensor_name: String.t(),
          encoding:
            Google.Cloud.Aiplatform.V1beta1.ExplanationMetadata.InputMetadata.Encoding.t(),
          modality: String.t(),
          feature_value_domain:
            Google.Cloud.Aiplatform.V1beta1.ExplanationMetadata.InputMetadata.FeatureValueDomain.t()
            | nil,
          indices_tensor_name: String.t(),
          dense_shape_tensor_name: String.t(),
          index_feature_mapping: [String.t()],
          encoded_tensor_name: String.t(),
          encoded_baselines: [Google.Protobuf.Value.t()],
          visualization:
            Google.Cloud.Aiplatform.V1beta1.ExplanationMetadata.InputMetadata.Visualization.t()
            | nil,
          group_name: String.t()
        }

  defstruct input_baselines: [],
            input_tensor_name: "",
            encoding: :ENCODING_UNSPECIFIED,
            modality: "",
            feature_value_domain: nil,
            indices_tensor_name: "",
            dense_shape_tensor_name: "",
            index_feature_mapping: [],
            encoded_tensor_name: "",
            encoded_baselines: [],
            visualization: nil,
            group_name: ""

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          display_name_mapping:
            {:index_display_name_mapping, Google.Protobuf.Value.t() | nil}
            | {:display_name_mapping_key, String.t()},
          output_tensor_name: String.t()
        }

  defstruct display_name_mapping: nil,
            output_tensor_name: ""

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
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: Google.Cloud.Aiplatform.V1beta1.ExplanationMetadata.InputMetadata.t() | nil
        }

  defstruct key: "",
            value: nil

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Aiplatform.V1beta1.ExplanationMetadata.InputMetadata
end
defmodule Google.Cloud.Aiplatform.V1beta1.ExplanationMetadata.OutputsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: Google.Cloud.Aiplatform.V1beta1.ExplanationMetadata.OutputMetadata.t() | nil
        }

  defstruct key: "",
            value: nil

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Aiplatform.V1beta1.ExplanationMetadata.OutputMetadata
end
defmodule Google.Cloud.Aiplatform.V1beta1.ExplanationMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          inputs: %{
            String.t() =>
              Google.Cloud.Aiplatform.V1beta1.ExplanationMetadata.InputMetadata.t() | nil
          },
          outputs: %{
            String.t() =>
              Google.Cloud.Aiplatform.V1beta1.ExplanationMetadata.OutputMetadata.t() | nil
          },
          feature_attributions_schema_uri: String.t()
        }

  defstruct inputs: %{},
            outputs: %{},
            feature_attributions_schema_uri: ""

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
end
