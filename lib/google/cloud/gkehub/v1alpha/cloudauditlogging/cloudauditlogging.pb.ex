defmodule Google.Cloud.Gkehub.Cloudauditlogging.V1alpha.FeatureSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :allowlisted_service_accounts, 1,
    repeated: true,
    type: :string,
    json_name: "allowlistedServiceAccounts"
end