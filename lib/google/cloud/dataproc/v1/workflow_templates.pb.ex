defmodule Google.Cloud.Dataproc.V1.WorkflowMetadata.State do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :UNKNOWN | :PENDING | :RUNNING | :DONE

  field :UNKNOWN, 0
  field :PENDING, 1
  field :RUNNING, 2
  field :DONE, 3
end

defmodule Google.Cloud.Dataproc.V1.WorkflowNode.NodeState do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :NODE_STATE_UNSPECIFIED
          | :BLOCKED
          | :RUNNABLE
          | :RUNNING
          | :COMPLETED
          | :FAILED

  field :NODE_STATE_UNSPECIFIED, 0
  field :BLOCKED, 1
  field :RUNNABLE, 2
  field :RUNNING, 3
  field :COMPLETED, 4
  field :FAILED, 5
end

defmodule Google.Cloud.Dataproc.V1.WorkflowTemplate.LabelsEntry do
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

defmodule Google.Cloud.Dataproc.V1.WorkflowTemplate do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          id: String.t(),
          name: String.t(),
          version: integer,
          create_time: Google.Protobuf.Timestamp.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil,
          labels: %{String.t() => String.t()},
          placement: Google.Cloud.Dataproc.V1.WorkflowTemplatePlacement.t() | nil,
          jobs: [Google.Cloud.Dataproc.V1.OrderedJob.t()],
          parameters: [Google.Cloud.Dataproc.V1.TemplateParameter.t()],
          dag_timeout: Google.Protobuf.Duration.t() | nil
        }

  defstruct [
    :id,
    :name,
    :version,
    :create_time,
    :update_time,
    :labels,
    :placement,
    :jobs,
    :parameters,
    :dag_timeout
  ]

  field :id, 2, type: :string
  field :name, 1, type: :string
  field :version, 3, type: :int32
  field :create_time, 4, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :update_time, 5, type: Google.Protobuf.Timestamp, json_name: "updateTime"

  field :labels, 6,
    repeated: true,
    type: Google.Cloud.Dataproc.V1.WorkflowTemplate.LabelsEntry,
    map: true

  field :placement, 7, type: Google.Cloud.Dataproc.V1.WorkflowTemplatePlacement
  field :jobs, 8, repeated: true, type: Google.Cloud.Dataproc.V1.OrderedJob
  field :parameters, 9, repeated: true, type: Google.Cloud.Dataproc.V1.TemplateParameter
  field :dag_timeout, 10, type: Google.Protobuf.Duration, json_name: "dagTimeout"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Dataproc.V1.WorkflowTemplatePlacement do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          placement:
            {:managed_cluster, Google.Cloud.Dataproc.V1.ManagedCluster.t() | nil}
            | {:cluster_selector, Google.Cloud.Dataproc.V1.ClusterSelector.t() | nil}
        }

  defstruct [:placement]

  oneof :placement, 0

  field :managed_cluster, 1,
    type: Google.Cloud.Dataproc.V1.ManagedCluster,
    json_name: "managedCluster",
    oneof: 0

  field :cluster_selector, 2,
    type: Google.Cloud.Dataproc.V1.ClusterSelector,
    json_name: "clusterSelector",
    oneof: 0

  def transform_module(), do: nil
end

defmodule Google.Cloud.Dataproc.V1.ManagedCluster.LabelsEntry do
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

defmodule Google.Cloud.Dataproc.V1.ManagedCluster do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          cluster_name: String.t(),
          config: Google.Cloud.Dataproc.V1.ClusterConfig.t() | nil,
          labels: %{String.t() => String.t()}
        }

  defstruct [:cluster_name, :config, :labels]

  field :cluster_name, 2, type: :string, json_name: "clusterName"
  field :config, 3, type: Google.Cloud.Dataproc.V1.ClusterConfig

  field :labels, 4,
    repeated: true,
    type: Google.Cloud.Dataproc.V1.ManagedCluster.LabelsEntry,
    map: true

  def transform_module(), do: nil
end

defmodule Google.Cloud.Dataproc.V1.ClusterSelector.ClusterLabelsEntry do
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

defmodule Google.Cloud.Dataproc.V1.ClusterSelector do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          zone: String.t(),
          cluster_labels: %{String.t() => String.t()}
        }

  defstruct [:zone, :cluster_labels]

  field :zone, 1, type: :string

  field :cluster_labels, 2,
    repeated: true,
    type: Google.Cloud.Dataproc.V1.ClusterSelector.ClusterLabelsEntry,
    json_name: "clusterLabels",
    map: true

  def transform_module(), do: nil
end

defmodule Google.Cloud.Dataproc.V1.OrderedJob.LabelsEntry do
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

defmodule Google.Cloud.Dataproc.V1.OrderedJob do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          job_type:
            {:hadoop_job, Google.Cloud.Dataproc.V1.HadoopJob.t() | nil}
            | {:spark_job, Google.Cloud.Dataproc.V1.SparkJob.t() | nil}
            | {:pyspark_job, Google.Cloud.Dataproc.V1.PySparkJob.t() | nil}
            | {:hive_job, Google.Cloud.Dataproc.V1.HiveJob.t() | nil}
            | {:pig_job, Google.Cloud.Dataproc.V1.PigJob.t() | nil}
            | {:spark_r_job, Google.Cloud.Dataproc.V1.SparkRJob.t() | nil}
            | {:spark_sql_job, Google.Cloud.Dataproc.V1.SparkSqlJob.t() | nil}
            | {:presto_job, Google.Cloud.Dataproc.V1.PrestoJob.t() | nil},
          step_id: String.t(),
          labels: %{String.t() => String.t()},
          scheduling: Google.Cloud.Dataproc.V1.JobScheduling.t() | nil,
          prerequisite_step_ids: [String.t()]
        }

  defstruct [:job_type, :step_id, :labels, :scheduling, :prerequisite_step_ids]

  oneof :job_type, 0

  field :step_id, 1, type: :string, json_name: "stepId"
  field :hadoop_job, 2, type: Google.Cloud.Dataproc.V1.HadoopJob, json_name: "hadoopJob", oneof: 0
  field :spark_job, 3, type: Google.Cloud.Dataproc.V1.SparkJob, json_name: "sparkJob", oneof: 0

  field :pyspark_job, 4,
    type: Google.Cloud.Dataproc.V1.PySparkJob,
    json_name: "pysparkJob",
    oneof: 0

  field :hive_job, 5, type: Google.Cloud.Dataproc.V1.HiveJob, json_name: "hiveJob", oneof: 0
  field :pig_job, 6, type: Google.Cloud.Dataproc.V1.PigJob, json_name: "pigJob", oneof: 0

  field :spark_r_job, 11,
    type: Google.Cloud.Dataproc.V1.SparkRJob,
    json_name: "sparkRJob",
    oneof: 0

  field :spark_sql_job, 7,
    type: Google.Cloud.Dataproc.V1.SparkSqlJob,
    json_name: "sparkSqlJob",
    oneof: 0

  field :presto_job, 12,
    type: Google.Cloud.Dataproc.V1.PrestoJob,
    json_name: "prestoJob",
    oneof: 0

  field :labels, 8,
    repeated: true,
    type: Google.Cloud.Dataproc.V1.OrderedJob.LabelsEntry,
    map: true

  field :scheduling, 9, type: Google.Cloud.Dataproc.V1.JobScheduling

  field :prerequisite_step_ids, 10,
    repeated: true,
    type: :string,
    json_name: "prerequisiteStepIds"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Dataproc.V1.TemplateParameter do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          fields: [String.t()],
          description: String.t(),
          validation: Google.Cloud.Dataproc.V1.ParameterValidation.t() | nil
        }

  defstruct [:name, :fields, :description, :validation]

  field :name, 1, type: :string
  field :fields, 2, repeated: true, type: :string
  field :description, 3, type: :string
  field :validation, 4, type: Google.Cloud.Dataproc.V1.ParameterValidation

  def transform_module(), do: nil
end

defmodule Google.Cloud.Dataproc.V1.ParameterValidation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          validation_type:
            {:regex, Google.Cloud.Dataproc.V1.RegexValidation.t() | nil}
            | {:values, Google.Cloud.Dataproc.V1.ValueValidation.t() | nil}
        }

  defstruct [:validation_type]

  oneof :validation_type, 0

  field :regex, 1, type: Google.Cloud.Dataproc.V1.RegexValidation, oneof: 0
  field :values, 2, type: Google.Cloud.Dataproc.V1.ValueValidation, oneof: 0

  def transform_module(), do: nil
end

defmodule Google.Cloud.Dataproc.V1.RegexValidation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          regexes: [String.t()]
        }

  defstruct [:regexes]

  field :regexes, 1, repeated: true, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Dataproc.V1.ValueValidation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          values: [String.t()]
        }

  defstruct [:values]

  field :values, 1, repeated: true, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Dataproc.V1.WorkflowMetadata.ParametersEntry do
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

defmodule Google.Cloud.Dataproc.V1.WorkflowMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          template: String.t(),
          version: integer,
          create_cluster: Google.Cloud.Dataproc.V1.ClusterOperation.t() | nil,
          graph: Google.Cloud.Dataproc.V1.WorkflowGraph.t() | nil,
          delete_cluster: Google.Cloud.Dataproc.V1.ClusterOperation.t() | nil,
          state: Google.Cloud.Dataproc.V1.WorkflowMetadata.State.t(),
          cluster_name: String.t(),
          parameters: %{String.t() => String.t()},
          start_time: Google.Protobuf.Timestamp.t() | nil,
          end_time: Google.Protobuf.Timestamp.t() | nil,
          cluster_uuid: String.t(),
          dag_timeout: Google.Protobuf.Duration.t() | nil,
          dag_start_time: Google.Protobuf.Timestamp.t() | nil,
          dag_end_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct [
    :template,
    :version,
    :create_cluster,
    :graph,
    :delete_cluster,
    :state,
    :cluster_name,
    :parameters,
    :start_time,
    :end_time,
    :cluster_uuid,
    :dag_timeout,
    :dag_start_time,
    :dag_end_time
  ]

  field :template, 1, type: :string
  field :version, 2, type: :int32

  field :create_cluster, 3,
    type: Google.Cloud.Dataproc.V1.ClusterOperation,
    json_name: "createCluster"

  field :graph, 4, type: Google.Cloud.Dataproc.V1.WorkflowGraph

  field :delete_cluster, 5,
    type: Google.Cloud.Dataproc.V1.ClusterOperation,
    json_name: "deleteCluster"

  field :state, 6, type: Google.Cloud.Dataproc.V1.WorkflowMetadata.State, enum: true
  field :cluster_name, 7, type: :string, json_name: "clusterName"

  field :parameters, 8,
    repeated: true,
    type: Google.Cloud.Dataproc.V1.WorkflowMetadata.ParametersEntry,
    map: true

  field :start_time, 9, type: Google.Protobuf.Timestamp, json_name: "startTime"
  field :end_time, 10, type: Google.Protobuf.Timestamp, json_name: "endTime"
  field :cluster_uuid, 11, type: :string, json_name: "clusterUuid"
  field :dag_timeout, 12, type: Google.Protobuf.Duration, json_name: "dagTimeout"
  field :dag_start_time, 13, type: Google.Protobuf.Timestamp, json_name: "dagStartTime"
  field :dag_end_time, 14, type: Google.Protobuf.Timestamp, json_name: "dagEndTime"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Dataproc.V1.ClusterOperation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          operation_id: String.t(),
          error: String.t(),
          done: boolean
        }

  defstruct [:operation_id, :error, :done]

  field :operation_id, 1, type: :string, json_name: "operationId"
  field :error, 2, type: :string
  field :done, 3, type: :bool

  def transform_module(), do: nil
end

defmodule Google.Cloud.Dataproc.V1.WorkflowGraph do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          nodes: [Google.Cloud.Dataproc.V1.WorkflowNode.t()]
        }

  defstruct [:nodes]

  field :nodes, 1, repeated: true, type: Google.Cloud.Dataproc.V1.WorkflowNode

  def transform_module(), do: nil
end

defmodule Google.Cloud.Dataproc.V1.WorkflowNode do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          step_id: String.t(),
          prerequisite_step_ids: [String.t()],
          job_id: String.t(),
          state: Google.Cloud.Dataproc.V1.WorkflowNode.NodeState.t(),
          error: String.t()
        }

  defstruct [:step_id, :prerequisite_step_ids, :job_id, :state, :error]

  field :step_id, 1, type: :string, json_name: "stepId"
  field :prerequisite_step_ids, 2, repeated: true, type: :string, json_name: "prerequisiteStepIds"
  field :job_id, 3, type: :string, json_name: "jobId"
  field :state, 5, type: Google.Cloud.Dataproc.V1.WorkflowNode.NodeState, enum: true
  field :error, 6, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Dataproc.V1.CreateWorkflowTemplateRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          template: Google.Cloud.Dataproc.V1.WorkflowTemplate.t() | nil
        }

  defstruct [:parent, :template]

  field :parent, 1, type: :string
  field :template, 2, type: Google.Cloud.Dataproc.V1.WorkflowTemplate

  def transform_module(), do: nil
end

defmodule Google.Cloud.Dataproc.V1.GetWorkflowTemplateRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          version: integer
        }

  defstruct [:name, :version]

  field :name, 1, type: :string
  field :version, 2, type: :int32

  def transform_module(), do: nil
end

defmodule Google.Cloud.Dataproc.V1.InstantiateWorkflowTemplateRequest.ParametersEntry do
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

defmodule Google.Cloud.Dataproc.V1.InstantiateWorkflowTemplateRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          version: integer,
          request_id: String.t(),
          parameters: %{String.t() => String.t()}
        }

  defstruct [:name, :version, :request_id, :parameters]

  field :name, 1, type: :string
  field :version, 2, type: :int32
  field :request_id, 5, type: :string, json_name: "requestId"

  field :parameters, 6,
    repeated: true,
    type: Google.Cloud.Dataproc.V1.InstantiateWorkflowTemplateRequest.ParametersEntry,
    map: true

  def transform_module(), do: nil
end

defmodule Google.Cloud.Dataproc.V1.InstantiateInlineWorkflowTemplateRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          template: Google.Cloud.Dataproc.V1.WorkflowTemplate.t() | nil,
          request_id: String.t()
        }

  defstruct [:parent, :template, :request_id]

  field :parent, 1, type: :string
  field :template, 2, type: Google.Cloud.Dataproc.V1.WorkflowTemplate
  field :request_id, 3, type: :string, json_name: "requestId"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Dataproc.V1.UpdateWorkflowTemplateRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          template: Google.Cloud.Dataproc.V1.WorkflowTemplate.t() | nil
        }

  defstruct [:template]

  field :template, 1, type: Google.Cloud.Dataproc.V1.WorkflowTemplate

  def transform_module(), do: nil
end

defmodule Google.Cloud.Dataproc.V1.ListWorkflowTemplatesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct [:parent, :page_size, :page_token]

  field :parent, 1, type: :string
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Dataproc.V1.ListWorkflowTemplatesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          templates: [Google.Cloud.Dataproc.V1.WorkflowTemplate.t()],
          next_page_token: String.t()
        }

  defstruct [:templates, :next_page_token]

  field :templates, 1, repeated: true, type: Google.Cloud.Dataproc.V1.WorkflowTemplate
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Dataproc.V1.DeleteWorkflowTemplateRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          version: integer
        }

  defstruct [:name, :version]

  field :name, 1, type: :string
  field :version, 2, type: :int32

  def transform_module(), do: nil
end

defmodule Google.Cloud.Dataproc.V1.WorkflowTemplateService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.dataproc.v1.WorkflowTemplateService"

  rpc :CreateWorkflowTemplate,
      Google.Cloud.Dataproc.V1.CreateWorkflowTemplateRequest,
      Google.Cloud.Dataproc.V1.WorkflowTemplate

  rpc :GetWorkflowTemplate,
      Google.Cloud.Dataproc.V1.GetWorkflowTemplateRequest,
      Google.Cloud.Dataproc.V1.WorkflowTemplate

  rpc :InstantiateWorkflowTemplate,
      Google.Cloud.Dataproc.V1.InstantiateWorkflowTemplateRequest,
      Google.Longrunning.Operation

  rpc :InstantiateInlineWorkflowTemplate,
      Google.Cloud.Dataproc.V1.InstantiateInlineWorkflowTemplateRequest,
      Google.Longrunning.Operation

  rpc :UpdateWorkflowTemplate,
      Google.Cloud.Dataproc.V1.UpdateWorkflowTemplateRequest,
      Google.Cloud.Dataproc.V1.WorkflowTemplate

  rpc :ListWorkflowTemplates,
      Google.Cloud.Dataproc.V1.ListWorkflowTemplatesRequest,
      Google.Cloud.Dataproc.V1.ListWorkflowTemplatesResponse

  rpc :DeleteWorkflowTemplate,
      Google.Cloud.Dataproc.V1.DeleteWorkflowTemplateRequest,
      Google.Protobuf.Empty
end

defmodule Google.Cloud.Dataproc.V1.WorkflowTemplateService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Dataproc.V1.WorkflowTemplateService.Service
end
