defmodule Google.Iam.V1.Logging.AuditData do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :policy_delta, 2, type: Google.Iam.V1.PolicyDelta, json_name: "policyDelta"
end