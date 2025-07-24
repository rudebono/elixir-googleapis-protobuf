defmodule Google.Ads.Admanager.V1.GetPrivateAuctionDealRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Ads.Admanager.V1.ListPrivateAuctionDealsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
  field :skip, 6, type: :int32, deprecated: false
end

defmodule Google.Ads.Admanager.V1.ListPrivateAuctionDealsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :private_auction_deals, 1,
    repeated: true,
    type: Google.Ads.Admanager.V1.PrivateAuctionDeal,
    json_name: "privateAuctionDeals"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :total_size, 3, type: :int32, json_name: "totalSize"
end

defmodule Google.Ads.Admanager.V1.CreatePrivateAuctionDealRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :private_auction_deal, 2,
    type: Google.Ads.Admanager.V1.PrivateAuctionDeal,
    json_name: "privateAuctionDeal",
    deprecated: false
end

defmodule Google.Ads.Admanager.V1.UpdatePrivateAuctionDealRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :private_auction_deal, 1,
    type: Google.Ads.Admanager.V1.PrivateAuctionDeal,
    json_name: "privateAuctionDeal",
    deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Ads.Admanager.V1.PrivateAuctionDealService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.ads.admanager.v1.PrivateAuctionDealService",
    protoc_gen_elixir_version: "0.15.0"

  rpc :GetPrivateAuctionDeal,
      Google.Ads.Admanager.V1.GetPrivateAuctionDealRequest,
      Google.Ads.Admanager.V1.PrivateAuctionDeal

  rpc :ListPrivateAuctionDeals,
      Google.Ads.Admanager.V1.ListPrivateAuctionDealsRequest,
      Google.Ads.Admanager.V1.ListPrivateAuctionDealsResponse

  rpc :CreatePrivateAuctionDeal,
      Google.Ads.Admanager.V1.CreatePrivateAuctionDealRequest,
      Google.Ads.Admanager.V1.PrivateAuctionDeal

  rpc :UpdatePrivateAuctionDeal,
      Google.Ads.Admanager.V1.UpdatePrivateAuctionDealRequest,
      Google.Ads.Admanager.V1.PrivateAuctionDeal
end

defmodule Google.Ads.Admanager.V1.PrivateAuctionDealService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Ads.Admanager.V1.PrivateAuctionDealService.Service
end
