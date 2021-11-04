defmodule Google.Cloud.Gaming.Allocationendpoint.V1alpha.AllocationRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          realm: String.t(),
          default_game_server_deployment: String.t(),
          game_server_selectors: [
            Google.Cloud.Gaming.Allocationendpoint.V1alpha.GameServerSelector.t()
          ],
          metadata: Google.Cloud.Gaming.Allocationendpoint.V1alpha.MetaPatch.t() | nil
        }

  defstruct [:realm, :default_game_server_deployment, :game_server_selectors, :metadata]

  field :realm, 1, type: :string

  field :default_game_server_deployment, 2,
    type: :string,
    json_name: "defaultGameServerDeployment"

  field :game_server_selectors, 3,
    repeated: true,
    type: Google.Cloud.Gaming.Allocationendpoint.V1alpha.GameServerSelector,
    json_name: "gameServerSelectors"

  field :metadata, 4, type: Google.Cloud.Gaming.Allocationendpoint.V1alpha.MetaPatch

  def transform_module(), do: nil
end

defmodule Google.Cloud.Gaming.Allocationendpoint.V1alpha.AllocationResponse.GameServerStatusPort do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          port: integer
        }

  defstruct [:name, :port]

  field :name, 1, type: :string
  field :port, 2, type: :int32

  def transform_module(), do: nil
end

defmodule Google.Cloud.Gaming.Allocationendpoint.V1alpha.AllocationResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          game_server_name: String.t(),
          ports: [
            Google.Cloud.Gaming.Allocationendpoint.V1alpha.AllocationResponse.GameServerStatusPort.t()
          ],
          address: String.t(),
          node_name: String.t(),
          game_server_cluster_name: String.t(),
          deployment_name: String.t()
        }

  defstruct [
    :game_server_name,
    :ports,
    :address,
    :node_name,
    :game_server_cluster_name,
    :deployment_name
  ]

  field :game_server_name, 1, type: :string, json_name: "gameServerName"

  field :ports, 2,
    repeated: true,
    type: Google.Cloud.Gaming.Allocationendpoint.V1alpha.AllocationResponse.GameServerStatusPort

  field :address, 3, type: :string
  field :node_name, 4, type: :string, json_name: "nodeName"
  field :game_server_cluster_name, 5, type: :string, json_name: "gameServerClusterName"
  field :deployment_name, 6, type: :string, json_name: "deploymentName"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Gaming.Allocationendpoint.V1alpha.MetaPatch.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Gaming.Allocationendpoint.V1alpha.MetaPatch.AnnotationsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Gaming.Allocationendpoint.V1alpha.MetaPatch do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          labels: %{String.t() => String.t()},
          annotations: %{String.t() => String.t()}
        }

  defstruct [:labels, :annotations]

  field :labels, 1,
    repeated: true,
    type: Google.Cloud.Gaming.Allocationendpoint.V1alpha.MetaPatch.LabelsEntry,
    map: true

  field :annotations, 2,
    repeated: true,
    type: Google.Cloud.Gaming.Allocationendpoint.V1alpha.MetaPatch.AnnotationsEntry,
    map: true

  def transform_module(), do: nil
end

defmodule Google.Cloud.Gaming.Allocationendpoint.V1alpha.GameServerSelector.MatchLabelsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Gaming.Allocationendpoint.V1alpha.GameServerSelector do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          match_labels: %{String.t() => String.t()}
        }

  defstruct [:match_labels]

  field :match_labels, 1,
    repeated: true,
    type: Google.Cloud.Gaming.Allocationendpoint.V1alpha.GameServerSelector.MatchLabelsEntry,
    json_name: "matchLabels",
    map: true

  def transform_module(), do: nil
end

defmodule Google.Cloud.Gaming.Allocationendpoint.V1alpha.AllocationEndpointService.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.cloud.gaming.allocationendpoint.v1alpha.AllocationEndpointService"

  rpc :Allocate,
      Google.Cloud.Gaming.Allocationendpoint.V1alpha.AllocationRequest,
      Google.Cloud.Gaming.Allocationendpoint.V1alpha.AllocationResponse
end

defmodule Google.Cloud.Gaming.Allocationendpoint.V1alpha.AllocationEndpointService.Stub do
  @moduledoc false
  use GRPC.Stub,
    service: Google.Cloud.Gaming.Allocationendpoint.V1alpha.AllocationEndpointService.Service
end
