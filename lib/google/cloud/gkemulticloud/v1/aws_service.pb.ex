defmodule Google.Cloud.Gkemulticloud.V1.CreateAwsClusterRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          aws_cluster: Google.Cloud.Gkemulticloud.V1.AwsCluster.t() | nil,
          aws_cluster_id: String.t(),
          validate_only: boolean
        }

  defstruct parent: "",
            aws_cluster: nil,
            aws_cluster_id: "",
            validate_only: false

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          aws_cluster: Google.Cloud.Gkemulticloud.V1.AwsCluster.t() | nil,
          validate_only: boolean,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct aws_cluster: nil,
            validate_only: false,
            update_mask: nil

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Gkemulticloud.V1.ListAwsClustersRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct parent: "",
            page_size: 0,
            page_token: ""

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end
defmodule Google.Cloud.Gkemulticloud.V1.ListAwsClustersResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          aws_clusters: [Google.Cloud.Gkemulticloud.V1.AwsCluster.t()],
          next_page_token: String.t()
        }

  defstruct aws_clusters: [],
            next_page_token: ""

  field :aws_clusters, 1,
    repeated: true,
    type: Google.Cloud.Gkemulticloud.V1.AwsCluster,
    json_name: "awsClusters"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Google.Cloud.Gkemulticloud.V1.DeleteAwsClusterRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          validate_only: boolean,
          allow_missing: boolean,
          etag: String.t()
        }

  defstruct name: "",
            validate_only: false,
            allow_missing: false,
            etag: ""

  field :name, 1, type: :string, deprecated: false
  field :validate_only, 2, type: :bool, json_name: "validateOnly"
  field :allow_missing, 3, type: :bool, json_name: "allowMissing"
  field :etag, 4, type: :string
end
defmodule Google.Cloud.Gkemulticloud.V1.CreateAwsNodePoolRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          aws_node_pool: Google.Cloud.Gkemulticloud.V1.AwsNodePool.t() | nil,
          aws_node_pool_id: String.t(),
          validate_only: boolean
        }

  defstruct parent: "",
            aws_node_pool: nil,
            aws_node_pool_id: "",
            validate_only: false

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          aws_node_pool: Google.Cloud.Gkemulticloud.V1.AwsNodePool.t() | nil,
          validate_only: boolean,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct aws_node_pool: nil,
            validate_only: false,
            update_mask: nil

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
defmodule Google.Cloud.Gkemulticloud.V1.GetAwsNodePoolRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Gkemulticloud.V1.ListAwsNodePoolsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct parent: "",
            page_size: 0,
            page_token: ""

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end
defmodule Google.Cloud.Gkemulticloud.V1.ListAwsNodePoolsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          aws_node_pools: [Google.Cloud.Gkemulticloud.V1.AwsNodePool.t()],
          next_page_token: String.t()
        }

  defstruct aws_node_pools: [],
            next_page_token: ""

  field :aws_node_pools, 1,
    repeated: true,
    type: Google.Cloud.Gkemulticloud.V1.AwsNodePool,
    json_name: "awsNodePools"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Google.Cloud.Gkemulticloud.V1.DeleteAwsNodePoolRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          validate_only: boolean,
          allow_missing: boolean,
          etag: String.t()
        }

  defstruct name: "",
            validate_only: false,
            allow_missing: false,
            etag: ""

  field :name, 1, type: :string, deprecated: false
  field :validate_only, 2, type: :bool, json_name: "validateOnly"
  field :allow_missing, 3, type: :bool, json_name: "allowMissing"
  field :etag, 4, type: :string
end
defmodule Google.Cloud.Gkemulticloud.V1.GetAwsServerConfigRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Gkemulticloud.V1.GenerateAwsAccessTokenRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          aws_cluster: String.t()
        }

  defstruct aws_cluster: ""

  field :aws_cluster, 1, type: :string, json_name: "awsCluster", deprecated: false
end
defmodule Google.Cloud.Gkemulticloud.V1.GenerateAwsAccessTokenResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          access_token: String.t(),
          expiration_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct access_token: "",
            expiration_time: nil

  field :access_token, 1, type: :string, json_name: "accessToken", deprecated: false

  field :expiration_time, 2,
    type: Google.Protobuf.Timestamp,
    json_name: "expirationTime",
    deprecated: false
end
defmodule Google.Cloud.Gkemulticloud.V1.AwsClusters.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.gkemulticloud.v1.AwsClusters"

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

  rpc :GenerateAwsAccessToken,
      Google.Cloud.Gkemulticloud.V1.GenerateAwsAccessTokenRequest,
      Google.Cloud.Gkemulticloud.V1.GenerateAwsAccessTokenResponse

  rpc :CreateAwsNodePool,
      Google.Cloud.Gkemulticloud.V1.CreateAwsNodePoolRequest,
      Google.Longrunning.Operation

  rpc :UpdateAwsNodePool,
      Google.Cloud.Gkemulticloud.V1.UpdateAwsNodePoolRequest,
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

  rpc :GetAwsServerConfig,
      Google.Cloud.Gkemulticloud.V1.GetAwsServerConfigRequest,
      Google.Cloud.Gkemulticloud.V1.AwsServerConfig
end

defmodule Google.Cloud.Gkemulticloud.V1.AwsClusters.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Gkemulticloud.V1.AwsClusters.Service
end
