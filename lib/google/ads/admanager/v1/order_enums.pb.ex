defmodule Google.Ads.Admanager.V1.OrderStatusEnum.OrderStatus do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :ORDER_STATUS_UNSPECIFIED, 0
  field :DRAFT, 2
  field :PENDING_APPROVAL, 3
  field :APPROVED, 4
  field :DISAPPROVED, 5
  field :PAUSED, 6
  field :CANCELED, 7
  field :DELETED, 8
end

defmodule Google.Ads.Admanager.V1.OrderStatusEnum do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3
end
