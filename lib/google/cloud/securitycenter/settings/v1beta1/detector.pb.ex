defmodule Google.Cloud.Securitycenter.Settings.V1beta1.Detector do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

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
