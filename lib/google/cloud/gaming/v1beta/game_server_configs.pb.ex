defmodule Google.Cloud.Gaming.V1beta.ListGameServerConfigsRequest do
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

defmodule Google.Cloud.Gaming.V1beta.ListGameServerConfigsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          game_server_configs: [Google.Cloud.Gaming.V1beta.GameServerConfig.t()],
          next_page_token: String.t(),
          unreachable: [String.t()]
        }

  defstruct [:game_server_configs, :next_page_token, :unreachable]

  field :game_server_configs, 1, repeated: true, type: Google.Cloud.Gaming.V1beta.GameServerConfig
  field :next_page_token, 2, type: :string
  field :unreachable, 4, repeated: true, type: :string
end

defmodule Google.Cloud.Gaming.V1beta.GetGameServerConfigRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Gaming.V1beta.CreateGameServerConfigRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          config_id: String.t(),
          game_server_config: Google.Cloud.Gaming.V1beta.GameServerConfig.t() | nil
        }

  defstruct [:parent, :config_id, :game_server_config]

  field :parent, 1, type: :string
  field :config_id, 2, type: :string
  field :game_server_config, 3, type: Google.Cloud.Gaming.V1beta.GameServerConfig
end

defmodule Google.Cloud.Gaming.V1beta.DeleteGameServerConfigRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Gaming.V1beta.ScalingConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          fleet_autoscaler_spec: String.t(),
          selectors: [Google.Cloud.Gaming.V1beta.LabelSelector.t()],
          schedules: [Google.Cloud.Gaming.V1beta.Schedule.t()]
        }

  defstruct [:name, :fleet_autoscaler_spec, :selectors, :schedules]

  field :name, 1, type: :string
  field :fleet_autoscaler_spec, 2, type: :string
  field :selectors, 4, repeated: true, type: Google.Cloud.Gaming.V1beta.LabelSelector
  field :schedules, 5, repeated: true, type: Google.Cloud.Gaming.V1beta.Schedule
end

defmodule Google.Cloud.Gaming.V1beta.FleetConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          fleet_spec: String.t(),
          name: String.t()
        }

  defstruct [:fleet_spec, :name]

  field :fleet_spec, 1, type: :string
  field :name, 2, type: :string
end

defmodule Google.Cloud.Gaming.V1beta.GameServerConfig.LabelsEntry do
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

defmodule Google.Cloud.Gaming.V1beta.GameServerConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          create_time: Google.Protobuf.Timestamp.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil,
          labels: %{String.t() => String.t()},
          fleet_configs: [Google.Cloud.Gaming.V1beta.FleetConfig.t()],
          scaling_configs: [Google.Cloud.Gaming.V1beta.ScalingConfig.t()],
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
  field :create_time, 2, type: Google.Protobuf.Timestamp
  field :update_time, 3, type: Google.Protobuf.Timestamp

  field :labels, 4,
    repeated: true,
    type: Google.Cloud.Gaming.V1beta.GameServerConfig.LabelsEntry,
    map: true

  field :fleet_configs, 5, repeated: true, type: Google.Cloud.Gaming.V1beta.FleetConfig
  field :scaling_configs, 6, repeated: true, type: Google.Cloud.Gaming.V1beta.ScalingConfig
  field :description, 7, type: :string
end
