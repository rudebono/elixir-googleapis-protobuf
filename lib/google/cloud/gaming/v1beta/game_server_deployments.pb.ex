defmodule Google.Cloud.Gaming.V1beta.ListGameServerDeploymentsRequest do
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

defmodule Google.Cloud.Gaming.V1beta.ListGameServerDeploymentsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          game_server_deployments: [Google.Cloud.Gaming.V1beta.GameServerDeployment.t()],
          next_page_token: String.t(),
          unreachable: [String.t()]
        }

  defstruct [:game_server_deployments, :next_page_token, :unreachable]

  field :game_server_deployments, 1,
    repeated: true,
    type: Google.Cloud.Gaming.V1beta.GameServerDeployment

  field :next_page_token, 2, type: :string
  field :unreachable, 4, repeated: true, type: :string
end

defmodule Google.Cloud.Gaming.V1beta.GetGameServerDeploymentRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Gaming.V1beta.GetGameServerDeploymentRolloutRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Gaming.V1beta.CreateGameServerDeploymentRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          deployment_id: String.t(),
          game_server_deployment: Google.Cloud.Gaming.V1beta.GameServerDeployment.t() | nil
        }

  defstruct [:parent, :deployment_id, :game_server_deployment]

  field :parent, 1, type: :string
  field :deployment_id, 2, type: :string
  field :game_server_deployment, 3, type: Google.Cloud.Gaming.V1beta.GameServerDeployment
end

defmodule Google.Cloud.Gaming.V1beta.DeleteGameServerDeploymentRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Gaming.V1beta.UpdateGameServerDeploymentRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          game_server_deployment: Google.Cloud.Gaming.V1beta.GameServerDeployment.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:game_server_deployment, :update_mask]

  field :game_server_deployment, 1, type: Google.Cloud.Gaming.V1beta.GameServerDeployment
  field :update_mask, 2, type: Google.Protobuf.FieldMask
end

defmodule Google.Cloud.Gaming.V1beta.UpdateGameServerDeploymentRolloutRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          rollout: Google.Cloud.Gaming.V1beta.GameServerDeploymentRollout.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:rollout, :update_mask]

  field :rollout, 1, type: Google.Cloud.Gaming.V1beta.GameServerDeploymentRollout
  field :update_mask, 2, type: Google.Protobuf.FieldMask
end

defmodule Google.Cloud.Gaming.V1beta.FetchDeploymentStateRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Gaming.V1beta.FetchDeploymentStateResponse.DeployedClusterState do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          cluster: String.t(),
          fleet_details: [Google.Cloud.Gaming.V1beta.DeployedFleetDetails.t()]
        }

  defstruct [:cluster, :fleet_details]

  field :cluster, 1, type: :string
  field :fleet_details, 2, repeated: true, type: Google.Cloud.Gaming.V1beta.DeployedFleetDetails
end

defmodule Google.Cloud.Gaming.V1beta.FetchDeploymentStateResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          cluster_state: [
            Google.Cloud.Gaming.V1beta.FetchDeploymentStateResponse.DeployedClusterState.t()
          ],
          unavailable: [String.t()]
        }

  defstruct [:cluster_state, :unavailable]

  field :cluster_state, 1,
    repeated: true,
    type: Google.Cloud.Gaming.V1beta.FetchDeploymentStateResponse.DeployedClusterState

  field :unavailable, 2, repeated: true, type: :string
end

defmodule Google.Cloud.Gaming.V1beta.GameServerDeployment.LabelsEntry do
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

defmodule Google.Cloud.Gaming.V1beta.GameServerDeployment do
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
    type: Google.Cloud.Gaming.V1beta.GameServerDeployment.LabelsEntry,
    map: true

  field :etag, 7, type: :string
  field :description, 8, type: :string
end

defmodule Google.Cloud.Gaming.V1beta.GameServerConfigOverride do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          selector: {atom, any},
          change: {atom, any}
        }

  defstruct [:selector, :change]

  oneof :selector, 0
  oneof :change, 1
  field :realms_selector, 1, type: Google.Cloud.Gaming.V1beta.RealmSelector, oneof: 0
  field :config_version, 100, type: :string, oneof: 1
end

defmodule Google.Cloud.Gaming.V1beta.GameServerDeploymentRollout do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          create_time: Google.Protobuf.Timestamp.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil,
          default_game_server_config: String.t(),
          game_server_config_overrides: [Google.Cloud.Gaming.V1beta.GameServerConfigOverride.t()],
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
    type: Google.Cloud.Gaming.V1beta.GameServerConfigOverride

  field :etag, 6, type: :string
end

defmodule Google.Cloud.Gaming.V1beta.PreviewGameServerDeploymentRolloutRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          rollout: Google.Cloud.Gaming.V1beta.GameServerDeploymentRollout.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil,
          preview_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct [:rollout, :update_mask, :preview_time]

  field :rollout, 1, type: Google.Cloud.Gaming.V1beta.GameServerDeploymentRollout
  field :update_mask, 2, type: Google.Protobuf.FieldMask
  field :preview_time, 3, type: Google.Protobuf.Timestamp
end

defmodule Google.Cloud.Gaming.V1beta.PreviewGameServerDeploymentRolloutResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          unavailable: [String.t()],
          etag: String.t(),
          target_state: Google.Cloud.Gaming.V1beta.TargetState.t() | nil
        }

  defstruct [:unavailable, :etag, :target_state]

  field :unavailable, 2, repeated: true, type: :string
  field :etag, 3, type: :string
  field :target_state, 4, type: Google.Cloud.Gaming.V1beta.TargetState
end
