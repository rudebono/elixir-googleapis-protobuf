defmodule Google.Ads.Googleads.V8.Resources.CustomAudience do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          id: integer,
          status: Google.Ads.Googleads.V8.Enums.CustomAudienceStatusEnum.CustomAudienceStatus.t(),
          name: String.t(),
          type: Google.Ads.Googleads.V8.Enums.CustomAudienceTypeEnum.CustomAudienceType.t(),
          description: String.t(),
          members: [Google.Ads.Googleads.V8.Resources.CustomAudienceMember.t()]
        }

  defstruct resource_name: "",
            id: 0,
            status: :UNSPECIFIED,
            name: "",
            type: :UNSPECIFIED,
            description: "",
            members: []

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :id, 2, type: :int64, deprecated: false

  field :status, 3,
    type: Google.Ads.Googleads.V8.Enums.CustomAudienceStatusEnum.CustomAudienceStatus,
    enum: true,
    deprecated: false

  field :name, 4, type: :string

  field :type, 5,
    type: Google.Ads.Googleads.V8.Enums.CustomAudienceTypeEnum.CustomAudienceType,
    enum: true

  field :description, 6, type: :string
  field :members, 7, repeated: true, type: Google.Ads.Googleads.V8.Resources.CustomAudienceMember
end
defmodule Google.Ads.Googleads.V8.Resources.CustomAudienceMember do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          value:
            {:keyword, String.t()}
            | {:url, String.t()}
            | {:place_category, integer}
            | {:app, String.t()},
          member_type:
            Google.Ads.Googleads.V8.Enums.CustomAudienceMemberTypeEnum.CustomAudienceMemberType.t()
        }

  defstruct value: nil,
            member_type: :UNSPECIFIED

  oneof :value, 0

  field :member_type, 1,
    type: Google.Ads.Googleads.V8.Enums.CustomAudienceMemberTypeEnum.CustomAudienceMemberType,
    json_name: "memberType",
    enum: true

  field :keyword, 2, type: :string, oneof: 0
  field :url, 3, type: :string, oneof: 0
  field :place_category, 4, type: :int64, json_name: "placeCategory", oneof: 0
  field :app, 5, type: :string, oneof: 0
end
