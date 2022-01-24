defmodule Google.Cloud.Dataplex.V1.Task.TriggerSpec.Type do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :TYPE_UNSPECIFIED | :ON_DEMAND | :RECURRING

  field :TYPE_UNSPECIFIED, 0
  field :ON_DEMAND, 1
  field :RECURRING, 2
end
defmodule Google.Cloud.Dataplex.V1.Job.Service do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :SERVICE_UNSPECIFIED | :DATAPROC

  field :SERVICE_UNSPECIFIED, 0
  field :DATAPROC, 1
end
defmodule Google.Cloud.Dataplex.V1.Job.State do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :STATE_UNSPECIFIED
          | :RUNNING
          | :CANCELLING
          | :CANCELLED
          | :SUCCEEDED
          | :FAILED
          | :ABORTED

  field :STATE_UNSPECIFIED, 0
  field :RUNNING, 1
  field :CANCELLING, 2
  field :CANCELLED, 3
  field :SUCCEEDED, 4
  field :FAILED, 5
  field :ABORTED, 6
end
defmodule Google.Cloud.Dataplex.V1.Task.InfrastructureSpec.BatchComputeResources do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          executors_count: integer,
          max_executors_count: integer
        }

  defstruct executors_count: 0,
            max_executors_count: 0

  field :executors_count, 1, type: :int32, json_name: "executorsCount", deprecated: false
  field :max_executors_count, 2, type: :int32, json_name: "maxExecutorsCount", deprecated: false
end
defmodule Google.Cloud.Dataplex.V1.Task.InfrastructureSpec.ContainerImageRuntime.PropertiesEntry do
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
defmodule Google.Cloud.Dataplex.V1.Task.InfrastructureSpec.ContainerImageRuntime do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          java_jars: [String.t()],
          python_packages: [String.t()],
          properties: %{String.t() => String.t()}
        }

  defstruct java_jars: [],
            python_packages: [],
            properties: %{}

  field :java_jars, 2, repeated: true, type: :string, json_name: "javaJars", deprecated: false

  field :python_packages, 3,
    repeated: true,
    type: :string,
    json_name: "pythonPackages",
    deprecated: false

  field :properties, 4,
    repeated: true,
    type: Google.Cloud.Dataplex.V1.Task.InfrastructureSpec.ContainerImageRuntime.PropertiesEntry,
    map: true,
    deprecated: false
end
defmodule Google.Cloud.Dataplex.V1.Task.InfrastructureSpec.VpcNetwork do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          network_name: {:network, String.t()} | {:sub_network, String.t()},
          network_tags: [String.t()]
        }

  defstruct network_name: nil,
            network_tags: []

  oneof :network_name, 0

  field :network, 1, type: :string, oneof: 0, deprecated: false
  field :sub_network, 2, type: :string, json_name: "subNetwork", oneof: 0, deprecated: false

  field :network_tags, 3,
    repeated: true,
    type: :string,
    json_name: "networkTags",
    deprecated: false
end
defmodule Google.Cloud.Dataplex.V1.Task.InfrastructureSpec do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resources:
            {:batch,
             Google.Cloud.Dataplex.V1.Task.InfrastructureSpec.BatchComputeResources.t() | nil},
          runtime:
            {:container_image,
             Google.Cloud.Dataplex.V1.Task.InfrastructureSpec.ContainerImageRuntime.t() | nil},
          network:
            {:vpc_network, Google.Cloud.Dataplex.V1.Task.InfrastructureSpec.VpcNetwork.t() | nil}
        }

  defstruct resources: nil,
            runtime: nil,
            network: nil

  oneof :resources, 0
  oneof :runtime, 1
  oneof :network, 2

  field :batch, 52,
    type: Google.Cloud.Dataplex.V1.Task.InfrastructureSpec.BatchComputeResources,
    oneof: 0

  field :container_image, 101,
    type: Google.Cloud.Dataplex.V1.Task.InfrastructureSpec.ContainerImageRuntime,
    json_name: "containerImage",
    oneof: 1

  field :vpc_network, 150,
    type: Google.Cloud.Dataplex.V1.Task.InfrastructureSpec.VpcNetwork,
    json_name: "vpcNetwork",
    oneof: 2
end
defmodule Google.Cloud.Dataplex.V1.Task.TriggerSpec do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          trigger: {:schedule, String.t()},
          type: Google.Cloud.Dataplex.V1.Task.TriggerSpec.Type.t(),
          start_time: Google.Protobuf.Timestamp.t() | nil,
          disabled: boolean,
          max_retries: integer
        }

  defstruct trigger: nil,
            type: :TYPE_UNSPECIFIED,
            start_time: nil,
            disabled: false,
            max_retries: 0

  oneof :trigger, 0

  field :type, 5,
    type: Google.Cloud.Dataplex.V1.Task.TriggerSpec.Type,
    enum: true,
    deprecated: false

  field :start_time, 6, type: Google.Protobuf.Timestamp, json_name: "startTime", deprecated: false
  field :disabled, 4, type: :bool, deprecated: false
  field :max_retries, 7, type: :int32, json_name: "maxRetries", deprecated: false
  field :schedule, 100, type: :string, oneof: 0, deprecated: false
end
defmodule Google.Cloud.Dataplex.V1.Task.ExecutionSpec.ArgsEntry do
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
defmodule Google.Cloud.Dataplex.V1.Task.ExecutionSpec do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          args: %{String.t() => String.t()},
          service_account: String.t(),
          max_job_execution_lifetime: Google.Protobuf.Duration.t() | nil
        }

  defstruct args: %{},
            service_account: "",
            max_job_execution_lifetime: nil

  field :args, 4,
    repeated: true,
    type: Google.Cloud.Dataplex.V1.Task.ExecutionSpec.ArgsEntry,
    map: true,
    deprecated: false

  field :service_account, 5, type: :string, json_name: "serviceAccount", deprecated: false

  field :max_job_execution_lifetime, 8,
    type: Google.Protobuf.Duration,
    json_name: "maxJobExecutionLifetime",
    deprecated: false
end
defmodule Google.Cloud.Dataplex.V1.Task.SparkTaskConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          driver:
            {:main_jar_file_uri, String.t()}
            | {:main_class, String.t()}
            | {:python_script_file, String.t()}
            | {:sql_script_file, String.t()}
            | {:sql_script, String.t()},
          file_uris: [String.t()],
          archive_uris: [String.t()],
          infrastructure_spec: Google.Cloud.Dataplex.V1.Task.InfrastructureSpec.t() | nil
        }

  defstruct driver: nil,
            file_uris: [],
            archive_uris: [],
            infrastructure_spec: nil

  oneof :driver, 0

  field :main_jar_file_uri, 100, type: :string, json_name: "mainJarFileUri", oneof: 0
  field :main_class, 101, type: :string, json_name: "mainClass", oneof: 0
  field :python_script_file, 102, type: :string, json_name: "pythonScriptFile", oneof: 0
  field :sql_script_file, 104, type: :string, json_name: "sqlScriptFile", oneof: 0
  field :sql_script, 105, type: :string, json_name: "sqlScript", oneof: 0
  field :file_uris, 3, repeated: true, type: :string, json_name: "fileUris", deprecated: false

  field :archive_uris, 4,
    repeated: true,
    type: :string,
    json_name: "archiveUris",
    deprecated: false

  field :infrastructure_spec, 6,
    type: Google.Cloud.Dataplex.V1.Task.InfrastructureSpec,
    json_name: "infrastructureSpec",
    deprecated: false
end
defmodule Google.Cloud.Dataplex.V1.Task.LabelsEntry do
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
defmodule Google.Cloud.Dataplex.V1.Task do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          config: {:spark, Google.Cloud.Dataplex.V1.Task.SparkTaskConfig.t() | nil},
          name: String.t(),
          uid: String.t(),
          create_time: Google.Protobuf.Timestamp.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil,
          description: String.t(),
          display_name: String.t(),
          state: Google.Cloud.Dataplex.V1.State.t(),
          labels: %{String.t() => String.t()},
          trigger_spec: Google.Cloud.Dataplex.V1.Task.TriggerSpec.t() | nil,
          execution_spec: Google.Cloud.Dataplex.V1.Task.ExecutionSpec.t() | nil
        }

  defstruct config: nil,
            name: "",
            uid: "",
            create_time: nil,
            update_time: nil,
            description: "",
            display_name: "",
            state: :STATE_UNSPECIFIED,
            labels: %{},
            trigger_spec: nil,
            execution_spec: nil

  oneof :config, 0

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

  field :description, 5, type: :string, deprecated: false
  field :display_name, 6, type: :string, json_name: "displayName", deprecated: false
  field :state, 7, type: Google.Cloud.Dataplex.V1.State, enum: true, deprecated: false

  field :labels, 8,
    repeated: true,
    type: Google.Cloud.Dataplex.V1.Task.LabelsEntry,
    map: true,
    deprecated: false

  field :trigger_spec, 100,
    type: Google.Cloud.Dataplex.V1.Task.TriggerSpec,
    json_name: "triggerSpec",
    deprecated: false

  field :execution_spec, 101,
    type: Google.Cloud.Dataplex.V1.Task.ExecutionSpec,
    json_name: "executionSpec",
    deprecated: false

  field :spark, 300, type: Google.Cloud.Dataplex.V1.Task.SparkTaskConfig, oneof: 0
end
defmodule Google.Cloud.Dataplex.V1.Job do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          uid: String.t(),
          start_time: Google.Protobuf.Timestamp.t() | nil,
          end_time: Google.Protobuf.Timestamp.t() | nil,
          state: Google.Cloud.Dataplex.V1.Job.State.t(),
          retry_count: non_neg_integer,
          service: Google.Cloud.Dataplex.V1.Job.Service.t(),
          service_job: String.t(),
          message: String.t()
        }

  defstruct name: "",
            uid: "",
            start_time: nil,
            end_time: nil,
            state: :STATE_UNSPECIFIED,
            retry_count: 0,
            service: :SERVICE_UNSPECIFIED,
            service_job: "",
            message: ""

  field :name, 1, type: :string, deprecated: false
  field :uid, 2, type: :string, deprecated: false
  field :start_time, 3, type: Google.Protobuf.Timestamp, json_name: "startTime", deprecated: false
  field :end_time, 4, type: Google.Protobuf.Timestamp, json_name: "endTime", deprecated: false
  field :state, 5, type: Google.Cloud.Dataplex.V1.Job.State, enum: true, deprecated: false
  field :retry_count, 6, type: :uint32, json_name: "retryCount", deprecated: false
  field :service, 7, type: Google.Cloud.Dataplex.V1.Job.Service, enum: true, deprecated: false
  field :service_job, 8, type: :string, json_name: "serviceJob", deprecated: false
  field :message, 9, type: :string, deprecated: false
end
