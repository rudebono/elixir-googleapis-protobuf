defmodule Google.Iam.V1.Logging.AuditData do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :policy_delta, 2, type: Google.Iam.V1.PolicyDelta, json_name: "policyDelta"
end
