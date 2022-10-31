defmodule Google.Ads.Searchads360.V0.Common.EnhancedCpc do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3
end

defmodule Google.Ads.Searchads360.V0.Common.ManualCpa do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3
end

defmodule Google.Ads.Searchads360.V0.Common.ManualCpc do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :enhanced_cpc_enabled, 2,
    proto3_optional: true,
    type: :bool,
    json_name: "enhancedCpcEnabled"
end

defmodule Google.Ads.Searchads360.V0.Common.ManualCpm do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3
end

defmodule Google.Ads.Searchads360.V0.Common.MaximizeConversions do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :cpc_bid_ceiling_micros, 2, type: :int64, json_name: "cpcBidCeilingMicros"
  field :cpc_bid_floor_micros, 3, type: :int64, json_name: "cpcBidFloorMicros"
  field :target_cpa_micros, 4, type: :int64, json_name: "targetCpaMicros"
end

defmodule Google.Ads.Searchads360.V0.Common.MaximizeConversionValue do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :target_roas, 2, proto3_optional: true, type: :double, json_name: "targetRoas"
  field :cpc_bid_ceiling_micros, 3, type: :int64, json_name: "cpcBidCeilingMicros"
  field :cpc_bid_floor_micros, 4, type: :int64, json_name: "cpcBidFloorMicros"
end

defmodule Google.Ads.Searchads360.V0.Common.TargetCpa do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :target_cpa_micros, 4, proto3_optional: true, type: :int64, json_name: "targetCpaMicros"

  field :cpc_bid_ceiling_micros, 5,
    proto3_optional: true,
    type: :int64,
    json_name: "cpcBidCeilingMicros"

  field :cpc_bid_floor_micros, 6,
    proto3_optional: true,
    type: :int64,
    json_name: "cpcBidFloorMicros"
end

defmodule Google.Ads.Searchads360.V0.Common.TargetCpm do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3
end

defmodule Google.Ads.Searchads360.V0.Common.TargetImpressionShare do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :location, 1,
    type:
      Google.Ads.Searchads360.V0.Enums.TargetImpressionShareLocationEnum.TargetImpressionShareLocation,
    enum: true

  field :location_fraction_micros, 4,
    proto3_optional: true,
    type: :int64,
    json_name: "locationFractionMicros"

  field :cpc_bid_ceiling_micros, 5,
    proto3_optional: true,
    type: :int64,
    json_name: "cpcBidCeilingMicros"
end

defmodule Google.Ads.Searchads360.V0.Common.TargetOutrankShare do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :cpc_bid_ceiling_micros, 3,
    type: Google.Protobuf.Int64Value,
    json_name: "cpcBidCeilingMicros"
end

defmodule Google.Ads.Searchads360.V0.Common.TargetRoas do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :target_roas, 4, proto3_optional: true, type: :double, json_name: "targetRoas"

  field :cpc_bid_ceiling_micros, 5,
    proto3_optional: true,
    type: :int64,
    json_name: "cpcBidCeilingMicros"

  field :cpc_bid_floor_micros, 6,
    proto3_optional: true,
    type: :int64,
    json_name: "cpcBidFloorMicros"
end

defmodule Google.Ads.Searchads360.V0.Common.TargetSpend do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :target_spend_micros, 3,
    proto3_optional: true,
    type: :int64,
    json_name: "targetSpendMicros",
    deprecated: true

  field :cpc_bid_ceiling_micros, 4,
    proto3_optional: true,
    type: :int64,
    json_name: "cpcBidCeilingMicros"
end

defmodule Google.Ads.Searchads360.V0.Common.PercentCpc do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :cpc_bid_ceiling_micros, 3,
    proto3_optional: true,
    type: :int64,
    json_name: "cpcBidCeilingMicros"

  field :enhanced_cpc_enabled, 4,
    proto3_optional: true,
    type: :bool,
    json_name: "enhancedCpcEnabled"
end