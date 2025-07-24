defmodule Google.Ads.Admanager.V1.PrivateAuction do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :private_auction_id, 2,
    proto3_optional: true,
    type: :int64,
    json_name: "privateAuctionId",
    deprecated: false

  field :display_name, 3,
    proto3_optional: true,
    type: :string,
    json_name: "displayName",
    deprecated: false

  field :description, 4, proto3_optional: true, type: :string, deprecated: false

  field :seller_contact_users, 9,
    repeated: true,
    type: :string,
    json_name: "sellerContactUsers",
    deprecated: false

  field :archived, 6, proto3_optional: true, type: :bool, deprecated: false

  field :create_time, 7,
    proto3_optional: true,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 8,
    proto3_optional: true,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false
end
