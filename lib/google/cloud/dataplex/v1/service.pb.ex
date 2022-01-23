defmodule Google.Cloud.Dataplex.V1.CreateLakeRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          lake_id: String.t(),
          lake: Google.Cloud.Dataplex.V1.Lake.t() | nil,
          validate_only: boolean
        }

  defstruct parent: "",
            lake_id: "",
            lake: nil,
            validate_only: false

  field :parent, 1, type: :string, deprecated: false
  field :lake_id, 2, type: :string, json_name: "lakeId", deprecated: false
  field :lake, 3, type: Google.Cloud.Dataplex.V1.Lake, deprecated: false
  field :validate_only, 4, type: :bool, json_name: "validateOnly", deprecated: false
end
defmodule Google.Cloud.Dataplex.V1.UpdateLakeRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          update_mask: Google.Protobuf.FieldMask.t() | nil,
          lake: Google.Cloud.Dataplex.V1.Lake.t() | nil,
          validate_only: boolean
        }

  defstruct update_mask: nil,
            lake: nil,
            validate_only: false

  field :update_mask, 1,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :lake, 2, type: Google.Cloud.Dataplex.V1.Lake, deprecated: false
  field :validate_only, 3, type: :bool, json_name: "validateOnly", deprecated: false
end
defmodule Google.Cloud.Dataplex.V1.DeleteLakeRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Dataplex.V1.ListLakesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t(),
          filter: String.t(),
          order_by: String.t()
        }

  defstruct parent: "",
            page_size: 0,
            page_token: "",
            filter: "",
            order_by: ""

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
end
defmodule Google.Cloud.Dataplex.V1.ListLakesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          lakes: [Google.Cloud.Dataplex.V1.Lake.t()],
          next_page_token: String.t(),
          unreachable_locations: [String.t()]
        }

  defstruct lakes: [],
            next_page_token: "",
            unreachable_locations: []

  field :lakes, 1, repeated: true, type: Google.Cloud.Dataplex.V1.Lake
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"

  field :unreachable_locations, 3,
    repeated: true,
    type: :string,
    json_name: "unreachableLocations"
end
defmodule Google.Cloud.Dataplex.V1.ListLakeActionsRequest do
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
defmodule Google.Cloud.Dataplex.V1.ListActionsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          actions: [Google.Cloud.Dataplex.V1.Action.t()],
          next_page_token: String.t()
        }

  defstruct actions: [],
            next_page_token: ""

  field :actions, 1, repeated: true, type: Google.Cloud.Dataplex.V1.Action
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Google.Cloud.Dataplex.V1.GetLakeRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Dataplex.V1.CreateZoneRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          zone_id: String.t(),
          zone: Google.Cloud.Dataplex.V1.Zone.t() | nil,
          validate_only: boolean
        }

  defstruct parent: "",
            zone_id: "",
            zone: nil,
            validate_only: false

  field :parent, 1, type: :string, deprecated: false
  field :zone_id, 2, type: :string, json_name: "zoneId", deprecated: false
  field :zone, 3, type: Google.Cloud.Dataplex.V1.Zone, deprecated: false
  field :validate_only, 4, type: :bool, json_name: "validateOnly", deprecated: false
end
defmodule Google.Cloud.Dataplex.V1.UpdateZoneRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          update_mask: Google.Protobuf.FieldMask.t() | nil,
          zone: Google.Cloud.Dataplex.V1.Zone.t() | nil,
          validate_only: boolean
        }

  defstruct update_mask: nil,
            zone: nil,
            validate_only: false

  field :update_mask, 1,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :zone, 2, type: Google.Cloud.Dataplex.V1.Zone, deprecated: false
  field :validate_only, 3, type: :bool, json_name: "validateOnly", deprecated: false
end
defmodule Google.Cloud.Dataplex.V1.DeleteZoneRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Dataplex.V1.ListZonesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t(),
          filter: String.t(),
          order_by: String.t()
        }

  defstruct parent: "",
            page_size: 0,
            page_token: "",
            filter: "",
            order_by: ""

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
end
defmodule Google.Cloud.Dataplex.V1.ListZonesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          zones: [Google.Cloud.Dataplex.V1.Zone.t()],
          next_page_token: String.t()
        }

  defstruct zones: [],
            next_page_token: ""

  field :zones, 1, repeated: true, type: Google.Cloud.Dataplex.V1.Zone
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Google.Cloud.Dataplex.V1.ListZoneActionsRequest do
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
defmodule Google.Cloud.Dataplex.V1.GetZoneRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Dataplex.V1.CreateAssetRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          asset_id: String.t(),
          asset: Google.Cloud.Dataplex.V1.Asset.t() | nil,
          validate_only: boolean
        }

  defstruct parent: "",
            asset_id: "",
            asset: nil,
            validate_only: false

  field :parent, 1, type: :string, deprecated: false
  field :asset_id, 2, type: :string, json_name: "assetId", deprecated: false
  field :asset, 3, type: Google.Cloud.Dataplex.V1.Asset, deprecated: false
  field :validate_only, 4, type: :bool, json_name: "validateOnly", deprecated: false
end
defmodule Google.Cloud.Dataplex.V1.UpdateAssetRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          update_mask: Google.Protobuf.FieldMask.t() | nil,
          asset: Google.Cloud.Dataplex.V1.Asset.t() | nil,
          validate_only: boolean
        }

  defstruct update_mask: nil,
            asset: nil,
            validate_only: false

  field :update_mask, 1,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :asset, 2, type: Google.Cloud.Dataplex.V1.Asset, deprecated: false
  field :validate_only, 3, type: :bool, json_name: "validateOnly", deprecated: false
end
defmodule Google.Cloud.Dataplex.V1.DeleteAssetRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Dataplex.V1.ListAssetsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t(),
          filter: String.t(),
          order_by: String.t()
        }

  defstruct parent: "",
            page_size: 0,
            page_token: "",
            filter: "",
            order_by: ""

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
end
defmodule Google.Cloud.Dataplex.V1.ListAssetsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          assets: [Google.Cloud.Dataplex.V1.Asset.t()],
          next_page_token: String.t()
        }

  defstruct assets: [],
            next_page_token: ""

  field :assets, 1, repeated: true, type: Google.Cloud.Dataplex.V1.Asset
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Google.Cloud.Dataplex.V1.ListAssetActionsRequest do
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
defmodule Google.Cloud.Dataplex.V1.GetAssetRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Dataplex.V1.OperationMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          create_time: Google.Protobuf.Timestamp.t() | nil,
          end_time: Google.Protobuf.Timestamp.t() | nil,
          target: String.t(),
          verb: String.t(),
          status_message: String.t(),
          requested_cancellation: boolean,
          api_version: String.t()
        }

  defstruct create_time: nil,
            end_time: nil,
            target: "",
            verb: "",
            status_message: "",
            requested_cancellation: false,
            api_version: ""

  field :create_time, 1,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :end_time, 2, type: Google.Protobuf.Timestamp, json_name: "endTime", deprecated: false
  field :target, 3, type: :string, deprecated: false
  field :verb, 4, type: :string, deprecated: false
  field :status_message, 5, type: :string, json_name: "statusMessage", deprecated: false

  field :requested_cancellation, 6,
    type: :bool,
    json_name: "requestedCancellation",
    deprecated: false

  field :api_version, 7, type: :string, json_name: "apiVersion", deprecated: false
end
defmodule Google.Cloud.Dataplex.V1.CreateTaskRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          task_id: String.t(),
          task: Google.Cloud.Dataplex.V1.Task.t() | nil,
          validate_only: boolean
        }

  defstruct parent: "",
            task_id: "",
            task: nil,
            validate_only: false

  field :parent, 1, type: :string, deprecated: false
  field :task_id, 2, type: :string, json_name: "taskId", deprecated: false
  field :task, 3, type: Google.Cloud.Dataplex.V1.Task, deprecated: false
  field :validate_only, 4, type: :bool, json_name: "validateOnly", deprecated: false
end
defmodule Google.Cloud.Dataplex.V1.UpdateTaskRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          update_mask: Google.Protobuf.FieldMask.t() | nil,
          task: Google.Cloud.Dataplex.V1.Task.t() | nil,
          validate_only: boolean
        }

  defstruct update_mask: nil,
            task: nil,
            validate_only: false

  field :update_mask, 1,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :task, 2, type: Google.Cloud.Dataplex.V1.Task, deprecated: false
  field :validate_only, 3, type: :bool, json_name: "validateOnly", deprecated: false
end
defmodule Google.Cloud.Dataplex.V1.DeleteTaskRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Dataplex.V1.ListTasksRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t(),
          filter: String.t(),
          order_by: String.t()
        }

  defstruct parent: "",
            page_size: 0,
            page_token: "",
            filter: "",
            order_by: ""

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
end
defmodule Google.Cloud.Dataplex.V1.ListTasksResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          tasks: [Google.Cloud.Dataplex.V1.Task.t()],
          next_page_token: String.t(),
          unreachable_locations: [String.t()]
        }

  defstruct tasks: [],
            next_page_token: "",
            unreachable_locations: []

  field :tasks, 1, repeated: true, type: Google.Cloud.Dataplex.V1.Task
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"

  field :unreachable_locations, 3,
    repeated: true,
    type: :string,
    json_name: "unreachableLocations"
end
defmodule Google.Cloud.Dataplex.V1.GetTaskRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Dataplex.V1.GetJobRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Dataplex.V1.ListJobsRequest do
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
defmodule Google.Cloud.Dataplex.V1.ListJobsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          jobs: [Google.Cloud.Dataplex.V1.Job.t()],
          next_page_token: String.t()
        }

  defstruct jobs: [],
            next_page_token: ""

  field :jobs, 1, repeated: true, type: Google.Cloud.Dataplex.V1.Job
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Google.Cloud.Dataplex.V1.CancelJobRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Dataplex.V1.DataplexService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.dataplex.v1.DataplexService"

  rpc :CreateLake, Google.Cloud.Dataplex.V1.CreateLakeRequest, Google.Longrunning.Operation

  rpc :UpdateLake, Google.Cloud.Dataplex.V1.UpdateLakeRequest, Google.Longrunning.Operation

  rpc :DeleteLake, Google.Cloud.Dataplex.V1.DeleteLakeRequest, Google.Longrunning.Operation

  rpc :ListLakes,
      Google.Cloud.Dataplex.V1.ListLakesRequest,
      Google.Cloud.Dataplex.V1.ListLakesResponse

  rpc :GetLake, Google.Cloud.Dataplex.V1.GetLakeRequest, Google.Cloud.Dataplex.V1.Lake

  rpc :ListLakeActions,
      Google.Cloud.Dataplex.V1.ListLakeActionsRequest,
      Google.Cloud.Dataplex.V1.ListActionsResponse

  rpc :CreateZone, Google.Cloud.Dataplex.V1.CreateZoneRequest, Google.Longrunning.Operation

  rpc :UpdateZone, Google.Cloud.Dataplex.V1.UpdateZoneRequest, Google.Longrunning.Operation

  rpc :DeleteZone, Google.Cloud.Dataplex.V1.DeleteZoneRequest, Google.Longrunning.Operation

  rpc :ListZones,
      Google.Cloud.Dataplex.V1.ListZonesRequest,
      Google.Cloud.Dataplex.V1.ListZonesResponse

  rpc :GetZone, Google.Cloud.Dataplex.V1.GetZoneRequest, Google.Cloud.Dataplex.V1.Zone

  rpc :ListZoneActions,
      Google.Cloud.Dataplex.V1.ListZoneActionsRequest,
      Google.Cloud.Dataplex.V1.ListActionsResponse

  rpc :CreateAsset, Google.Cloud.Dataplex.V1.CreateAssetRequest, Google.Longrunning.Operation

  rpc :UpdateAsset, Google.Cloud.Dataplex.V1.UpdateAssetRequest, Google.Longrunning.Operation

  rpc :DeleteAsset, Google.Cloud.Dataplex.V1.DeleteAssetRequest, Google.Longrunning.Operation

  rpc :ListAssets,
      Google.Cloud.Dataplex.V1.ListAssetsRequest,
      Google.Cloud.Dataplex.V1.ListAssetsResponse

  rpc :GetAsset, Google.Cloud.Dataplex.V1.GetAssetRequest, Google.Cloud.Dataplex.V1.Asset

  rpc :ListAssetActions,
      Google.Cloud.Dataplex.V1.ListAssetActionsRequest,
      Google.Cloud.Dataplex.V1.ListActionsResponse

  rpc :CreateTask, Google.Cloud.Dataplex.V1.CreateTaskRequest, Google.Longrunning.Operation

  rpc :UpdateTask, Google.Cloud.Dataplex.V1.UpdateTaskRequest, Google.Longrunning.Operation

  rpc :DeleteTask, Google.Cloud.Dataplex.V1.DeleteTaskRequest, Google.Longrunning.Operation

  rpc :ListTasks,
      Google.Cloud.Dataplex.V1.ListTasksRequest,
      Google.Cloud.Dataplex.V1.ListTasksResponse

  rpc :GetTask, Google.Cloud.Dataplex.V1.GetTaskRequest, Google.Cloud.Dataplex.V1.Task

  rpc :ListJobs,
      Google.Cloud.Dataplex.V1.ListJobsRequest,
      Google.Cloud.Dataplex.V1.ListJobsResponse

  rpc :GetJob, Google.Cloud.Dataplex.V1.GetJobRequest, Google.Cloud.Dataplex.V1.Job

  rpc :CancelJob, Google.Cloud.Dataplex.V1.CancelJobRequest, Google.Protobuf.Empty
end

defmodule Google.Cloud.Dataplex.V1.DataplexService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Dataplex.V1.DataplexService.Service
end
