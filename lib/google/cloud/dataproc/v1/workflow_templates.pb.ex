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

  defstruct key: "",
            value: ""

  field :key, 1, type: :string
  field :value, 2, type: :string
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

  defstruct id: "",
            name: "",
            version: 0,
            create_time: nil,
            update_time: nil,
            labels: %{},
            placement: nil,
            jobs: [],
            parameters: [],
            dag_timeout: nil

  field :id, 2, type: :string, deprecated: false
  field :name, 1, type: :string, deprecated: false
  field :version, 3, type: :int32, deprecated: false

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
    type: Google.Cloud.Dataproc.V1.WorkflowTemplate.LabelsEntry,
    map: true,
    deprecated: false

  field :placement, 7, type: Google.Cloud.Dataproc.V1.WorkflowTemplatePlacement, deprecated: false
  field :jobs, 8, repeated: true, type: Google.Cloud.Dataproc.V1.OrderedJob, deprecated: false

  field :parameters, 9,
    repeated: true,
    type: Google.Cloud.Dataproc.V1.TemplateParameter,
    deprecated: false

  field :dag_timeout, 10,
    type: Google.Protobuf.Duration,
    json_name: "dagTimeout",
    deprecated: false
end
defmodule Google.Cloud.Dataproc.V1.WorkflowTemplatePlacement do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          placement:
            {:managed_cluster, Google.Cloud.Dataproc.V1.ManagedCluster.t() | nil}
            | {:cluster_selector, Google.Cloud.Dataproc.V1.ClusterSelector.t() | nil}
        }

  defstruct placement: nil

  oneof :placement, 0

  field :managed_cluster, 1,
    type: Google.Cloud.Dataproc.V1.ManagedCluster,
    json_name: "managedCluster",
    oneof: 0

  field :cluster_selector, 2,
    type: Google.Cloud.Dataproc.V1.ClusterSelector,
    json_name: "clusterSelector",
    oneof: 0
end
defmodule Google.Cloud.Dataproc.V1.ManagedCluster.LabelsEntry do
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
defmodule Google.Cloud.Dataproc.V1.ManagedCluster do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          cluster_name: String.t(),
          config: Google.Cloud.Dataproc.V1.ClusterConfig.t() | nil,
          labels: %{String.t() => String.t()}
        }

  defstruct cluster_name: "",
            config: nil,
            labels: %{}

  field :cluster_name, 2, type: :string, json_name: "clusterName", deprecated: false
  field :config, 3, type: Google.Cloud.Dataproc.V1.ClusterConfig, deprecated: false

  field :labels, 4,
    repeated: true,
    type: Google.Cloud.Dataproc.V1.ManagedCluster.LabelsEntry,
    map: true,
    deprecated: false
end
defmodule Google.Cloud.Dataproc.V1.ClusterSelector.ClusterLabelsEntry do
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
defmodule Google.Cloud.Dataproc.V1.ClusterSelector do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          zone: String.t(),
          cluster_labels: %{String.t() => String.t()}
        }

  defstruct zone: "",
            cluster_labels: %{}

  field :zone, 1, type: :string, deprecated: false

  field :cluster_labels, 2,
    repeated: true,
    type: Google.Cloud.Dataproc.V1.ClusterSelector.ClusterLabelsEntry,
    json_name: "clusterLabels",
    map: true,
    deprecated: false
end
defmodule Google.Cloud.Dataproc.V1.OrderedJob.LabelsEntry do
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

  defstruct job_type: nil,
            step_id: "",
            labels: %{},
            scheduling: nil,
            prerequisite_step_ids: []

  oneof :job_type, 0

  field :step_id, 1, type: :string, json_name: "stepId", deprecated: false

  field :hadoop_job, 2,
    type: Google.Cloud.Dataproc.V1.HadoopJob,
    json_name: "hadoopJob",
    oneof: 0,
    deprecated: false

  field :spark_job, 3,
    type: Google.Cloud.Dataproc.V1.SparkJob,
    json_name: "sparkJob",
    oneof: 0,
    deprecated: false

  field :pyspark_job, 4,
    type: Google.Cloud.Dataproc.V1.PySparkJob,
    json_name: "pysparkJob",
    oneof: 0,
    deprecated: false

  field :hive_job, 5,
    type: Google.Cloud.Dataproc.V1.HiveJob,
    json_name: "hiveJob",
    oneof: 0,
    deprecated: false

  field :pig_job, 6,
    type: Google.Cloud.Dataproc.V1.PigJob,
    json_name: "pigJob",
    oneof: 0,
    deprecated: false

  field :spark_r_job, 11,
    type: Google.Cloud.Dataproc.V1.SparkRJob,
    json_name: "sparkRJob",
    oneof: 0,
    deprecated: false

  field :spark_sql_job, 7,
    type: Google.Cloud.Dataproc.V1.SparkSqlJob,
    json_name: "sparkSqlJob",
    oneof: 0,
    deprecated: false

  field :presto_job, 12,
    type: Google.Cloud.Dataproc.V1.PrestoJob,
    json_name: "prestoJob",
    oneof: 0,
    deprecated: false

  field :labels, 8,
    repeated: true,
    type: Google.Cloud.Dataproc.V1.OrderedJob.LabelsEntry,
    map: true,
    deprecated: false

  field :scheduling, 9, type: Google.Cloud.Dataproc.V1.JobScheduling, deprecated: false

  field :prerequisite_step_ids, 10,
    repeated: true,
    type: :string,
    json_name: "prerequisiteStepIds",
    deprecated: false
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

  defstruct name: "",
            fields: [],
            description: "",
            validation: nil

  field :name, 1, type: :string, deprecated: false
  field :fields, 2, repeated: true, type: :string, deprecated: false
  field :description, 3, type: :string, deprecated: false
  field :validation, 4, type: Google.Cloud.Dataproc.V1.ParameterValidation, deprecated: false
end
defmodule Google.Cloud.Dataproc.V1.ParameterValidation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          validation_type:
            {:regex, Google.Cloud.Dataproc.V1.RegexValidation.t() | nil}
            | {:values, Google.Cloud.Dataproc.V1.ValueValidation.t() | nil}
        }

  defstruct validation_type: nil

  oneof :validation_type, 0

  field :regex, 1, type: Google.Cloud.Dataproc.V1.RegexValidation, oneof: 0
  field :values, 2, type: Google.Cloud.Dataproc.V1.ValueValidation, oneof: 0
end
defmodule Google.Cloud.Dataproc.V1.RegexValidation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          regexes: [String.t()]
        }

  defstruct regexes: []

  field :regexes, 1, repeated: true, type: :string, deprecated: false
end
defmodule Google.Cloud.Dataproc.V1.ValueValidation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          values: [String.t()]
        }

  defstruct values: []

  field :values, 1, repeated: true, type: :string, deprecated: false
end
defmodule Google.Cloud.Dataproc.V1.WorkflowMetadata.ParametersEntry do
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

  defstruct template: "",
            version: 0,
            create_cluster: nil,
            graph: nil,
            delete_cluster: nil,
            state: :UNKNOWN,
            cluster_name: "",
            parameters: %{},
            start_time: nil,
            end_time: nil,
            cluster_uuid: "",
            dag_timeout: nil,
            dag_start_time: nil,
            dag_end_time: nil

  field :template, 1, type: :string, deprecated: false
  field :version, 2, type: :int32, deprecated: false

  field :create_cluster, 3,
    type: Google.Cloud.Dataproc.V1.ClusterOperation,
    json_name: "createCluster",
    deprecated: false

  field :graph, 4, type: Google.Cloud.Dataproc.V1.WorkflowGraph, deprecated: false

  field :delete_cluster, 5,
    type: Google.Cloud.Dataproc.V1.ClusterOperation,
    json_name: "deleteCluster",
    deprecated: false

  field :state, 6,
    type: Google.Cloud.Dataproc.V1.WorkflowMetadata.State,
    enum: true,
    deprecated: false

  field :cluster_name, 7, type: :string, json_name: "clusterName", deprecated: false

  field :parameters, 8,
    repeated: true,
    type: Google.Cloud.Dataproc.V1.WorkflowMetadata.ParametersEntry,
    map: true

  field :start_time, 9, type: Google.Protobuf.Timestamp, json_name: "startTime", deprecated: false
  field :end_time, 10, type: Google.Protobuf.Timestamp, json_name: "endTime", deprecated: false
  field :cluster_uuid, 11, type: :string, json_name: "clusterUuid", deprecated: false

  field :dag_timeout, 12,
    type: Google.Protobuf.Duration,
    json_name: "dagTimeout",
    deprecated: false

  field :dag_start_time, 13,
    type: Google.Protobuf.Timestamp,
    json_name: "dagStartTime",
    deprecated: false

  field :dag_end_time, 14,
    type: Google.Protobuf.Timestamp,
    json_name: "dagEndTime",
    deprecated: false
end
defmodule Google.Cloud.Dataproc.V1.ClusterOperation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          operation_id: String.t(),
          error: String.t(),
          done: boolean
        }

  defstruct operation_id: "",
            error: "",
            done: false

  field :operation_id, 1, type: :string, json_name: "operationId", deprecated: false
  field :error, 2, type: :string, deprecated: false
  field :done, 3, type: :bool, deprecated: false
end
defmodule Google.Cloud.Dataproc.V1.WorkflowGraph do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          nodes: [Google.Cloud.Dataproc.V1.WorkflowNode.t()]
        }

  defstruct nodes: []

  field :nodes, 1, repeated: true, type: Google.Cloud.Dataproc.V1.WorkflowNode, deprecated: false
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

  defstruct step_id: "",
            prerequisite_step_ids: [],
            job_id: "",
            state: :NODE_STATE_UNSPECIFIED,
            error: ""

  field :step_id, 1, type: :string, json_name: "stepId", deprecated: false

  field :prerequisite_step_ids, 2,
    repeated: true,
    type: :string,
    json_name: "prerequisiteStepIds",
    deprecated: false

  field :job_id, 3, type: :string, json_name: "jobId", deprecated: false

  field :state, 5,
    type: Google.Cloud.Dataproc.V1.WorkflowNode.NodeState,
    enum: true,
    deprecated: false

  field :error, 6, type: :string, deprecated: false
end
defmodule Google.Cloud.Dataproc.V1.CreateWorkflowTemplateRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          template: Google.Cloud.Dataproc.V1.WorkflowTemplate.t() | nil
        }

  defstruct parent: "",
            template: nil

  field :parent, 1, type: :string, deprecated: false
  field :template, 2, type: Google.Cloud.Dataproc.V1.WorkflowTemplate, deprecated: false
end
defmodule Google.Cloud.Dataproc.V1.GetWorkflowTemplateRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          version: integer
        }

  defstruct name: "",
            version: 0

  field :name, 1, type: :string, deprecated: false
  field :version, 2, type: :int32, deprecated: false
end
defmodule Google.Cloud.Dataproc.V1.InstantiateWorkflowTemplateRequest.ParametersEntry do
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
defmodule Google.Cloud.Dataproc.V1.InstantiateWorkflowTemplateRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          version: integer,
          request_id: String.t(),
          parameters: %{String.t() => String.t()}
        }

  defstruct name: "",
            version: 0,
            request_id: "",
            parameters: %{}

  field :name, 1, type: :string, deprecated: false
  field :version, 2, type: :int32, deprecated: false
  field :request_id, 5, type: :string, json_name: "requestId", deprecated: false

  field :parameters, 6,
    repeated: true,
    type: Google.Cloud.Dataproc.V1.InstantiateWorkflowTemplateRequest.ParametersEntry,
    map: true,
    deprecated: false
end
defmodule Google.Cloud.Dataproc.V1.InstantiateInlineWorkflowTemplateRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          template: Google.Cloud.Dataproc.V1.WorkflowTemplate.t() | nil,
          request_id: String.t()
        }

  defstruct parent: "",
            template: nil,
            request_id: ""

  field :parent, 1, type: :string, deprecated: false
  field :template, 2, type: Google.Cloud.Dataproc.V1.WorkflowTemplate, deprecated: false
  field :request_id, 3, type: :string, json_name: "requestId", deprecated: false
end
defmodule Google.Cloud.Dataproc.V1.UpdateWorkflowTemplateRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          template: Google.Cloud.Dataproc.V1.WorkflowTemplate.t() | nil
        }

  defstruct template: nil

  field :template, 1, type: Google.Cloud.Dataproc.V1.WorkflowTemplate, deprecated: false
end
defmodule Google.Cloud.Dataproc.V1.ListWorkflowTemplatesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct parent: "",
            page_size: 0,
            page_token: ""

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
end
defmodule Google.Cloud.Dataproc.V1.ListWorkflowTemplatesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          templates: [Google.Cloud.Dataproc.V1.WorkflowTemplate.t()],
          next_page_token: String.t()
        }

  defstruct templates: [],
            next_page_token: ""

  field :templates, 1,
    repeated: true,
    type: Google.Cloud.Dataproc.V1.WorkflowTemplate,
    deprecated: false

  field :next_page_token, 2, type: :string, json_name: "nextPageToken", deprecated: false
end
defmodule Google.Cloud.Dataproc.V1.DeleteWorkflowTemplateRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          version: integer
        }

  defstruct name: "",
            version: 0

  field :name, 1, type: :string, deprecated: false
  field :version, 2, type: :int32, deprecated: false
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
