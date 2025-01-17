defmodule Google.Cloud.Recommender.Logging.V1.ActionLog.StateMetadataEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Recommender.Logging.V1.ActionLog do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :actor, 1, type: :string
  field :state, 2, type: Google.Cloud.Recommender.V1.RecommendationStateInfo.State, enum: true

  field :state_metadata, 3,
    repeated: true,
    type: Google.Cloud.Recommender.Logging.V1.ActionLog.StateMetadataEntry,
    json_name: "stateMetadata",
    map: true

  field :recommendation_name, 4, type: :string, json_name: "recommendationName"
end

defmodule Google.Cloud.Recommender.Logging.V1.InsightActionLog.StateMetadataEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Recommender.Logging.V1.InsightActionLog do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :actor, 1, type: :string, deprecated: false

  field :state, 2,
    type: Google.Cloud.Recommender.V1.InsightStateInfo.State,
    enum: true,
    deprecated: false

  field :state_metadata, 3,
    repeated: true,
    type: Google.Cloud.Recommender.Logging.V1.InsightActionLog.StateMetadataEntry,
    json_name: "stateMetadata",
    map: true,
    deprecated: false

  field :insight, 4, type: :string, deprecated: false
end
