defmodule Google.Cloud.Recommender.V1beta1.Recommendation.Priority do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :PRIORITY_UNSPECIFIED | :P4 | :P3 | :P2 | :P1

  field :PRIORITY_UNSPECIFIED, 0
  field :P4, 1
  field :P3, 2
  field :P2, 3
  field :P1, 4
end
defmodule Google.Cloud.Recommender.V1beta1.Impact.Category do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :CATEGORY_UNSPECIFIED
          | :COST
          | :SECURITY
          | :PERFORMANCE
          | :MANAGEABILITY
          | :SUSTAINABILITY

  field :CATEGORY_UNSPECIFIED, 0
  field :COST, 1
  field :SECURITY, 2
  field :PERFORMANCE, 3
  field :MANAGEABILITY, 4
  field :SUSTAINABILITY, 5
end
defmodule Google.Cloud.Recommender.V1beta1.RecommendationStateInfo.State do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :STATE_UNSPECIFIED | :ACTIVE | :CLAIMED | :SUCCEEDED | :FAILED | :DISMISSED

  field :STATE_UNSPECIFIED, 0
  field :ACTIVE, 1
  field :CLAIMED, 6
  field :SUCCEEDED, 3
  field :FAILED, 4
  field :DISMISSED, 5
end
defmodule Google.Cloud.Recommender.V1beta1.Recommendation.InsightReference do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          insight: String.t()
        }

  defstruct insight: ""

  field :insight, 1, type: :string
end
defmodule Google.Cloud.Recommender.V1beta1.Recommendation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          description: String.t(),
          recommender_subtype: String.t(),
          last_refresh_time: Google.Protobuf.Timestamp.t() | nil,
          primary_impact: Google.Cloud.Recommender.V1beta1.Impact.t() | nil,
          additional_impact: [Google.Cloud.Recommender.V1beta1.Impact.t()],
          priority: Google.Cloud.Recommender.V1beta1.Recommendation.Priority.t(),
          content: Google.Cloud.Recommender.V1beta1.RecommendationContent.t() | nil,
          state_info: Google.Cloud.Recommender.V1beta1.RecommendationStateInfo.t() | nil,
          etag: String.t(),
          associated_insights: [
            Google.Cloud.Recommender.V1beta1.Recommendation.InsightReference.t()
          ],
          xor_group_id: String.t()
        }

  defstruct name: "",
            description: "",
            recommender_subtype: "",
            last_refresh_time: nil,
            primary_impact: nil,
            additional_impact: [],
            priority: :PRIORITY_UNSPECIFIED,
            content: nil,
            state_info: nil,
            etag: "",
            associated_insights: [],
            xor_group_id: ""

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          operation_groups: [Google.Cloud.Recommender.V1beta1.OperationGroup.t()],
          overview: Google.Protobuf.Struct.t() | nil
        }

  defstruct operation_groups: [],
            overview: nil

  field :operation_groups, 2,
    repeated: true,
    type: Google.Cloud.Recommender.V1beta1.OperationGroup,
    json_name: "operationGroups"

  field :overview, 3, type: Google.Protobuf.Struct
end
defmodule Google.Cloud.Recommender.V1beta1.OperationGroup do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          operations: [Google.Cloud.Recommender.V1beta1.Operation.t()]
        }

  defstruct operations: []

  field :operations, 1, repeated: true, type: Google.Cloud.Recommender.V1beta1.Operation
end
defmodule Google.Cloud.Recommender.V1beta1.Operation.PathFiltersEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: Google.Protobuf.Value.t() | nil
        }

  defstruct key: "",
            value: nil

  field :key, 1, type: :string
  field :value, 2, type: Google.Protobuf.Value
end
defmodule Google.Cloud.Recommender.V1beta1.Operation.PathValueMatchersEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: Google.Cloud.Recommender.V1beta1.ValueMatcher.t() | nil
        }

  defstruct key: "",
            value: nil

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Recommender.V1beta1.ValueMatcher
end
defmodule Google.Cloud.Recommender.V1beta1.Operation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          path_value:
            {:value, Google.Protobuf.Value.t() | nil}
            | {:value_matcher, Google.Cloud.Recommender.V1beta1.ValueMatcher.t() | nil},
          action: String.t(),
          resource_type: String.t(),
          resource: String.t(),
          path: String.t(),
          source_resource: String.t(),
          source_path: String.t(),
          path_filters: %{String.t() => Google.Protobuf.Value.t() | nil},
          path_value_matchers: %{
            String.t() => Google.Cloud.Recommender.V1beta1.ValueMatcher.t() | nil
          }
        }

  defstruct path_value: nil,
            action: "",
            resource_type: "",
            resource: "",
            path: "",
            source_resource: "",
            source_path: "",
            path_filters: %{},
            path_value_matchers: %{}

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          match_variant: {:matches_pattern, String.t()}
        }

  defstruct match_variant: nil

  oneof :match_variant, 0

  field :matches_pattern, 1, type: :string, json_name: "matchesPattern", oneof: 0
end
defmodule Google.Cloud.Recommender.V1beta1.CostProjection do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          cost: Google.Type.Money.t() | nil,
          duration: Google.Protobuf.Duration.t() | nil
        }

  defstruct cost: nil,
            duration: nil

  field :cost, 1, type: Google.Type.Money
  field :duration, 2, type: Google.Protobuf.Duration
end
defmodule Google.Cloud.Recommender.V1beta1.SecurityProjection do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          details: Google.Protobuf.Struct.t() | nil
        }

  defstruct details: nil

  field :details, 2, type: Google.Protobuf.Struct
end
defmodule Google.Cloud.Recommender.V1beta1.Impact do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          projection:
            {:cost_projection, Google.Cloud.Recommender.V1beta1.CostProjection.t() | nil}
            | {:security_projection,
               Google.Cloud.Recommender.V1beta1.SecurityProjection.t() | nil},
          category: Google.Cloud.Recommender.V1beta1.Impact.Category.t()
        }

  defstruct projection: nil,
            category: :CATEGORY_UNSPECIFIED

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
end
defmodule Google.Cloud.Recommender.V1beta1.RecommendationStateInfo.StateMetadataEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct key: "",
            value: ""

  field :key, 1, type: :string
  field :value, 2, type: :string
end
defmodule Google.Cloud.Recommender.V1beta1.RecommendationStateInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          state: Google.Cloud.Recommender.V1beta1.RecommendationStateInfo.State.t(),
          state_metadata: %{String.t() => String.t()}
        }

  defstruct state: :STATE_UNSPECIFIED,
            state_metadata: %{}

  field :state, 1,
    type: Google.Cloud.Recommender.V1beta1.RecommendationStateInfo.State,
    enum: true

  field :state_metadata, 2,
    repeated: true,
    type: Google.Cloud.Recommender.V1beta1.RecommendationStateInfo.StateMetadataEntry,
    json_name: "stateMetadata",
    map: true
end
