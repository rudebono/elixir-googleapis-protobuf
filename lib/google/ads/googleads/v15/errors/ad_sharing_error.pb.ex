defmodule Google.Ads.Googleads.V15.Errors.AdSharingErrorEnum.AdSharingError do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :AD_GROUP_ALREADY_CONTAINS_AD, 2
  field :INCOMPATIBLE_AD_UNDER_AD_GROUP, 3
  field :CANNOT_SHARE_INACTIVE_AD, 4
end

defmodule Google.Ads.Googleads.V15.Errors.AdSharingErrorEnum do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3
end