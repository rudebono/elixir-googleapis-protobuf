defmodule Google.Cloud.Sql.V1.SqlSslCertsDeleteRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          instance: String.t(),
          project: String.t(),
          sha1_fingerprint: String.t()
        }

  defstruct [:instance, :project, :sha1_fingerprint]

  field :instance, 1, type: :string
  field :project, 2, type: :string
  field :sha1_fingerprint, 3, type: :string, json_name: "sha1Fingerprint"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Sql.V1.SqlSslCertsGetRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          instance: String.t(),
          project: String.t(),
          sha1_fingerprint: String.t()
        }

  defstruct [:instance, :project, :sha1_fingerprint]

  field :instance, 1, type: :string
  field :project, 2, type: :string
  field :sha1_fingerprint, 3, type: :string, json_name: "sha1Fingerprint"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Sql.V1.SqlSslCertsInsertRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          instance: String.t(),
          project: String.t(),
          body: Google.Cloud.Sql.V1.SslCertsInsertRequest.t() | nil
        }

  defstruct [:instance, :project, :body]

  field :instance, 1, type: :string
  field :project, 2, type: :string
  field :body, 100, type: Google.Cloud.Sql.V1.SslCertsInsertRequest

  def transform_module(), do: nil
end

defmodule Google.Cloud.Sql.V1.SqlSslCertsListRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          instance: String.t(),
          project: String.t()
        }

  defstruct [:instance, :project]

  field :instance, 1, type: :string
  field :project, 2, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Sql.V1.SslCertsInsertRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          common_name: String.t()
        }

  defstruct [:common_name]

  field :common_name, 1, type: :string, json_name: "commonName"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Sql.V1.SslCertsInsertResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          kind: String.t(),
          operation: Google.Cloud.Sql.V1.Operation.t() | nil,
          server_ca_cert: Google.Cloud.Sql.V1.SslCert.t() | nil,
          client_cert: Google.Cloud.Sql.V1.SslCertDetail.t() | nil
        }

  defstruct [:kind, :operation, :server_ca_cert, :client_cert]

  field :kind, 1, type: :string
  field :operation, 2, type: Google.Cloud.Sql.V1.Operation
  field :server_ca_cert, 3, type: Google.Cloud.Sql.V1.SslCert, json_name: "serverCaCert"
  field :client_cert, 4, type: Google.Cloud.Sql.V1.SslCertDetail, json_name: "clientCert"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Sql.V1.SslCertsListResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          kind: String.t(),
          items: [Google.Cloud.Sql.V1.SslCert.t()]
        }

  defstruct [:kind, :items]

  field :kind, 1, type: :string
  field :items, 2, repeated: true, type: Google.Cloud.Sql.V1.SslCert

  def transform_module(), do: nil
end

defmodule Google.Cloud.Sql.V1.SqlSslCertsService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.sql.v1.SqlSslCertsService"

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
