defmodule Google.Ads.Googleads.V17.Enums.AssetGroupPrimaryStatusEnum.AssetGroupPrimaryStatus do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :ELIGIBLE, 2
  field :PAUSED, 3
  field :REMOVED, 4
  field :NOT_ELIGIBLE, 5
  field :LIMITED, 6
  field :PENDING, 7
end

defmodule Google.Ads.Googleads.V17.Enums.AssetGroupPrimaryStatusEnum do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3
end