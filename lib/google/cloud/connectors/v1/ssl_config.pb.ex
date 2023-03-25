defmodule Google.Cloud.Connectors.V1.SslType do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :SSL_TYPE_UNSPECIFIED, 0
  field :TLS, 1
  field :MTLS, 2
end

defmodule Google.Cloud.Connectors.V1.CertType do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :CERT_TYPE_UNSPECIFIED, 0
  field :PEM, 1
end

defmodule Google.Cloud.Connectors.V1.SslConfig.TrustModel do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :PUBLIC, 0
  field :PRIVATE, 1
  field :INSECURE, 2
end

defmodule Google.Cloud.Connectors.V1.SslConfigTemplate do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :ssl_type, 1, type: Google.Cloud.Connectors.V1.SslType, json_name: "sslType", enum: true
  field :is_tls_mandatory, 2, type: :bool, json_name: "isTlsMandatory"

  field :server_cert_type, 3,
    repeated: true,
    type: Google.Cloud.Connectors.V1.CertType,
    json_name: "serverCertType",
    enum: true

  field :client_cert_type, 4,
    repeated: true,
    type: Google.Cloud.Connectors.V1.CertType,
    json_name: "clientCertType",
    enum: true

  field :additional_variables, 5,
    repeated: true,
    type: Google.Cloud.Connectors.V1.ConfigVariableTemplate,
    json_name: "additionalVariables"
end

defmodule Google.Cloud.Connectors.V1.SslConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :type, 1, type: Google.Cloud.Connectors.V1.SslType, enum: true

  field :trust_model, 2,
    type: Google.Cloud.Connectors.V1.SslConfig.TrustModel,
    json_name: "trustModel",
    enum: true

  field :private_server_certificate, 3,
    type: Google.Cloud.Connectors.V1.Secret,
    json_name: "privateServerCertificate"

  field :client_certificate, 4,
    type: Google.Cloud.Connectors.V1.Secret,
    json_name: "clientCertificate"

  field :client_private_key, 5,
    type: Google.Cloud.Connectors.V1.Secret,
    json_name: "clientPrivateKey"

  field :client_private_key_pass, 6,
    type: Google.Cloud.Connectors.V1.Secret,
    json_name: "clientPrivateKeyPass"

  field :server_cert_type, 7,
    type: Google.Cloud.Connectors.V1.CertType,
    json_name: "serverCertType",
    enum: true

  field :client_cert_type, 8,
    type: Google.Cloud.Connectors.V1.CertType,
    json_name: "clientCertType",
    enum: true

  field :use_ssl, 9, type: :bool, json_name: "useSsl"

  field :additional_variables, 10,
    repeated: true,
    type: Google.Cloud.Connectors.V1.ConfigVariable,
    json_name: "additionalVariables"
end