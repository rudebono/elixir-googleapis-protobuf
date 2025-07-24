defmodule Google.Cloud.Alloydb.Connectors.V1beta.MetadataExchangeRequest.AuthType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :AUTH_TYPE_UNSPECIFIED, 0
  field :DB_NATIVE, 1
  field :AUTO_IAM, 2
end

defmodule Google.Cloud.Alloydb.Connectors.V1beta.MetadataExchangeResponse.ResponseCode do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :RESPONSE_CODE_UNSPECIFIED, 0
  field :OK, 1
  field :ERROR, 2
end

defmodule Google.Cloud.Alloydb.Connectors.V1beta.MetadataExchangeRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :user_agent, 1, type: :string, json_name: "userAgent", deprecated: false

  field :auth_type, 2,
    type: Google.Cloud.Alloydb.Connectors.V1beta.MetadataExchangeRequest.AuthType,
    json_name: "authType",
    enum: true

  field :oauth2_token, 3, type: :string, json_name: "oauth2Token"
end

defmodule Google.Cloud.Alloydb.Connectors.V1beta.MetadataExchangeResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :response_code, 1,
    type: Google.Cloud.Alloydb.Connectors.V1beta.MetadataExchangeResponse.ResponseCode,
    json_name: "responseCode",
    enum: true

  field :error, 2, type: :string, deprecated: false
end
