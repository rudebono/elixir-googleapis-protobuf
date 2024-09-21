defmodule Google.Cloud.Recommender.V1beta1.RecommenderConfig.AnnotationsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Recommender.V1beta1.RecommenderConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string

  field :recommender_generation_config, 2,
    type: Google.Cloud.Recommender.V1beta1.RecommenderGenerationConfig,
    json_name: "recommenderGenerationConfig"

  field :etag, 3, type: :string
  field :update_time, 4, type: Google.Protobuf.Timestamp, json_name: "updateTime"
  field :revision_id, 5, type: :string, json_name: "revisionId", deprecated: false

  field :annotations, 6,
    repeated: true,
    type: Google.Cloud.Recommender.V1beta1.RecommenderConfig.AnnotationsEntry,
    map: true

  field :display_name, 7, type: :string, json_name: "displayName"
end

defmodule Google.Cloud.Recommender.V1beta1.RecommenderGenerationConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :params, 1, type: Google.Protobuf.Struct
end