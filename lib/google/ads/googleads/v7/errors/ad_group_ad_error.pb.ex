defmodule Google.Ads.Googleads.V7.Errors.AdGroupAdErrorEnum.AdGroupAdError do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :UNSPECIFIED
          | :UNKNOWN
          | :AD_GROUP_AD_LABEL_DOES_NOT_EXIST
          | :AD_GROUP_AD_LABEL_ALREADY_EXISTS
          | :AD_NOT_UNDER_ADGROUP
          | :CANNOT_OPERATE_ON_REMOVED_ADGROUPAD
          | :CANNOT_CREATE_DEPRECATED_ADS
          | :CANNOT_CREATE_TEXT_ADS
          | :EMPTY_FIELD
          | :RESOURCE_REFERENCED_IN_MULTIPLE_OPS
          | :AD_TYPE_CANNOT_BE_PAUSED
          | :AD_TYPE_CANNOT_BE_REMOVED

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :AD_GROUP_AD_LABEL_DOES_NOT_EXIST, 2
  field :AD_GROUP_AD_LABEL_ALREADY_EXISTS, 3
  field :AD_NOT_UNDER_ADGROUP, 4
  field :CANNOT_OPERATE_ON_REMOVED_ADGROUPAD, 5
  field :CANNOT_CREATE_DEPRECATED_ADS, 6
  field :CANNOT_CREATE_TEXT_ADS, 7
  field :EMPTY_FIELD, 8
  field :RESOURCE_REFERENCED_IN_MULTIPLE_OPS, 9
  field :AD_TYPE_CANNOT_BE_PAUSED, 10
  field :AD_TYPE_CANNOT_BE_REMOVED, 11
end
defmodule Google.Ads.Googleads.V7.Errors.AdGroupAdErrorEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
