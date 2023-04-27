defmodule Google.Iam.Credentials.V1.GenerateAccessTokenRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :delegates, 2, repeated: true, type: :string
  field :scope, 4, repeated: true, type: :string, deprecated: false
  field :lifetime, 7, type: Google.Protobuf.Duration
end

defmodule Google.Iam.Credentials.V1.GenerateAccessTokenResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :access_token, 1, type: :string, json_name: "accessToken"
  field :expire_time, 3, type: Google.Protobuf.Timestamp, json_name: "expireTime"
end

defmodule Google.Iam.Credentials.V1.SignBlobRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :delegates, 3, repeated: true, type: :string
  field :payload, 5, type: :bytes, deprecated: false
end

defmodule Google.Iam.Credentials.V1.SignBlobResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key_id, 1, type: :string, json_name: "keyId"
  field :signed_blob, 4, type: :bytes, json_name: "signedBlob"
end

defmodule Google.Iam.Credentials.V1.SignJwtRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :delegates, 3, repeated: true, type: :string
  field :payload, 5, type: :string, deprecated: false
end

defmodule Google.Iam.Credentials.V1.SignJwtResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key_id, 1, type: :string, json_name: "keyId"
  field :signed_jwt, 2, type: :string, json_name: "signedJwt"
end

defmodule Google.Iam.Credentials.V1.GenerateIdTokenRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :delegates, 2, repeated: true, type: :string
  field :audience, 3, type: :string, deprecated: false
  field :include_email, 4, type: :bool, json_name: "includeEmail"
end

defmodule Google.Iam.Credentials.V1.GenerateIdTokenResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :token, 1, type: :string
end