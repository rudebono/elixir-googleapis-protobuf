defmodule Google.Ads.Googleads.V18.Enums.ConversionTrackingStatusEnum.ConversionTrackingStatus do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :NOT_CONVERSION_TRACKED, 2
  field :CONVERSION_TRACKING_MANAGED_BY_SELF, 3
  field :CONVERSION_TRACKING_MANAGED_BY_THIS_MANAGER, 4
  field :CONVERSION_TRACKING_MANAGED_BY_ANOTHER_MANAGER, 5
end

defmodule Google.Ads.Googleads.V18.Enums.ConversionTrackingStatusEnum do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3
end
