defmodule Google.Ads.Admanager.V1.LineItemCostTypeEnum.LineItemCostType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :LINE_ITEM_COST_TYPE_UNSPECIFIED, 0
  field :CPA, 1
  field :CPC, 2
  field :CPD, 3
  field :CPM, 4
  field :VCPM, 5
  field :CPM_IN_TARGET, 6
  field :CPF, 7
end

defmodule Google.Ads.Admanager.V1.CreativeRotationTypeEnum.CreativeRotationType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :CREATIVE_ROTATION_TYPE_UNSPECIFIED, 0
  field :EVENLY, 1
  field :OPTIMIZED, 2
  field :WEIGHTED, 3
  field :SEQUENTIAL, 4
end

defmodule Google.Ads.Admanager.V1.DeliveryRateTypeEnum.DeliveryRateType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :DELIVERY_RATE_TYPE_UNSPECIFIED, 0
  field :EVENLY, 1
  field :FRONTLOADED, 2
  field :AS_FAST_AS_POSSIBLE, 3
end

defmodule Google.Ads.Admanager.V1.LineItemDiscountTypeEnum.LineItemDiscountType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :LINE_ITEM_DISCOUNT_TYPE_UNSPECIFIED, 0
  field :ABSOLUTE_VALUE, 1
  field :PERCENTAGE, 2
end

defmodule Google.Ads.Admanager.V1.LineItemTypeEnum.LineItemType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :LINE_ITEM_TYPE_UNSPECIFIED, 0
  field :SPONSORSHIP, 12
  field :STANDARD, 13
  field :NETWORK, 9
  field :BULK, 4
  field :PRICE_PRIORITY, 11
  field :HOUSE, 7
  field :LEGACY_DFP, 8
  field :CLICK_TRACKING, 6
  field :ADSENSE, 2
  field :AD_EXCHANGE, 3
  field :BUMPER, 5
  field :ADMOB, 1
  field :PREFERRED_DEAL, 10
end

defmodule Google.Ads.Admanager.V1.ReservationStatusEnum.ReservationStatus do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :RESERVATION_STATUS_UNSPECIFIED, 0
  field :RESERVED, 1
  field :UNRESERVED, 2
end

defmodule Google.Ads.Admanager.V1.LineItemCostTypeEnum do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3
end

defmodule Google.Ads.Admanager.V1.CreativeRotationTypeEnum do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3
end

defmodule Google.Ads.Admanager.V1.DeliveryRateTypeEnum do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3
end

defmodule Google.Ads.Admanager.V1.LineItemDiscountTypeEnum do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3
end

defmodule Google.Ads.Admanager.V1.LineItemTypeEnum do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3
end

defmodule Google.Ads.Admanager.V1.ReservationStatusEnum do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3
end