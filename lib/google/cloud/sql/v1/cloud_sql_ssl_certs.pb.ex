defmodule Google.Cloud.Sql.V1.SqlSslCertsDeleteRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :instance, 1, type: :string
  field :project, 2, type: :string
  field :sha1_fingerprint, 3, type: :string, json_name: "sha1Fingerprint"
end

defmodule Google.Cloud.Sql.V1.SqlSslCertsGetRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :instance, 1, type: :string
  field :project, 2, type: :string
  field :sha1_fingerprint, 3, type: :string, json_name: "sha1Fingerprint"
end

defmodule Google.Cloud.Sql.V1.SqlSslCertsInsertRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :instance, 1, type: :string
  field :project, 2, type: :string
  field :body, 100, type: Google.Cloud.Sql.V1.SslCertsInsertRequest
end

defmodule Google.Cloud.Sql.V1.SqlSslCertsListRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :instance, 1, type: :string
  field :project, 2, type: :string
end

defmodule Google.Cloud.Sql.V1.SslCertsInsertRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :common_name, 1, type: :string, json_name: "commonName"
end

defmodule Google.Cloud.Sql.V1.SslCertsInsertResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :kind, 1, type: :string
  field :operation, 2, type: Google.Cloud.Sql.V1.Operation
  field :server_ca_cert, 3, type: Google.Cloud.Sql.V1.SslCert, json_name: "serverCaCert"
  field :client_cert, 4, type: Google.Cloud.Sql.V1.SslCertDetail, json_name: "clientCert"
end

defmodule Google.Cloud.Sql.V1.SslCertsListResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :kind, 1, type: :string
  field :items, 2, repeated: true, type: Google.Cloud.Sql.V1.SslCert
end

defmodule Google.Cloud.Sql.V1.SqlSslCertsService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.sql.v1.SqlSslCertsService",
    protoc_gen_elixir_version: "0.13.0"

  rpc :Delete, Google.Cloud.Sql.V1.SqlSslCertsDeleteRequest, Google.Cloud.Sql.V1.Operation

  rpc :Get, Google.Cloud.Sql.V1.SqlSslCertsGetRequest, Google.Cloud.Sql.V1.SslCert

  rpc :Insert,
      Google.Cloud.Sql.V1.SqlSslCertsInsertRequest,
      Google.Cloud.Sql.V1.SslCertsInsertResponse

  rpc :List, Google.Cloud.Sql.V1.SqlSslCertsListRequest, Google.Cloud.Sql.V1.SslCertsListResponse
end

defmodule Google.Cloud.Sql.V1.SqlSslCertsService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Sql.V1.SqlSslCertsService.Service
end