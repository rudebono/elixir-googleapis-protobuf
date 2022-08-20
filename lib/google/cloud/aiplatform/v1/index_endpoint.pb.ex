defmodule Google.Cloud.Aiplatform.V1.IndexEndpoint.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Aiplatform.V1.IndexEndpoint do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :display_name, 2, type: :string, json_name: "displayName", deprecated: false
  field :description, 3, type: :string

  field :deployed_indexes, 4,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1.DeployedIndex,
    json_name: "deployedIndexes",
    deprecated: false

  field :etag, 5, type: :string

  field :labels, 6,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1.IndexEndpoint.LabelsEntry,
    map: true

  field :create_time, 7,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 8,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :network, 9, type: :string, deprecated: false

  field :enable_private_service_connect, 10,
    type: :bool,
    json_name: "enablePrivateServiceConnect",
    deprecated: true
end

defmodule Google.Cloud.Aiplatform.V1.DeployedIndex do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :id, 1, type: :string, deprecated: false
  field :index, 2, type: :string, deprecated: false
  field :display_name, 3, type: :string, json_name: "displayName"

  field :create_time, 4,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :private_endpoints, 5,
    type: Google.Cloud.Aiplatform.V1.IndexPrivateEndpoints,
    json_name: "privateEndpoints",
    deprecated: false

  field :index_sync_time, 6,
    type: Google.Protobuf.Timestamp,
    json_name: "indexSyncTime",
    deprecated: false

  field :automatic_resources, 7,
    type: Google.Cloud.Aiplatform.V1.AutomaticResources,
    json_name: "automaticResources",
    deprecated: false

  field :dedicated_resources, 16,
    type: Google.Cloud.Aiplatform.V1.DedicatedResources,
    json_name: "dedicatedResources",
    deprecated: false

  field :enable_access_logging, 8,
    type: :bool,
    json_name: "enableAccessLogging",
    deprecated: false

  field :deployed_index_auth_config, 9,
    type: Google.Cloud.Aiplatform.V1.DeployedIndexAuthConfig,
    json_name: "deployedIndexAuthConfig",
    deprecated: false

  field :reserved_ip_ranges, 10,
    repeated: true,
    type: :string,
    json_name: "reservedIpRanges",
    deprecated: false

  field :deployment_group, 11, type: :string, json_name: "deploymentGroup", deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.DeployedIndexAuthConfig.AuthProvider do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :audiences, 1, repeated: true, type: :string
  field :allowed_issuers, 2, repeated: true, type: :string, json_name: "allowedIssuers"
end

defmodule Google.Cloud.Aiplatform.V1.DeployedIndexAuthConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :auth_provider, 1,
    type: Google.Cloud.Aiplatform.V1.DeployedIndexAuthConfig.AuthProvider,
    json_name: "authProvider"
end

defmodule Google.Cloud.Aiplatform.V1.IndexPrivateEndpoints do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :match_grpc_address, 1, type: :string, json_name: "matchGrpcAddress", deprecated: false
  field :service_attachment, 2, type: :string, json_name: "serviceAttachment", deprecated: false
end