defmodule Google.Cloud.Support.V2beta.ShowFeedRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :order_by, 2, type: :string, json_name: "orderBy", deprecated: false
  field :page_size, 3, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 4, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Cloud.Support.V2beta.ShowFeedResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :feed_items, 1,
    repeated: true,
    type: Google.Cloud.Support.V2beta.FeedItem,
    json_name: "feedItems"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Support.V2beta.FeedService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.support.v2beta.FeedService",
    protoc_gen_elixir_version: "0.14.1"

  rpc :ShowFeed,
      Google.Cloud.Support.V2beta.ShowFeedRequest,
      Google.Cloud.Support.V2beta.ShowFeedResponse
end

defmodule Google.Cloud.Support.V2beta.FeedService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Support.V2beta.FeedService.Service
end
