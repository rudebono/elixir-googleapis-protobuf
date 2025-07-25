defmodule Google.Ads.Googleads.V20.Errors.ConversionActionErrorEnum.ConversionActionError do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :DUPLICATE_NAME, 2
  field :DUPLICATE_APP_ID, 3
  field :TWO_CONVERSION_ACTIONS_BIDDING_ON_SAME_APP_DOWNLOAD, 4
  field :BIDDING_ON_SAME_APP_DOWNLOAD_AS_GLOBAL_ACTION, 5
  field :DATA_DRIVEN_MODEL_WAS_NEVER_GENERATED, 6
  field :DATA_DRIVEN_MODEL_EXPIRED, 7
  field :DATA_DRIVEN_MODEL_STALE, 8
  field :DATA_DRIVEN_MODEL_UNKNOWN, 9
  field :CREATION_NOT_SUPPORTED, 10
  field :UPDATE_NOT_SUPPORTED, 11
  field :CANNOT_SET_RULE_BASED_ATTRIBUTION_MODELS, 12
end

defmodule Google.Ads.Googleads.V20.Errors.ConversionActionErrorEnum do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3
end
