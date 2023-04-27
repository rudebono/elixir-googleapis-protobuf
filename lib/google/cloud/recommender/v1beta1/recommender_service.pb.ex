defmodule Google.Cloud.Recommender.V1beta1.ListInsightsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
end

defmodule Google.Cloud.Recommender.V1beta1.ListInsightsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :insights, 1, repeated: true, type: Google.Cloud.Recommender.V1beta1.Insight
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Recommender.V1beta1.GetInsightRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Recommender.V1beta1.MarkInsightAcceptedRequest.StateMetadataEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Recommender.V1beta1.MarkInsightAcceptedRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :state_metadata, 2,
    repeated: true,
    type: Google.Cloud.Recommender.V1beta1.MarkInsightAcceptedRequest.StateMetadataEntry,
    json_name: "stateMetadata",
    map: true,
    deprecated: false

  field :etag, 3, type: :string, deprecated: false
end

defmodule Google.Cloud.Recommender.V1beta1.ListRecommendationsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 5, type: :string
end

defmodule Google.Cloud.Recommender.V1beta1.ListRecommendationsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :recommendations, 1, repeated: true, type: Google.Cloud.Recommender.V1beta1.Recommendation
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Recommender.V1beta1.GetRecommendationRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Recommender.V1beta1.MarkRecommendationClaimedRequest.StateMetadataEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Recommender.V1beta1.MarkRecommendationClaimedRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :state_metadata, 2,
    repeated: true,
    type: Google.Cloud.Recommender.V1beta1.MarkRecommendationClaimedRequest.StateMetadataEntry,
    json_name: "stateMetadata",
    map: true

  field :etag, 3, type: :string, deprecated: false
end

defmodule Google.Cloud.Recommender.V1beta1.MarkRecommendationSucceededRequest.StateMetadataEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Recommender.V1beta1.MarkRecommendationSucceededRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :state_metadata, 2,
    repeated: true,
    type: Google.Cloud.Recommender.V1beta1.MarkRecommendationSucceededRequest.StateMetadataEntry,
    json_name: "stateMetadata",
    map: true

  field :etag, 3, type: :string, deprecated: false
end

defmodule Google.Cloud.Recommender.V1beta1.MarkRecommendationFailedRequest.StateMetadataEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Recommender.V1beta1.MarkRecommendationFailedRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :state_metadata, 2,
    repeated: true,
    type: Google.Cloud.Recommender.V1beta1.MarkRecommendationFailedRequest.StateMetadataEntry,
    json_name: "stateMetadata",
    map: true

  field :etag, 3, type: :string, deprecated: false
end

defmodule Google.Cloud.Recommender.V1beta1.GetRecommenderConfigRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Recommender.V1beta1.UpdateRecommenderConfigRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :recommender_config, 1,
    type: Google.Cloud.Recommender.V1beta1.RecommenderConfig,
    json_name: "recommenderConfig",
    deprecated: false

  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
  field :validate_only, 3, type: :bool, json_name: "validateOnly"
end

defmodule Google.Cloud.Recommender.V1beta1.GetInsightTypeConfigRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Recommender.V1beta1.UpdateInsightTypeConfigRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :insight_type_config, 1,
    type: Google.Cloud.Recommender.V1beta1.InsightTypeConfig,
    json_name: "insightTypeConfig",
    deprecated: false

  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
  field :validate_only, 3, type: :bool, json_name: "validateOnly"
end

defmodule Google.Cloud.Recommender.V1beta1.Recommender.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.recommender.v1beta1.Recommender",
    protoc_gen_elixir_version: "0.12.0"

  rpc :ListInsights,
      Google.Cloud.Recommender.V1beta1.ListInsightsRequest,
      Google.Cloud.Recommender.V1beta1.ListInsightsResponse

  rpc :GetInsight,
      Google.Cloud.Recommender.V1beta1.GetInsightRequest,
      Google.Cloud.Recommender.V1beta1.Insight

  rpc :MarkInsightAccepted,
      Google.Cloud.Recommender.V1beta1.MarkInsightAcceptedRequest,
      Google.Cloud.Recommender.V1beta1.Insight

  rpc :ListRecommendations,
      Google.Cloud.Recommender.V1beta1.ListRecommendationsRequest,
      Google.Cloud.Recommender.V1beta1.ListRecommendationsResponse

  rpc :GetRecommendation,
      Google.Cloud.Recommender.V1beta1.GetRecommendationRequest,
      Google.Cloud.Recommender.V1beta1.Recommendation

  rpc :MarkRecommendationClaimed,
      Google.Cloud.Recommender.V1beta1.MarkRecommendationClaimedRequest,
      Google.Cloud.Recommender.V1beta1.Recommendation

  rpc :MarkRecommendationSucceeded,
      Google.Cloud.Recommender.V1beta1.MarkRecommendationSucceededRequest,
      Google.Cloud.Recommender.V1beta1.Recommendation

  rpc :MarkRecommendationFailed,
      Google.Cloud.Recommender.V1beta1.MarkRecommendationFailedRequest,
      Google.Cloud.Recommender.V1beta1.Recommendation

  rpc :GetRecommenderConfig,
      Google.Cloud.Recommender.V1beta1.GetRecommenderConfigRequest,
      Google.Cloud.Recommender.V1beta1.RecommenderConfig

  rpc :UpdateRecommenderConfig,
      Google.Cloud.Recommender.V1beta1.UpdateRecommenderConfigRequest,
      Google.Cloud.Recommender.V1beta1.RecommenderConfig

  rpc :GetInsightTypeConfig,
      Google.Cloud.Recommender.V1beta1.GetInsightTypeConfigRequest,
      Google.Cloud.Recommender.V1beta1.InsightTypeConfig

  rpc :UpdateInsightTypeConfig,
      Google.Cloud.Recommender.V1beta1.UpdateInsightTypeConfigRequest,
      Google.Cloud.Recommender.V1beta1.InsightTypeConfig
end

defmodule Google.Cloud.Recommender.V1beta1.Recommender.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Recommender.V1beta1.Recommender.Service
end