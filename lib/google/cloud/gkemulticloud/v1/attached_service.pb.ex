defmodule Google.Cloud.Gkemulticloud.V1.GenerateAttachedClusterInstallManifestRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :attached_cluster_id, 2, type: :string, json_name: "attachedClusterId", deprecated: false
  field :platform_version, 3, type: :string, json_name: "platformVersion", deprecated: false
end

defmodule Google.Cloud.Gkemulticloud.V1.GenerateAttachedClusterInstallManifestResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :manifest, 1, type: :string
end

defmodule Google.Cloud.Gkemulticloud.V1.CreateAttachedClusterRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :attached_cluster, 2,
    type: Google.Cloud.Gkemulticloud.V1.AttachedCluster,
    json_name: "attachedCluster",
    deprecated: false

  field :attached_cluster_id, 3, type: :string, json_name: "attachedClusterId", deprecated: false
  field :validate_only, 4, type: :bool, json_name: "validateOnly"
end

defmodule Google.Cloud.Gkemulticloud.V1.ImportAttachedClusterRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :validate_only, 2, type: :bool, json_name: "validateOnly"
  field :fleet_membership, 3, type: :string, json_name: "fleetMembership", deprecated: false
  field :platform_version, 4, type: :string, json_name: "platformVersion", deprecated: false
  field :distribution, 5, type: :string, deprecated: false
end

defmodule Google.Cloud.Gkemulticloud.V1.UpdateAttachedClusterRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :attached_cluster, 1,
    type: Google.Cloud.Gkemulticloud.V1.AttachedCluster,
    json_name: "attachedCluster",
    deprecated: false

  field :validate_only, 2, type: :bool, json_name: "validateOnly"

  field :update_mask, 3,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Cloud.Gkemulticloud.V1.GetAttachedClusterRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Gkemulticloud.V1.ListAttachedClustersRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Cloud.Gkemulticloud.V1.ListAttachedClustersResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :attached_clusters, 1,
    repeated: true,
    type: Google.Cloud.Gkemulticloud.V1.AttachedCluster,
    json_name: "attachedClusters"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Gkemulticloud.V1.DeleteAttachedClusterRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :validate_only, 2, type: :bool, json_name: "validateOnly"
  field :allow_missing, 3, type: :bool, json_name: "allowMissing"
  field :ignore_errors, 5, type: :bool, json_name: "ignoreErrors"
  field :etag, 4, type: :string
end

defmodule Google.Cloud.Gkemulticloud.V1.GetAttachedServerConfigRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Gkemulticloud.V1.AttachedClusters.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.cloud.gkemulticloud.v1.AttachedClusters",
    protoc_gen_elixir_version: "0.11.0"

  rpc :CreateAttachedCluster,
      Google.Cloud.Gkemulticloud.V1.CreateAttachedClusterRequest,
      Google.Longrunning.Operation

  rpc :UpdateAttachedCluster,
      Google.Cloud.Gkemulticloud.V1.UpdateAttachedClusterRequest,
      Google.Longrunning.Operation

  rpc :ImportAttachedCluster,
      Google.Cloud.Gkemulticloud.V1.ImportAttachedClusterRequest,
      Google.Longrunning.Operation

  rpc :GetAttachedCluster,
      Google.Cloud.Gkemulticloud.V1.GetAttachedClusterRequest,
      Google.Cloud.Gkemulticloud.V1.AttachedCluster

  rpc :ListAttachedClusters,
      Google.Cloud.Gkemulticloud.V1.ListAttachedClustersRequest,
      Google.Cloud.Gkemulticloud.V1.ListAttachedClustersResponse

  rpc :DeleteAttachedCluster,
      Google.Cloud.Gkemulticloud.V1.DeleteAttachedClusterRequest,
      Google.Longrunning.Operation

  rpc :GetAttachedServerConfig,
      Google.Cloud.Gkemulticloud.V1.GetAttachedServerConfigRequest,
      Google.Cloud.Gkemulticloud.V1.AttachedServerConfig

  rpc :GenerateAttachedClusterInstallManifest,
      Google.Cloud.Gkemulticloud.V1.GenerateAttachedClusterInstallManifestRequest,
      Google.Cloud.Gkemulticloud.V1.GenerateAttachedClusterInstallManifestResponse
end

defmodule Google.Cloud.Gkemulticloud.V1.AttachedClusters.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Gkemulticloud.V1.AttachedClusters.Service
end