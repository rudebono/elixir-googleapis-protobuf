defmodule Google.Cloud.Capacityplanner.V1beta.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :PENDING_REVIEW, 1
  field :IN_REVIEW, 3
  field :APPROVED_PROVISIONAL, 8
  field :OBSOLETE, 5
  field :CANNOT_BE_FULFILLED, 7
  field :ON_HOLD_CONTACT_SALES, 9
  field :IN_FULFILLMENT, 10
end

defmodule Google.Cloud.Capacityplanner.V1beta.CapacityType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :CAPACITY_TYPE_UNKNOWN, 0
  field :CAPACITY_TYPE_INORGANIC_DRAFT, 1
  field :CAPACITY_TYPE_INORGANIC_PENDING, 2
  field :CAPACITY_TYPE_INORGANIC_APPROVED, 3
end

defmodule Google.Cloud.Capacityplanner.V1beta.GetCapacityPlanRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Capacityplanner.V1beta.QueryCapacityPlansRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :location, 4, type: :string, deprecated: false
end

defmodule Google.Cloud.Capacityplanner.V1beta.QueryCapacityPlansResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :capacity_plans, 1,
    repeated: true,
    type: Google.Cloud.Capacityplanner.V1beta.CapacityPlan,
    json_name: "capacityPlans"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Capacityplanner.V1beta.QueryCapacityPlanInsightsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :capacity_plan_filters, 2,
    type: Google.Cloud.Capacityplanner.V1beta.CapacityPlanFilters,
    json_name: "capacityPlanFilters",
    deprecated: false
end

defmodule Google.Cloud.Capacityplanner.V1beta.QueryCapacityPlanInsightsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :aggregated_capacity_plan_view, 1,
    type: Google.Cloud.Capacityplanner.V1beta.CapacityPlanView,
    json_name: "aggregatedCapacityPlanView",
    deprecated: false
end

defmodule Google.Cloud.Capacityplanner.V1beta.CapacityPlanFilters do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :keys, 1,
    repeated: true,
    type: Google.Cloud.Capacityplanner.V1beta.CapacityPlanKey,
    deprecated: false

  field :capacity_types, 2,
    repeated: true,
    type: Google.Cloud.Capacityplanner.V1beta.CapacityType,
    json_name: "capacityTypes",
    enum: true,
    deprecated: false

  field :capacity_plan_id, 3, type: :string, json_name: "capacityPlanId", deprecated: false
end

defmodule Google.Cloud.Capacityplanner.V1beta.CapacityPlanKey do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :resource_container, 1,
    type: Google.Cloud.Capacityplanner.V1beta.ResourceContainer,
    json_name: "resourceContainer",
    deprecated: false

  field :resource_id_key, 2,
    type: Google.Cloud.Capacityplanner.V1beta.ResourceIdKey,
    json_name: "resourceIdKey",
    deprecated: false

  field :location_id, 3,
    type: Google.Cloud.Capacityplanner.V1beta.LocationIdentifier,
    json_name: "locationId",
    deprecated: false
end

defmodule Google.Cloud.Capacityplanner.V1beta.CapacityPlanView do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: Google.Cloud.Capacityplanner.V1beta.CapacityPlanKey, deprecated: false

  field :time_series_views, 2,
    repeated: true,
    type: Google.Cloud.Capacityplanner.V1beta.TimeSeriesView,
    json_name: "timeSeriesViews",
    deprecated: false
end

defmodule Google.Cloud.Capacityplanner.V1beta.TimeSeriesView do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :type, 1,
    type: Google.Cloud.Capacityplanner.V1beta.CapacityType,
    enum: true,
    deprecated: false

  field :capacity_value, 2,
    type: Google.Cloud.Capacityplanner.V1beta.DemandValue,
    json_name: "capacityValue",
    deprecated: false
end

defmodule Google.Cloud.Capacityplanner.V1beta.CapacityPlan do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :capacity_demand_metadata, 2,
    type: Google.Cloud.Capacityplanner.V1beta.DemandMetadata,
    json_name: "capacityDemandMetadata",
    deprecated: false

  field :service_demands, 3,
    repeated: true,
    type: Google.Cloud.Capacityplanner.V1beta.ServiceDemand,
    json_name: "serviceDemands",
    deprecated: false

  field :reporter, 4, type: Google.Cloud.Capacityplanner.V1beta.User, deprecated: false
  field :state, 5, type: Google.Cloud.Capacityplanner.V1beta.State, enum: true, deprecated: false

  field :create_time, 6,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 7,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :description, 8, type: :string, deprecated: false
  field :title, 9, type: :string, deprecated: false
end

defmodule Google.Cloud.Capacityplanner.V1beta.DemandMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :demand_preferences, 1,
    repeated: true,
    type: Google.Cloud.Capacityplanner.V1beta.DemandPreference,
    json_name: "demandPreferences",
    deprecated: false
end

defmodule Google.Cloud.Capacityplanner.V1beta.DemandPreference do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :preference_id, 1, type: :string, json_name: "preferenceId", deprecated: false
  field :value, 2, type: Google.Cloud.Capacityplanner.V1beta.Value, deprecated: false
end

defmodule Google.Cloud.Capacityplanner.V1beta.ServiceDemand do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :service, 1, type: :string, deprecated: false

  field :demand_metadata, 2,
    type: Google.Cloud.Capacityplanner.V1beta.DemandMetadata,
    json_name: "demandMetadata",
    deprecated: false

  field :resource_demands, 3,
    repeated: true,
    type: Google.Cloud.Capacityplanner.V1beta.ResourceDemand,
    json_name: "resourceDemands",
    deprecated: false
end

defmodule Google.Cloud.Capacityplanner.V1beta.ResourceDemand do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :id, 1, type: :string, deprecated: false

  field :resource_container, 2,
    type: Google.Cloud.Capacityplanner.V1beta.ResourceContainer,
    json_name: "resourceContainer",
    deprecated: false

  field :resource_id, 3,
    type: Google.Cloud.Capacityplanner.V1beta.ResourceIdentifier,
    json_name: "resourceId",
    deprecated: false

  field :location_id, 4,
    type: Google.Cloud.Capacityplanner.V1beta.LocationIdentifier,
    json_name: "locationId",
    deprecated: false

  field :state, 5, type: Google.Cloud.Capacityplanner.V1beta.State, enum: true, deprecated: false
  field :reporter, 6, type: Google.Cloud.Capacityplanner.V1beta.User, deprecated: false

  field :create_time, 7,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 8,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :demand_values, 9,
    type: Google.Cloud.Capacityplanner.V1beta.DemandValues,
    json_name: "demandValues",
    deprecated: false

  field :demand_metadata, 10,
    type: Google.Cloud.Capacityplanner.V1beta.DemandMetadata,
    json_name: "demandMetadata",
    deprecated: false

  field :child_resource_demands, 11,
    repeated: true,
    type: Google.Cloud.Capacityplanner.V1beta.ChildResourceDemand,
    json_name: "childResourceDemands",
    deprecated: false
end

defmodule Google.Cloud.Capacityplanner.V1beta.User do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :email, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Capacityplanner.V1beta.DemandValues do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :values, 1,
    repeated: true,
    type: Google.Cloud.Capacityplanner.V1beta.DemandValue,
    deprecated: false
end

defmodule Google.Cloud.Capacityplanner.V1beta.DemandValue do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :time_values, 2,
    repeated: true,
    type: Google.Cloud.Capacityplanner.V1beta.TimeValue,
    json_name: "timeValues",
    deprecated: false

  field :unit, 3, type: Google.Cloud.Capacityplanner.V1beta.Unit, enum: true, deprecated: false
end

defmodule Google.Cloud.Capacityplanner.V1beta.TimeValue do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :time, 1, type: Google.Protobuf.Timestamp, deprecated: false
  field :value, 2, proto3_optional: true, type: :double, deprecated: false
end

defmodule Google.Cloud.Capacityplanner.V1beta.ChildResourceDemand do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :resource_id, 1,
    type: Google.Cloud.Capacityplanner.V1beta.ResourceIdentifier,
    json_name: "resourceId",
    deprecated: false

  field :demand_values, 2,
    type: Google.Cloud.Capacityplanner.V1beta.DemandValues,
    json_name: "demandValues",
    deprecated: false

  field :demand_metadata, 3,
    type: Google.Cloud.Capacityplanner.V1beta.DemandMetadata,
    json_name: "demandMetadata",
    deprecated: false
end

defmodule Google.Cloud.Capacityplanner.V1beta.CapacityPlanningService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.capacityplanner.v1beta.CapacityPlanningService",
    protoc_gen_elixir_version: "0.15.0"

  rpc :GetCapacityPlan,
      Google.Cloud.Capacityplanner.V1beta.GetCapacityPlanRequest,
      Google.Cloud.Capacityplanner.V1beta.CapacityPlan

  rpc :QueryCapacityPlans,
      Google.Cloud.Capacityplanner.V1beta.QueryCapacityPlansRequest,
      Google.Cloud.Capacityplanner.V1beta.QueryCapacityPlansResponse

  rpc :QueryCapacityPlanInsights,
      Google.Cloud.Capacityplanner.V1beta.QueryCapacityPlanInsightsRequest,
      Google.Cloud.Capacityplanner.V1beta.QueryCapacityPlanInsightsResponse
end

defmodule Google.Cloud.Capacityplanner.V1beta.CapacityPlanningService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Capacityplanner.V1beta.CapacityPlanningService.Service
end
