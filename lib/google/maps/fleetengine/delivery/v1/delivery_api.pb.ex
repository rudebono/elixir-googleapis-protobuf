defmodule Maps.Fleetengine.Delivery.V1.CreateDeliveryVehicleRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          header: Maps.Fleetengine.Delivery.V1.DeliveryRequestHeader.t() | nil,
          parent: String.t(),
          delivery_vehicle_id: String.t(),
          delivery_vehicle: Maps.Fleetengine.Delivery.V1.DeliveryVehicle.t() | nil
        }

  defstruct header: nil,
            parent: "",
            delivery_vehicle_id: "",
            delivery_vehicle: nil

  field :header, 1, type: Maps.Fleetengine.Delivery.V1.DeliveryRequestHeader, deprecated: false
  field :parent, 3, type: :string, deprecated: false
  field :delivery_vehicle_id, 4, type: :string, json_name: "deliveryVehicleId", deprecated: false

  field :delivery_vehicle, 5,
    type: Maps.Fleetengine.Delivery.V1.DeliveryVehicle,
    json_name: "deliveryVehicle",
    deprecated: false
end
defmodule Maps.Fleetengine.Delivery.V1.GetDeliveryVehicleRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          header: Maps.Fleetengine.Delivery.V1.DeliveryRequestHeader.t() | nil,
          name: String.t()
        }

  defstruct header: nil,
            name: ""

  field :header, 1, type: Maps.Fleetengine.Delivery.V1.DeliveryRequestHeader, deprecated: false
  field :name, 3, type: :string, deprecated: false
end
defmodule Maps.Fleetengine.Delivery.V1.ListDeliveryVehiclesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          header: Maps.Fleetengine.Delivery.V1.DeliveryRequestHeader.t() | nil,
          parent: String.t(),
          page_size: integer,
          page_token: String.t(),
          filter: String.t(),
          viewport: Google.Geo.Type.Viewport.t() | nil
        }

  defstruct header: nil,
            parent: "",
            page_size: 0,
            page_token: "",
            filter: "",
            viewport: nil

  field :header, 1, type: Maps.Fleetengine.Delivery.V1.DeliveryRequestHeader, deprecated: false
  field :parent, 3, type: :string, deprecated: false
  field :page_size, 4, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 5, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 6, type: :string, deprecated: false
  field :viewport, 7, type: Google.Geo.Type.Viewport, deprecated: false
end
defmodule Maps.Fleetengine.Delivery.V1.ListDeliveryVehiclesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          delivery_vehicles: [Maps.Fleetengine.Delivery.V1.DeliveryVehicle.t()],
          next_page_token: String.t(),
          total_size: integer
        }

  defstruct delivery_vehicles: [],
            next_page_token: "",
            total_size: 0

  field :delivery_vehicles, 1,
    repeated: true,
    type: Maps.Fleetengine.Delivery.V1.DeliveryVehicle,
    json_name: "deliveryVehicles"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :total_size, 3, type: :int64, json_name: "totalSize"
end
defmodule Maps.Fleetengine.Delivery.V1.UpdateDeliveryVehicleRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          header: Maps.Fleetengine.Delivery.V1.DeliveryRequestHeader.t() | nil,
          delivery_vehicle: Maps.Fleetengine.Delivery.V1.DeliveryVehicle.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct header: nil,
            delivery_vehicle: nil,
            update_mask: nil

  field :header, 1, type: Maps.Fleetengine.Delivery.V1.DeliveryRequestHeader, deprecated: false

  field :delivery_vehicle, 3,
    type: Maps.Fleetengine.Delivery.V1.DeliveryVehicle,
    json_name: "deliveryVehicle",
    deprecated: false

  field :update_mask, 4,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end
defmodule Maps.Fleetengine.Delivery.V1.CreateTaskRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          header: Maps.Fleetengine.Delivery.V1.DeliveryRequestHeader.t() | nil,
          parent: String.t(),
          task_id: String.t(),
          task: Maps.Fleetengine.Delivery.V1.Task.t() | nil
        }

  defstruct header: nil,
            parent: "",
            task_id: "",
            task: nil

  field :header, 1, type: Maps.Fleetengine.Delivery.V1.DeliveryRequestHeader, deprecated: false
  field :parent, 3, type: :string, deprecated: false
  field :task_id, 5, type: :string, json_name: "taskId", deprecated: false
  field :task, 4, type: Maps.Fleetengine.Delivery.V1.Task, deprecated: false
end
defmodule Maps.Fleetengine.Delivery.V1.GetTaskRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          header: Maps.Fleetengine.Delivery.V1.DeliveryRequestHeader.t() | nil,
          name: String.t()
        }

  defstruct header: nil,
            name: ""

  field :header, 1, type: Maps.Fleetengine.Delivery.V1.DeliveryRequestHeader, deprecated: false
  field :name, 3, type: :string, deprecated: false
end
defmodule Maps.Fleetengine.Delivery.V1.SearchTasksRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          header: Maps.Fleetengine.Delivery.V1.DeliveryRequestHeader.t() | nil,
          parent: String.t(),
          tracking_id: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct header: nil,
            parent: "",
            tracking_id: "",
            page_size: 0,
            page_token: ""

  field :header, 1, type: Maps.Fleetengine.Delivery.V1.DeliveryRequestHeader, deprecated: false
  field :parent, 3, type: :string, deprecated: false
  field :tracking_id, 4, type: :string, json_name: "trackingId", deprecated: false
  field :page_size, 5, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 6, type: :string, json_name: "pageToken", deprecated: false
end
defmodule Maps.Fleetengine.Delivery.V1.SearchTasksResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          tasks: [Maps.Fleetengine.Delivery.V1.Task.t()],
          next_page_token: String.t()
        }

  defstruct tasks: [],
            next_page_token: ""

  field :tasks, 1, repeated: true, type: Maps.Fleetengine.Delivery.V1.Task
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Maps.Fleetengine.Delivery.V1.UpdateTaskRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          header: Maps.Fleetengine.Delivery.V1.DeliveryRequestHeader.t() | nil,
          task: Maps.Fleetengine.Delivery.V1.Task.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct header: nil,
            task: nil,
            update_mask: nil

  field :header, 1, type: Maps.Fleetengine.Delivery.V1.DeliveryRequestHeader, deprecated: false
  field :task, 3, type: Maps.Fleetengine.Delivery.V1.Task, deprecated: false

  field :update_mask, 4,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end
defmodule Maps.Fleetengine.Delivery.V1.ListTasksRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          header: Maps.Fleetengine.Delivery.V1.DeliveryRequestHeader.t() | nil,
          parent: String.t(),
          page_size: integer,
          page_token: String.t(),
          filter: String.t()
        }

  defstruct header: nil,
            parent: "",
            page_size: 0,
            page_token: "",
            filter: ""

  field :header, 1, type: Maps.Fleetengine.Delivery.V1.DeliveryRequestHeader, deprecated: false
  field :parent, 3, type: :string, deprecated: false
  field :page_size, 4, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 5, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 6, type: :string, deprecated: false
end
defmodule Maps.Fleetengine.Delivery.V1.ListTasksResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          tasks: [Maps.Fleetengine.Delivery.V1.Task.t()],
          next_page_token: String.t(),
          total_size: integer
        }

  defstruct tasks: [],
            next_page_token: "",
            total_size: 0

  field :tasks, 1, repeated: true, type: Maps.Fleetengine.Delivery.V1.Task
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :total_size, 3, type: :int64, json_name: "totalSize"
end
defmodule Maps.Fleetengine.Delivery.V1.DeliveryService.Service do
  @moduledoc false
  use GRPC.Service, name: "maps.fleetengine.delivery.v1.DeliveryService"

  rpc :CreateDeliveryVehicle,
      Maps.Fleetengine.Delivery.V1.CreateDeliveryVehicleRequest,
      Maps.Fleetengine.Delivery.V1.DeliveryVehicle

  rpc :GetDeliveryVehicle,
      Maps.Fleetengine.Delivery.V1.GetDeliveryVehicleRequest,
      Maps.Fleetengine.Delivery.V1.DeliveryVehicle

  rpc :UpdateDeliveryVehicle,
      Maps.Fleetengine.Delivery.V1.UpdateDeliveryVehicleRequest,
      Maps.Fleetengine.Delivery.V1.DeliveryVehicle

  rpc :CreateTask,
      Maps.Fleetengine.Delivery.V1.CreateTaskRequest,
      Maps.Fleetengine.Delivery.V1.Task

  rpc :GetTask, Maps.Fleetengine.Delivery.V1.GetTaskRequest, Maps.Fleetengine.Delivery.V1.Task

  rpc :SearchTasks,
      Maps.Fleetengine.Delivery.V1.SearchTasksRequest,
      Maps.Fleetengine.Delivery.V1.SearchTasksResponse

  rpc :UpdateTask,
      Maps.Fleetengine.Delivery.V1.UpdateTaskRequest,
      Maps.Fleetengine.Delivery.V1.Task

  rpc :ListTasks,
      Maps.Fleetengine.Delivery.V1.ListTasksRequest,
      Maps.Fleetengine.Delivery.V1.ListTasksResponse

  rpc :ListDeliveryVehicles,
      Maps.Fleetengine.Delivery.V1.ListDeliveryVehiclesRequest,
      Maps.Fleetengine.Delivery.V1.ListDeliveryVehiclesResponse
end

defmodule Maps.Fleetengine.Delivery.V1.DeliveryService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Maps.Fleetengine.Delivery.V1.DeliveryService.Service
end
