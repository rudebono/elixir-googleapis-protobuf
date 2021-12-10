defmodule Google.Cloud.Bigquery.Logging.V1.AuditData do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          request:
            {:table_insert_request, Google.Cloud.Bigquery.Logging.V1.TableInsertRequest.t() | nil}
            | {:table_update_request,
               Google.Cloud.Bigquery.Logging.V1.TableUpdateRequest.t() | nil}
            | {:dataset_list_request,
               Google.Cloud.Bigquery.Logging.V1.DatasetListRequest.t() | nil}
            | {:dataset_insert_request,
               Google.Cloud.Bigquery.Logging.V1.DatasetInsertRequest.t() | nil}
            | {:dataset_update_request,
               Google.Cloud.Bigquery.Logging.V1.DatasetUpdateRequest.t() | nil}
            | {:job_insert_request, Google.Cloud.Bigquery.Logging.V1.JobInsertRequest.t() | nil}
            | {:job_query_request, Google.Cloud.Bigquery.Logging.V1.JobQueryRequest.t() | nil}
            | {:job_get_query_results_request,
               Google.Cloud.Bigquery.Logging.V1.JobGetQueryResultsRequest.t() | nil}
            | {:table_data_list_request,
               Google.Cloud.Bigquery.Logging.V1.TableDataListRequest.t() | nil}
            | {:set_iam_policy_request, Google.Iam.V1.SetIamPolicyRequest.t() | nil},
          response:
            {:table_insert_response,
             Google.Cloud.Bigquery.Logging.V1.TableInsertResponse.t() | nil}
            | {:table_update_response,
               Google.Cloud.Bigquery.Logging.V1.TableUpdateResponse.t() | nil}
            | {:dataset_insert_response,
               Google.Cloud.Bigquery.Logging.V1.DatasetInsertResponse.t() | nil}
            | {:dataset_update_response,
               Google.Cloud.Bigquery.Logging.V1.DatasetUpdateResponse.t() | nil}
            | {:job_insert_response, Google.Cloud.Bigquery.Logging.V1.JobInsertResponse.t() | nil}
            | {:job_query_response, Google.Cloud.Bigquery.Logging.V1.JobQueryResponse.t() | nil}
            | {:job_get_query_results_response,
               Google.Cloud.Bigquery.Logging.V1.JobGetQueryResultsResponse.t() | nil}
            | {:job_query_done_response,
               Google.Cloud.Bigquery.Logging.V1.JobQueryDoneResponse.t() | nil}
            | {:policy_response, Google.Iam.V1.Policy.t() | nil},
          job_completed_event: Google.Cloud.Bigquery.Logging.V1.JobCompletedEvent.t() | nil,
          table_data_read_events: [Google.Cloud.Bigquery.Logging.V1.TableDataReadEvent.t()]
        }

  defstruct request: nil,
            response: nil,
            job_completed_event: nil,
            table_data_read_events: []

  oneof :request, 0
  oneof :response, 1

  field :table_insert_request, 1,
    type: Google.Cloud.Bigquery.Logging.V1.TableInsertRequest,
    json_name: "tableInsertRequest",
    oneof: 0

  field :table_update_request, 16,
    type: Google.Cloud.Bigquery.Logging.V1.TableUpdateRequest,
    json_name: "tableUpdateRequest",
    oneof: 0

  field :dataset_list_request, 2,
    type: Google.Cloud.Bigquery.Logging.V1.DatasetListRequest,
    json_name: "datasetListRequest",
    oneof: 0

  field :dataset_insert_request, 3,
    type: Google.Cloud.Bigquery.Logging.V1.DatasetInsertRequest,
    json_name: "datasetInsertRequest",
    oneof: 0

  field :dataset_update_request, 4,
    type: Google.Cloud.Bigquery.Logging.V1.DatasetUpdateRequest,
    json_name: "datasetUpdateRequest",
    oneof: 0

  field :job_insert_request, 5,
    type: Google.Cloud.Bigquery.Logging.V1.JobInsertRequest,
    json_name: "jobInsertRequest",
    oneof: 0

  field :job_query_request, 6,
    type: Google.Cloud.Bigquery.Logging.V1.JobQueryRequest,
    json_name: "jobQueryRequest",
    oneof: 0

  field :job_get_query_results_request, 7,
    type: Google.Cloud.Bigquery.Logging.V1.JobGetQueryResultsRequest,
    json_name: "jobGetQueryResultsRequest",
    oneof: 0

  field :table_data_list_request, 8,
    type: Google.Cloud.Bigquery.Logging.V1.TableDataListRequest,
    json_name: "tableDataListRequest",
    oneof: 0

  field :set_iam_policy_request, 20,
    type: Google.Iam.V1.SetIamPolicyRequest,
    json_name: "setIamPolicyRequest",
    oneof: 0

  field :table_insert_response, 9,
    type: Google.Cloud.Bigquery.Logging.V1.TableInsertResponse,
    json_name: "tableInsertResponse",
    oneof: 1

  field :table_update_response, 10,
    type: Google.Cloud.Bigquery.Logging.V1.TableUpdateResponse,
    json_name: "tableUpdateResponse",
    oneof: 1

  field :dataset_insert_response, 11,
    type: Google.Cloud.Bigquery.Logging.V1.DatasetInsertResponse,
    json_name: "datasetInsertResponse",
    oneof: 1

  field :dataset_update_response, 12,
    type: Google.Cloud.Bigquery.Logging.V1.DatasetUpdateResponse,
    json_name: "datasetUpdateResponse",
    oneof: 1

  field :job_insert_response, 18,
    type: Google.Cloud.Bigquery.Logging.V1.JobInsertResponse,
    json_name: "jobInsertResponse",
    oneof: 1

  field :job_query_response, 13,
    type: Google.Cloud.Bigquery.Logging.V1.JobQueryResponse,
    json_name: "jobQueryResponse",
    oneof: 1

  field :job_get_query_results_response, 14,
    type: Google.Cloud.Bigquery.Logging.V1.JobGetQueryResultsResponse,
    json_name: "jobGetQueryResultsResponse",
    oneof: 1

  field :job_query_done_response, 15,
    type: Google.Cloud.Bigquery.Logging.V1.JobQueryDoneResponse,
    json_name: "jobQueryDoneResponse",
    oneof: 1

  field :policy_response, 21, type: Google.Iam.V1.Policy, json_name: "policyResponse", oneof: 1

  field :job_completed_event, 17,
    type: Google.Cloud.Bigquery.Logging.V1.JobCompletedEvent,
    json_name: "jobCompletedEvent"

  field :table_data_read_events, 19,
    repeated: true,
    type: Google.Cloud.Bigquery.Logging.V1.TableDataReadEvent,
    json_name: "tableDataReadEvents"
end
defmodule Google.Cloud.Bigquery.Logging.V1.TableInsertRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource: Google.Cloud.Bigquery.Logging.V1.Table.t() | nil
        }

  defstruct resource: nil

  field :resource, 1, type: Google.Cloud.Bigquery.Logging.V1.Table
end
defmodule Google.Cloud.Bigquery.Logging.V1.TableUpdateRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource: Google.Cloud.Bigquery.Logging.V1.Table.t() | nil
        }

  defstruct resource: nil

  field :resource, 1, type: Google.Cloud.Bigquery.Logging.V1.Table
end
defmodule Google.Cloud.Bigquery.Logging.V1.TableInsertResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource: Google.Cloud.Bigquery.Logging.V1.Table.t() | nil
        }

  defstruct resource: nil

  field :resource, 1, type: Google.Cloud.Bigquery.Logging.V1.Table
end
defmodule Google.Cloud.Bigquery.Logging.V1.TableUpdateResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource: Google.Cloud.Bigquery.Logging.V1.Table.t() | nil
        }

  defstruct resource: nil

  field :resource, 1, type: Google.Cloud.Bigquery.Logging.V1.Table
end
defmodule Google.Cloud.Bigquery.Logging.V1.DatasetListRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          list_all: boolean
        }

  defstruct list_all: false

  field :list_all, 1, type: :bool, json_name: "listAll"
end
defmodule Google.Cloud.Bigquery.Logging.V1.DatasetInsertRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource: Google.Cloud.Bigquery.Logging.V1.Dataset.t() | nil
        }

  defstruct resource: nil

  field :resource, 1, type: Google.Cloud.Bigquery.Logging.V1.Dataset
end
defmodule Google.Cloud.Bigquery.Logging.V1.DatasetInsertResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource: Google.Cloud.Bigquery.Logging.V1.Dataset.t() | nil
        }

  defstruct resource: nil

  field :resource, 1, type: Google.Cloud.Bigquery.Logging.V1.Dataset
end
defmodule Google.Cloud.Bigquery.Logging.V1.DatasetUpdateRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource: Google.Cloud.Bigquery.Logging.V1.Dataset.t() | nil
        }

  defstruct resource: nil

  field :resource, 1, type: Google.Cloud.Bigquery.Logging.V1.Dataset
end
defmodule Google.Cloud.Bigquery.Logging.V1.DatasetUpdateResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource: Google.Cloud.Bigquery.Logging.V1.Dataset.t() | nil
        }

  defstruct resource: nil

  field :resource, 1, type: Google.Cloud.Bigquery.Logging.V1.Dataset
end
defmodule Google.Cloud.Bigquery.Logging.V1.JobInsertRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource: Google.Cloud.Bigquery.Logging.V1.Job.t() | nil
        }

  defstruct resource: nil

  field :resource, 1, type: Google.Cloud.Bigquery.Logging.V1.Job
end
defmodule Google.Cloud.Bigquery.Logging.V1.JobInsertResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource: Google.Cloud.Bigquery.Logging.V1.Job.t() | nil
        }

  defstruct resource: nil

  field :resource, 1, type: Google.Cloud.Bigquery.Logging.V1.Job
end
defmodule Google.Cloud.Bigquery.Logging.V1.JobQueryRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          query: String.t(),
          max_results: non_neg_integer,
          default_dataset: Google.Cloud.Bigquery.Logging.V1.DatasetName.t() | nil,
          project_id: String.t(),
          dry_run: boolean
        }

  defstruct query: "",
            max_results: 0,
            default_dataset: nil,
            project_id: "",
            dry_run: false

  field :query, 1, type: :string
  field :max_results, 2, type: :uint32, json_name: "maxResults"

  field :default_dataset, 3,
    type: Google.Cloud.Bigquery.Logging.V1.DatasetName,
    json_name: "defaultDataset"

  field :project_id, 4, type: :string, json_name: "projectId"
  field :dry_run, 5, type: :bool, json_name: "dryRun"
end
defmodule Google.Cloud.Bigquery.Logging.V1.JobQueryResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          total_results: non_neg_integer,
          job: Google.Cloud.Bigquery.Logging.V1.Job.t() | nil
        }

  defstruct total_results: 0,
            job: nil

  field :total_results, 1, type: :uint64, json_name: "totalResults"
  field :job, 2, type: Google.Cloud.Bigquery.Logging.V1.Job
end
defmodule Google.Cloud.Bigquery.Logging.V1.JobGetQueryResultsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          max_results: non_neg_integer,
          start_row: non_neg_integer
        }

  defstruct max_results: 0,
            start_row: 0

  field :max_results, 1, type: :uint32, json_name: "maxResults"
  field :start_row, 2, type: :uint64, json_name: "startRow"
end
defmodule Google.Cloud.Bigquery.Logging.V1.JobGetQueryResultsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          total_results: non_neg_integer,
          job: Google.Cloud.Bigquery.Logging.V1.Job.t() | nil
        }

  defstruct total_results: 0,
            job: nil

  field :total_results, 1, type: :uint64, json_name: "totalResults"
  field :job, 2, type: Google.Cloud.Bigquery.Logging.V1.Job
end
defmodule Google.Cloud.Bigquery.Logging.V1.JobQueryDoneResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          job: Google.Cloud.Bigquery.Logging.V1.Job.t() | nil
        }

  defstruct job: nil

  field :job, 1, type: Google.Cloud.Bigquery.Logging.V1.Job
end
defmodule Google.Cloud.Bigquery.Logging.V1.JobCompletedEvent do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          event_name: String.t(),
          job: Google.Cloud.Bigquery.Logging.V1.Job.t() | nil
        }

  defstruct event_name: "",
            job: nil

  field :event_name, 1, type: :string, json_name: "eventName"
  field :job, 2, type: Google.Cloud.Bigquery.Logging.V1.Job
end
defmodule Google.Cloud.Bigquery.Logging.V1.TableDataReadEvent do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          table_name: Google.Cloud.Bigquery.Logging.V1.TableName.t() | nil,
          referenced_fields: [String.t()]
        }

  defstruct table_name: nil,
            referenced_fields: []

  field :table_name, 1, type: Google.Cloud.Bigquery.Logging.V1.TableName, json_name: "tableName"
  field :referenced_fields, 2, repeated: true, type: :string, json_name: "referencedFields"
end
defmodule Google.Cloud.Bigquery.Logging.V1.TableDataListRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          start_row: non_neg_integer,
          max_results: non_neg_integer
        }

  defstruct start_row: 0,
            max_results: 0

  field :start_row, 1, type: :uint64, json_name: "startRow"
  field :max_results, 2, type: :uint32, json_name: "maxResults"
end
defmodule Google.Cloud.Bigquery.Logging.V1.Table do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          table_name: Google.Cloud.Bigquery.Logging.V1.TableName.t() | nil,
          info: Google.Cloud.Bigquery.Logging.V1.TableInfo.t() | nil,
          schema_json: String.t(),
          view: Google.Cloud.Bigquery.Logging.V1.TableViewDefinition.t() | nil,
          expire_time: Google.Protobuf.Timestamp.t() | nil,
          create_time: Google.Protobuf.Timestamp.t() | nil,
          truncate_time: Google.Protobuf.Timestamp.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil,
          encryption: Google.Cloud.Bigquery.Logging.V1.EncryptionInfo.t() | nil
        }

  defstruct table_name: nil,
            info: nil,
            schema_json: "",
            view: nil,
            expire_time: nil,
            create_time: nil,
            truncate_time: nil,
            update_time: nil,
            encryption: nil

  field :table_name, 1, type: Google.Cloud.Bigquery.Logging.V1.TableName, json_name: "tableName"
  field :info, 2, type: Google.Cloud.Bigquery.Logging.V1.TableInfo
  field :schema_json, 8, type: :string, json_name: "schemaJson"
  field :view, 4, type: Google.Cloud.Bigquery.Logging.V1.TableViewDefinition
  field :expire_time, 5, type: Google.Protobuf.Timestamp, json_name: "expireTime"
  field :create_time, 6, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :truncate_time, 7, type: Google.Protobuf.Timestamp, json_name: "truncateTime"
  field :update_time, 9, type: Google.Protobuf.Timestamp, json_name: "updateTime"
  field :encryption, 10, type: Google.Cloud.Bigquery.Logging.V1.EncryptionInfo
end
defmodule Google.Cloud.Bigquery.Logging.V1.TableInfo.LabelsEntry do
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
defmodule Google.Cloud.Bigquery.Logging.V1.TableInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          friendly_name: String.t(),
          description: String.t(),
          labels: %{String.t() => String.t()}
        }

  defstruct friendly_name: "",
            description: "",
            labels: %{}

  field :friendly_name, 1, type: :string, json_name: "friendlyName"
  field :description, 2, type: :string

  field :labels, 3,
    repeated: true,
    type: Google.Cloud.Bigquery.Logging.V1.TableInfo.LabelsEntry,
    map: true
end
defmodule Google.Cloud.Bigquery.Logging.V1.TableViewDefinition do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          query: String.t()
        }

  defstruct query: ""

  field :query, 1, type: :string
end
defmodule Google.Cloud.Bigquery.Logging.V1.Dataset do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          dataset_name: Google.Cloud.Bigquery.Logging.V1.DatasetName.t() | nil,
          info: Google.Cloud.Bigquery.Logging.V1.DatasetInfo.t() | nil,
          create_time: Google.Protobuf.Timestamp.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil,
          acl: Google.Cloud.Bigquery.Logging.V1.BigQueryAcl.t() | nil,
          default_table_expire_duration: Google.Protobuf.Duration.t() | nil
        }

  defstruct dataset_name: nil,
            info: nil,
            create_time: nil,
            update_time: nil,
            acl: nil,
            default_table_expire_duration: nil

  field :dataset_name, 1,
    type: Google.Cloud.Bigquery.Logging.V1.DatasetName,
    json_name: "datasetName"

  field :info, 2, type: Google.Cloud.Bigquery.Logging.V1.DatasetInfo
  field :create_time, 4, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :update_time, 5, type: Google.Protobuf.Timestamp, json_name: "updateTime"
  field :acl, 6, type: Google.Cloud.Bigquery.Logging.V1.BigQueryAcl

  field :default_table_expire_duration, 8,
    type: Google.Protobuf.Duration,
    json_name: "defaultTableExpireDuration"
end
defmodule Google.Cloud.Bigquery.Logging.V1.DatasetInfo.LabelsEntry do
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
defmodule Google.Cloud.Bigquery.Logging.V1.DatasetInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          friendly_name: String.t(),
          description: String.t(),
          labels: %{String.t() => String.t()}
        }

  defstruct friendly_name: "",
            description: "",
            labels: %{}

  field :friendly_name, 1, type: :string, json_name: "friendlyName"
  field :description, 2, type: :string

  field :labels, 3,
    repeated: true,
    type: Google.Cloud.Bigquery.Logging.V1.DatasetInfo.LabelsEntry,
    map: true
end
defmodule Google.Cloud.Bigquery.Logging.V1.BigQueryAcl.Entry do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          role: String.t(),
          group_email: String.t(),
          user_email: String.t(),
          domain: String.t(),
          special_group: String.t(),
          view_name: Google.Cloud.Bigquery.Logging.V1.TableName.t() | nil
        }

  defstruct role: "",
            group_email: "",
            user_email: "",
            domain: "",
            special_group: "",
            view_name: nil

  field :role, 1, type: :string
  field :group_email, 2, type: :string, json_name: "groupEmail"
  field :user_email, 3, type: :string, json_name: "userEmail"
  field :domain, 4, type: :string
  field :special_group, 5, type: :string, json_name: "specialGroup"
  field :view_name, 6, type: Google.Cloud.Bigquery.Logging.V1.TableName, json_name: "viewName"
end
defmodule Google.Cloud.Bigquery.Logging.V1.BigQueryAcl do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          entries: [Google.Cloud.Bigquery.Logging.V1.BigQueryAcl.Entry.t()]
        }

  defstruct entries: []

  field :entries, 1, repeated: true, type: Google.Cloud.Bigquery.Logging.V1.BigQueryAcl.Entry
end
defmodule Google.Cloud.Bigquery.Logging.V1.Job do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          job_name: Google.Cloud.Bigquery.Logging.V1.JobName.t() | nil,
          job_configuration: Google.Cloud.Bigquery.Logging.V1.JobConfiguration.t() | nil,
          job_status: Google.Cloud.Bigquery.Logging.V1.JobStatus.t() | nil,
          job_statistics: Google.Cloud.Bigquery.Logging.V1.JobStatistics.t() | nil
        }

  defstruct job_name: nil,
            job_configuration: nil,
            job_status: nil,
            job_statistics: nil

  field :job_name, 1, type: Google.Cloud.Bigquery.Logging.V1.JobName, json_name: "jobName"

  field :job_configuration, 2,
    type: Google.Cloud.Bigquery.Logging.V1.JobConfiguration,
    json_name: "jobConfiguration"

  field :job_status, 3, type: Google.Cloud.Bigquery.Logging.V1.JobStatus, json_name: "jobStatus"

  field :job_statistics, 4,
    type: Google.Cloud.Bigquery.Logging.V1.JobStatistics,
    json_name: "jobStatistics"
end
defmodule Google.Cloud.Bigquery.Logging.V1.JobConfiguration.Query do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          query: String.t(),
          destination_table: Google.Cloud.Bigquery.Logging.V1.TableName.t() | nil,
          create_disposition: String.t(),
          write_disposition: String.t(),
          default_dataset: Google.Cloud.Bigquery.Logging.V1.DatasetName.t() | nil,
          table_definitions: [Google.Cloud.Bigquery.Logging.V1.TableDefinition.t()],
          query_priority: String.t(),
          destination_table_encryption: Google.Cloud.Bigquery.Logging.V1.EncryptionInfo.t() | nil,
          statement_type: String.t()
        }

  defstruct query: "",
            destination_table: nil,
            create_disposition: "",
            write_disposition: "",
            default_dataset: nil,
            table_definitions: [],
            query_priority: "",
            destination_table_encryption: nil,
            statement_type: ""

  field :query, 1, type: :string

  field :destination_table, 2,
    type: Google.Cloud.Bigquery.Logging.V1.TableName,
    json_name: "destinationTable"

  field :create_disposition, 3, type: :string, json_name: "createDisposition"
  field :write_disposition, 4, type: :string, json_name: "writeDisposition"

  field :default_dataset, 5,
    type: Google.Cloud.Bigquery.Logging.V1.DatasetName,
    json_name: "defaultDataset"

  field :table_definitions, 6,
    repeated: true,
    type: Google.Cloud.Bigquery.Logging.V1.TableDefinition,
    json_name: "tableDefinitions"

  field :query_priority, 7, type: :string, json_name: "queryPriority"

  field :destination_table_encryption, 8,
    type: Google.Cloud.Bigquery.Logging.V1.EncryptionInfo,
    json_name: "destinationTableEncryption"

  field :statement_type, 9, type: :string, json_name: "statementType"
end
defmodule Google.Cloud.Bigquery.Logging.V1.JobConfiguration.Load do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          source_uris: [String.t()],
          schema_json: String.t(),
          destination_table: Google.Cloud.Bigquery.Logging.V1.TableName.t() | nil,
          create_disposition: String.t(),
          write_disposition: String.t(),
          destination_table_encryption: Google.Cloud.Bigquery.Logging.V1.EncryptionInfo.t() | nil
        }

  defstruct source_uris: [],
            schema_json: "",
            destination_table: nil,
            create_disposition: "",
            write_disposition: "",
            destination_table_encryption: nil

  field :source_uris, 1, repeated: true, type: :string, json_name: "sourceUris"
  field :schema_json, 6, type: :string, json_name: "schemaJson"

  field :destination_table, 3,
    type: Google.Cloud.Bigquery.Logging.V1.TableName,
    json_name: "destinationTable"

  field :create_disposition, 4, type: :string, json_name: "createDisposition"
  field :write_disposition, 5, type: :string, json_name: "writeDisposition"

  field :destination_table_encryption, 7,
    type: Google.Cloud.Bigquery.Logging.V1.EncryptionInfo,
    json_name: "destinationTableEncryption"
end
defmodule Google.Cloud.Bigquery.Logging.V1.JobConfiguration.Extract do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          destination_uris: [String.t()],
          source_table: Google.Cloud.Bigquery.Logging.V1.TableName.t() | nil
        }

  defstruct destination_uris: [],
            source_table: nil

  field :destination_uris, 1, repeated: true, type: :string, json_name: "destinationUris"

  field :source_table, 2,
    type: Google.Cloud.Bigquery.Logging.V1.TableName,
    json_name: "sourceTable"
end
defmodule Google.Cloud.Bigquery.Logging.V1.JobConfiguration.TableCopy do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          source_tables: [Google.Cloud.Bigquery.Logging.V1.TableName.t()],
          destination_table: Google.Cloud.Bigquery.Logging.V1.TableName.t() | nil,
          create_disposition: String.t(),
          write_disposition: String.t(),
          destination_table_encryption: Google.Cloud.Bigquery.Logging.V1.EncryptionInfo.t() | nil
        }

  defstruct source_tables: [],
            destination_table: nil,
            create_disposition: "",
            write_disposition: "",
            destination_table_encryption: nil

  field :source_tables, 1,
    repeated: true,
    type: Google.Cloud.Bigquery.Logging.V1.TableName,
    json_name: "sourceTables"

  field :destination_table, 2,
    type: Google.Cloud.Bigquery.Logging.V1.TableName,
    json_name: "destinationTable"

  field :create_disposition, 3, type: :string, json_name: "createDisposition"
  field :write_disposition, 4, type: :string, json_name: "writeDisposition"

  field :destination_table_encryption, 5,
    type: Google.Cloud.Bigquery.Logging.V1.EncryptionInfo,
    json_name: "destinationTableEncryption"
end
defmodule Google.Cloud.Bigquery.Logging.V1.JobConfiguration.LabelsEntry do
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
defmodule Google.Cloud.Bigquery.Logging.V1.JobConfiguration do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          configuration:
            {:query, Google.Cloud.Bigquery.Logging.V1.JobConfiguration.Query.t() | nil}
            | {:load, Google.Cloud.Bigquery.Logging.V1.JobConfiguration.Load.t() | nil}
            | {:extract, Google.Cloud.Bigquery.Logging.V1.JobConfiguration.Extract.t() | nil}
            | {:table_copy, Google.Cloud.Bigquery.Logging.V1.JobConfiguration.TableCopy.t() | nil},
          dry_run: boolean,
          labels: %{String.t() => String.t()}
        }

  defstruct configuration: nil,
            dry_run: false,
            labels: %{}

  oneof :configuration, 0

  field :query, 5, type: Google.Cloud.Bigquery.Logging.V1.JobConfiguration.Query, oneof: 0
  field :load, 6, type: Google.Cloud.Bigquery.Logging.V1.JobConfiguration.Load, oneof: 0
  field :extract, 7, type: Google.Cloud.Bigquery.Logging.V1.JobConfiguration.Extract, oneof: 0

  field :table_copy, 8,
    type: Google.Cloud.Bigquery.Logging.V1.JobConfiguration.TableCopy,
    json_name: "tableCopy",
    oneof: 0

  field :dry_run, 9, type: :bool, json_name: "dryRun"

  field :labels, 3,
    repeated: true,
    type: Google.Cloud.Bigquery.Logging.V1.JobConfiguration.LabelsEntry,
    map: true
end
defmodule Google.Cloud.Bigquery.Logging.V1.TableDefinition do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          source_uris: [String.t()]
        }

  defstruct name: "",
            source_uris: []

  field :name, 1, type: :string
  field :source_uris, 2, repeated: true, type: :string, json_name: "sourceUris"
end
defmodule Google.Cloud.Bigquery.Logging.V1.JobStatus do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          state: String.t(),
          error: Google.Rpc.Status.t() | nil,
          additional_errors: [Google.Rpc.Status.t()]
        }

  defstruct state: "",
            error: nil,
            additional_errors: []

  field :state, 1, type: :string
  field :error, 2, type: Google.Rpc.Status

  field :additional_errors, 3,
    repeated: true,
    type: Google.Rpc.Status,
    json_name: "additionalErrors"
end
defmodule Google.Cloud.Bigquery.Logging.V1.JobStatistics.ReservationResourceUsage do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          slot_ms: integer
        }

  defstruct name: "",
            slot_ms: 0

  field :name, 1, type: :string
  field :slot_ms, 2, type: :int64, json_name: "slotMs"
end
defmodule Google.Cloud.Bigquery.Logging.V1.JobStatistics do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          create_time: Google.Protobuf.Timestamp.t() | nil,
          start_time: Google.Protobuf.Timestamp.t() | nil,
          end_time: Google.Protobuf.Timestamp.t() | nil,
          total_processed_bytes: integer,
          total_billed_bytes: integer,
          billing_tier: integer,
          total_slot_ms: integer,
          reservation_usage: [
            Google.Cloud.Bigquery.Logging.V1.JobStatistics.ReservationResourceUsage.t()
          ],
          referenced_tables: [Google.Cloud.Bigquery.Logging.V1.TableName.t()],
          total_tables_processed: integer,
          referenced_views: [Google.Cloud.Bigquery.Logging.V1.TableName.t()],
          total_views_processed: integer,
          query_output_row_count: integer,
          total_load_output_bytes: integer
        }

  defstruct create_time: nil,
            start_time: nil,
            end_time: nil,
            total_processed_bytes: 0,
            total_billed_bytes: 0,
            billing_tier: 0,
            total_slot_ms: 0,
            reservation_usage: [],
            referenced_tables: [],
            total_tables_processed: 0,
            referenced_views: [],
            total_views_processed: 0,
            query_output_row_count: 0,
            total_load_output_bytes: 0

  field :create_time, 1, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :start_time, 2, type: Google.Protobuf.Timestamp, json_name: "startTime"
  field :end_time, 3, type: Google.Protobuf.Timestamp, json_name: "endTime"
  field :total_processed_bytes, 4, type: :int64, json_name: "totalProcessedBytes"
  field :total_billed_bytes, 5, type: :int64, json_name: "totalBilledBytes"
  field :billing_tier, 7, type: :int32, json_name: "billingTier"
  field :total_slot_ms, 8, type: :int64, json_name: "totalSlotMs"

  field :reservation_usage, 14,
    repeated: true,
    type: Google.Cloud.Bigquery.Logging.V1.JobStatistics.ReservationResourceUsage,
    json_name: "reservationUsage"

  field :referenced_tables, 9,
    repeated: true,
    type: Google.Cloud.Bigquery.Logging.V1.TableName,
    json_name: "referencedTables"

  field :total_tables_processed, 10, type: :int32, json_name: "totalTablesProcessed"

  field :referenced_views, 11,
    repeated: true,
    type: Google.Cloud.Bigquery.Logging.V1.TableName,
    json_name: "referencedViews"

  field :total_views_processed, 12, type: :int32, json_name: "totalViewsProcessed"
  field :query_output_row_count, 15, type: :int64, json_name: "queryOutputRowCount"
  field :total_load_output_bytes, 13, type: :int64, json_name: "totalLoadOutputBytes"
end
defmodule Google.Cloud.Bigquery.Logging.V1.DatasetName do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          project_id: String.t(),
          dataset_id: String.t()
        }

  defstruct project_id: "",
            dataset_id: ""

  field :project_id, 1, type: :string, json_name: "projectId"
  field :dataset_id, 2, type: :string, json_name: "datasetId"
end
defmodule Google.Cloud.Bigquery.Logging.V1.TableName do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          project_id: String.t(),
          dataset_id: String.t(),
          table_id: String.t()
        }

  defstruct project_id: "",
            dataset_id: "",
            table_id: ""

  field :project_id, 1, type: :string, json_name: "projectId"
  field :dataset_id, 2, type: :string, json_name: "datasetId"
  field :table_id, 3, type: :string, json_name: "tableId"
end
defmodule Google.Cloud.Bigquery.Logging.V1.JobName do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          project_id: String.t(),
          job_id: String.t(),
          location: String.t()
        }

  defstruct project_id: "",
            job_id: "",
            location: ""

  field :project_id, 1, type: :string, json_name: "projectId"
  field :job_id, 2, type: :string, json_name: "jobId"
  field :location, 3, type: :string
end
defmodule Google.Cloud.Bigquery.Logging.V1.EncryptionInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          kms_key_name: String.t()
        }

  defstruct kms_key_name: ""

  field :kms_key_name, 1, type: :string, json_name: "kmsKeyName"
end
