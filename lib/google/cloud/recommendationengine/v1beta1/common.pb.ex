defmodule Google.Cloud.Recommendationengine.V1beta1.FeatureMap.StringList do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          value: [String.t()]
        }

  defstruct [:value]

  field :value, 1, repeated: true, type: :string
end

defmodule Google.Cloud.Recommendationengine.V1beta1.FeatureMap.FloatList do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          value: [float | :infinity | :negative_infinity | :nan]
        }

  defstruct [:value]

  field :value, 1, repeated: true, type: :float
end

defmodule Google.Cloud.Recommendationengine.V1beta1.FeatureMap.CategoricalFeaturesEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: Google.Cloud.Recommendationengine.V1beta1.FeatureMap.StringList.t() | nil
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Recommendationengine.V1beta1.FeatureMap.StringList
end

defmodule Google.Cloud.Recommendationengine.V1beta1.FeatureMap.NumericalFeaturesEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: Google.Cloud.Recommendationengine.V1beta1.FeatureMap.FloatList.t() | nil
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Recommendationengine.V1beta1.FeatureMap.FloatList
end

defmodule Google.Cloud.Recommendationengine.V1beta1.FeatureMap do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          categorical_features: %{
            String.t() =>
              Google.Cloud.Recommendationengine.V1beta1.FeatureMap.StringList.t() | nil
          },
          numerical_features: %{
            String.t() => Google.Cloud.Recommendationengine.V1beta1.FeatureMap.FloatList.t() | nil
          }
        }

  defstruct [:categorical_features, :numerical_features]

  field :categorical_features, 1,
    repeated: true,
    type: Google.Cloud.Recommendationengine.V1beta1.FeatureMap.CategoricalFeaturesEntry,
    map: true

  field :numerical_features, 2,
    repeated: true,
    type: Google.Cloud.Recommendationengine.V1beta1.FeatureMap.NumericalFeaturesEntry,
    map: true
end
