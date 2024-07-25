defmodule Google.Cloud.Aiplatform.V1beta1.ApiAuth.ApiKeyConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :api_key_secret_version, 1,
    type: :string,
    json_name: "apiKeySecretVersion",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.ApiAuth do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3
end