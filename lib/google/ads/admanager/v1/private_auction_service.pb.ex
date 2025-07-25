defmodule Google.Ads.Admanager.V1.GetPrivateAuctionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Ads.Admanager.V1.ListPrivateAuctionsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
  field :skip, 6, type: :int32, deprecated: false
end

defmodule Google.Ads.Admanager.V1.ListPrivateAuctionsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :private_auctions, 1,
    repeated: true,
    type: Google.Ads.Admanager.V1.PrivateAuction,
    json_name: "privateAuctions"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :total_size, 3, type: :int32, json_name: "totalSize"
end

defmodule Google.Ads.Admanager.V1.CreatePrivateAuctionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :private_auction, 2,
    type: Google.Ads.Admanager.V1.PrivateAuction,
    json_name: "privateAuction",
    deprecated: false
end

defmodule Google.Ads.Admanager.V1.UpdatePrivateAuctionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :private_auction, 1,
    type: Google.Ads.Admanager.V1.PrivateAuction,
    json_name: "privateAuction",
    deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Ads.Admanager.V1.PrivateAuctionService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.ads.admanager.v1.PrivateAuctionService",
    protoc_gen_elixir_version: "0.15.0"

  rpc :GetPrivateAuction,
      Google.Ads.Admanager.V1.GetPrivateAuctionRequest,
      Google.Ads.Admanager.V1.PrivateAuction

  rpc :ListPrivateAuctions,
      Google.Ads.Admanager.V1.ListPrivateAuctionsRequest,
      Google.Ads.Admanager.V1.ListPrivateAuctionsResponse

  rpc :CreatePrivateAuction,
      Google.Ads.Admanager.V1.CreatePrivateAuctionRequest,
      Google.Ads.Admanager.V1.PrivateAuction

  rpc :UpdatePrivateAuction,
      Google.Ads.Admanager.V1.UpdatePrivateAuctionRequest,
      Google.Ads.Admanager.V1.PrivateAuction
end

defmodule Google.Ads.Admanager.V1.PrivateAuctionService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Ads.Admanager.V1.PrivateAuctionService.Service
end
