defmodule Google.Ads.Googleads.V5.Resources.ProductBiddingCategoryConstant do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          id: Google.Protobuf.Int64Value.t() | nil,
          country_code: Google.Protobuf.StringValue.t() | nil,
          product_bidding_category_constant_parent: Google.Protobuf.StringValue.t() | nil,
          level:
            Google.Ads.Googleads.V5.Enums.ProductBiddingCategoryLevelEnum.ProductBiddingCategoryLevel.t(),
          status:
            Google.Ads.Googleads.V5.Enums.ProductBiddingCategoryStatusEnum.ProductBiddingCategoryStatus.t(),
          language_code: Google.Protobuf.StringValue.t() | nil,
          localized_name: Google.Protobuf.StringValue.t() | nil
        }

  defstruct [
    :resource_name,
    :id,
    :country_code,
    :product_bidding_category_constant_parent,
    :level,
    :status,
    :language_code,
    :localized_name
  ]

  field :resource_name, 1, type: :string
  field :id, 2, type: Google.Protobuf.Int64Value
  field :country_code, 3, type: Google.Protobuf.StringValue
  field :product_bidding_category_constant_parent, 4, type: Google.Protobuf.StringValue

  field :level, 5,
    type:
      Google.Ads.Googleads.V5.Enums.ProductBiddingCategoryLevelEnum.ProductBiddingCategoryLevel,
    enum: true

  field :status, 6,
    type:
      Google.Ads.Googleads.V5.Enums.ProductBiddingCategoryStatusEnum.ProductBiddingCategoryStatus,
    enum: true

  field :language_code, 7, type: Google.Protobuf.StringValue
  field :localized_name, 8, type: Google.Protobuf.StringValue
end
