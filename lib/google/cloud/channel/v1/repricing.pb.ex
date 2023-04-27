defmodule Google.Cloud.Channel.V1.RebillingBasis do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :REBILLING_BASIS_UNSPECIFIED, 0
  field :COST_AT_LIST, 1
  field :DIRECT_CUSTOMER_COST, 2
end

defmodule Google.Cloud.Channel.V1.CustomerRepricingConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :repricing_config, 2,
    type: Google.Cloud.Channel.V1.RepricingConfig,
    json_name: "repricingConfig",
    deprecated: false

  field :update_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false
end

defmodule Google.Cloud.Channel.V1.ChannelPartnerRepricingConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :repricing_config, 2,
    type: Google.Cloud.Channel.V1.RepricingConfig,
    json_name: "repricingConfig",
    deprecated: false

  field :update_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false
end

defmodule Google.Cloud.Channel.V1.RepricingConfig.EntitlementGranularity do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :entitlement, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Channel.V1.RepricingConfig.ChannelPartnerGranularity do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3
end

defmodule Google.Cloud.Channel.V1.RepricingConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :granularity, 0

  field :entitlement_granularity, 4,
    type: Google.Cloud.Channel.V1.RepricingConfig.EntitlementGranularity,
    json_name: "entitlementGranularity",
    oneof: 0

  field :channel_partner_granularity, 5,
    type: Google.Cloud.Channel.V1.RepricingConfig.ChannelPartnerGranularity,
    json_name: "channelPartnerGranularity",
    oneof: 0

  field :effective_invoice_month, 1,
    type: Google.Type.Date,
    json_name: "effectiveInvoiceMonth",
    deprecated: false

  field :adjustment, 2, type: Google.Cloud.Channel.V1.RepricingAdjustment, deprecated: false

  field :rebilling_basis, 3,
    type: Google.Cloud.Channel.V1.RebillingBasis,
    json_name: "rebillingBasis",
    enum: true,
    deprecated: false

  field :conditional_overrides, 6,
    repeated: true,
    type: Google.Cloud.Channel.V1.ConditionalOverride,
    json_name: "conditionalOverrides"
end

defmodule Google.Cloud.Channel.V1.RepricingAdjustment do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :adjustment, 0

  field :percentage_adjustment, 2,
    type: Google.Cloud.Channel.V1.PercentageAdjustment,
    json_name: "percentageAdjustment",
    oneof: 0
end

defmodule Google.Cloud.Channel.V1.PercentageAdjustment do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :percentage, 2, type: Google.Type.Decimal
end

defmodule Google.Cloud.Channel.V1.ConditionalOverride do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :adjustment, 1, type: Google.Cloud.Channel.V1.RepricingAdjustment, deprecated: false

  field :rebilling_basis, 2,
    type: Google.Cloud.Channel.V1.RebillingBasis,
    json_name: "rebillingBasis",
    enum: true,
    deprecated: false

  field :repricing_condition, 3,
    type: Google.Cloud.Channel.V1.RepricingCondition,
    json_name: "repricingCondition",
    deprecated: false
end

defmodule Google.Cloud.Channel.V1.RepricingCondition do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :condition, 0

  field :sku_group_condition, 1,
    type: Google.Cloud.Channel.V1.SkuGroupCondition,
    json_name: "skuGroupCondition",
    oneof: 0
end

defmodule Google.Cloud.Channel.V1.SkuGroupCondition do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :sku_group, 1, type: :string, json_name: "skuGroup"
end