defmodule Google.Cloud.Asset.V1p2beta1.ContentType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :CONTENT_TYPE_UNSPECIFIED | :RESOURCE | :IAM_POLICY

  field :CONTENT_TYPE_UNSPECIFIED, 0
  field :RESOURCE, 1
  field :IAM_POLICY, 2
end
defmodule Google.Cloud.Asset.V1p2beta1.CreateFeedRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          feed_id: String.t(),
          feed: Google.Cloud.Asset.V1p2beta1.Feed.t() | nil
        }

  defstruct parent: "",
            feed_id: "",
            feed: nil

  field :parent, 1, type: :string, deprecated: false
  field :feed_id, 2, type: :string, json_name: "feedId", deprecated: false
  field :feed, 3, type: Google.Cloud.Asset.V1p2beta1.Feed, deprecated: false
end
defmodule Google.Cloud.Asset.V1p2beta1.GetFeedRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Asset.V1p2beta1.ListFeedsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t()
        }

  defstruct parent: ""

  field :parent, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Asset.V1p2beta1.ListFeedsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          feeds: [Google.Cloud.Asset.V1p2beta1.Feed.t()]
        }

  defstruct feeds: []

  field :feeds, 1, repeated: true, type: Google.Cloud.Asset.V1p2beta1.Feed
end
defmodule Google.Cloud.Asset.V1p2beta1.UpdateFeedRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          feed: Google.Cloud.Asset.V1p2beta1.Feed.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct feed: nil,
            update_mask: nil

  field :feed, 1, type: Google.Cloud.Asset.V1p2beta1.Feed, deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end
defmodule Google.Cloud.Asset.V1p2beta1.DeleteFeedRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Asset.V1p2beta1.OutputConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          destination: {:gcs_destination, Google.Cloud.Asset.V1p2beta1.GcsDestination.t() | nil}
        }

  defstruct destination: nil

  oneof :destination, 0

  field :gcs_destination, 1,
    type: Google.Cloud.Asset.V1p2beta1.GcsDestination,
    json_name: "gcsDestination",
    oneof: 0
end
defmodule Google.Cloud.Asset.V1p2beta1.GcsDestination do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          object_uri: {:uri, String.t()}
        }

  defstruct object_uri: nil

  oneof :object_uri, 0

  field :uri, 1, type: :string, oneof: 0
end
defmodule Google.Cloud.Asset.V1p2beta1.PubsubDestination do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          topic: String.t()
        }

  defstruct topic: ""

  field :topic, 1, type: :string
end
defmodule Google.Cloud.Asset.V1p2beta1.FeedOutputConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          destination:
            {:pubsub_destination, Google.Cloud.Asset.V1p2beta1.PubsubDestination.t() | nil}
        }

  defstruct destination: nil

  oneof :destination, 0

  field :pubsub_destination, 1,
    type: Google.Cloud.Asset.V1p2beta1.PubsubDestination,
    json_name: "pubsubDestination",
    oneof: 0
end
defmodule Google.Cloud.Asset.V1p2beta1.Feed do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          asset_names: [String.t()],
          asset_types: [String.t()],
          content_type: Google.Cloud.Asset.V1p2beta1.ContentType.t(),
          feed_output_config: Google.Cloud.Asset.V1p2beta1.FeedOutputConfig.t() | nil
        }

  defstruct name: "",
            asset_names: [],
            asset_types: [],
            content_type: :CONTENT_TYPE_UNSPECIFIED,
            feed_output_config: nil

  field :name, 1, type: :string, deprecated: false
  field :asset_names, 2, repeated: true, type: :string, json_name: "assetNames"
  field :asset_types, 3, repeated: true, type: :string, json_name: "assetTypes"

  field :content_type, 4,
    type: Google.Cloud.Asset.V1p2beta1.ContentType,
    json_name: "contentType",
    enum: true

  field :feed_output_config, 5,
    type: Google.Cloud.Asset.V1p2beta1.FeedOutputConfig,
    json_name: "feedOutputConfig",
    deprecated: false
end
defmodule Google.Cloud.Asset.V1p2beta1.AssetService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.asset.v1p2beta1.AssetService"

  rpc :CreateFeed,
      Google.Cloud.Asset.V1p2beta1.CreateFeedRequest,
      Google.Cloud.Asset.V1p2beta1.Feed

  rpc :GetFeed, Google.Cloud.Asset.V1p2beta1.GetFeedRequest, Google.Cloud.Asset.V1p2beta1.Feed

  rpc :ListFeeds,
      Google.Cloud.Asset.V1p2beta1.ListFeedsRequest,
      Google.Cloud.Asset.V1p2beta1.ListFeedsResponse

  rpc :UpdateFeed,
      Google.Cloud.Asset.V1p2beta1.UpdateFeedRequest,
      Google.Cloud.Asset.V1p2beta1.Feed

  rpc :DeleteFeed, Google.Cloud.Asset.V1p2beta1.DeleteFeedRequest, Google.Protobuf.Empty
end

defmodule Google.Cloud.Asset.V1p2beta1.AssetService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Asset.V1p2beta1.AssetService.Service
end
