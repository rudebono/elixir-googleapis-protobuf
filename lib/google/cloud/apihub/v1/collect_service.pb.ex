defmodule Google.Cloud.Apihub.V1.CollectionType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :COLLECTION_TYPE_UNSPECIFIED, 0
  field :COLLECTION_TYPE_UPSERT, 1
  field :COLLECTION_TYPE_DELETE, 2
end

defmodule Google.Cloud.Apihub.V1.CollectApiDataRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :location, 1, type: :string, deprecated: false

  field :collection_type, 2,
    type: Google.Cloud.Apihub.V1.CollectionType,
    json_name: "collectionType",
    enum: true,
    deprecated: false

  field :plugin_instance, 3, type: :string, json_name: "pluginInstance", deprecated: false
  field :action_id, 4, type: :string, json_name: "actionId", deprecated: false

  field :api_data, 5,
    type: Google.Cloud.Apihub.V1.ApiData,
    json_name: "apiData",
    deprecated: false
end

defmodule Google.Cloud.Apihub.V1.ApiData do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :Data, 0

  field :api_metadata_list, 1,
    type: Google.Cloud.Apihub.V1.ApiMetadataList,
    json_name: "apiMetadataList",
    oneof: 0,
    deprecated: false
end

defmodule Google.Cloud.Apihub.V1.ApiMetadataList do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :api_metadata, 1,
    repeated: true,
    type: Google.Cloud.Apihub.V1.APIMetadata,
    json_name: "apiMetadata",
    deprecated: false
end

defmodule Google.Cloud.Apihub.V1.APIMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :api, 1, type: Google.Cloud.Apihub.V1.Api, deprecated: false

  field :versions, 2,
    repeated: true,
    type: Google.Cloud.Apihub.V1.VersionMetadata,
    deprecated: false

  field :original_id, 3, type: :string, json_name: "originalId", deprecated: false

  field :original_create_time, 4,
    type: Google.Protobuf.Timestamp,
    json_name: "originalCreateTime",
    deprecated: false

  field :original_update_time, 5,
    type: Google.Protobuf.Timestamp,
    json_name: "originalUpdateTime",
    deprecated: false
end

defmodule Google.Cloud.Apihub.V1.VersionMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :version, 1, type: Google.Cloud.Apihub.V1.Version, deprecated: false
  field :specs, 2, repeated: true, type: Google.Cloud.Apihub.V1.SpecMetadata, deprecated: false

  field :deployments, 4,
    repeated: true,
    type: Google.Cloud.Apihub.V1.DeploymentMetadata,
    deprecated: false

  field :original_id, 5, type: :string, json_name: "originalId", deprecated: false

  field :original_create_time, 6,
    type: Google.Protobuf.Timestamp,
    json_name: "originalCreateTime",
    deprecated: false

  field :original_update_time, 7,
    type: Google.Protobuf.Timestamp,
    json_name: "originalUpdateTime",
    deprecated: false
end

defmodule Google.Cloud.Apihub.V1.SpecMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :spec, 1, type: Google.Cloud.Apihub.V1.Spec, deprecated: false
  field :original_id, 2, type: :string, json_name: "originalId", deprecated: false

  field :original_create_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "originalCreateTime",
    deprecated: false

  field :original_update_time, 4,
    type: Google.Protobuf.Timestamp,
    json_name: "originalUpdateTime",
    deprecated: false
end

defmodule Google.Cloud.Apihub.V1.DeploymentMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :deployment, 1, type: Google.Cloud.Apihub.V1.Deployment, deprecated: false
  field :original_id, 2, type: :string, json_name: "originalId", deprecated: false

  field :original_create_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "originalCreateTime",
    deprecated: false

  field :original_update_time, 4,
    type: Google.Protobuf.Timestamp,
    json_name: "originalUpdateTime",
    deprecated: false
end

defmodule Google.Cloud.Apihub.V1.CollectApiDataResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Cloud.Apihub.V1.ApiHubCollect.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.apihub.v1.ApiHubCollect",
    protoc_gen_elixir_version: "0.15.0"

  rpc :CollectApiData, Google.Cloud.Apihub.V1.CollectApiDataRequest, Google.Longrunning.Operation
end

defmodule Google.Cloud.Apihub.V1.ApiHubCollect.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Apihub.V1.ApiHubCollect.Service
end
