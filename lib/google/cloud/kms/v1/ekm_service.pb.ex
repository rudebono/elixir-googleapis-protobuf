defmodule Google.Cloud.Kms.V1.ListEkmConnectionsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t(),
          filter: String.t(),
          order_by: String.t()
        }

  defstruct parent: "",
            page_size: 0,
            page_token: "",
            filter: "",
            order_by: ""

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
end
defmodule Google.Cloud.Kms.V1.ListEkmConnectionsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          ekm_connections: [Google.Cloud.Kms.V1.EkmConnection.t()],
          next_page_token: String.t(),
          total_size: integer
        }

  defstruct ekm_connections: [],
            next_page_token: "",
            total_size: 0

  field :ekm_connections, 1,
    repeated: true,
    type: Google.Cloud.Kms.V1.EkmConnection,
    json_name: "ekmConnections"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :total_size, 3, type: :int32, json_name: "totalSize"
end
defmodule Google.Cloud.Kms.V1.GetEkmConnectionRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Kms.V1.CreateEkmConnectionRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          ekm_connection_id: String.t(),
          ekm_connection: Google.Cloud.Kms.V1.EkmConnection.t() | nil
        }

  defstruct parent: "",
            ekm_connection_id: "",
            ekm_connection: nil

  field :parent, 1, type: :string, deprecated: false
  field :ekm_connection_id, 2, type: :string, json_name: "ekmConnectionId", deprecated: false

  field :ekm_connection, 3,
    type: Google.Cloud.Kms.V1.EkmConnection,
    json_name: "ekmConnection",
    deprecated: false
end
defmodule Google.Cloud.Kms.V1.UpdateEkmConnectionRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          ekm_connection: Google.Cloud.Kms.V1.EkmConnection.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct ekm_connection: nil,
            update_mask: nil

  field :ekm_connection, 1,
    type: Google.Cloud.Kms.V1.EkmConnection,
    json_name: "ekmConnection",
    deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end
defmodule Google.Cloud.Kms.V1.Certificate do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          raw_der: binary,
          parsed: boolean,
          issuer: String.t(),
          subject: String.t(),
          subject_alternative_dns_names: [String.t()],
          not_before_time: Google.Protobuf.Timestamp.t() | nil,
          not_after_time: Google.Protobuf.Timestamp.t() | nil,
          serial_number: String.t(),
          sha256_fingerprint: String.t()
        }

  defstruct raw_der: "",
            parsed: false,
            issuer: "",
            subject: "",
            subject_alternative_dns_names: [],
            not_before_time: nil,
            not_after_time: nil,
            serial_number: "",
            sha256_fingerprint: ""

  field :raw_der, 1, type: :bytes, json_name: "rawDer", deprecated: false
  field :parsed, 2, type: :bool, deprecated: false
  field :issuer, 3, type: :string, deprecated: false
  field :subject, 4, type: :string, deprecated: false

  field :subject_alternative_dns_names, 5,
    repeated: true,
    type: :string,
    json_name: "subjectAlternativeDnsNames",
    deprecated: false

  field :not_before_time, 6,
    type: Google.Protobuf.Timestamp,
    json_name: "notBeforeTime",
    deprecated: false

  field :not_after_time, 7,
    type: Google.Protobuf.Timestamp,
    json_name: "notAfterTime",
    deprecated: false

  field :serial_number, 8, type: :string, json_name: "serialNumber", deprecated: false
  field :sha256_fingerprint, 9, type: :string, json_name: "sha256Fingerprint", deprecated: false
end
defmodule Google.Cloud.Kms.V1.EkmConnection.ServiceResolver do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          service_directory_service: String.t(),
          endpoint_filter: String.t(),
          hostname: String.t(),
          server_certificates: [Google.Cloud.Kms.V1.Certificate.t()]
        }

  defstruct service_directory_service: "",
            endpoint_filter: "",
            hostname: "",
            server_certificates: []

  field :service_directory_service, 1,
    type: :string,
    json_name: "serviceDirectoryService",
    deprecated: false

  field :endpoint_filter, 2, type: :string, json_name: "endpointFilter", deprecated: false
  field :hostname, 3, type: :string, deprecated: false

  field :server_certificates, 4,
    repeated: true,
    type: Google.Cloud.Kms.V1.Certificate,
    json_name: "serverCertificates",
    deprecated: false
end
defmodule Google.Cloud.Kms.V1.EkmConnection do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          create_time: Google.Protobuf.Timestamp.t() | nil,
          service_resolvers: [Google.Cloud.Kms.V1.EkmConnection.ServiceResolver.t()],
          etag: String.t()
        }

  defstruct name: "",
            create_time: nil,
            service_resolvers: [],
            etag: ""

  field :name, 1, type: :string, deprecated: false

  field :create_time, 2,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :service_resolvers, 3,
    repeated: true,
    type: Google.Cloud.Kms.V1.EkmConnection.ServiceResolver,
    json_name: "serviceResolvers"

  field :etag, 5, type: :string
end
defmodule Google.Cloud.Kms.V1.EkmService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.kms.v1.EkmService"

  rpc :ListEkmConnections,
      Google.Cloud.Kms.V1.ListEkmConnectionsRequest,
      Google.Cloud.Kms.V1.ListEkmConnectionsResponse

  rpc :GetEkmConnection,
      Google.Cloud.Kms.V1.GetEkmConnectionRequest,
      Google.Cloud.Kms.V1.EkmConnection

  rpc :CreateEkmConnection,
      Google.Cloud.Kms.V1.CreateEkmConnectionRequest,
      Google.Cloud.Kms.V1.EkmConnection

  rpc :UpdateEkmConnection,
      Google.Cloud.Kms.V1.UpdateEkmConnectionRequest,
      Google.Cloud.Kms.V1.EkmConnection
end

defmodule Google.Cloud.Kms.V1.EkmService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Kms.V1.EkmService.Service
end
