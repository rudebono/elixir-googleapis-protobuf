defmodule Google.Cloud.Recommendationengine.V1beta1.FeatureMap.StringList do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :value, 1, repeated: true, type: :string
end

defmodule Google.Cloud.Recommendationengine.V1beta1.FeatureMap.FloatList do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :value, 1, repeated: true, type: :float
end

defmodule Google.Cloud.Recommendationengine.V1beta1.FeatureMap.CategoricalFeaturesEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Recommendationengine.V1beta1.FeatureMap.StringList
end

defmodule Google.Cloud.Recommendationengine.V1beta1.FeatureMap.NumericalFeaturesEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Recommendationengine.V1beta1.FeatureMap.FloatList
end

defmodule Google.Cloud.Recommendationengine.V1beta1.FeatureMap do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :categorical_features, 1,
    repeated: true,
    type: Google.Cloud.Recommendationengine.V1beta1.FeatureMap.CategoricalFeaturesEntry,
    json_name: "categoricalFeatures",
    map: true

  field :numerical_features, 2,
    repeated: true,
    type: Google.Cloud.Recommendationengine.V1beta1.FeatureMap.NumericalFeaturesEntry,
    json_name: "numericalFeatures",
    map: true
end
