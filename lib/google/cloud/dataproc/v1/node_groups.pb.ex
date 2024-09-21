defmodule Google.Cloud.Dataproc.V1.CreateNodeGroupRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :node_group, 2,
    type: Google.Cloud.Dataproc.V1.NodeGroup,
    json_name: "nodeGroup",
    deprecated: false

  field :node_group_id, 4, type: :string, json_name: "nodeGroupId", deprecated: false
  field :request_id, 3, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Dataproc.V1.ResizeNodeGroupRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :size, 2, type: :int32, deprecated: false
  field :request_id, 3, type: :string, json_name: "requestId", deprecated: false

  field :graceful_decommission_timeout, 4,
    type: Google.Protobuf.Duration,
    json_name: "gracefulDecommissionTimeout",
    deprecated: false
end

defmodule Google.Cloud.Dataproc.V1.GetNodeGroupRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Dataproc.V1.NodeGroupController.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.dataproc.v1.NodeGroupController",
    protoc_gen_elixir_version: "0.13.0"

  rpc :CreateNodeGroup,
      Google.Cloud.Dataproc.V1.CreateNodeGroupRequest,
      Google.Longrunning.Operation

  rpc :ResizeNodeGroup,
      Google.Cloud.Dataproc.V1.ResizeNodeGroupRequest,
      Google.Longrunning.Operation

  rpc :GetNodeGroup,
      Google.Cloud.Dataproc.V1.GetNodeGroupRequest,
      Google.Cloud.Dataproc.V1.NodeGroup
end

defmodule Google.Cloud.Dataproc.V1.NodeGroupController.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Dataproc.V1.NodeGroupController.Service
end