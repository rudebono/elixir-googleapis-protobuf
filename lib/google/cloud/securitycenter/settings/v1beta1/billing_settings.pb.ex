defmodule Google.Cloud.Securitycenter.Settings.V1beta1.BillingTier do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :BILLING_TIER_UNSPECIFIED, 0
  field :STANDARD, 1
  field :PREMIUM, 2
end

defmodule Google.Cloud.Securitycenter.Settings.V1beta1.BillingType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :BILLING_TYPE_UNSPECIFIED, 0
  field :SUBSCRIPTION, 1
  field :TRIAL_SUBSCRIPTION, 2
  field :ALPHA, 3
end

defmodule Google.Cloud.Securitycenter.Settings.V1beta1.BillingSettings do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :billing_tier, 1,
    type: Google.Cloud.Securitycenter.Settings.V1beta1.BillingTier,
    json_name: "billingTier",
    enum: true,
    deprecated: false

  field :billing_type, 2,
    type: Google.Cloud.Securitycenter.Settings.V1beta1.BillingType,
    json_name: "billingType",
    enum: true,
    deprecated: false

  field :start_time, 3, type: Google.Protobuf.Timestamp, json_name: "startTime", deprecated: false

  field :expire_time, 4,
    type: Google.Protobuf.Timestamp,
    json_name: "expireTime",
    deprecated: false
end
