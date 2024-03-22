defmodule Google.Ads.Admanager.V1.ComputedStatusEnum.ComputedStatus do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :COMPUTED_STATUS_UNSPECIFIED, 0
  field :DELIVERY_EXTENDED, 1
  field :DELIVERING, 2
  field :READY, 3
  field :PAUSED, 4
  field :INACTIVE, 5
  field :PAUSED_INVENTORY_RELEASED, 6
  field :PENDING_APPROVAL, 7
  field :COMPLETED, 8
  field :DISAPPROVED, 9
  field :DRAFT, 10
  field :CANCELED, 11
end

defmodule Google.Ads.Admanager.V1.ComputedStatusEnum do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3
end