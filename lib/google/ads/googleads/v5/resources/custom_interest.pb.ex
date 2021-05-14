defmodule Google.Ads.Googleads.V5.Resources.CustomInterest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          id: Google.Protobuf.Int64Value.t() | nil,
          status: Google.Ads.Googleads.V5.Enums.CustomInterestStatusEnum.CustomInterestStatus.t(),
          name: Google.Protobuf.StringValue.t() | nil,
          type: Google.Ads.Googleads.V5.Enums.CustomInterestTypeEnum.CustomInterestType.t(),
          description: Google.Protobuf.StringValue.t() | nil,
          members: [Google.Ads.Googleads.V5.Resources.CustomInterestMember.t()]
        }

  defstruct [:resource_name, :id, :status, :name, :type, :description, :members]

  field :resource_name, 1, type: :string
  field :id, 2, type: Google.Protobuf.Int64Value

  field :status, 3,
    type: Google.Ads.Googleads.V5.Enums.CustomInterestStatusEnum.CustomInterestStatus,
    enum: true

  field :name, 4, type: Google.Protobuf.StringValue

  field :type, 5,
    type: Google.Ads.Googleads.V5.Enums.CustomInterestTypeEnum.CustomInterestType,
    enum: true

  field :description, 6, type: Google.Protobuf.StringValue
  field :members, 7, repeated: true, type: Google.Ads.Googleads.V5.Resources.CustomInterestMember
end

defmodule Google.Ads.Googleads.V5.Resources.CustomInterestMember do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          member_type:
            Google.Ads.Googleads.V5.Enums.CustomInterestMemberTypeEnum.CustomInterestMemberType.t(),
          parameter: Google.Protobuf.StringValue.t() | nil
        }

  defstruct [:member_type, :parameter]

  field :member_type, 1,
    type: Google.Ads.Googleads.V5.Enums.CustomInterestMemberTypeEnum.CustomInterestMemberType,
    enum: true

  field :parameter, 2, type: Google.Protobuf.StringValue
end
