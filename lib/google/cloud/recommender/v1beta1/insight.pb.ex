defmodule Google.Cloud.Recommender.V1beta1.Insight.Category do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :CATEGORY_UNSPECIFIED | :COST | :SECURITY | :PERFORMANCE | :MANAGEABILITY

  field :CATEGORY_UNSPECIFIED, 0
  field :COST, 1
  field :SECURITY, 2
  field :PERFORMANCE, 3
  field :MANAGEABILITY, 4
end

defmodule Google.Cloud.Recommender.V1beta1.InsightStateInfo.State do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :STATE_UNSPECIFIED | :ACTIVE | :ACCEPTED | :DISMISSED

  field :STATE_UNSPECIFIED, 0
  field :ACTIVE, 1
  field :ACCEPTED, 2
  field :DISMISSED, 3
end

defmodule Google.Cloud.Recommender.V1beta1.Insight.RecommendationReference do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          recommendation: String.t()
        }

  defstruct [:recommendation]

  field :recommendation, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Recommender.V1beta1.Insight do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          description: String.t(),
          target_resources: [String.t()],
          insight_subtype: String.t(),
          content: Google.Protobuf.Struct.t() | nil,
          last_refresh_time: Google.Protobuf.Timestamp.t() | nil,
          observation_period: Google.Protobuf.Duration.t() | nil,
          state_info: Google.Cloud.Recommender.V1beta1.InsightStateInfo.t() | nil,
          category: Google.Cloud.Recommender.V1beta1.Insight.Category.t(),
          etag: String.t(),
          associated_recommendations: [
            Google.Cloud.Recommender.V1beta1.Insight.RecommendationReference.t()
          ]
        }

  defstruct [
    :name,
    :description,
    :target_resources,
    :insight_subtype,
    :content,
    :last_refresh_time,
    :observation_period,
    :state_info,
    :category,
    :etag,
    :associated_recommendations
  ]

  field :name, 1, type: :string
  field :description, 2, type: :string
  field :target_resources, 9, repeated: true, type: :string, json_name: "targetResources"
  field :insight_subtype, 10, type: :string, json_name: "insightSubtype"
  field :content, 3, type: Google.Protobuf.Struct
  field :last_refresh_time, 4, type: Google.Protobuf.Timestamp, json_name: "lastRefreshTime"
  field :observation_period, 5, type: Google.Protobuf.Duration, json_name: "observationPeriod"

  field :state_info, 6,
    type: Google.Cloud.Recommender.V1beta1.InsightStateInfo,
    json_name: "stateInfo"

  field :category, 7, type: Google.Cloud.Recommender.V1beta1.Insight.Category, enum: true
  field :etag, 11, type: :string

  field :associated_recommendations, 8,
    repeated: true,
    type: Google.Cloud.Recommender.V1beta1.Insight.RecommendationReference,
    json_name: "associatedRecommendations"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Recommender.V1beta1.InsightStateInfo.StateMetadataEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Recommender.V1beta1.InsightStateInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          state: Google.Cloud.Recommender.V1beta1.InsightStateInfo.State.t(),
          state_metadata: %{String.t() => String.t()}
        }

  defstruct [:state, :state_metadata]

  field :state, 1, type: Google.Cloud.Recommender.V1beta1.InsightStateInfo.State, enum: true

  field :state_metadata, 2,
    repeated: true,
    type: Google.Cloud.Recommender.V1beta1.InsightStateInfo.StateMetadataEntry,
    json_name: "stateMetadata",
    map: true

  def transform_module(), do: nil
end
