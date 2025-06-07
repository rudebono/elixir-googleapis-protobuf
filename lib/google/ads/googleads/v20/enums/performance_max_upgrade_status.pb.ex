defmodule Google.Ads.Googleads.V20.Enums.PerformanceMaxUpgradeStatusEnum.PerformanceMaxUpgradeStatus do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :UPGRADE_IN_PROGRESS, 3
  field :UPGRADE_COMPLETE, 4
  field :UPGRADE_FAILED, 5
  field :UPGRADE_ELIGIBLE, 6
end

defmodule Google.Ads.Googleads.V20.Enums.PerformanceMaxUpgradeStatusEnum do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3
end
