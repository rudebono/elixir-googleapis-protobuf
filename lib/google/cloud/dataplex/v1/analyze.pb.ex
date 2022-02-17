defmodule Google.Cloud.Dataplex.V1.Content.SqlScript.QueryEngine do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :QUERY_ENGINE_UNSPECIFIED | :SPARK

  field :QUERY_ENGINE_UNSPECIFIED, 0
  field :SPARK, 2
end
defmodule Google.Cloud.Dataplex.V1.Content.Notebook.KernelType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :KERNEL_TYPE_UNSPECIFIED | :PYTHON3

  field :KERNEL_TYPE_UNSPECIFIED, 0
  field :PYTHON3, 1
end
defmodule Google.Cloud.Dataplex.V1.Environment.InfrastructureSpec.ComputeResources do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          disk_size_gb: integer,
          node_count: integer,
          max_node_count: integer
        }

  defstruct disk_size_gb: 0,
            node_count: 0,
            max_node_count: 0

  field :disk_size_gb, 1, type: :int32, json_name: "diskSizeGb", deprecated: false
  field :node_count, 2, type: :int32, json_name: "nodeCount", deprecated: false
  field :max_node_count, 3, type: :int32, json_name: "maxNodeCount", deprecated: false
end
defmodule Google.Cloud.Dataplex.V1.Environment.InfrastructureSpec.OsImageRuntime.PropertiesEntry do
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
defmodule Google.Cloud.Dataplex.V1.Environment.InfrastructureSpec.OsImageRuntime do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          image_version: String.t(),
          java_libraries: [String.t()],
          python_packages: [String.t()],
          properties: %{String.t() => String.t()}
        }

  defstruct image_version: "",
            java_libraries: [],
            python_packages: [],
            properties: %{}

  field :image_version, 1, type: :string, json_name: "imageVersion", deprecated: false

  field :java_libraries, 2,
    repeated: true,
    type: :string,
    json_name: "javaLibraries",
    deprecated: false

  field :python_packages, 3,
    repeated: true,
    type: :string,
    json_name: "pythonPackages",
    deprecated: false

  field :properties, 4,
    repeated: true,
    type: Google.Cloud.Dataplex.V1.Environment.InfrastructureSpec.OsImageRuntime.PropertiesEntry,
    map: true,
    deprecated: false
end
defmodule Google.Cloud.Dataplex.V1.Environment.InfrastructureSpec do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resources:
            {:compute,
             Google.Cloud.Dataplex.V1.Environment.InfrastructureSpec.ComputeResources.t() | nil},
          runtime:
            {:os_image,
             Google.Cloud.Dataplex.V1.Environment.InfrastructureSpec.OsImageRuntime.t() | nil}
        }

  defstruct resources: nil,
            runtime: nil

  oneof :resources, 0
  oneof :runtime, 1

  field :compute, 50,
    type: Google.Cloud.Dataplex.V1.Environment.InfrastructureSpec.ComputeResources,
    oneof: 0,
    deprecated: false

  field :os_image, 100,
    type: Google.Cloud.Dataplex.V1.Environment.InfrastructureSpec.OsImageRuntime,
    json_name: "osImage",
    oneof: 1,
    deprecated: false
end
defmodule Google.Cloud.Dataplex.V1.Environment.SessionSpec do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          max_idle_duration: Google.Protobuf.Duration.t() | nil,
          enable_fast_startup: boolean
        }

  defstruct max_idle_duration: nil,
            enable_fast_startup: false

  field :max_idle_duration, 1,
    type: Google.Protobuf.Duration,
    json_name: "maxIdleDuration",
    deprecated: false

  field :enable_fast_startup, 2, type: :bool, json_name: "enableFastStartup", deprecated: false
end
defmodule Google.Cloud.Dataplex.V1.Environment.SessionStatus do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          active: boolean
        }

  defstruct active: false

  field :active, 1, type: :bool, deprecated: false
end
defmodule Google.Cloud.Dataplex.V1.Environment.Endpoints do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          notebooks: String.t(),
          sql: String.t()
        }

  defstruct notebooks: "",
            sql: ""

  field :notebooks, 1, type: :string, deprecated: false
  field :sql, 2, type: :string, deprecated: false
end
defmodule Google.Cloud.Dataplex.V1.Environment.LabelsEntry do
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
defmodule Google.Cloud.Dataplex.V1.Environment do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          display_name: String.t(),
          uid: String.t(),
          create_time: Google.Protobuf.Timestamp.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil,
          labels: %{String.t() => String.t()},
          description: String.t(),
          state: Google.Cloud.Dataplex.V1.State.t(),
          infrastructure_spec: Google.Cloud.Dataplex.V1.Environment.InfrastructureSpec.t() | nil,
          session_spec: Google.Cloud.Dataplex.V1.Environment.SessionSpec.t() | nil,
          session_status: Google.Cloud.Dataplex.V1.Environment.SessionStatus.t() | nil,
          endpoints: Google.Cloud.Dataplex.V1.Environment.Endpoints.t() | nil
        }

  defstruct name: "",
            display_name: "",
            uid: "",
            create_time: nil,
            update_time: nil,
            labels: %{},
            description: "",
            state: :STATE_UNSPECIFIED,
            infrastructure_spec: nil,
            session_spec: nil,
            session_status: nil,
            endpoints: nil

  field :name, 1, type: :string, deprecated: false
  field :display_name, 2, type: :string, json_name: "displayName", deprecated: false
  field :uid, 3, type: :string, deprecated: false

  field :create_time, 4,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 5,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :labels, 6,
    repeated: true,
    type: Google.Cloud.Dataplex.V1.Environment.LabelsEntry,
    map: true,
    deprecated: false

  field :description, 7, type: :string, deprecated: false
  field :state, 8, type: Google.Cloud.Dataplex.V1.State, enum: true, deprecated: false

  field :infrastructure_spec, 100,
    type: Google.Cloud.Dataplex.V1.Environment.InfrastructureSpec,
    json_name: "infrastructureSpec",
    deprecated: false

  field :session_spec, 101,
    type: Google.Cloud.Dataplex.V1.Environment.SessionSpec,
    json_name: "sessionSpec",
    deprecated: false

  field :session_status, 102,
    type: Google.Cloud.Dataplex.V1.Environment.SessionStatus,
    json_name: "sessionStatus",
    deprecated: false

  field :endpoints, 200, type: Google.Cloud.Dataplex.V1.Environment.Endpoints, deprecated: false
end
defmodule Google.Cloud.Dataplex.V1.Content.SqlScript do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          engine: Google.Cloud.Dataplex.V1.Content.SqlScript.QueryEngine.t()
        }

  defstruct engine: :QUERY_ENGINE_UNSPECIFIED

  field :engine, 1,
    type: Google.Cloud.Dataplex.V1.Content.SqlScript.QueryEngine,
    enum: true,
    deprecated: false
end
defmodule Google.Cloud.Dataplex.V1.Content.Notebook do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          kernel_type: Google.Cloud.Dataplex.V1.Content.Notebook.KernelType.t()
        }

  defstruct kernel_type: :KERNEL_TYPE_UNSPECIFIED

  field :kernel_type, 1,
    type: Google.Cloud.Dataplex.V1.Content.Notebook.KernelType,
    json_name: "kernelType",
    enum: true,
    deprecated: false
end
defmodule Google.Cloud.Dataplex.V1.Content.LabelsEntry do
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
defmodule Google.Cloud.Dataplex.V1.Content do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          data: {:data_text, String.t()},
          content:
            {:sql_script, Google.Cloud.Dataplex.V1.Content.SqlScript.t() | nil}
            | {:notebook, Google.Cloud.Dataplex.V1.Content.Notebook.t() | nil},
          name: String.t(),
          uid: String.t(),
          path: String.t(),
          create_time: Google.Protobuf.Timestamp.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil,
          labels: %{String.t() => String.t()},
          description: String.t()
        }

  defstruct data: nil,
            content: nil,
            name: "",
            uid: "",
            path: "",
            create_time: nil,
            update_time: nil,
            labels: %{},
            description: ""

  oneof :data, 0
  oneof :content, 1

  field :name, 1, type: :string, deprecated: false
  field :uid, 2, type: :string, deprecated: false
  field :path, 3, type: :string, deprecated: false

  field :create_time, 4,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 5,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :labels, 6,
    repeated: true,
    type: Google.Cloud.Dataplex.V1.Content.LabelsEntry,
    map: true,
    deprecated: false

  field :description, 7, type: :string, deprecated: false
  field :data_text, 9, type: :string, json_name: "dataText", oneof: 0, deprecated: false

  field :sql_script, 100,
    type: Google.Cloud.Dataplex.V1.Content.SqlScript,
    json_name: "sqlScript",
    oneof: 1

  field :notebook, 101, type: Google.Cloud.Dataplex.V1.Content.Notebook, oneof: 1
end
defmodule Google.Cloud.Dataplex.V1.Session do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          user_id: String.t(),
          create_time: Google.Protobuf.Timestamp.t() | nil,
          state: Google.Cloud.Dataplex.V1.State.t()
        }

  defstruct name: "",
            user_id: "",
            create_time: nil,
            state: :STATE_UNSPECIFIED

  field :name, 1, type: :string, deprecated: false
  field :user_id, 2, type: :string, json_name: "userId", deprecated: false

  field :create_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :state, 4, type: Google.Cloud.Dataplex.V1.State, enum: true, deprecated: false
end
