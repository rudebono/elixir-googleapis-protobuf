defmodule Google.Ads.Admanager.V1.PrivateAuctionDeal.BuyerData do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :buyer_emails, 1,
    repeated: true,
    type: :string,
    json_name: "buyerEmails",
    deprecated: false
end

defmodule Google.Ads.Admanager.V1.PrivateAuctionDeal do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :private_auction_deal_id, 2,
    proto3_optional: true,
    type: :int64,
    json_name: "privateAuctionDealId",
    deprecated: false

  field :private_auction_id, 3,
    proto3_optional: true,
    type: :int64,
    json_name: "privateAuctionId",
    deprecated: false

  field :private_auction_display_name, 20,
    proto3_optional: true,
    type: :string,
    json_name: "privateAuctionDisplayName",
    deprecated: false

  field :buyer_account_id, 4,
    proto3_optional: true,
    type: :int64,
    json_name: "buyerAccountId",
    deprecated: false

  field :external_deal_id, 5,
    proto3_optional: true,
    type: :int64,
    json_name: "externalDealId",
    deprecated: false

  field :targeting, 6,
    proto3_optional: true,
    type: Google.Ads.Admanager.V1.Targeting,
    deprecated: false

  field :end_time, 8,
    proto3_optional: true,
    type: Google.Protobuf.Timestamp,
    json_name: "endTime",
    deprecated: false

  field :floor_price, 9,
    proto3_optional: true,
    type: Google.Type.Money,
    json_name: "floorPrice",
    deprecated: false

  field :creative_sizes, 18,
    repeated: true,
    type: Google.Ads.Admanager.V1.Size,
    json_name: "creativeSizes",
    deprecated: false

  field :status, 10,
    proto3_optional: true,
    type: Google.Ads.Admanager.V1.PrivateMarketplaceDealStatusEnum.PrivateMarketplaceDealStatus,
    enum: true,
    deprecated: false

  field :auction_priority_enabled, 11,
    proto3_optional: true,
    type: :bool,
    json_name: "auctionPriorityEnabled",
    deprecated: false

  field :block_override_enabled, 12,
    proto3_optional: true,
    type: :bool,
    json_name: "blockOverrideEnabled",
    deprecated: false

  field :buyer_permission_type, 13,
    proto3_optional: true,
    type: Google.Ads.Admanager.V1.DealBuyerPermissionTypeEnum.DealBuyerPermissionType,
    json_name: "buyerPermissionType",
    enum: true,
    deprecated: false

  field :buyer_data, 14,
    proto3_optional: true,
    type: Google.Ads.Admanager.V1.PrivateAuctionDeal.BuyerData,
    json_name: "buyerData",
    deprecated: false

  field :create_time, 15,
    proto3_optional: true,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 16,
    proto3_optional: true,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false
end
