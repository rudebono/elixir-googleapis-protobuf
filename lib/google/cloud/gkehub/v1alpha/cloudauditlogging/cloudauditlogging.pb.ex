defmodule Google.Cloud.Gkehub.Cloudauditlogging.V1alpha.FeatureSpec do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          allowlisted_service_accounts: [String.t()]
        }

  defstruct [:allowlisted_service_accounts]

  field :allowlisted_service_accounts, 1, repeated: true, type: :string
end
