defmodule Google.Ads.Googleads.V21.Enums.ProductAvailabilityEnum.ProductAvailability do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :IN_STOCK, 2
  field :OUT_OF_STOCK, 3
  field :PREORDER, 4
end

defmodule Google.Ads.Googleads.V21.Enums.ProductAvailabilityEnum do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end
