defmodule Google.Cloud.Securitycenter.Settings.V1beta1.Detector do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          detector: String.t(),
          component: String.t(),
          billing_tier: Google.Cloud.Securitycenter.Settings.V1beta1.BillingTier.t(),
          detector_labels: [String.t()]
        }

  defstruct detector: "",
            component: "",
            billing_tier: :BILLING_TIER_UNSPECIFIED,
            detector_labels: []

  field :detector, 1, type: :string, deprecated: false
  field :component, 2, type: :string, deprecated: false

  field :billing_tier, 3,
    type: Google.Cloud.Securitycenter.Settings.V1beta1.BillingTier,
    json_name: "billingTier",
    enum: true,
    deprecated: false

  field :detector_labels, 4,
    repeated: true,
    type: :string,
    json_name: "detectorLabels",
    deprecated: false
end
