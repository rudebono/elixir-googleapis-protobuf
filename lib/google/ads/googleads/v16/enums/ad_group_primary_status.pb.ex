defmodule Google.Ads.Googleads.V16.Enums.AdGroupPrimaryStatusEnum.AdGroupPrimaryStatus do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :ELIGIBLE, 2
  field :PAUSED, 3
  field :REMOVED, 4
  field :PENDING, 5
  field :NOT_ELIGIBLE, 6
  field :LIMITED, 7
end

defmodule Google.Ads.Googleads.V16.Enums.AdGroupPrimaryStatusEnum do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3
end