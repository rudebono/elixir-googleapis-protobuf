defmodule Google.Ads.Googleads.V11.Resources.CustomAudience do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :id, 2, type: :int64, deprecated: false

  field :status, 3,
    type: Google.Ads.Googleads.V11.Enums.CustomAudienceStatusEnum.CustomAudienceStatus,
    enum: true,
    deprecated: false

  field :name, 4, type: :string

  field :type, 5,
    type: Google.Ads.Googleads.V11.Enums.CustomAudienceTypeEnum.CustomAudienceType,
    enum: true

  field :description, 6, type: :string
  field :members, 7, repeated: true, type: Google.Ads.Googleads.V11.Resources.CustomAudienceMember
end

defmodule Google.Ads.Googleads.V11.Resources.CustomAudienceMember do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :value, 0

  field :member_type, 1,
    type: Google.Ads.Googleads.V11.Enums.CustomAudienceMemberTypeEnum.CustomAudienceMemberType,
    json_name: "memberType",
    enum: true

  field :keyword, 2, type: :string, oneof: 0
  field :url, 3, type: :string, oneof: 0
  field :place_category, 4, type: :int64, json_name: "placeCategory", oneof: 0
  field :app, 5, type: :string, oneof: 0
end