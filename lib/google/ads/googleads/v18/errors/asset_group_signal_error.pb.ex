defmodule Google.Ads.Googleads.V18.Errors.AssetGroupSignalErrorEnum.AssetGroupSignalError do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :TOO_MANY_WORDS, 2
  field :SEARCH_THEME_POLICY_VIOLATION, 3
  field :AUDIENCE_WITH_WRONG_ASSET_GROUP_ID, 4
end

defmodule Google.Ads.Googleads.V18.Errors.AssetGroupSignalErrorEnum do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3
end