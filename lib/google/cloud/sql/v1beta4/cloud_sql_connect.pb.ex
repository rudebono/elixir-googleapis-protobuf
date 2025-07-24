defmodule Google.Cloud.Sql.V1beta4.GetConnectSettingsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :instance, 1, type: :string
  field :project, 2, type: :string
  field :read_time, 7, type: Google.Protobuf.Timestamp, json_name: "readTime", deprecated: false
end

defmodule Google.Cloud.Sql.V1beta4.ConnectSettings do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :kind, 1, type: :string
  field :server_ca_cert, 2, type: Google.Cloud.Sql.V1beta4.SslCert, json_name: "serverCaCert"

  field :ip_addresses, 3,
    repeated: true,
    type: Google.Cloud.Sql.V1beta4.IpMapping,
    json_name: "ipAddresses"

  field :region, 4, type: :string

  field :database_version, 31,
    type: Google.Cloud.Sql.V1beta4.SqlDatabaseVersion,
    json_name: "databaseVersion",
    enum: true

  field :backend_type, 32,
    type: Google.Cloud.Sql.V1beta4.SqlBackendType,
    json_name: "backendType",
    enum: true

  field :psc_enabled, 33, type: :bool, json_name: "pscEnabled"
  field :dns_name, 34, type: :string, json_name: "dnsName"
end

defmodule Google.Cloud.Sql.V1beta4.GenerateEphemeralCertRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :instance, 1, type: :string
  field :project, 2, type: :string
  field :public_key, 3, type: :string, json_name: "publicKey"
  field :access_token, 4, type: :string, json_name: "accessToken", deprecated: false
  field :read_time, 7, type: Google.Protobuf.Timestamp, json_name: "readTime", deprecated: false

  field :valid_duration, 12,
    type: Google.Protobuf.Duration,
    json_name: "validDuration",
    deprecated: false
end

defmodule Google.Cloud.Sql.V1beta4.GenerateEphemeralCertResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :ephemeral_cert, 1, type: Google.Cloud.Sql.V1beta4.SslCert, json_name: "ephemeralCert"
end

defmodule Google.Cloud.Sql.V1beta4.SqlConnectService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.sql.v1beta4.SqlConnectService",
    protoc_gen_elixir_version: "0.15.0"

  rpc :GetConnectSettings,
      Google.Cloud.Sql.V1beta4.GetConnectSettingsRequest,
      Google.Cloud.Sql.V1beta4.ConnectSettings

  rpc :GenerateEphemeralCert,
      Google.Cloud.Sql.V1beta4.GenerateEphemeralCertRequest,
      Google.Cloud.Sql.V1beta4.GenerateEphemeralCertResponse
end

defmodule Google.Cloud.Sql.V1beta4.SqlConnectService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Sql.V1beta4.SqlConnectService.Service
end
