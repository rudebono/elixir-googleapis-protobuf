defmodule Google.Cloud.Sql.V1.GetConnectSettingsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          instance: String.t(),
          project: String.t(),
          read_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct instance: "",
            project: "",
            read_time: nil

  field :instance, 1, type: :string
  field :project, 2, type: :string
  field :read_time, 7, type: Google.Protobuf.Timestamp, json_name: "readTime", deprecated: false
end
defmodule Google.Cloud.Sql.V1.ConnectSettings do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          kind: String.t(),
          server_ca_cert: Google.Cloud.Sql.V1.SslCert.t() | nil,
          ip_addresses: [Google.Cloud.Sql.V1.IpMapping.t()],
          region: String.t(),
          database_version: Google.Cloud.Sql.V1.SqlDatabaseVersion.t(),
          backend_type: Google.Cloud.Sql.V1.SqlBackendType.t()
        }

  defstruct kind: "",
            server_ca_cert: nil,
            ip_addresses: [],
            region: "",
            database_version: :SQL_DATABASE_VERSION_UNSPECIFIED,
            backend_type: :SQL_BACKEND_TYPE_UNSPECIFIED

  field :kind, 1, type: :string
  field :server_ca_cert, 2, type: Google.Cloud.Sql.V1.SslCert, json_name: "serverCaCert"

  field :ip_addresses, 3,
    repeated: true,
    type: Google.Cloud.Sql.V1.IpMapping,
    json_name: "ipAddresses"

  field :region, 4, type: :string

  field :database_version, 31,
    type: Google.Cloud.Sql.V1.SqlDatabaseVersion,
    json_name: "databaseVersion",
    enum: true

  field :backend_type, 32,
    type: Google.Cloud.Sql.V1.SqlBackendType,
    json_name: "backendType",
    enum: true
end
defmodule Google.Cloud.Sql.V1.GenerateEphemeralCertRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          instance: String.t(),
          project: String.t(),
          public_key: String.t(),
          access_token: String.t(),
          read_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct instance: "",
            project: "",
            public_key: "",
            access_token: "",
            read_time: nil

  field :instance, 1, type: :string
  field :project, 2, type: :string
  field :public_key, 3, type: :string, json_name: "publicKey"
  field :access_token, 4, type: :string, json_name: "accessToken", deprecated: false
  field :read_time, 7, type: Google.Protobuf.Timestamp, json_name: "readTime", deprecated: false
end
defmodule Google.Cloud.Sql.V1.GenerateEphemeralCertResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          ephemeral_cert: Google.Cloud.Sql.V1.SslCert.t() | nil
        }

  defstruct ephemeral_cert: nil

  field :ephemeral_cert, 1, type: Google.Cloud.Sql.V1.SslCert, json_name: "ephemeralCert"
end
defmodule Google.Cloud.Sql.V1.SqlConnectService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.sql.v1.SqlConnectService"

  rpc :GetConnectSettings,
      Google.Cloud.Sql.V1.GetConnectSettingsRequest,
      Google.Cloud.Sql.V1.ConnectSettings

  rpc :GenerateEphemeralCert,
      Google.Cloud.Sql.V1.GenerateEphemeralCertRequest,
      Google.Cloud.Sql.V1.GenerateEphemeralCertResponse
end

defmodule Google.Cloud.Sql.V1.SqlConnectService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Sql.V1.SqlConnectService.Service
end
