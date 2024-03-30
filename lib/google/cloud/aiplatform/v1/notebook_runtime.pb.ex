defmodule Google.Cloud.Aiplatform.V1.NotebookRuntimeType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :NOTEBOOK_RUNTIME_TYPE_UNSPECIFIED, 0
  field :USER_DEFINED, 1
  field :ONE_CLICK, 2
end

defmodule Google.Cloud.Aiplatform.V1.NotebookRuntime.HealthState do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :HEALTH_STATE_UNSPECIFIED, 0
  field :HEALTHY, 1
  field :UNHEALTHY, 2
end

defmodule Google.Cloud.Aiplatform.V1.NotebookRuntime.RuntimeState do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :RUNTIME_STATE_UNSPECIFIED, 0
  field :RUNNING, 1
  field :BEING_STARTED, 2
  field :BEING_STOPPED, 3
  field :STOPPED, 4
  field :BEING_UPGRADED, 5
  field :ERROR, 100
  field :INVALID, 101
end

defmodule Google.Cloud.Aiplatform.V1.NotebookRuntimeTemplate.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Aiplatform.V1.NotebookRuntimeTemplate do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :display_name, 2, type: :string, json_name: "displayName", deprecated: false
  field :description, 3, type: :string
  field :is_default, 4, type: :bool, json_name: "isDefault", deprecated: false

  field :machine_spec, 5,
    type: Google.Cloud.Aiplatform.V1.MachineSpec,
    json_name: "machineSpec",
    deprecated: false

  field :data_persistent_disk_spec, 8,
    type: Google.Cloud.Aiplatform.V1.PersistentDiskSpec,
    json_name: "dataPersistentDiskSpec",
    deprecated: false

  field :network_spec, 12,
    type: Google.Cloud.Aiplatform.V1.NetworkSpec,
    json_name: "networkSpec",
    deprecated: false

  field :service_account, 13, type: :string, json_name: "serviceAccount"
  field :etag, 14, type: :string

  field :labels, 15,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1.NotebookRuntimeTemplate.LabelsEntry,
    map: true

  field :idle_shutdown_config, 17,
    type: Google.Cloud.Aiplatform.V1.NotebookIdleShutdownConfig,
    json_name: "idleShutdownConfig"

  field :euc_config, 18,
    type: Google.Cloud.Aiplatform.V1.NotebookEucConfig,
    json_name: "eucConfig"

  field :create_time, 10,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 11,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :notebook_runtime_type, 19,
    type: Google.Cloud.Aiplatform.V1.NotebookRuntimeType,
    json_name: "notebookRuntimeType",
    enum: true,
    deprecated: false

  field :shielded_vm_config, 20,
    type: Google.Cloud.Aiplatform.V1.ShieldedVmConfig,
    json_name: "shieldedVmConfig",
    deprecated: false

  field :network_tags, 21,
    repeated: true,
    type: :string,
    json_name: "networkTags",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.NotebookRuntime.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Aiplatform.V1.NotebookRuntime do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :runtime_user, 2, type: :string, json_name: "runtimeUser", deprecated: false

  field :notebook_runtime_template_ref, 3,
    type: Google.Cloud.Aiplatform.V1.NotebookRuntimeTemplateRef,
    json_name: "notebookRuntimeTemplateRef",
    deprecated: false

  field :proxy_uri, 5, type: :string, json_name: "proxyUri", deprecated: false

  field :create_time, 6,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 7,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :health_state, 8,
    type: Google.Cloud.Aiplatform.V1.NotebookRuntime.HealthState,
    json_name: "healthState",
    enum: true,
    deprecated: false

  field :display_name, 10, type: :string, json_name: "displayName", deprecated: false
  field :description, 11, type: :string
  field :service_account, 13, type: :string, json_name: "serviceAccount", deprecated: false

  field :runtime_state, 14,
    type: Google.Cloud.Aiplatform.V1.NotebookRuntime.RuntimeState,
    json_name: "runtimeState",
    enum: true,
    deprecated: false

  field :is_upgradable, 15, type: :bool, json_name: "isUpgradable", deprecated: false

  field :labels, 16,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1.NotebookRuntime.LabelsEntry,
    map: true

  field :expiration_time, 17,
    type: Google.Protobuf.Timestamp,
    json_name: "expirationTime",
    deprecated: false

  field :version, 18, type: :string, deprecated: false

  field :notebook_runtime_type, 19,
    type: Google.Cloud.Aiplatform.V1.NotebookRuntimeType,
    json_name: "notebookRuntimeType",
    enum: true,
    deprecated: false

  field :network_tags, 25,
    repeated: true,
    type: :string,
    json_name: "networkTags",
    deprecated: false
end