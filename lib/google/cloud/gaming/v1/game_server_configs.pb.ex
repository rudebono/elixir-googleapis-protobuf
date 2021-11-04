defmodule Google.Cloud.Gaming.V1.ListGameServerConfigsRequest do
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
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
  field :order_by, 5, type: :string, json_name: "orderBy"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Gaming.V1.ListGameServerConfigsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          game_server_configs: [Google.Cloud.Gaming.V1.GameServerConfig.t()],
          next_page_token: String.t(),
          unreachable: [String.t()]
        }

  defstruct [:game_server_configs, :next_page_token, :unreachable]

  field :game_server_configs, 1,
    repeated: true,
    type: Google.Cloud.Gaming.V1.GameServerConfig,
    json_name: "gameServerConfigs"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 4, repeated: true, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Gaming.V1.GetGameServerConfigRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Gaming.V1.CreateGameServerConfigRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          config_id: String.t(),
          game_server_config: Google.Cloud.Gaming.V1.GameServerConfig.t() | nil
        }

  defstruct [:parent, :config_id, :game_server_config]

  field :parent, 1, type: :string
  field :config_id, 2, type: :string, json_name: "configId"

  field :game_server_config, 3,
    type: Google.Cloud.Gaming.V1.GameServerConfig,
    json_name: "gameServerConfig"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Gaming.V1.DeleteGameServerConfigRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Gaming.V1.ScalingConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          fleet_autoscaler_spec: String.t(),
          selectors: [Google.Cloud.Gaming.V1.LabelSelector.t()],
          schedules: [Google.Cloud.Gaming.V1.Schedule.t()]
        }

  defstruct [:name, :fleet_autoscaler_spec, :selectors, :schedules]

  field :name, 1, type: :string
  field :fleet_autoscaler_spec, 2, type: :string, json_name: "fleetAutoscalerSpec"
  field :selectors, 4, repeated: true, type: Google.Cloud.Gaming.V1.LabelSelector
  field :schedules, 5, repeated: true, type: Google.Cloud.Gaming.V1.Schedule

  def transform_module(), do: nil
end

defmodule Google.Cloud.Gaming.V1.FleetConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          fleet_spec: String.t(),
          name: String.t()
        }

  defstruct [:fleet_spec, :name]

  field :fleet_spec, 1, type: :string, json_name: "fleetSpec"
  field :name, 2, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Gaming.V1.GameServerConfig.LabelsEntry do
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

defmodule Google.Cloud.Gaming.V1.GameServerConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          create_time: Google.Protobuf.Timestamp.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil,
          labels: %{String.t() => String.t()},
          fleet_configs: [Google.Cloud.Gaming.V1.FleetConfig.t()],
          scaling_configs: [Google.Cloud.Gaming.V1.ScalingConfig.t()],
          description: String.t()
        }

  defstruct [
    :name,
    :create_time,
    :update_time,
    :labels,
    :fleet_configs,
    :scaling_configs,
    :description
  ]

  field :name, 1, type: :string
  field :create_time, 2, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :update_time, 3, type: Google.Protobuf.Timestamp, json_name: "updateTime"

  field :labels, 4,
    repeated: true,
    type: Google.Cloud.Gaming.V1.GameServerConfig.LabelsEntry,
    map: true

  field :fleet_configs, 5,
    repeated: true,
    type: Google.Cloud.Gaming.V1.FleetConfig,
    json_name: "fleetConfigs"

  field :scaling_configs, 6,
    repeated: true,
    type: Google.Cloud.Gaming.V1.ScalingConfig,
    json_name: "scalingConfigs"

  field :description, 7, type: :string

  def transform_module(), do: nil
end
