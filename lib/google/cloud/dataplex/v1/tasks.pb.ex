defmodule Google.Cloud.Dataplex.V1.Task.TriggerSpec.Type do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :TYPE_UNSPECIFIED, 0
  field :ON_DEMAND, 1
  field :RECURRING, 2
end
defmodule Google.Cloud.Dataplex.V1.Job.Service do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :SERVICE_UNSPECIFIED, 0
  field :DATAPROC, 1
end
defmodule Google.Cloud.Dataplex.V1.Job.State do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

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
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :executors_count, 1, type: :int32, json_name: "executorsCount", deprecated: false
  field :max_executors_count, 2, type: :int32, json_name: "maxExecutorsCount", deprecated: false
end
defmodule Google.Cloud.Dataplex.V1.Task.InfrastructureSpec.ContainerImageRuntime.PropertiesEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end
defmodule Google.Cloud.Dataplex.V1.Task.InfrastructureSpec.ContainerImageRuntime do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :image, 1, type: :string, deprecated: false
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
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

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
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

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
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

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
  use Protobuf, map: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end
defmodule Google.Cloud.Dataplex.V1.Task.ExecutionSpec do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :args, 4,
    repeated: true,
    type: Google.Cloud.Dataplex.V1.Task.ExecutionSpec.ArgsEntry,
    map: true,
    deprecated: false

  field :service_account, 5, type: :string, json_name: "serviceAccount", deprecated: false
  field :project, 7, type: :string, deprecated: false

  field :max_job_execution_lifetime, 8,
    type: Google.Protobuf.Duration,
    json_name: "maxJobExecutionLifetime",
    deprecated: false

  field :kms_key, 9, type: :string, json_name: "kmsKey", deprecated: false
end
defmodule Google.Cloud.Dataplex.V1.Task.SparkTaskConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

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
defmodule Google.Cloud.Dataplex.V1.Task.ExecutionStatus do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :update_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :latest_job, 9,
    type: Google.Cloud.Dataplex.V1.Job,
    json_name: "latestJob",
    deprecated: false
end
defmodule Google.Cloud.Dataplex.V1.Task.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end
defmodule Google.Cloud.Dataplex.V1.Task do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

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

  field :execution_status, 201,
    type: Google.Cloud.Dataplex.V1.Task.ExecutionStatus,
    json_name: "executionStatus",
    deprecated: false

  field :spark, 300, type: Google.Cloud.Dataplex.V1.Task.SparkTaskConfig, oneof: 0
end
defmodule Google.Cloud.Dataplex.V1.Job do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

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
