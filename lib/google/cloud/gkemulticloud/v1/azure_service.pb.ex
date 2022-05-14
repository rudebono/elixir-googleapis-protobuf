defmodule Google.Cloud.Gkemulticloud.V1.CreateAzureClusterRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :azure_cluster, 2,
    type: Google.Cloud.Gkemulticloud.V1.AzureCluster,
    json_name: "azureCluster",
    deprecated: false

  field :azure_cluster_id, 3, type: :string, json_name: "azureClusterId", deprecated: false
  field :validate_only, 4, type: :bool, json_name: "validateOnly"
end
defmodule Google.Cloud.Gkemulticloud.V1.UpdateAzureClusterRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :azure_cluster, 1,
    type: Google.Cloud.Gkemulticloud.V1.AzureCluster,
    json_name: "azureCluster",
    deprecated: false

  field :validate_only, 2, type: :bool, json_name: "validateOnly"

  field :update_mask, 4,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end
defmodule Google.Cloud.Gkemulticloud.V1.GetAzureClusterRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Gkemulticloud.V1.ListAzureClustersRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end
defmodule Google.Cloud.Gkemulticloud.V1.ListAzureClustersResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :azure_clusters, 1,
    repeated: true,
    type: Google.Cloud.Gkemulticloud.V1.AzureCluster,
    json_name: "azureClusters"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Google.Cloud.Gkemulticloud.V1.DeleteAzureClusterRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :allow_missing, 2, type: :bool, json_name: "allowMissing"
  field :validate_only, 3, type: :bool, json_name: "validateOnly"
  field :etag, 4, type: :string
end
defmodule Google.Cloud.Gkemulticloud.V1.CreateAzureNodePoolRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :azure_node_pool, 2,
    type: Google.Cloud.Gkemulticloud.V1.AzureNodePool,
    json_name: "azureNodePool",
    deprecated: false

  field :azure_node_pool_id, 3, type: :string, json_name: "azureNodePoolId", deprecated: false
  field :validate_only, 4, type: :bool, json_name: "validateOnly"
end
defmodule Google.Cloud.Gkemulticloud.V1.UpdateAzureNodePoolRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :azure_node_pool, 1,
    type: Google.Cloud.Gkemulticloud.V1.AzureNodePool,
    json_name: "azureNodePool",
    deprecated: false

  field :validate_only, 2, type: :bool, json_name: "validateOnly"

  field :update_mask, 3,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end
defmodule Google.Cloud.Gkemulticloud.V1.GetAzureNodePoolRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Gkemulticloud.V1.ListAzureNodePoolsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end
defmodule Google.Cloud.Gkemulticloud.V1.ListAzureNodePoolsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :azure_node_pools, 1,
    repeated: true,
    type: Google.Cloud.Gkemulticloud.V1.AzureNodePool,
    json_name: "azureNodePools"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Google.Cloud.Gkemulticloud.V1.DeleteAzureNodePoolRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :validate_only, 2, type: :bool, json_name: "validateOnly"
  field :allow_missing, 3, type: :bool, json_name: "allowMissing"
  field :etag, 4, type: :string
end
defmodule Google.Cloud.Gkemulticloud.V1.GetAzureServerConfigRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Gkemulticloud.V1.CreateAzureClientRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :azure_client, 2,
    type: Google.Cloud.Gkemulticloud.V1.AzureClient,
    json_name: "azureClient",
    deprecated: false

  field :azure_client_id, 4, type: :string, json_name: "azureClientId", deprecated: false
  field :validate_only, 3, type: :bool, json_name: "validateOnly"
end
defmodule Google.Cloud.Gkemulticloud.V1.GetAzureClientRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Gkemulticloud.V1.ListAzureClientsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end
defmodule Google.Cloud.Gkemulticloud.V1.ListAzureClientsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :azure_clients, 1,
    repeated: true,
    type: Google.Cloud.Gkemulticloud.V1.AzureClient,
    json_name: "azureClients"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Google.Cloud.Gkemulticloud.V1.DeleteAzureClientRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :allow_missing, 2, type: :bool, json_name: "allowMissing"
  field :validate_only, 3, type: :bool, json_name: "validateOnly"
end
defmodule Google.Cloud.Gkemulticloud.V1.GenerateAzureAccessTokenRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :azure_cluster, 1, type: :string, json_name: "azureCluster", deprecated: false
end
defmodule Google.Cloud.Gkemulticloud.V1.GenerateAzureAccessTokenResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :access_token, 1, type: :string, json_name: "accessToken", deprecated: false

  field :expiration_time, 2,
    type: Google.Protobuf.Timestamp,
    json_name: "expirationTime",
    deprecated: false
end
defmodule Google.Cloud.Gkemulticloud.V1.AzureClusters.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.cloud.gkemulticloud.v1.AzureClusters",
    protoc_gen_elixir_version: "0.10.0"

  rpc :CreateAzureClient,
      Google.Cloud.Gkemulticloud.V1.CreateAzureClientRequest,
      Google.Longrunning.Operation

  rpc :GetAzureClient,
      Google.Cloud.Gkemulticloud.V1.GetAzureClientRequest,
      Google.Cloud.Gkemulticloud.V1.AzureClient

  rpc :ListAzureClients,
      Google.Cloud.Gkemulticloud.V1.ListAzureClientsRequest,
      Google.Cloud.Gkemulticloud.V1.ListAzureClientsResponse

  rpc :DeleteAzureClient,
      Google.Cloud.Gkemulticloud.V1.DeleteAzureClientRequest,
      Google.Longrunning.Operation

  rpc :CreateAzureCluster,
      Google.Cloud.Gkemulticloud.V1.CreateAzureClusterRequest,
      Google.Longrunning.Operation

  rpc :UpdateAzureCluster,
      Google.Cloud.Gkemulticloud.V1.UpdateAzureClusterRequest,
      Google.Longrunning.Operation

  rpc :GetAzureCluster,
      Google.Cloud.Gkemulticloud.V1.GetAzureClusterRequest,
      Google.Cloud.Gkemulticloud.V1.AzureCluster

  rpc :ListAzureClusters,
      Google.Cloud.Gkemulticloud.V1.ListAzureClustersRequest,
      Google.Cloud.Gkemulticloud.V1.ListAzureClustersResponse

  rpc :DeleteAzureCluster,
      Google.Cloud.Gkemulticloud.V1.DeleteAzureClusterRequest,
      Google.Longrunning.Operation

  rpc :GenerateAzureAccessToken,
      Google.Cloud.Gkemulticloud.V1.GenerateAzureAccessTokenRequest,
      Google.Cloud.Gkemulticloud.V1.GenerateAzureAccessTokenResponse

  rpc :CreateAzureNodePool,
      Google.Cloud.Gkemulticloud.V1.CreateAzureNodePoolRequest,
      Google.Longrunning.Operation

  rpc :UpdateAzureNodePool,
      Google.Cloud.Gkemulticloud.V1.UpdateAzureNodePoolRequest,
      Google.Longrunning.Operation

  rpc :GetAzureNodePool,
      Google.Cloud.Gkemulticloud.V1.GetAzureNodePoolRequest,
      Google.Cloud.Gkemulticloud.V1.AzureNodePool

  rpc :ListAzureNodePools,
      Google.Cloud.Gkemulticloud.V1.ListAzureNodePoolsRequest,
      Google.Cloud.Gkemulticloud.V1.ListAzureNodePoolsResponse

  rpc :DeleteAzureNodePool,
      Google.Cloud.Gkemulticloud.V1.DeleteAzureNodePoolRequest,
      Google.Longrunning.Operation

  rpc :GetAzureServerConfig,
      Google.Cloud.Gkemulticloud.V1.GetAzureServerConfigRequest,
      Google.Cloud.Gkemulticloud.V1.AzureServerConfig
end

defmodule Google.Cloud.Gkemulticloud.V1.AzureClusters.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Gkemulticloud.V1.AzureClusters.Service
end
