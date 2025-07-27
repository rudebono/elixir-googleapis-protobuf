defmodule Google.Cloud.Notebooks.V2.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :STARTING, 1
  field :PROVISIONING, 2
  field :ACTIVE, 3
  field :STOPPING, 4
  field :STOPPED, 5
  field :DELETED, 6
  field :UPGRADING, 7
  field :INITIALIZING, 8
  field :SUSPENDING, 9
  field :SUSPENDED, 10
end

defmodule Google.Cloud.Notebooks.V2.HealthState do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :HEALTH_STATE_UNSPECIFIED, 0
  field :HEALTHY, 1
  field :UNHEALTHY, 2
  field :AGENT_NOT_INSTALLED, 3
  field :AGENT_NOT_RUNNING, 4
end

defmodule Google.Cloud.Notebooks.V2.UpgradeHistoryEntry.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :STARTED, 1
  field :SUCCEEDED, 2
  field :FAILED, 3
end

defmodule Google.Cloud.Notebooks.V2.UpgradeHistoryEntry.Action do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :ACTION_UNSPECIFIED, 0
  field :UPGRADE, 1
  field :ROLLBACK, 2
end

defmodule Google.Cloud.Notebooks.V2.UpgradeHistoryEntry do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :snapshot, 1, type: :string, deprecated: false
  field :vm_image, 2, type: :string, json_name: "vmImage", deprecated: false
  field :container_image, 3, type: :string, json_name: "containerImage", deprecated: false
  field :framework, 4, type: :string, deprecated: false
  field :version, 5, type: :string, deprecated: false

  field :state, 6,
    type: Google.Cloud.Notebooks.V2.UpgradeHistoryEntry.State,
    enum: true,
    deprecated: false

  field :create_time, 7,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :action, 8,
    type: Google.Cloud.Notebooks.V2.UpgradeHistoryEntry.Action,
    enum: true,
    deprecated: false

  field :target_version, 9, type: :string, json_name: "targetVersion", deprecated: false
end

defmodule Google.Cloud.Notebooks.V2.Instance.HealthInfoEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Notebooks.V2.Instance.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Notebooks.V2.Instance do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :infrastructure, 0

  field :name, 1, type: :string, deprecated: false

  field :gce_setup, 2,
    type: Google.Cloud.Notebooks.V2.GceSetup,
    json_name: "gceSetup",
    oneof: 0,
    deprecated: false

  field :proxy_uri, 3, type: :string, json_name: "proxyUri", deprecated: false

  field :instance_owners, 4,
    repeated: true,
    type: :string,
    json_name: "instanceOwners",
    deprecated: false

  field :creator, 5, type: :string, deprecated: false
  field :state, 6, type: Google.Cloud.Notebooks.V2.State, enum: true, deprecated: false

  field :upgrade_history, 7,
    repeated: true,
    type: Google.Cloud.Notebooks.V2.UpgradeHistoryEntry,
    json_name: "upgradeHistory",
    deprecated: false

  field :id, 8, type: :string, deprecated: false

  field :health_state, 9,
    type: Google.Cloud.Notebooks.V2.HealthState,
    json_name: "healthState",
    enum: true,
    deprecated: false

  field :health_info, 10,
    repeated: true,
    type: Google.Cloud.Notebooks.V2.Instance.HealthInfoEntry,
    json_name: "healthInfo",
    map: true,
    deprecated: false

  field :create_time, 11,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 12,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :disable_proxy_access, 13, type: :bool, json_name: "disableProxyAccess", deprecated: false

  field :labels, 14,
    repeated: true,
    type: Google.Cloud.Notebooks.V2.Instance.LabelsEntry,
    map: true,
    deprecated: false
end
