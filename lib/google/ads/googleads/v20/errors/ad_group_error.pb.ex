defmodule Google.Ads.Googleads.V20.Errors.AdGroupErrorEnum.AdGroupError do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :DUPLICATE_ADGROUP_NAME, 2
  field :INVALID_ADGROUP_NAME, 3
  field :ADVERTISER_NOT_ON_CONTENT_NETWORK, 5
  field :BID_TOO_BIG, 6
  field :BID_TYPE_AND_BIDDING_STRATEGY_MISMATCH, 7
  field :MISSING_ADGROUP_NAME, 8
  field :ADGROUP_LABEL_DOES_NOT_EXIST, 9
  field :ADGROUP_LABEL_ALREADY_EXISTS, 10
  field :INVALID_CONTENT_BID_CRITERION_TYPE_GROUP, 11
  field :AD_GROUP_TYPE_NOT_VALID_FOR_ADVERTISING_CHANNEL_TYPE, 12
  field :ADGROUP_TYPE_NOT_SUPPORTED_FOR_CAMPAIGN_SALES_COUNTRY, 13
  field :CANNOT_ADD_ADGROUP_OF_TYPE_DSA_TO_CAMPAIGN_WITHOUT_DSA_SETTING, 14
  field :PROMOTED_HOTEL_AD_GROUPS_NOT_AVAILABLE_FOR_CUSTOMER, 15
  field :INVALID_EXCLUDED_PARENT_ASSET_FIELD_TYPE, 16
  field :INVALID_EXCLUDED_PARENT_ASSET_SET_TYPE, 17
  field :CANNOT_ADD_AD_GROUP_FOR_CAMPAIGN_TYPE, 18
  field :INVALID_STATUS, 19
end

defmodule Google.Ads.Googleads.V20.Errors.AdGroupErrorEnum do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3
end
