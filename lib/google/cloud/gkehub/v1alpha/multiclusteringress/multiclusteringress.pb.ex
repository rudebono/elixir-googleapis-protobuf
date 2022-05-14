defmodule Google.Cloud.Gkehub.Multiclusteringress.V1alpha.Billing do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :BILLING_UNSPECIFIED, 0
  field :PAY_AS_YOU_GO, 1
  field :ANTHOS_LICENSE, 2
end
defmodule Google.Cloud.Gkehub.Multiclusteringress.V1alpha.FeatureSpec do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :config_membership, 1, type: :string, json_name: "configMembership"
  field :billing, 2, type: Google.Cloud.Gkehub.Multiclusteringress.V1alpha.Billing, enum: true
end
