defmodule Google.Cloud.Geminidataanalytics.V1beta.Credentials do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :kind, 0

  field :oauth, 1, type: Google.Cloud.Geminidataanalytics.V1beta.OAuthCredentials, oneof: 0
end

defmodule Google.Cloud.Geminidataanalytics.V1beta.OAuthCredentials.SecretBased do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :client_id, 2, type: :string, json_name: "clientId", deprecated: false
  field :client_secret, 3, type: :string, json_name: "clientSecret", deprecated: false
end

defmodule Google.Cloud.Geminidataanalytics.V1beta.OAuthCredentials.TokenBased do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :access_token, 1, type: :string, json_name: "accessToken", deprecated: false
end

defmodule Google.Cloud.Geminidataanalytics.V1beta.OAuthCredentials do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :kind, 0

  field :secret, 2,
    type: Google.Cloud.Geminidataanalytics.V1beta.OAuthCredentials.SecretBased,
    oneof: 0

  field :token, 3,
    type: Google.Cloud.Geminidataanalytics.V1beta.OAuthCredentials.TokenBased,
    oneof: 0
end
