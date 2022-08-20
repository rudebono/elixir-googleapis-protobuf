defmodule Maps.Fleetengine.Delivery.V1.CreateDeliveryVehicleRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

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
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :header, 1, type: Maps.Fleetengine.Delivery.V1.DeliveryRequestHeader, deprecated: false
  field :name, 3, type: :string, deprecated: false
end

defmodule Maps.Fleetengine.Delivery.V1.ListDeliveryVehiclesRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :header, 1, type: Maps.Fleetengine.Delivery.V1.DeliveryRequestHeader, deprecated: false
  field :parent, 3, type: :string, deprecated: false
  field :page_size, 4, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 5, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 6, type: :string, deprecated: false
  field :viewport, 7, type: Google.Geo.Type.Viewport, deprecated: false
end

defmodule Maps.Fleetengine.Delivery.V1.ListDeliveryVehiclesResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :delivery_vehicles, 1,
    repeated: true,
    type: Maps.Fleetengine.Delivery.V1.DeliveryVehicle,
    json_name: "deliveryVehicles"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :total_size, 3, type: :int64, json_name: "totalSize"
end

defmodule Maps.Fleetengine.Delivery.V1.UpdateDeliveryVehicleRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

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

defmodule Maps.Fleetengine.Delivery.V1.BatchCreateTasksRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :header, 1, type: Maps.Fleetengine.Delivery.V1.DeliveryRequestHeader, deprecated: false
  field :parent, 3, type: :string, deprecated: false

  field :requests, 4,
    repeated: true,
    type: Maps.Fleetengine.Delivery.V1.CreateTaskRequest,
    deprecated: false
end

defmodule Maps.Fleetengine.Delivery.V1.BatchCreateTasksResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :tasks, 1, repeated: true, type: Maps.Fleetengine.Delivery.V1.Task
end

defmodule Maps.Fleetengine.Delivery.V1.CreateTaskRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :header, 1, type: Maps.Fleetengine.Delivery.V1.DeliveryRequestHeader, deprecated: false
  field :parent, 3, type: :string, deprecated: false
  field :task_id, 5, type: :string, json_name: "taskId", deprecated: false
  field :task, 4, type: Maps.Fleetengine.Delivery.V1.Task, deprecated: false
end

defmodule Maps.Fleetengine.Delivery.V1.GetTaskRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :header, 1, type: Maps.Fleetengine.Delivery.V1.DeliveryRequestHeader, deprecated: false
  field :name, 3, type: :string, deprecated: false
end

defmodule Maps.Fleetengine.Delivery.V1.SearchTasksRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :header, 1, type: Maps.Fleetengine.Delivery.V1.DeliveryRequestHeader, deprecated: false
  field :parent, 3, type: :string, deprecated: false
  field :tracking_id, 4, type: :string, json_name: "trackingId", deprecated: false
  field :page_size, 5, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 6, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Maps.Fleetengine.Delivery.V1.SearchTasksResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :tasks, 1, repeated: true, type: Maps.Fleetengine.Delivery.V1.Task
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Maps.Fleetengine.Delivery.V1.UpdateTaskRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :header, 1, type: Maps.Fleetengine.Delivery.V1.DeliveryRequestHeader, deprecated: false
  field :task, 3, type: Maps.Fleetengine.Delivery.V1.Task, deprecated: false

  field :update_mask, 4,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Maps.Fleetengine.Delivery.V1.ListTasksRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :header, 1, type: Maps.Fleetengine.Delivery.V1.DeliveryRequestHeader, deprecated: false
  field :parent, 3, type: :string, deprecated: false
  field :page_size, 4, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 5, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 6, type: :string, deprecated: false
end

defmodule Maps.Fleetengine.Delivery.V1.ListTasksResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :tasks, 1, repeated: true, type: Maps.Fleetengine.Delivery.V1.Task
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :total_size, 3, type: :int64, json_name: "totalSize"
end

defmodule Maps.Fleetengine.Delivery.V1.DeliveryService.Service do
  @moduledoc false
  use GRPC.Service,
    name: "maps.fleetengine.delivery.v1.DeliveryService",
    protoc_gen_elixir_version: "0.11.0"

  rpc :CreateDeliveryVehicle,
      Maps.Fleetengine.Delivery.V1.CreateDeliveryVehicleRequest,
      Maps.Fleetengine.Delivery.V1.DeliveryVehicle

  rpc :GetDeliveryVehicle,
      Maps.Fleetengine.Delivery.V1.GetDeliveryVehicleRequest,
      Maps.Fleetengine.Delivery.V1.DeliveryVehicle

  rpc :UpdateDeliveryVehicle,
      Maps.Fleetengine.Delivery.V1.UpdateDeliveryVehicleRequest,
      Maps.Fleetengine.Delivery.V1.DeliveryVehicle

  rpc :BatchCreateTasks,
      Maps.Fleetengine.Delivery.V1.BatchCreateTasksRequest,
      Maps.Fleetengine.Delivery.V1.BatchCreateTasksResponse

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