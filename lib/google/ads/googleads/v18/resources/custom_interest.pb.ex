defmodule Google.Ads.Googleads.V18.Resources.CustomInterest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :id, 8, proto3_optional: true, type: :int64, deprecated: false

  field :status, 3,
    type: Google.Ads.Googleads.V18.Enums.CustomInterestStatusEnum.CustomInterestStatus,
    enum: true

  field :name, 9, proto3_optional: true, type: :string

  field :type, 5,
    type: Google.Ads.Googleads.V18.Enums.CustomInterestTypeEnum.CustomInterestType,
    enum: true

  field :description, 10, proto3_optional: true, type: :string
  field :members, 7, repeated: true, type: Google.Ads.Googleads.V18.Resources.CustomInterestMember
end

defmodule Google.Ads.Googleads.V18.Resources.CustomInterestMember do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :member_type, 1,
    type: Google.Ads.Googleads.V18.Enums.CustomInterestMemberTypeEnum.CustomInterestMemberType,
    json_name: "memberType",
    enum: true

  field :parameter, 3, proto3_optional: true, type: :string
end