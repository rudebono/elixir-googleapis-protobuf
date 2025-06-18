defmodule Google.Cloud.Maintenance.Api.V1beta.MaintenanceCategory do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :MAINTENANCE_CATEGORY_UNSPECIFIED, 0
  field :INFRASTRUCTURE, 1
  field :SERVICE_UPDATE, 3
end

defmodule Google.Cloud.Maintenance.Api.V1beta.ResourceMaintenance.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :SCHEDULED, 1
  field :RUNNING, 2
  field :CANCELLED, 3
  field :SUCCEEDED, 4
end

defmodule Google.Cloud.Maintenance.Api.V1beta.MaintenanceControl.Control do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :CONTROL_UNSPECIFIED, 0
  field :APPLY, 1
  field :MANAGE_POLICY, 2
  field :RESCHEDULE, 3
end

defmodule Google.Cloud.Maintenance.Api.V1beta.SummarizeMaintenancesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 10006, type: :string, deprecated: false
  field :page_size, 10505, type: :int32, json_name: "pageSize"
  field :page_token, 10506, type: :string, json_name: "pageToken"
  field :filter, 10507, type: :string
  field :order_by, 10508, type: :string, json_name: "orderBy"
end

defmodule Google.Cloud.Maintenance.Api.V1beta.SummarizeMaintenancesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :maintenances, 10509,
    repeated: true,
    type: Google.Cloud.Maintenance.Api.V1beta.MaintenanceSummary

  field :next_page_token, 10510, type: :string, json_name: "nextPageToken"
  field :unreachable, 10511, repeated: true, type: :string, deprecated: false
end

defmodule Google.Cloud.Maintenance.Api.V1beta.MaintenanceSummary.Stats do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :group_by, 1, type: :string, json_name: "groupBy"

  field :aggregates, 2,
    repeated: true,
    type: Google.Cloud.Maintenance.Api.V1beta.MaintenanceSummary.Aggregate
end

defmodule Google.Cloud.Maintenance.Api.V1beta.MaintenanceSummary.Aggregate do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :group, 1, type: :string
  field :count, 2, type: :int64
end

defmodule Google.Cloud.Maintenance.Api.V1beta.MaintenanceSummary do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :maintenance_name, 1, type: :string, json_name: "maintenanceName", deprecated: false
  field :title, 2, type: :string, deprecated: false
  field :description, 3, type: :string, deprecated: false

  field :category, 13,
    type: Google.Cloud.Maintenance.Api.V1beta.MaintenanceCategory,
    enum: true,
    deprecated: false

  field :maintenance_scheduled_start_time, 6,
    type: Google.Protobuf.Timestamp,
    json_name: "maintenanceScheduledStartTime",
    deprecated: false

  field :maintenance_scheduled_end_time, 7,
    type: Google.Protobuf.Timestamp,
    json_name: "maintenanceScheduledEndTime",
    deprecated: false

  field :maintenance_start_time, 8,
    type: Google.Protobuf.Timestamp,
    json_name: "maintenanceStartTime",
    deprecated: false

  field :maintenance_end_time, 9,
    type: Google.Protobuf.Timestamp,
    json_name: "maintenanceEndTime",
    deprecated: false

  field :user_controllable, 10, type: :bool, json_name: "userControllable", deprecated: false

  field :controls, 14,
    repeated: true,
    type: Google.Cloud.Maintenance.Api.V1beta.MaintenanceControl,
    deprecated: false

  field :stats, 12,
    repeated: true,
    type: Google.Cloud.Maintenance.Api.V1beta.MaintenanceSummary.Stats,
    deprecated: false
end

defmodule Google.Cloud.Maintenance.Api.V1beta.ResourceMaintenance.Resource do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :location, 2, type: :string, deprecated: false
  field :type, 3, type: :string, deprecated: false
end

defmodule Google.Cloud.Maintenance.Api.V1beta.ResourceMaintenance.Maintenance do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :maintenance_name, 1, type: :string, json_name: "maintenanceName"
  field :title, 2, type: :string, deprecated: false
  field :description, 3, type: :string, deprecated: false

  field :category, 4,
    type: Google.Cloud.Maintenance.Api.V1beta.MaintenanceCategory,
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Maintenance.Api.V1beta.ResourceMaintenance.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Maintenance.Api.V1beta.ResourceMaintenance.AnnotationsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Maintenance.Api.V1beta.ResourceMaintenance do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :resource, 2,
    type: Google.Cloud.Maintenance.Api.V1beta.ResourceMaintenance.Resource,
    deprecated: false

  field :maintenance, 3,
    type: Google.Cloud.Maintenance.Api.V1beta.ResourceMaintenance.Maintenance,
    deprecated: false

  field :state, 4,
    type: Google.Cloud.Maintenance.Api.V1beta.ResourceMaintenance.State,
    enum: true,
    deprecated: false

  field :create_time, 5,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 6,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :maintenance_start_time, 7,
    type: Google.Protobuf.Timestamp,
    json_name: "maintenanceStartTime",
    deprecated: false

  field :maintenance_end_time, 8,
    type: Google.Protobuf.Timestamp,
    json_name: "maintenanceEndTime",
    deprecated: false

  field :maintenance_cancel_time, 9,
    type: Google.Protobuf.Timestamp,
    json_name: "maintenanceCancelTime",
    deprecated: false

  field :maintenance_scheduled_start_time, 10,
    type: Google.Protobuf.Timestamp,
    json_name: "maintenanceScheduledStartTime",
    deprecated: false

  field :maintenance_scheduled_end_time, 11,
    type: Google.Protobuf.Timestamp,
    json_name: "maintenanceScheduledEndTime",
    deprecated: false

  field :user_controllable, 12, type: :bool, json_name: "userControllable", deprecated: false

  field :controls, 13,
    repeated: true,
    type: Google.Cloud.Maintenance.Api.V1beta.MaintenanceControl,
    deprecated: false

  field :labels, 10401,
    repeated: true,
    type: Google.Cloud.Maintenance.Api.V1beta.ResourceMaintenance.LabelsEntry,
    map: true,
    deprecated: false

  field :annotations, 10402,
    repeated: true,
    type: Google.Cloud.Maintenance.Api.V1beta.ResourceMaintenance.AnnotationsEntry,
    map: true,
    deprecated: false

  field :uid, 10201, type: :string, deprecated: false
  field :etag, 10202, type: :string, deprecated: false
end

defmodule Google.Cloud.Maintenance.Api.V1beta.MaintenanceControl do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :control, 1,
    type: Google.Cloud.Maintenance.Api.V1beta.MaintenanceControl.Control,
    enum: true

  field :is_custom, 2, type: :bool, json_name: "isCustom"
  field :documentation, 3, type: :string
end

defmodule Google.Cloud.Maintenance.Api.V1beta.ListResourceMaintenancesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 10006, type: :string, deprecated: false
  field :page_size, 10505, type: :int32, json_name: "pageSize"
  field :page_token, 10506, type: :string, json_name: "pageToken"
  field :filter, 10507, type: :string
  field :order_by, 10508, type: :string, json_name: "orderBy"
end

defmodule Google.Cloud.Maintenance.Api.V1beta.ListResourceMaintenancesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :resource_maintenances, 10509,
    repeated: true,
    type: Google.Cloud.Maintenance.Api.V1beta.ResourceMaintenance,
    json_name: "resourceMaintenances"

  field :next_page_token, 10510, type: :string, json_name: "nextPageToken"
  field :unreachable, 10511, repeated: true, type: :string
end

defmodule Google.Cloud.Maintenance.Api.V1beta.GetResourceMaintenanceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 10001, type: :string, deprecated: false
end

defmodule Google.Cloud.Maintenance.Api.V1beta.Maintenance.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.maintenance.api.v1beta.Maintenance",
    protoc_gen_elixir_version: "0.14.1"

  rpc :SummarizeMaintenances,
      Google.Cloud.Maintenance.Api.V1beta.SummarizeMaintenancesRequest,
      Google.Cloud.Maintenance.Api.V1beta.SummarizeMaintenancesResponse

  rpc :ListResourceMaintenances,
      Google.Cloud.Maintenance.Api.V1beta.ListResourceMaintenancesRequest,
      Google.Cloud.Maintenance.Api.V1beta.ListResourceMaintenancesResponse

  rpc :GetResourceMaintenance,
      Google.Cloud.Maintenance.Api.V1beta.GetResourceMaintenanceRequest,
      Google.Cloud.Maintenance.Api.V1beta.ResourceMaintenance
end

defmodule Google.Cloud.Maintenance.Api.V1beta.Maintenance.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Maintenance.Api.V1beta.Maintenance.Service
end
