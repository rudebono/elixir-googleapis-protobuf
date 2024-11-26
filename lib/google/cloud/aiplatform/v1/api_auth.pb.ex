defmodule Google.Cloud.Aiplatform.V1.ApiAuth.ApiKeyConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :api_key_secret_version, 1,
    type: :string,
    json_name: "apiKeySecretVersion",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.ApiAuth do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  oneof :auth_config, 0

  field :api_key_config, 1,
    type: Google.Cloud.Aiplatform.V1.ApiAuth.ApiKeyConfig,
    json_name: "apiKeyConfig",
    oneof: 0
end