defmodule Google.Iam.V1.GetPolicyOptions do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          requested_policy_version: integer
        }

  defstruct requested_policy_version: 0

  field :requested_policy_version, 1, type: :int32, json_name: "requestedPolicyVersion"
end
