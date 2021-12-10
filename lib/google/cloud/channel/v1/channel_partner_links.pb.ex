defmodule Google.Cloud.Channel.V1.ChannelPartnerLinkView do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :UNSPECIFIED | :BASIC | :FULL

  field :UNSPECIFIED, 0
  field :BASIC, 1
  field :FULL, 2
end
defmodule Google.Cloud.Channel.V1.ChannelPartnerLinkState do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :CHANNEL_PARTNER_LINK_STATE_UNSPECIFIED
          | :INVITED
          | :ACTIVE
          | :REVOKED
          | :SUSPENDED

  field :CHANNEL_PARTNER_LINK_STATE_UNSPECIFIED, 0
  field :INVITED, 1
  field :ACTIVE, 2
  field :REVOKED, 3
  field :SUSPENDED, 4
end
defmodule Google.Cloud.Channel.V1.ChannelPartnerLink do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          reseller_cloud_identity_id: String.t(),
          link_state: Google.Cloud.Channel.V1.ChannelPartnerLinkState.t(),
          invite_link_uri: String.t(),
          create_time: Google.Protobuf.Timestamp.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil,
          public_id: String.t(),
          channel_partner_cloud_identity_info: Google.Cloud.Channel.V1.CloudIdentityInfo.t() | nil
        }

  defstruct name: "",
            reseller_cloud_identity_id: "",
            link_state: :CHANNEL_PARTNER_LINK_STATE_UNSPECIFIED,
            invite_link_uri: "",
            create_time: nil,
            update_time: nil,
            public_id: "",
            channel_partner_cloud_identity_info: nil

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
