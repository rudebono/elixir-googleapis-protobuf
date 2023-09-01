defmodule Google.Cloud.Recommender.V1beta1.Recommendation.Priority do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :PRIORITY_UNSPECIFIED, 0
  field :P4, 1
  field :P3, 2
  field :P2, 3
  field :P1, 4
end

defmodule Google.Cloud.Recommender.V1beta1.Impact.Category do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :CATEGORY_UNSPECIFIED, 0
  field :COST, 1
  field :SECURITY, 2
  field :PERFORMANCE, 3
  field :MANAGEABILITY, 4
  field :SUSTAINABILITY, 5
end

defmodule Google.Cloud.Recommender.V1beta1.RecommendationStateInfo.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :ACTIVE, 1
  field :CLAIMED, 6
  field :SUCCEEDED, 3
  field :FAILED, 4
  field :DISMISSED, 5
end

defmodule Google.Cloud.Recommender.V1beta1.Recommendation.InsightReference do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :insight, 1, type: :string
end

defmodule Google.Cloud.Recommender.V1beta1.Recommendation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string
  field :description, 2, type: :string
  field :recommender_subtype, 12, type: :string, json_name: "recommenderSubtype"
  field :last_refresh_time, 4, type: Google.Protobuf.Timestamp, json_name: "lastRefreshTime"

  field :primary_impact, 5,
    type: Google.Cloud.Recommender.V1beta1.Impact,
    json_name: "primaryImpact"

  field :additional_impact, 6,
    repeated: true,
    type: Google.Cloud.Recommender.V1beta1.Impact,
    json_name: "additionalImpact"

  field :priority, 17, type: Google.Cloud.Recommender.V1beta1.Recommendation.Priority, enum: true
  field :content, 7, type: Google.Cloud.Recommender.V1beta1.RecommendationContent

  field :state_info, 10,
    type: Google.Cloud.Recommender.V1beta1.RecommendationStateInfo,
    json_name: "stateInfo"

  field :etag, 11, type: :string

  field :associated_insights, 14,
    repeated: true,
    type: Google.Cloud.Recommender.V1beta1.Recommendation.InsightReference,
    json_name: "associatedInsights"

  field :xor_group_id, 18, type: :string, json_name: "xorGroupId"
end

defmodule Google.Cloud.Recommender.V1beta1.RecommendationContent do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :operation_groups, 2,
    repeated: true,
    type: Google.Cloud.Recommender.V1beta1.OperationGroup,
    json_name: "operationGroups"

  field :overview, 3, type: Google.Protobuf.Struct
end

defmodule Google.Cloud.Recommender.V1beta1.OperationGroup do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :operations, 1, repeated: true, type: Google.Cloud.Recommender.V1beta1.Operation
end

defmodule Google.Cloud.Recommender.V1beta1.Operation.PathFiltersEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Protobuf.Value
end

defmodule Google.Cloud.Recommender.V1beta1.Operation.PathValueMatchersEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Recommender.V1beta1.ValueMatcher
end

defmodule Google.Cloud.Recommender.V1beta1.Operation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :path_value, 0

  field :action, 1, type: :string
  field :resource_type, 2, type: :string, json_name: "resourceType"
  field :resource, 3, type: :string
  field :path, 4, type: :string
  field :source_resource, 5, type: :string, json_name: "sourceResource"
  field :source_path, 6, type: :string, json_name: "sourcePath"
  field :value, 7, type: Google.Protobuf.Value, oneof: 0

  field :value_matcher, 10,
    type: Google.Cloud.Recommender.V1beta1.ValueMatcher,
    json_name: "valueMatcher",
    oneof: 0

  field :path_filters, 8,
    repeated: true,
    type: Google.Cloud.Recommender.V1beta1.Operation.PathFiltersEntry,
    json_name: "pathFilters",
    map: true

  field :path_value_matchers, 11,
    repeated: true,
    type: Google.Cloud.Recommender.V1beta1.Operation.PathValueMatchersEntry,
    json_name: "pathValueMatchers",
    map: true
end

defmodule Google.Cloud.Recommender.V1beta1.ValueMatcher do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :match_variant, 0

  field :matches_pattern, 1, type: :string, json_name: "matchesPattern", oneof: 0
end

defmodule Google.Cloud.Recommender.V1beta1.CostProjection do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :cost, 1, type: Google.Type.Money
  field :duration, 2, type: Google.Protobuf.Duration
end

defmodule Google.Cloud.Recommender.V1beta1.SecurityProjection do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :details, 2, type: Google.Protobuf.Struct
end

defmodule Google.Cloud.Recommender.V1beta1.SustainabilityProjection do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :kg_c_o2e, 1, type: :double, json_name: "kgCO2e"
  field :duration, 2, type: Google.Protobuf.Duration
end

defmodule Google.Cloud.Recommender.V1beta1.Impact do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :projection, 0

  field :category, 1, type: Google.Cloud.Recommender.V1beta1.Impact.Category, enum: true

  field :cost_projection, 100,
    type: Google.Cloud.Recommender.V1beta1.CostProjection,
    json_name: "costProjection",
    oneof: 0

  field :security_projection, 101,
    type: Google.Cloud.Recommender.V1beta1.SecurityProjection,
    json_name: "securityProjection",
    oneof: 0

  field :sustainability_projection, 102,
    type: Google.Cloud.Recommender.V1beta1.SustainabilityProjection,
    json_name: "sustainabilityProjection",
    oneof: 0
end

defmodule Google.Cloud.Recommender.V1beta1.RecommendationStateInfo.StateMetadataEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Recommender.V1beta1.RecommendationStateInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :state, 1,
    type: Google.Cloud.Recommender.V1beta1.RecommendationStateInfo.State,
    enum: true

  field :state_metadata, 2,
    repeated: true,
    type: Google.Cloud.Recommender.V1beta1.RecommendationStateInfo.StateMetadataEntry,
    json_name: "stateMetadata",
    map: true
end

defmodule Google.Cloud.Recommender.V1beta1.RecommenderType do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string
end