defmodule Google.Cloud.Aiplatform.V1beta1.IdMatcher do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :ids, 1, repeated: true, type: :string, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.FeatureSelector do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :id_matcher, 1,
    type: Google.Cloud.Aiplatform.V1beta1.IdMatcher,
    json_name: "idMatcher",
    deprecated: false
end
