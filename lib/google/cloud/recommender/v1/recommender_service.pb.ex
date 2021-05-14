defmodule Google.Cloud.Recommender.V1.ListInsightsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t(),
          filter: String.t()
        }

  defstruct [:parent, :page_size, :page_token, :filter]

  field :parent, 1, type: :string
  field :page_size, 2, type: :int32
  field :page_token, 3, type: :string
  field :filter, 4, type: :string
end

defmodule Google.Cloud.Recommender.V1.ListInsightsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          insights: [Google.Cloud.Recommender.V1.Insight.t()],
          next_page_token: String.t()
        }

  defstruct [:insights, :next_page_token]

  field :insights, 1, repeated: true, type: Google.Cloud.Recommender.V1.Insight
  field :next_page_token, 2, type: :string
end

defmodule Google.Cloud.Recommender.V1.GetInsightRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Recommender.V1.MarkInsightAcceptedRequest.StateMetadataEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Recommender.V1.MarkInsightAcceptedRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          state_metadata: %{String.t() => String.t()},
          etag: String.t()
        }

  defstruct [:name, :state_metadata, :etag]

  field :name, 1, type: :string

  field :state_metadata, 2,
    repeated: true,
    type: Google.Cloud.Recommender.V1.MarkInsightAcceptedRequest.StateMetadataEntry,
    map: true

  field :etag, 3, type: :string
end

defmodule Google.Cloud.Recommender.V1.ListRecommendationsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t(),
          filter: String.t()
        }

  defstruct [:parent, :page_size, :page_token, :filter]

  field :parent, 1, type: :string
  field :page_size, 2, type: :int32
  field :page_token, 3, type: :string
  field :filter, 5, type: :string
end

defmodule Google.Cloud.Recommender.V1.ListRecommendationsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          recommendations: [Google.Cloud.Recommender.V1.Recommendation.t()],
          next_page_token: String.t()
        }

  defstruct [:recommendations, :next_page_token]

  field :recommendations, 1, repeated: true, type: Google.Cloud.Recommender.V1.Recommendation
  field :next_page_token, 2, type: :string
end

defmodule Google.Cloud.Recommender.V1.GetRecommendationRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Recommender.V1.MarkRecommendationClaimedRequest.StateMetadataEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Recommender.V1.MarkRecommendationClaimedRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          state_metadata: %{String.t() => String.t()},
          etag: String.t()
        }

  defstruct [:name, :state_metadata, :etag]

  field :name, 1, type: :string

  field :state_metadata, 2,
    repeated: true,
    type: Google.Cloud.Recommender.V1.MarkRecommendationClaimedRequest.StateMetadataEntry,
    map: true

  field :etag, 3, type: :string
end

defmodule Google.Cloud.Recommender.V1.MarkRecommendationSucceededRequest.StateMetadataEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Recommender.V1.MarkRecommendationSucceededRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          state_metadata: %{String.t() => String.t()},
          etag: String.t()
        }

  defstruct [:name, :state_metadata, :etag]

  field :name, 1, type: :string

  field :state_metadata, 2,
    repeated: true,
    type: Google.Cloud.Recommender.V1.MarkRecommendationSucceededRequest.StateMetadataEntry,
    map: true

  field :etag, 3, type: :string
end

defmodule Google.Cloud.Recommender.V1.MarkRecommendationFailedRequest.StateMetadataEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Recommender.V1.MarkRecommendationFailedRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          state_metadata: %{String.t() => String.t()},
          etag: String.t()
        }

  defstruct [:name, :state_metadata, :etag]

  field :name, 1, type: :string

  field :state_metadata, 2,
    repeated: true,
    type: Google.Cloud.Recommender.V1.MarkRecommendationFailedRequest.StateMetadataEntry,
    map: true

  field :etag, 3, type: :string
end

defmodule Google.Cloud.Recommender.V1.Recommender.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.recommender.v1.Recommender"

  rpc :ListInsights,
      Google.Cloud.Recommender.V1.ListInsightsRequest,
      Google.Cloud.Recommender.V1.ListInsightsResponse

  rpc :GetInsight,
      Google.Cloud.Recommender.V1.GetInsightRequest,
      Google.Cloud.Recommender.V1.Insight

  rpc :MarkInsightAccepted,
      Google.Cloud.Recommender.V1.MarkInsightAcceptedRequest,
      Google.Cloud.Recommender.V1.Insight

  rpc :ListRecommendations,
      Google.Cloud.Recommender.V1.ListRecommendationsRequest,
      Google.Cloud.Recommender.V1.ListRecommendationsResponse

  rpc :GetRecommendation,
      Google.Cloud.Recommender.V1.GetRecommendationRequest,
      Google.Cloud.Recommender.V1.Recommendation

  rpc :MarkRecommendationClaimed,
      Google.Cloud.Recommender.V1.MarkRecommendationClaimedRequest,
      Google.Cloud.Recommender.V1.Recommendation

  rpc :MarkRecommendationSucceeded,
      Google.Cloud.Recommender.V1.MarkRecommendationSucceededRequest,
      Google.Cloud.Recommender.V1.Recommendation

  rpc :MarkRecommendationFailed,
      Google.Cloud.Recommender.V1.MarkRecommendationFailedRequest,
      Google.Cloud.Recommender.V1.Recommendation
end

defmodule Google.Cloud.Recommender.V1.Recommender.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Recommender.V1.Recommender.Service
end
