defmodule Google.Ads.Googleads.V18.Resources.AccessibleBiddingStrategy.MaximizeConversionValue do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :target_roas, 1, type: :double, json_name: "targetRoas", deprecated: false
end

defmodule Google.Ads.Googleads.V18.Resources.AccessibleBiddingStrategy.MaximizeConversions do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :target_cpa_micros, 2, type: :int64, json_name: "targetCpaMicros", deprecated: false
end

defmodule Google.Ads.Googleads.V18.Resources.AccessibleBiddingStrategy.TargetCpa do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :target_cpa_micros, 1,
    proto3_optional: true,
    type: :int64,
    json_name: "targetCpaMicros",
    deprecated: false
end

defmodule Google.Ads.Googleads.V18.Resources.AccessibleBiddingStrategy.TargetImpressionShare do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :location, 1,
    type:
      Google.Ads.Googleads.V18.Enums.TargetImpressionShareLocationEnum.TargetImpressionShareLocation,
    enum: true,
    deprecated: false

  field :location_fraction_micros, 2,
    proto3_optional: true,
    type: :int64,
    json_name: "locationFractionMicros"

  field :cpc_bid_ceiling_micros, 3,
    proto3_optional: true,
    type: :int64,
    json_name: "cpcBidCeilingMicros",
    deprecated: false
end

defmodule Google.Ads.Googleads.V18.Resources.AccessibleBiddingStrategy.TargetRoas do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :target_roas, 1,
    proto3_optional: true,
    type: :double,
    json_name: "targetRoas",
    deprecated: false
end

defmodule Google.Ads.Googleads.V18.Resources.AccessibleBiddingStrategy.TargetSpend do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :target_spend_micros, 1,
    proto3_optional: true,
    type: :int64,
    json_name: "targetSpendMicros",
    deprecated: true

  field :cpc_bid_ceiling_micros, 2,
    proto3_optional: true,
    type: :int64,
    json_name: "cpcBidCeilingMicros",
    deprecated: false
end

defmodule Google.Ads.Googleads.V18.Resources.AccessibleBiddingStrategy do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :scheme, 0

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :id, 2, type: :int64, deprecated: false
  field :name, 3, type: :string, deprecated: false

  field :type, 4,
    type: Google.Ads.Googleads.V18.Enums.BiddingStrategyTypeEnum.BiddingStrategyType,
    enum: true,
    deprecated: false

  field :owner_customer_id, 5, type: :int64, json_name: "ownerCustomerId", deprecated: false

  field :owner_descriptive_name, 6,
    type: :string,
    json_name: "ownerDescriptiveName",
    deprecated: false

  field :maximize_conversion_value, 7,
    type: Google.Ads.Googleads.V18.Resources.AccessibleBiddingStrategy.MaximizeConversionValue,
    json_name: "maximizeConversionValue",
    oneof: 0,
    deprecated: false

  field :maximize_conversions, 8,
    type: Google.Ads.Googleads.V18.Resources.AccessibleBiddingStrategy.MaximizeConversions,
    json_name: "maximizeConversions",
    oneof: 0,
    deprecated: false

  field :target_cpa, 9,
    type: Google.Ads.Googleads.V18.Resources.AccessibleBiddingStrategy.TargetCpa,
    json_name: "targetCpa",
    oneof: 0,
    deprecated: false

  field :target_impression_share, 10,
    type: Google.Ads.Googleads.V18.Resources.AccessibleBiddingStrategy.TargetImpressionShare,
    json_name: "targetImpressionShare",
    oneof: 0,
    deprecated: false

  field :target_roas, 11,
    type: Google.Ads.Googleads.V18.Resources.AccessibleBiddingStrategy.TargetRoas,
    json_name: "targetRoas",
    oneof: 0,
    deprecated: false

  field :target_spend, 12,
    type: Google.Ads.Googleads.V18.Resources.AccessibleBiddingStrategy.TargetSpend,
    json_name: "targetSpend",
    oneof: 0,
    deprecated: false
end
