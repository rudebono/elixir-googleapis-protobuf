defmodule Google.Cloud.Channel.V1.RebillingBasis do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :REBILLING_BASIS_UNSPECIFIED | :COST_AT_LIST | :DIRECT_CUSTOMER_COST

  field :REBILLING_BASIS_UNSPECIFIED, 0
  field :COST_AT_LIST, 1
  field :DIRECT_CUSTOMER_COST, 2
end
defmodule Google.Cloud.Channel.V1.CustomerRepricingConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          repricing_config: Google.Cloud.Channel.V1.RepricingConfig.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct name: "",
            repricing_config: nil,
            update_time: nil

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          repricing_config: Google.Cloud.Channel.V1.RepricingConfig.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct name: "",
            repricing_config: nil,
            update_time: nil

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          entitlement: String.t()
        }

  defstruct entitlement: ""

  field :entitlement, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Channel.V1.RepricingConfig.ChannelPartnerGranularity do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
defmodule Google.Cloud.Channel.V1.RepricingConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          granularity:
            {:entitlement_granularity,
             Google.Cloud.Channel.V1.RepricingConfig.EntitlementGranularity.t() | nil}
            | {:channel_partner_granularity,
               Google.Cloud.Channel.V1.RepricingConfig.ChannelPartnerGranularity.t() | nil},
          effective_invoice_month: Google.Type.Date.t() | nil,
          adjustment: Google.Cloud.Channel.V1.RepricingAdjustment.t() | nil,
          rebilling_basis: Google.Cloud.Channel.V1.RebillingBasis.t()
        }

  defstruct granularity: nil,
            effective_invoice_month: nil,
            adjustment: nil,
            rebilling_basis: :REBILLING_BASIS_UNSPECIFIED

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
end
defmodule Google.Cloud.Channel.V1.RepricingAdjustment do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          adjustment:
            {:percentage_adjustment, Google.Cloud.Channel.V1.PercentageAdjustment.t() | nil}
        }

  defstruct adjustment: nil

  oneof :adjustment, 0

  field :percentage_adjustment, 2,
    type: Google.Cloud.Channel.V1.PercentageAdjustment,
    json_name: "percentageAdjustment",
    oneof: 0
end
defmodule Google.Cloud.Channel.V1.PercentageAdjustment do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          percentage: Google.Type.Decimal.t() | nil
        }

  defstruct percentage: nil

  field :percentage, 2, type: Google.Type.Decimal
end
