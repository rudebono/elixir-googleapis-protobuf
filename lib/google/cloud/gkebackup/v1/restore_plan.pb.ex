defmodule Google.Cloud.Gkebackup.V1.RestorePlan.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct key: "",
            value: ""

  field :key, 1, type: :string
  field :value, 2, type: :string
end
defmodule Google.Cloud.Gkebackup.V1.RestorePlan do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          uid: String.t(),
          create_time: Google.Protobuf.Timestamp.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil,
          description: String.t(),
          backup_plan: String.t(),
          cluster: String.t(),
          restore_config: Google.Cloud.Gkebackup.V1.RestoreConfig.t() | nil,
          labels: %{String.t() => String.t()},
          etag: String.t()
        }

  defstruct name: "",
            uid: "",
            create_time: nil,
            update_time: nil,
            description: "",
            backup_plan: "",
            cluster: "",
            restore_config: nil,
            labels: %{},
            etag: ""

  field :name, 1, type: :string, deprecated: false
  field :uid, 2, type: :string, deprecated: false

  field :create_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 4,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :description, 5, type: :string
  field :backup_plan, 6, type: :string, json_name: "backupPlan", deprecated: false
  field :cluster, 7, type: :string, deprecated: false

  field :restore_config, 8,
    type: Google.Cloud.Gkebackup.V1.RestoreConfig,
    json_name: "restoreConfig",
    deprecated: false

  field :labels, 9,
    repeated: true,
    type: Google.Cloud.Gkebackup.V1.RestorePlan.LabelsEntry,
    map: true

  field :etag, 10, type: :string, deprecated: false
end
