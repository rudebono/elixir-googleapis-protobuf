defmodule Google.Cloud.Geminidataanalytics.V1alpha.Credentials do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :kind, 0

  field :oauth, 1, type: Google.Cloud.Geminidataanalytics.V1alpha.OAuthCredentials, oneof: 0
end

defmodule Google.Cloud.Geminidataanalytics.V1alpha.OAuthCredentials.SecretBased do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :client_id, 2, type: :string, json_name: "clientId", deprecated: false
  field :client_secret, 3, type: :string, json_name: "clientSecret", deprecated: false
end

defmodule Google.Cloud.Geminidataanalytics.V1alpha.OAuthCredentials.TokenBased do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :access_token, 1, type: :string, json_name: "accessToken", deprecated: false
end

defmodule Google.Cloud.Geminidataanalytics.V1alpha.OAuthCredentials do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :kind, 0

  field :secret, 2,
    type: Google.Cloud.Geminidataanalytics.V1alpha.OAuthCredentials.SecretBased,
    oneof: 0

  field :token, 3,
    type: Google.Cloud.Geminidataanalytics.V1alpha.OAuthCredentials.TokenBased,
    oneof: 0
end
