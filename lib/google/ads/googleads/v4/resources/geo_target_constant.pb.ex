defmodule Google.Ads.Googleads.V4.Resources.GeoTargetConstant do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          id: Google.Protobuf.Int64Value.t() | nil,
          name: Google.Protobuf.StringValue.t() | nil,
          country_code: Google.Protobuf.StringValue.t() | nil,
          target_type: Google.Protobuf.StringValue.t() | nil,
          status:
            Google.Ads.Googleads.V4.Enums.GeoTargetConstantStatusEnum.GeoTargetConstantStatus.t(),
          canonical_name: Google.Protobuf.StringValue.t() | nil
        }

  defstruct [:resource_name, :id, :name, :country_code, :target_type, :status, :canonical_name]

  field :resource_name, 1, type: :string
  field :id, 3, type: Google.Protobuf.Int64Value
  field :name, 4, type: Google.Protobuf.StringValue
  field :country_code, 5, type: Google.Protobuf.StringValue
  field :target_type, 6, type: Google.Protobuf.StringValue

  field :status, 7,
    type: Google.Ads.Googleads.V4.Enums.GeoTargetConstantStatusEnum.GeoTargetConstantStatus,
    enum: true

  field :canonical_name, 8, type: Google.Protobuf.StringValue
end
