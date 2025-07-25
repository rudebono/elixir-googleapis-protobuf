defmodule Google.Cloud.Speech.V2.AccessMetadata.ConstraintType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :CONSTRAINT_TYPE_UNSPECIFIED, 0
  field :RESOURCE_LOCATIONS_ORG_POLICY_CREATE_CONSTRAINT, 1
end

defmodule Google.Cloud.Speech.V2.ModelFeature do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :feature, 1, type: :string
  field :release_state, 2, type: :string, json_name: "releaseState"
end

defmodule Google.Cloud.Speech.V2.ModelFeatures do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :model_feature, 1,
    repeated: true,
    type: Google.Cloud.Speech.V2.ModelFeature,
    json_name: "modelFeature"
end

defmodule Google.Cloud.Speech.V2.ModelMetadata.ModelFeaturesEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Speech.V2.ModelFeatures
end

defmodule Google.Cloud.Speech.V2.ModelMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :model_features, 1,
    repeated: true,
    type: Google.Cloud.Speech.V2.ModelMetadata.ModelFeaturesEntry,
    json_name: "modelFeatures",
    map: true
end

defmodule Google.Cloud.Speech.V2.LanguageMetadata.ModelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Speech.V2.ModelMetadata
end

defmodule Google.Cloud.Speech.V2.LanguageMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :models, 1,
    repeated: true,
    type: Google.Cloud.Speech.V2.LanguageMetadata.ModelsEntry,
    map: true
end

defmodule Google.Cloud.Speech.V2.AccessMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :constraint_type, 1,
    type: Google.Cloud.Speech.V2.AccessMetadata.ConstraintType,
    json_name: "constraintType",
    enum: true
end

defmodule Google.Cloud.Speech.V2.LocationsMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :languages, 1, type: Google.Cloud.Speech.V2.LanguageMetadata

  field :access_metadata, 2,
    type: Google.Cloud.Speech.V2.AccessMetadata,
    json_name: "accessMetadata"
end
