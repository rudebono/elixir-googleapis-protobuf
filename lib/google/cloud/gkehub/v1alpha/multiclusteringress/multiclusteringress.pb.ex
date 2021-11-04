defmodule Google.Cloud.Gkehub.Multiclusteringress.V1alpha.Billing do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :BILLING_UNSPECIFIED | :PAY_AS_YOU_GO | :ANTHOS_LICENSE

  field :BILLING_UNSPECIFIED, 0
  field :PAY_AS_YOU_GO, 1
  field :ANTHOS_LICENSE, 2
end

defmodule Google.Cloud.Gkehub.Multiclusteringress.V1alpha.FeatureSpec do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          config_membership: String.t(),
          billing: Google.Cloud.Gkehub.Multiclusteringress.V1alpha.Billing.t()
        }

  defstruct [:config_membership, :billing]

  field :config_membership, 1, type: :string, json_name: "configMembership"
  field :billing, 2, type: Google.Cloud.Gkehub.Multiclusteringress.V1alpha.Billing, enum: true

  def transform_module(), do: nil
end
