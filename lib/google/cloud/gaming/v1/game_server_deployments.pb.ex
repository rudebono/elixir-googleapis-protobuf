defmodule Google.Cloud.Gaming.V1.ListGameServerDeploymentsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t(),
          filter: String.t(),
          order_by: String.t()
        }

  defstruct [:parent, :page_size, :page_token, :filter, :order_by]

  field :parent, 1, type: :string
  field :page_size, 2, type: :int32
  field :page_token, 3, type: :string
  field :filter, 4, type: :string
  field :order_by, 5, type: :string
end

defmodule Google.Cloud.Gaming.V1.ListGameServerDeploymentsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          game_server_deployments: [Google.Cloud.Gaming.V1.GameServerDeployment.t()],
          next_page_token: String.t(),
          unreachable: [String.t()]
        }

  defstruct [:game_server_deployments, :next_page_token, :unreachable]

  field :game_server_deployments, 1,
    repeated: true,
    type: Google.Cloud.Gaming.V1.GameServerDeployment

  field :next_page_token, 2, type: :string
  field :unreachable, 4, repeated: true, type: :string
end

defmodule Google.Cloud.Gaming.V1.GetGameServerDeploymentRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Gaming.V1.GetGameServerDeploymentRolloutRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Gaming.V1.CreateGameServerDeploymentRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          deployment_id: String.t(),
          game_server_deployment: Google.Cloud.Gaming.V1.GameServerDeployment.t() | nil
        }

  defstruct [:parent, :deployment_id, :game_server_deployment]

  field :parent, 1, type: :string
  field :deployment_id, 2, type: :string
  field :game_server_deployment, 3, type: Google.Cloud.Gaming.V1.GameServerDeployment
end

defmodule Google.Cloud.Gaming.V1.DeleteGameServerDeploymentRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Gaming.V1.UpdateGameServerDeploymentRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          game_server_deployment: Google.Cloud.Gaming.V1.GameServerDeployment.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:game_server_deployment, :update_mask]

  field :game_server_deployment, 1, type: Google.Cloud.Gaming.V1.GameServerDeployment
  field :update_mask, 2, type: Google.Protobuf.FieldMask
end

defmodule Google.Cloud.Gaming.V1.UpdateGameServerDeploymentRolloutRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          rollout: Google.Cloud.Gaming.V1.GameServerDeploymentRollout.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:rollout, :update_mask]

  field :rollout, 1, type: Google.Cloud.Gaming.V1.GameServerDeploymentRollout
  field :update_mask, 2, type: Google.Protobuf.FieldMask
end

defmodule Google.Cloud.Gaming.V1.FetchDeploymentStateRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Gaming.V1.FetchDeploymentStateResponse.DeployedClusterState do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          cluster: String.t(),
          fleet_details: [Google.Cloud.Gaming.V1.DeployedFleetDetails.t()]
        }

  defstruct [:cluster, :fleet_details]

  field :cluster, 1, type: :string
  field :fleet_details, 2, repeated: true, type: Google.Cloud.Gaming.V1.DeployedFleetDetails
end

defmodule Google.Cloud.Gaming.V1.FetchDeploymentStateResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          cluster_state: [
            Google.Cloud.Gaming.V1.FetchDeploymentStateResponse.DeployedClusterState.t()
          ],
          unavailable: [String.t()]
        }

  defstruct [:cluster_state, :unavailable]

  field :cluster_state, 1,
    repeated: true,
    type: Google.Cloud.Gaming.V1.FetchDeploymentStateResponse.DeployedClusterState

  field :unavailable, 2, repeated: true, type: :string
end

defmodule Google.Cloud.Gaming.V1.GameServerDeployment.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Gaming.V1.GameServerDeployment do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          create_time: Google.Protobuf.Timestamp.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil,
          labels: %{String.t() => String.t()},
          etag: String.t(),
          description: String.t()
        }

  defstruct [:name, :create_time, :update_time, :labels, :etag, :description]

  field :name, 1, type: :string
  field :create_time, 2, type: Google.Protobuf.Timestamp
  field :update_time, 3, type: Google.Protobuf.Timestamp

  field :labels, 4,
    repeated: true,
    type: Google.Cloud.Gaming.V1.GameServerDeployment.LabelsEntry,
    map: true

  field :etag, 7, type: :string
  field :description, 8, type: :string
end

defmodule Google.Cloud.Gaming.V1.GameServerConfigOverride do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          selector: {atom, any},
          change: {atom, any}
        }

  defstruct [:selector, :change]

  oneof :selector, 0
  oneof :change, 1
  field :realms_selector, 1, type: Google.Cloud.Gaming.V1.RealmSelector, oneof: 0
  field :config_version, 100, type: :string, oneof: 1
end

defmodule Google.Cloud.Gaming.V1.GameServerDeploymentRollout do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          create_time: Google.Protobuf.Timestamp.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil,
          default_game_server_config: String.t(),
          game_server_config_overrides: [Google.Cloud.Gaming.V1.GameServerConfigOverride.t()],
          etag: String.t()
        }

  defstruct [
    :name,
    :create_time,
    :update_time,
    :default_game_server_config,
    :game_server_config_overrides,
    :etag
  ]

  field :name, 1, type: :string
  field :create_time, 2, type: Google.Protobuf.Timestamp
  field :update_time, 3, type: Google.Protobuf.Timestamp
  field :default_game_server_config, 4, type: :string

  field :game_server_config_overrides, 5,
    repeated: true,
    type: Google.Cloud.Gaming.V1.GameServerConfigOverride

  field :etag, 6, type: :string
end

defmodule Google.Cloud.Gaming.V1.PreviewGameServerDeploymentRolloutRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          rollout: Google.Cloud.Gaming.V1.GameServerDeploymentRollout.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil,
          preview_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct [:rollout, :update_mask, :preview_time]

  field :rollout, 1, type: Google.Cloud.Gaming.V1.GameServerDeploymentRollout
  field :update_mask, 2, type: Google.Protobuf.FieldMask
  field :preview_time, 3, type: Google.Protobuf.Timestamp
end

defmodule Google.Cloud.Gaming.V1.PreviewGameServerDeploymentRolloutResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          unavailable: [String.t()],
          etag: String.t(),
          target_state: Google.Cloud.Gaming.V1.TargetState.t() | nil
        }

  defstruct [:unavailable, :etag, :target_state]

  field :unavailable, 2, repeated: true, type: :string
  field :etag, 3, type: :string
  field :target_state, 4, type: Google.Cloud.Gaming.V1.TargetState
end
