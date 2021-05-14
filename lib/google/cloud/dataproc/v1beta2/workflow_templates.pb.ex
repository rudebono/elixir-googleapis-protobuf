defmodule Google.Cloud.Dataproc.V1beta2.WorkflowMetadata.State do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :UNKNOWN | :PENDING | :RUNNING | :DONE

  field :UNKNOWN, 0

  field :PENDING, 1

  field :RUNNING, 2

  field :DONE, 3
end

defmodule Google.Cloud.Dataproc.V1beta2.WorkflowNode.NodeState do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :NODE_STATUS_UNSPECIFIED
          | :BLOCKED
          | :RUNNABLE
          | :RUNNING
          | :COMPLETED
          | :FAILED

  field :NODE_STATUS_UNSPECIFIED, 0

  field :BLOCKED, 1

  field :RUNNABLE, 2

  field :RUNNING, 3

  field :COMPLETED, 4

  field :FAILED, 5
end

defmodule Google.Cloud.Dataproc.V1beta2.WorkflowTemplate.LabelsEntry do
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

defmodule Google.Cloud.Dataproc.V1beta2.WorkflowTemplate do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          id: String.t(),
          name: String.t(),
          version: integer,
          create_time: Google.Protobuf.Timestamp.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil,
          labels: %{String.t() => String.t()},
          placement: Google.Cloud.Dataproc.V1beta2.WorkflowTemplatePlacement.t() | nil,
          jobs: [Google.Cloud.Dataproc.V1beta2.OrderedJob.t()],
          parameters: [Google.Cloud.Dataproc.V1beta2.TemplateParameter.t()],
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
  field :create_time, 4, type: Google.Protobuf.Timestamp
  field :update_time, 5, type: Google.Protobuf.Timestamp

  field :labels, 6,
    repeated: true,
    type: Google.Cloud.Dataproc.V1beta2.WorkflowTemplate.LabelsEntry,
    map: true

  field :placement, 7, type: Google.Cloud.Dataproc.V1beta2.WorkflowTemplatePlacement
  field :jobs, 8, repeated: true, type: Google.Cloud.Dataproc.V1beta2.OrderedJob
  field :parameters, 9, repeated: true, type: Google.Cloud.Dataproc.V1beta2.TemplateParameter
  field :dag_timeout, 10, type: Google.Protobuf.Duration
end

defmodule Google.Cloud.Dataproc.V1beta2.WorkflowTemplatePlacement do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          placement: {atom, any}
        }

  defstruct [:placement]

  oneof :placement, 0
  field :managed_cluster, 1, type: Google.Cloud.Dataproc.V1beta2.ManagedCluster, oneof: 0
  field :cluster_selector, 2, type: Google.Cloud.Dataproc.V1beta2.ClusterSelector, oneof: 0
end

defmodule Google.Cloud.Dataproc.V1beta2.ManagedCluster.LabelsEntry do
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

defmodule Google.Cloud.Dataproc.V1beta2.ManagedCluster do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          cluster_name: String.t(),
          config: Google.Cloud.Dataproc.V1beta2.ClusterConfig.t() | nil,
          labels: %{String.t() => String.t()}
        }

  defstruct [:cluster_name, :config, :labels]

  field :cluster_name, 2, type: :string
  field :config, 3, type: Google.Cloud.Dataproc.V1beta2.ClusterConfig

  field :labels, 4,
    repeated: true,
    type: Google.Cloud.Dataproc.V1beta2.ManagedCluster.LabelsEntry,
    map: true
end

defmodule Google.Cloud.Dataproc.V1beta2.ClusterSelector.ClusterLabelsEntry do
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

defmodule Google.Cloud.Dataproc.V1beta2.ClusterSelector do
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
    type: Google.Cloud.Dataproc.V1beta2.ClusterSelector.ClusterLabelsEntry,
    map: true
end

defmodule Google.Cloud.Dataproc.V1beta2.OrderedJob.LabelsEntry do
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

defmodule Google.Cloud.Dataproc.V1beta2.OrderedJob do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          job_type: {atom, any},
          step_id: String.t(),
          labels: %{String.t() => String.t()},
          scheduling: Google.Cloud.Dataproc.V1beta2.JobScheduling.t() | nil,
          prerequisite_step_ids: [String.t()]
        }

  defstruct [:job_type, :step_id, :labels, :scheduling, :prerequisite_step_ids]

  oneof :job_type, 0
  field :step_id, 1, type: :string
  field :hadoop_job, 2, type: Google.Cloud.Dataproc.V1beta2.HadoopJob, oneof: 0
  field :spark_job, 3, type: Google.Cloud.Dataproc.V1beta2.SparkJob, oneof: 0
  field :pyspark_job, 4, type: Google.Cloud.Dataproc.V1beta2.PySparkJob, oneof: 0
  field :hive_job, 5, type: Google.Cloud.Dataproc.V1beta2.HiveJob, oneof: 0
  field :pig_job, 6, type: Google.Cloud.Dataproc.V1beta2.PigJob, oneof: 0
  field :spark_r_job, 11, type: Google.Cloud.Dataproc.V1beta2.SparkRJob, oneof: 0
  field :spark_sql_job, 7, type: Google.Cloud.Dataproc.V1beta2.SparkSqlJob, oneof: 0
  field :presto_job, 12, type: Google.Cloud.Dataproc.V1beta2.PrestoJob, oneof: 0

  field :labels, 8,
    repeated: true,
    type: Google.Cloud.Dataproc.V1beta2.OrderedJob.LabelsEntry,
    map: true

  field :scheduling, 9, type: Google.Cloud.Dataproc.V1beta2.JobScheduling
  field :prerequisite_step_ids, 10, repeated: true, type: :string
end

defmodule Google.Cloud.Dataproc.V1beta2.TemplateParameter do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          fields: [String.t()],
          description: String.t(),
          validation: Google.Cloud.Dataproc.V1beta2.ParameterValidation.t() | nil
        }

  defstruct [:name, :fields, :description, :validation]

  field :name, 1, type: :string
  field :fields, 2, repeated: true, type: :string
  field :description, 3, type: :string
  field :validation, 4, type: Google.Cloud.Dataproc.V1beta2.ParameterValidation
end

defmodule Google.Cloud.Dataproc.V1beta2.ParameterValidation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          validation_type: {atom, any}
        }

  defstruct [:validation_type]

  oneof :validation_type, 0
  field :regex, 1, type: Google.Cloud.Dataproc.V1beta2.RegexValidation, oneof: 0
  field :values, 2, type: Google.Cloud.Dataproc.V1beta2.ValueValidation, oneof: 0
end

defmodule Google.Cloud.Dataproc.V1beta2.RegexValidation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          regexes: [String.t()]
        }

  defstruct [:regexes]

  field :regexes, 1, repeated: true, type: :string
end

defmodule Google.Cloud.Dataproc.V1beta2.ValueValidation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          values: [String.t()]
        }

  defstruct [:values]

  field :values, 1, repeated: true, type: :string
end

defmodule Google.Cloud.Dataproc.V1beta2.WorkflowMetadata.ParametersEntry do
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

defmodule Google.Cloud.Dataproc.V1beta2.WorkflowMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          template: String.t(),
          version: integer,
          create_cluster: Google.Cloud.Dataproc.V1beta2.ClusterOperation.t() | nil,
          graph: Google.Cloud.Dataproc.V1beta2.WorkflowGraph.t() | nil,
          delete_cluster: Google.Cloud.Dataproc.V1beta2.ClusterOperation.t() | nil,
          state: Google.Cloud.Dataproc.V1beta2.WorkflowMetadata.State.t(),
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
  field :create_cluster, 3, type: Google.Cloud.Dataproc.V1beta2.ClusterOperation
  field :graph, 4, type: Google.Cloud.Dataproc.V1beta2.WorkflowGraph
  field :delete_cluster, 5, type: Google.Cloud.Dataproc.V1beta2.ClusterOperation
  field :state, 6, type: Google.Cloud.Dataproc.V1beta2.WorkflowMetadata.State, enum: true
  field :cluster_name, 7, type: :string

  field :parameters, 8,
    repeated: true,
    type: Google.Cloud.Dataproc.V1beta2.WorkflowMetadata.ParametersEntry,
    map: true

  field :start_time, 9, type: Google.Protobuf.Timestamp
  field :end_time, 10, type: Google.Protobuf.Timestamp
  field :cluster_uuid, 11, type: :string
  field :dag_timeout, 12, type: Google.Protobuf.Duration
  field :dag_start_time, 13, type: Google.Protobuf.Timestamp
  field :dag_end_time, 14, type: Google.Protobuf.Timestamp
end

defmodule Google.Cloud.Dataproc.V1beta2.ClusterOperation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          operation_id: String.t(),
          error: String.t(),
          done: boolean
        }

  defstruct [:operation_id, :error, :done]

  field :operation_id, 1, type: :string
  field :error, 2, type: :string
  field :done, 3, type: :bool
end

defmodule Google.Cloud.Dataproc.V1beta2.WorkflowGraph do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          nodes: [Google.Cloud.Dataproc.V1beta2.WorkflowNode.t()]
        }

  defstruct [:nodes]

  field :nodes, 1, repeated: true, type: Google.Cloud.Dataproc.V1beta2.WorkflowNode
end

defmodule Google.Cloud.Dataproc.V1beta2.WorkflowNode do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          step_id: String.t(),
          prerequisite_step_ids: [String.t()],
          job_id: String.t(),
          state: Google.Cloud.Dataproc.V1beta2.WorkflowNode.NodeState.t(),
          error: String.t()
        }

  defstruct [:step_id, :prerequisite_step_ids, :job_id, :state, :error]

  field :step_id, 1, type: :string
  field :prerequisite_step_ids, 2, repeated: true, type: :string
  field :job_id, 3, type: :string
  field :state, 5, type: Google.Cloud.Dataproc.V1beta2.WorkflowNode.NodeState, enum: true
  field :error, 6, type: :string
end

defmodule Google.Cloud.Dataproc.V1beta2.CreateWorkflowTemplateRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          template: Google.Cloud.Dataproc.V1beta2.WorkflowTemplate.t() | nil
        }

  defstruct [:parent, :template]

  field :parent, 1, type: :string
  field :template, 2, type: Google.Cloud.Dataproc.V1beta2.WorkflowTemplate
end

defmodule Google.Cloud.Dataproc.V1beta2.GetWorkflowTemplateRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          version: integer
        }

  defstruct [:name, :version]

  field :name, 1, type: :string
  field :version, 2, type: :int32
end

defmodule Google.Cloud.Dataproc.V1beta2.InstantiateWorkflowTemplateRequest.ParametersEntry do
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

defmodule Google.Cloud.Dataproc.V1beta2.InstantiateWorkflowTemplateRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          version: integer,
          instance_id: String.t(),
          request_id: String.t(),
          parameters: %{String.t() => String.t()}
        }

  defstruct [:name, :version, :instance_id, :request_id, :parameters]

  field :name, 1, type: :string
  field :version, 2, type: :int32
  field :instance_id, 3, type: :string, deprecated: true
  field :request_id, 5, type: :string

  field :parameters, 4,
    repeated: true,
    type: Google.Cloud.Dataproc.V1beta2.InstantiateWorkflowTemplateRequest.ParametersEntry,
    map: true
end

defmodule Google.Cloud.Dataproc.V1beta2.InstantiateInlineWorkflowTemplateRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          template: Google.Cloud.Dataproc.V1beta2.WorkflowTemplate.t() | nil,
          instance_id: String.t(),
          request_id: String.t()
        }

  defstruct [:parent, :template, :instance_id, :request_id]

  field :parent, 1, type: :string
  field :template, 2, type: Google.Cloud.Dataproc.V1beta2.WorkflowTemplate
  field :instance_id, 3, type: :string
  field :request_id, 4, type: :string
end

defmodule Google.Cloud.Dataproc.V1beta2.UpdateWorkflowTemplateRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          template: Google.Cloud.Dataproc.V1beta2.WorkflowTemplate.t() | nil
        }

  defstruct [:template]

  field :template, 1, type: Google.Cloud.Dataproc.V1beta2.WorkflowTemplate
end

defmodule Google.Cloud.Dataproc.V1beta2.ListWorkflowTemplatesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct [:parent, :page_size, :page_token]

  field :parent, 1, type: :string
  field :page_size, 2, type: :int32
  field :page_token, 3, type: :string
end

defmodule Google.Cloud.Dataproc.V1beta2.ListWorkflowTemplatesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          templates: [Google.Cloud.Dataproc.V1beta2.WorkflowTemplate.t()],
          next_page_token: String.t()
        }

  defstruct [:templates, :next_page_token]

  field :templates, 1, repeated: true, type: Google.Cloud.Dataproc.V1beta2.WorkflowTemplate
  field :next_page_token, 2, type: :string
end

defmodule Google.Cloud.Dataproc.V1beta2.DeleteWorkflowTemplateRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          version: integer
        }

  defstruct [:name, :version]

  field :name, 1, type: :string
  field :version, 2, type: :int32
end
