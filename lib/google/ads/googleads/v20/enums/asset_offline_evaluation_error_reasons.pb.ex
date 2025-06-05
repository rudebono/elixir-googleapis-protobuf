defmodule Google.Ads.Googleads.V20.Enums.AssetOfflineEvaluationErrorReasonsEnum.AssetOfflineEvaluationErrorReasons do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :PRICE_ASSET_DESCRIPTION_REPEATS_ROW_HEADER, 2
  field :PRICE_ASSET_REPETITIVE_HEADERS, 3
  field :PRICE_ASSET_HEADER_INCOMPATIBLE_WITH_PRICE_TYPE, 4
  field :PRICE_ASSET_DESCRIPTION_INCOMPATIBLE_WITH_ITEM_HEADER, 5
  field :PRICE_ASSET_DESCRIPTION_HAS_PRICE_QUALIFIER, 6
  field :PRICE_ASSET_UNSUPPORTED_LANGUAGE, 7
  field :PRICE_ASSET_OTHER_ERROR, 8
end

defmodule Google.Ads.Googleads.V20.Enums.AssetOfflineEvaluationErrorReasonsEnum do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3
end
