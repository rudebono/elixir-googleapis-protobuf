defmodule Google.Cloud.Recommender.Logging.V1.ActionLog.StateMetadataEntry do
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
defmodule Google.Cloud.Recommender.Logging.V1.ActionLog do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          actor: String.t(),
          state: Google.Cloud.Recommender.V1.RecommendationStateInfo.State.t(),
          state_metadata: %{String.t() => String.t()},
          recommendation_name: String.t()
        }

  defstruct actor: "",
            state: :STATE_UNSPECIFIED,
            state_metadata: %{},
            recommendation_name: ""

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
defmodule Google.Cloud.Recommender.Logging.V1.InsightActionLog do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          actor: String.t(),
          state: Google.Cloud.Recommender.V1.InsightStateInfo.State.t(),
          state_metadata: %{String.t() => String.t()},
          insight: String.t()
        }

  defstruct actor: "",
            state: :STATE_UNSPECIFIED,
            state_metadata: %{},
            insight: ""

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
