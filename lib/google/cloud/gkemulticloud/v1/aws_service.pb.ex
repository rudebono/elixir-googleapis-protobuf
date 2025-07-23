defmodule Google.Cloud.Gkemulticloud.V1.CreateAwsClusterRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :aws_cluster, 2,
    type: Google.Cloud.Gkemulticloud.V1.AwsCluster,
    json_name: "awsCluster",
    deprecated: false

  field :aws_cluster_id, 3, type: :string, json_name: "awsClusterId", deprecated: false
  field :validate_only, 4, type: :bool, json_name: "validateOnly"
end

defmodule Google.Cloud.Gkemulticloud.V1.UpdateAwsClusterRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :aws_cluster, 1,
    type: Google.Cloud.Gkemulticloud.V1.AwsCluster,
    json_name: "awsCluster",
    deprecated: false

  field :validate_only, 2, type: :bool, json_name: "validateOnly"

  field :update_mask, 4,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Cloud.Gkemulticloud.V1.GetAwsClusterRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Gkemulticloud.V1.ListAwsClustersRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Cloud.Gkemulticloud.V1.ListAwsClustersResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :aws_clusters, 1,
    repeated: true,
    type: Google.Cloud.Gkemulticloud.V1.AwsCluster,
    json_name: "awsClusters"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Gkemulticloud.V1.DeleteAwsClusterRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :validate_only, 2, type: :bool, json_name: "validateOnly"
  field :allow_missing, 3, type: :bool, json_name: "allowMissing"
  field :ignore_errors, 5, type: :bool, json_name: "ignoreErrors", deprecated: false
  field :etag, 4, type: :string
end

defmodule Google.Cloud.Gkemulticloud.V1.CreateAwsNodePoolRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :aws_node_pool, 2,
    type: Google.Cloud.Gkemulticloud.V1.AwsNodePool,
    json_name: "awsNodePool",
    deprecated: false

  field :aws_node_pool_id, 3, type: :string, json_name: "awsNodePoolId", deprecated: false
  field :validate_only, 4, type: :bool, json_name: "validateOnly"
end

defmodule Google.Cloud.Gkemulticloud.V1.UpdateAwsNodePoolRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :aws_node_pool, 1,
    type: Google.Cloud.Gkemulticloud.V1.AwsNodePool,
    json_name: "awsNodePool",
    deprecated: false

  field :validate_only, 2, type: :bool, json_name: "validateOnly"

  field :update_mask, 3,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Cloud.Gkemulticloud.V1.RollbackAwsNodePoolUpdateRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :respect_pdb, 2, type: :bool, json_name: "respectPdb", deprecated: false
end

defmodule Google.Cloud.Gkemulticloud.V1.GetAwsNodePoolRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Gkemulticloud.V1.ListAwsNodePoolsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Cloud.Gkemulticloud.V1.ListAwsNodePoolsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :aws_node_pools, 1,
    repeated: true,
    type: Google.Cloud.Gkemulticloud.V1.AwsNodePool,
    json_name: "awsNodePools"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Gkemulticloud.V1.DeleteAwsNodePoolRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :validate_only, 2, type: :bool, json_name: "validateOnly"
  field :allow_missing, 3, type: :bool, json_name: "allowMissing"
  field :ignore_errors, 5, type: :bool, json_name: "ignoreErrors", deprecated: false
  field :etag, 4, type: :string
end

defmodule Google.Cloud.Gkemulticloud.V1.GetAwsOpenIdConfigRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :aws_cluster, 1, type: :string, json_name: "awsCluster", deprecated: false
end

defmodule Google.Cloud.Gkemulticloud.V1.GetAwsJsonWebKeysRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :aws_cluster, 1, type: :string, json_name: "awsCluster", deprecated: false
end

defmodule Google.Cloud.Gkemulticloud.V1.GetAwsServerConfigRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Gkemulticloud.V1.GenerateAwsAccessTokenRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :aws_cluster, 1, type: :string, json_name: "awsCluster", deprecated: false
end

defmodule Google.Cloud.Gkemulticloud.V1.GenerateAwsAccessTokenResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :access_token, 1, type: :string, json_name: "accessToken", deprecated: false

  field :expiration_time, 2,
    type: Google.Protobuf.Timestamp,
    json_name: "expirationTime",
    deprecated: false
end

defmodule Google.Cloud.Gkemulticloud.V1.GenerateAwsClusterAgentTokenRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :aws_cluster, 1, type: :string, json_name: "awsCluster", deprecated: false
  field :subject_token, 2, type: :string, json_name: "subjectToken", deprecated: false
  field :subject_token_type, 3, type: :string, json_name: "subjectTokenType", deprecated: false
  field :version, 4, type: :string, deprecated: false
  field :node_pool_id, 5, type: :string, json_name: "nodePoolId", deprecated: false
  field :grant_type, 6, type: :string, json_name: "grantType", deprecated: false
  field :audience, 7, type: :string, deprecated: false
  field :scope, 8, type: :string, deprecated: false

  field :requested_token_type, 9,
    type: :string,
    json_name: "requestedTokenType",
    deprecated: false

  field :options, 10, type: :string, deprecated: false
end

defmodule Google.Cloud.Gkemulticloud.V1.GenerateAwsClusterAgentTokenResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :access_token, 1, type: :string, json_name: "accessToken"
  field :expires_in, 2, type: :int32, json_name: "expiresIn"
  field :token_type, 3, type: :string, json_name: "tokenType"
end

defmodule Google.Cloud.Gkemulticloud.V1.AwsClusters.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.gkemulticloud.v1.AwsClusters",
    protoc_gen_elixir_version: "0.15.0"

  rpc :CreateAwsCluster,
      Google.Cloud.Gkemulticloud.V1.CreateAwsClusterRequest,
      Google.Longrunning.Operation

  rpc :UpdateAwsCluster,
      Google.Cloud.Gkemulticloud.V1.UpdateAwsClusterRequest,
      Google.Longrunning.Operation

  rpc :GetAwsCluster,
      Google.Cloud.Gkemulticloud.V1.GetAwsClusterRequest,
      Google.Cloud.Gkemulticloud.V1.AwsCluster

  rpc :ListAwsClusters,
      Google.Cloud.Gkemulticloud.V1.ListAwsClustersRequest,
      Google.Cloud.Gkemulticloud.V1.ListAwsClustersResponse

  rpc :DeleteAwsCluster,
      Google.Cloud.Gkemulticloud.V1.DeleteAwsClusterRequest,
      Google.Longrunning.Operation

  rpc :GenerateAwsClusterAgentToken,
      Google.Cloud.Gkemulticloud.V1.GenerateAwsClusterAgentTokenRequest,
      Google.Cloud.Gkemulticloud.V1.GenerateAwsClusterAgentTokenResponse

  rpc :GenerateAwsAccessToken,
      Google.Cloud.Gkemulticloud.V1.GenerateAwsAccessTokenRequest,
      Google.Cloud.Gkemulticloud.V1.GenerateAwsAccessTokenResponse

  rpc :CreateAwsNodePool,
      Google.Cloud.Gkemulticloud.V1.CreateAwsNodePoolRequest,
      Google.Longrunning.Operation

  rpc :UpdateAwsNodePool,
      Google.Cloud.Gkemulticloud.V1.UpdateAwsNodePoolRequest,
      Google.Longrunning.Operation

  rpc :RollbackAwsNodePoolUpdate,
      Google.Cloud.Gkemulticloud.V1.RollbackAwsNodePoolUpdateRequest,
      Google.Longrunning.Operation

  rpc :GetAwsNodePool,
      Google.Cloud.Gkemulticloud.V1.GetAwsNodePoolRequest,
      Google.Cloud.Gkemulticloud.V1.AwsNodePool

  rpc :ListAwsNodePools,
      Google.Cloud.Gkemulticloud.V1.ListAwsNodePoolsRequest,
      Google.Cloud.Gkemulticloud.V1.ListAwsNodePoolsResponse

  rpc :DeleteAwsNodePool,
      Google.Cloud.Gkemulticloud.V1.DeleteAwsNodePoolRequest,
      Google.Longrunning.Operation

  rpc :GetAwsOpenIdConfig,
      Google.Cloud.Gkemulticloud.V1.GetAwsOpenIdConfigRequest,
      Google.Cloud.Gkemulticloud.V1.AwsOpenIdConfig

  rpc :GetAwsJsonWebKeys,
      Google.Cloud.Gkemulticloud.V1.GetAwsJsonWebKeysRequest,
      Google.Cloud.Gkemulticloud.V1.AwsJsonWebKeys

  rpc :GetAwsServerConfig,
      Google.Cloud.Gkemulticloud.V1.GetAwsServerConfigRequest,
      Google.Cloud.Gkemulticloud.V1.AwsServerConfig
end

defmodule Google.Cloud.Gkemulticloud.V1.AwsClusters.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Gkemulticloud.V1.AwsClusters.Service
end
