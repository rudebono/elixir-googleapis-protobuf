defmodule Google.Ads.Googleads.V20.Enums.HotelReconciliationStatusEnum.HotelReconciliationStatus do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :RESERVATION_ENABLED, 2
  field :RECONCILIATION_NEEDED, 3
  field :RECONCILED, 4
  field :CANCELED, 5
end

defmodule Google.Ads.Googleads.V20.Enums.HotelReconciliationStatusEnum do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end
