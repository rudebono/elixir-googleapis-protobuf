defmodule Google.Cloud.Securitycenter.Settings.V1beta1.BillingTier do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :BILLING_TIER_UNSPECIFIED | :STANDARD | :PREMIUM

  field :BILLING_TIER_UNSPECIFIED, 0

  field :STANDARD, 1

  field :PREMIUM, 2
end

defmodule Google.Cloud.Securitycenter.Settings.V1beta1.BillingType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :BILLING_TYPE_UNSPECIFIED | :SUBSCRIPTION | :TRIAL_SUBSCRIPTION | :ALPHA

  field :BILLING_TYPE_UNSPECIFIED, 0

  field :SUBSCRIPTION, 1

  field :TRIAL_SUBSCRIPTION, 2

  field :ALPHA, 3
end

defmodule Google.Cloud.Securitycenter.Settings.V1beta1.BillingSettings do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          billing_tier: Google.Cloud.Securitycenter.Settings.V1beta1.BillingTier.t(),
          billing_type: Google.Cloud.Securitycenter.Settings.V1beta1.BillingType.t(),
          start_time: Google.Protobuf.Timestamp.t() | nil,
          expire_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct [:billing_tier, :billing_type, :start_time, :expire_time]

  field :billing_tier, 1,
    type: Google.Cloud.Securitycenter.Settings.V1beta1.BillingTier,
    enum: true

  field :billing_type, 2,
    type: Google.Cloud.Securitycenter.Settings.V1beta1.BillingType,
    enum: true

  field :start_time, 3, type: Google.Protobuf.Timestamp
  field :expire_time, 4, type: Google.Protobuf.Timestamp
end
