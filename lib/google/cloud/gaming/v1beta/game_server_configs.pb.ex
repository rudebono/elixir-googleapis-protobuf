defmodule Google.Cloud.Gaming.V1beta.ListGameServerConfigsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
end

defmodule Google.Cloud.Gaming.V1beta.ListGameServerConfigsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :game_server_configs, 1,
    repeated: true,
    type: Google.Cloud.Gaming.V1beta.GameServerConfig,
    json_name: "gameServerConfigs"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 4, repeated: true, type: :string
end

defmodule Google.Cloud.Gaming.V1beta.GetGameServerConfigRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Gaming.V1beta.CreateGameServerConfigRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :config_id, 2, type: :string, json_name: "configId", deprecated: false

  field :game_server_config, 3,
    type: Google.Cloud.Gaming.V1beta.GameServerConfig,
    json_name: "gameServerConfig",
    deprecated: false
end

defmodule Google.Cloud.Gaming.V1beta.DeleteGameServerConfigRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Gaming.V1beta.ScalingConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :fleet_autoscaler_spec, 2,
    type: :string,
    json_name: "fleetAutoscalerSpec",
    deprecated: false

  field :selectors, 4, repeated: true, type: Google.Cloud.Gaming.V1beta.LabelSelector
  field :schedules, 5, repeated: true, type: Google.Cloud.Gaming.V1beta.Schedule
end

defmodule Google.Cloud.Gaming.V1beta.FleetConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :fleet_spec, 1, type: :string, json_name: "fleetSpec"
  field :name, 2, type: :string
end

defmodule Google.Cloud.Gaming.V1beta.GameServerConfig.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Gaming.V1beta.GameServerConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string

  field :create_time, 2,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :labels, 4,
    repeated: true,
    type: Google.Cloud.Gaming.V1beta.GameServerConfig.LabelsEntry,
    map: true

  field :fleet_configs, 5,
    repeated: true,
    type: Google.Cloud.Gaming.V1beta.FleetConfig,
    json_name: "fleetConfigs"

  field :scaling_configs, 6,
    repeated: true,
    type: Google.Cloud.Gaming.V1beta.ScalingConfig,
    json_name: "scalingConfigs"

  field :description, 7, type: :string
end