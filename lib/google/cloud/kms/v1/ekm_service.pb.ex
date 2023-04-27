defmodule Google.Cloud.Kms.V1.EkmConnection.KeyManagementMode do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :KEY_MANAGEMENT_MODE_UNSPECIFIED, 0
  field :MANUAL, 1
  field :CLOUD_KMS, 2
end

defmodule Google.Cloud.Kms.V1.ListEkmConnectionsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
end

defmodule Google.Cloud.Kms.V1.ListEkmConnectionsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :ekm_connections, 1,
    repeated: true,
    type: Google.Cloud.Kms.V1.EkmConnection,
    json_name: "ekmConnections"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :total_size, 3, type: :int32, json_name: "totalSize"
end

defmodule Google.Cloud.Kms.V1.GetEkmConnectionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Kms.V1.CreateEkmConnectionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :ekm_connection_id, 2, type: :string, json_name: "ekmConnectionId", deprecated: false

  field :ekm_connection, 3,
    type: Google.Cloud.Kms.V1.EkmConnection,
    json_name: "ekmConnection",
    deprecated: false
end

defmodule Google.Cloud.Kms.V1.UpdateEkmConnectionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :ekm_connection, 1,
    type: Google.Cloud.Kms.V1.EkmConnection,
    json_name: "ekmConnection",
    deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Cloud.Kms.V1.GetEkmConfigRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Kms.V1.UpdateEkmConfigRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :ekm_config, 1,
    type: Google.Cloud.Kms.V1.EkmConfig,
    json_name: "ekmConfig",
    deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Cloud.Kms.V1.Certificate do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :create_time, 2,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :service_resolvers, 3,
    repeated: true,
    type: Google.Cloud.Kms.V1.EkmConnection.ServiceResolver,
    json_name: "serviceResolvers"

  field :etag, 5, type: :string, deprecated: false

  field :key_management_mode, 6,
    type: Google.Cloud.Kms.V1.EkmConnection.KeyManagementMode,
    json_name: "keyManagementMode",
    enum: true,
    deprecated: false

  field :crypto_space_path, 7, type: :string, json_name: "cryptoSpacePath", deprecated: false
end

defmodule Google.Cloud.Kms.V1.EkmConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :default_ekm_connection, 2,
    type: :string,
    json_name: "defaultEkmConnection",
    deprecated: false
end

defmodule Google.Cloud.Kms.V1.EkmService.Service do
  @moduledoc false

  use GRPC.Service, name: "google.cloud.kms.v1.EkmService", protoc_gen_elixir_version: "0.12.0"

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

  rpc :GetEkmConfig, Google.Cloud.Kms.V1.GetEkmConfigRequest, Google.Cloud.Kms.V1.EkmConfig

  rpc :UpdateEkmConfig, Google.Cloud.Kms.V1.UpdateEkmConfigRequest, Google.Cloud.Kms.V1.EkmConfig
end

defmodule Google.Cloud.Kms.V1.EkmService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Kms.V1.EkmService.Service
end