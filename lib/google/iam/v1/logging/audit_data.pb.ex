defmodule Google.Iam.V1.Logging.AuditData do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          policy_delta: Google.Iam.V1.PolicyDelta.t() | nil
        }

  defstruct policy_delta: nil

  field :policy_delta, 2, type: Google.Iam.V1.PolicyDelta, json_name: "policyDelta"
end
