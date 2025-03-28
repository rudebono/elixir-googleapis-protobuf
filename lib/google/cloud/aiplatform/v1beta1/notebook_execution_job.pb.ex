defmodule Google.Cloud.Aiplatform.V1beta1.NotebookExecutionJob.DataformRepositorySource do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :dataform_repository_resource_name, 1,
    type: :string,
    json_name: "dataformRepositoryResourceName"

  field :commit_sha, 2, type: :string, json_name: "commitSha"
end

defmodule Google.Cloud.Aiplatform.V1beta1.NotebookExecutionJob.GcsNotebookSource do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :uri, 1, type: :string
  field :generation, 2, type: :string
end

defmodule Google.Cloud.Aiplatform.V1beta1.NotebookExecutionJob.DirectNotebookSource do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :content, 1, type: :bytes
end

defmodule Google.Cloud.Aiplatform.V1beta1.NotebookExecutionJob.CustomEnvironmentSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :machine_spec, 1,
    type: Google.Cloud.Aiplatform.V1beta1.MachineSpec,
    json_name: "machineSpec"

  field :persistent_disk_spec, 2,
    type: Google.Cloud.Aiplatform.V1beta1.PersistentDiskSpec,
    json_name: "persistentDiskSpec"

  field :network_spec, 3,
    type: Google.Cloud.Aiplatform.V1beta1.NetworkSpec,
    json_name: "networkSpec"
end

defmodule Google.Cloud.Aiplatform.V1beta1.NotebookExecutionJob.WorkbenchRuntime do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3
end

defmodule Google.Cloud.Aiplatform.V1beta1.NotebookExecutionJob.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Aiplatform.V1beta1.NotebookExecutionJob do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :notebook_source, 0

  oneof :environment_spec, 1

  oneof :execution_sink, 2

  oneof :execution_identity, 3

  oneof :runtime_environment, 4

  field :dataform_repository_source, 3,
    type: Google.Cloud.Aiplatform.V1beta1.NotebookExecutionJob.DataformRepositorySource,
    json_name: "dataformRepositorySource",
    oneof: 0

  field :gcs_notebook_source, 4,
    type: Google.Cloud.Aiplatform.V1beta1.NotebookExecutionJob.GcsNotebookSource,
    json_name: "gcsNotebookSource",
    oneof: 0

  field :direct_notebook_source, 17,
    type: Google.Cloud.Aiplatform.V1beta1.NotebookExecutionJob.DirectNotebookSource,
    json_name: "directNotebookSource",
    oneof: 0

  field :notebook_runtime_template_resource_name, 14,
    type: :string,
    json_name: "notebookRuntimeTemplateResourceName",
    oneof: 1,
    deprecated: false

  field :custom_environment_spec, 16,
    type: Google.Cloud.Aiplatform.V1beta1.NotebookExecutionJob.CustomEnvironmentSpec,
    json_name: "customEnvironmentSpec",
    oneof: 1

  field :gcs_output_uri, 8, type: :string, json_name: "gcsOutputUri", oneof: 2
  field :execution_user, 9, type: :string, json_name: "executionUser", oneof: 3
  field :service_account, 18, type: :string, json_name: "serviceAccount", oneof: 3

  field :workbench_runtime, 23,
    type: Google.Cloud.Aiplatform.V1beta1.NotebookExecutionJob.WorkbenchRuntime,
    json_name: "workbenchRuntime",
    oneof: 4

  field :name, 1, type: :string, deprecated: false
  field :display_name, 2, type: :string, json_name: "displayName"
  field :execution_timeout, 5, type: Google.Protobuf.Duration, json_name: "executionTimeout"

  field :schedule_resource_name, 6,
    type: :string,
    json_name: "scheduleResourceName",
    deprecated: false

  field :job_state, 10,
    type: Google.Cloud.Aiplatform.V1beta1.JobState,
    json_name: "jobState",
    enum: true,
    deprecated: false

  field :status, 11, type: Google.Rpc.Status, deprecated: false

  field :create_time, 12,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 13,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :labels, 19,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.NotebookExecutionJob.LabelsEntry,
    map: true

  field :kernel_name, 20, type: :string, json_name: "kernelName"

  field :encryption_spec, 22,
    type: Google.Cloud.Aiplatform.V1beta1.EncryptionSpec,
    json_name: "encryptionSpec"
end
