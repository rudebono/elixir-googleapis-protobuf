defmodule Google.Cloud.Gkehub.Multiclusteringress.V1.FeatureSpec do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          config_membership: String.t()
        }

  defstruct [:config_membership]

  field :config_membership, 1, type: :string, json_name: "configMembership"

  def transform_module(), do: nil
end
