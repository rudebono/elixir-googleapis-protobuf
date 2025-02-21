defmodule Google.Cloud.Channel.V1.ChannelPartnerLinkView do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :UNSPECIFIED, 0
  field :BASIC, 1
  field :FULL, 2
end

defmodule Google.Cloud.Channel.V1.ChannelPartnerLinkState do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :CHANNEL_PARTNER_LINK_STATE_UNSPECIFIED, 0
  field :INVITED, 1
  field :ACTIVE, 2
  field :REVOKED, 3
  field :SUSPENDED, 4
end

defmodule Google.Cloud.Channel.V1.ChannelPartnerLink do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :reseller_cloud_identity_id, 2,
    type: :string,
    json_name: "resellerCloudIdentityId",
    deprecated: false

  field :link_state, 3,
    type: Google.Cloud.Channel.V1.ChannelPartnerLinkState,
    json_name: "linkState",
    enum: true,
    deprecated: false

  field :invite_link_uri, 4, type: :string, json_name: "inviteLinkUri", deprecated: false

  field :create_time, 5,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 6,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :public_id, 7, type: :string, json_name: "publicId", deprecated: false

  field :channel_partner_cloud_identity_info, 8,
    type: Google.Cloud.Channel.V1.CloudIdentityInfo,
    json_name: "channelPartnerCloudIdentityInfo",
    deprecated: false
end
