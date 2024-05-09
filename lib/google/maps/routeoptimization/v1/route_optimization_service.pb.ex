defmodule Google.Maps.Routeoptimization.V1.DataFormat do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :DATA_FORMAT_UNSPECIFIED, 0
  field :JSON, 1
  field :PROTO_TEXT, 2
end

defmodule Google.Maps.Routeoptimization.V1.OptimizeToursRequest.SolvingMode do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :DEFAULT_SOLVE, 0
  field :VALIDATE_ONLY, 1
  field :DETECT_SOME_INFEASIBLE_SHIPMENTS, 2
end

defmodule Google.Maps.Routeoptimization.V1.OptimizeToursRequest.SearchMode do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :SEARCH_MODE_UNSPECIFIED, 0
  field :RETURN_FAST, 1
  field :CONSUME_ALL_AVAILABLE_TIME, 2
end

defmodule Google.Maps.Routeoptimization.V1.ShipmentTypeIncompatibility.IncompatibilityMode do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :INCOMPATIBILITY_MODE_UNSPECIFIED, 0
  field :NOT_PERFORMED_BY_SAME_VEHICLE, 1
  field :NOT_IN_SAME_VEHICLE_SIMULTANEOUSLY, 2
end

defmodule Google.Maps.Routeoptimization.V1.ShipmentTypeRequirement.RequirementMode do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :REQUIREMENT_MODE_UNSPECIFIED, 0
  field :PERFORMED_BY_SAME_VEHICLE, 1
  field :IN_SAME_VEHICLE_AT_PICKUP_TIME, 2
  field :IN_SAME_VEHICLE_AT_DELIVERY_TIME, 3
end

defmodule Google.Maps.Routeoptimization.V1.Vehicle.TravelMode do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :TRAVEL_MODE_UNSPECIFIED, 0
  field :DRIVING, 1
  field :WALKING, 2
end

defmodule Google.Maps.Routeoptimization.V1.Vehicle.UnloadingPolicy do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :UNLOADING_POLICY_UNSPECIFIED, 0
  field :LAST_IN_FIRST_OUT, 1
  field :FIRST_IN_FIRST_OUT, 2
end

defmodule Google.Maps.Routeoptimization.V1.SkippedShipment.Reason.Code do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :CODE_UNSPECIFIED, 0
  field :NO_VEHICLE, 1
  field :DEMAND_EXCEEDS_VEHICLE_CAPACITY, 2
  field :CANNOT_BE_PERFORMED_WITHIN_VEHICLE_DISTANCE_LIMIT, 3
  field :CANNOT_BE_PERFORMED_WITHIN_VEHICLE_DURATION_LIMIT, 4
  field :CANNOT_BE_PERFORMED_WITHIN_VEHICLE_TRAVEL_DURATION_LIMIT, 5
  field :CANNOT_BE_PERFORMED_WITHIN_VEHICLE_TIME_WINDOWS, 6
  field :VEHICLE_NOT_ALLOWED, 7
end

defmodule Google.Maps.Routeoptimization.V1.InjectedSolutionConstraint.ConstraintRelaxation.Relaxation.Level do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :LEVEL_UNSPECIFIED, 0
  field :RELAX_VISIT_TIMES_AFTER_THRESHOLD, 1
  field :RELAX_VISIT_TIMES_AND_SEQUENCE_AFTER_THRESHOLD, 2
  field :RELAX_ALL_AFTER_THRESHOLD, 3
end

defmodule Google.Maps.Routeoptimization.V1.BatchOptimizeToursRequest.AsyncModelConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :display_name, 1, type: :string, json_name: "displayName", deprecated: false

  field :input_config, 2,
    type: Google.Maps.Routeoptimization.V1.InputConfig,
    json_name: "inputConfig",
    deprecated: false

  field :output_config, 3,
    type: Google.Maps.Routeoptimization.V1.OutputConfig,
    json_name: "outputConfig",
    deprecated: false
end

defmodule Google.Maps.Routeoptimization.V1.BatchOptimizeToursRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :model_configs, 2,
    repeated: true,
    type: Google.Maps.Routeoptimization.V1.BatchOptimizeToursRequest.AsyncModelConfig,
    json_name: "modelConfigs",
    deprecated: false
end

defmodule Google.Maps.Routeoptimization.V1.BatchOptimizeToursResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3
end

defmodule Google.Maps.Routeoptimization.V1.BatchOptimizeToursMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3
end

defmodule Google.Maps.Routeoptimization.V1.OptimizeToursRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :timeout, 2, type: Google.Protobuf.Duration
  field :model, 3, type: Google.Maps.Routeoptimization.V1.ShipmentModel

  field :solving_mode, 4,
    type: Google.Maps.Routeoptimization.V1.OptimizeToursRequest.SolvingMode,
    json_name: "solvingMode",
    enum: true

  field :search_mode, 6,
    type: Google.Maps.Routeoptimization.V1.OptimizeToursRequest.SearchMode,
    json_name: "searchMode",
    enum: true

  field :injected_first_solution_routes, 7,
    repeated: true,
    type: Google.Maps.Routeoptimization.V1.ShipmentRoute,
    json_name: "injectedFirstSolutionRoutes"

  field :injected_solution_constraint, 8,
    type: Google.Maps.Routeoptimization.V1.InjectedSolutionConstraint,
    json_name: "injectedSolutionConstraint"

  field :refresh_details_routes, 9,
    repeated: true,
    type: Google.Maps.Routeoptimization.V1.ShipmentRoute,
    json_name: "refreshDetailsRoutes"

  field :interpret_injected_solutions_using_labels, 10,
    type: :bool,
    json_name: "interpretInjectedSolutionsUsingLabels"

  field :consider_road_traffic, 11, type: :bool, json_name: "considerRoadTraffic"
  field :populate_polylines, 12, type: :bool, json_name: "populatePolylines"
  field :populate_transition_polylines, 13, type: :bool, json_name: "populateTransitionPolylines"

  field :allow_large_deadline_despite_interruption_risk, 14,
    type: :bool,
    json_name: "allowLargeDeadlineDespiteInterruptionRisk"

  field :use_geodesic_distances, 15, type: :bool, json_name: "useGeodesicDistances"

  field :geodesic_meters_per_second, 16,
    proto3_optional: true,
    type: :double,
    json_name: "geodesicMetersPerSecond"

  field :max_validation_errors, 5,
    proto3_optional: true,
    type: :int32,
    json_name: "maxValidationErrors"

  field :label, 17, type: :string
end

defmodule Google.Maps.Routeoptimization.V1.OptimizeToursResponse.Metrics.CostsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :double
end

defmodule Google.Maps.Routeoptimization.V1.OptimizeToursResponse.Metrics do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :aggregated_route_metrics, 1,
    type: Google.Maps.Routeoptimization.V1.AggregatedMetrics,
    json_name: "aggregatedRouteMetrics"

  field :skipped_mandatory_shipment_count, 2,
    type: :int32,
    json_name: "skippedMandatoryShipmentCount"

  field :used_vehicle_count, 3, type: :int32, json_name: "usedVehicleCount"

  field :earliest_vehicle_start_time, 4,
    type: Google.Protobuf.Timestamp,
    json_name: "earliestVehicleStartTime"

  field :latest_vehicle_end_time, 5,
    type: Google.Protobuf.Timestamp,
    json_name: "latestVehicleEndTime"

  field :costs, 10,
    repeated: true,
    type: Google.Maps.Routeoptimization.V1.OptimizeToursResponse.Metrics.CostsEntry,
    map: true

  field :total_cost, 6, type: :double, json_name: "totalCost"
end

defmodule Google.Maps.Routeoptimization.V1.OptimizeToursResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :routes, 1, repeated: true, type: Google.Maps.Routeoptimization.V1.ShipmentRoute
  field :request_label, 3, type: :string, json_name: "requestLabel"

  field :skipped_shipments, 4,
    repeated: true,
    type: Google.Maps.Routeoptimization.V1.SkippedShipment,
    json_name: "skippedShipments"

  field :validation_errors, 5,
    repeated: true,
    type: Google.Maps.Routeoptimization.V1.OptimizeToursValidationError,
    json_name: "validationErrors"

  field :metrics, 6, type: Google.Maps.Routeoptimization.V1.OptimizeToursResponse.Metrics
end

defmodule Google.Maps.Routeoptimization.V1.ShipmentModel.DurationDistanceMatrix.Row do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :durations, 1, repeated: true, type: Google.Protobuf.Duration
  field :meters, 2, repeated: true, type: :double
end

defmodule Google.Maps.Routeoptimization.V1.ShipmentModel.DurationDistanceMatrix do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :rows, 1,
    repeated: true,
    type: Google.Maps.Routeoptimization.V1.ShipmentModel.DurationDistanceMatrix.Row

  field :vehicle_start_tag, 2, type: :string, json_name: "vehicleStartTag"
end

defmodule Google.Maps.Routeoptimization.V1.ShipmentModel.PrecedenceRule do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :first_index, 1, proto3_optional: true, type: :int32, json_name: "firstIndex"
  field :first_is_delivery, 3, type: :bool, json_name: "firstIsDelivery"
  field :second_index, 2, proto3_optional: true, type: :int32, json_name: "secondIndex"
  field :second_is_delivery, 4, type: :bool, json_name: "secondIsDelivery"
  field :offset_duration, 5, type: Google.Protobuf.Duration, json_name: "offsetDuration"
end

defmodule Google.Maps.Routeoptimization.V1.ShipmentModel do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :shipments, 1, repeated: true, type: Google.Maps.Routeoptimization.V1.Shipment
  field :vehicles, 2, repeated: true, type: Google.Maps.Routeoptimization.V1.Vehicle

  field :max_active_vehicles, 4,
    proto3_optional: true,
    type: :int32,
    json_name: "maxActiveVehicles"

  field :global_start_time, 5, type: Google.Protobuf.Timestamp, json_name: "globalStartTime"
  field :global_end_time, 6, type: Google.Protobuf.Timestamp, json_name: "globalEndTime"
  field :global_duration_cost_per_hour, 7, type: :double, json_name: "globalDurationCostPerHour"

  field :duration_distance_matrices, 8,
    repeated: true,
    type: Google.Maps.Routeoptimization.V1.ShipmentModel.DurationDistanceMatrix,
    json_name: "durationDistanceMatrices"

  field :duration_distance_matrix_src_tags, 9,
    repeated: true,
    type: :string,
    json_name: "durationDistanceMatrixSrcTags"

  field :duration_distance_matrix_dst_tags, 10,
    repeated: true,
    type: :string,
    json_name: "durationDistanceMatrixDstTags"

  field :transition_attributes, 11,
    repeated: true,
    type: Google.Maps.Routeoptimization.V1.TransitionAttributes,
    json_name: "transitionAttributes"

  field :shipment_type_incompatibilities, 12,
    repeated: true,
    type: Google.Maps.Routeoptimization.V1.ShipmentTypeIncompatibility,
    json_name: "shipmentTypeIncompatibilities"

  field :shipment_type_requirements, 13,
    repeated: true,
    type: Google.Maps.Routeoptimization.V1.ShipmentTypeRequirement,
    json_name: "shipmentTypeRequirements"

  field :precedence_rules, 14,
    repeated: true,
    type: Google.Maps.Routeoptimization.V1.ShipmentModel.PrecedenceRule,
    json_name: "precedenceRules"
end

defmodule Google.Maps.Routeoptimization.V1.Shipment.VisitRequest.LoadDemandsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Maps.Routeoptimization.V1.Shipment.Load
end

defmodule Google.Maps.Routeoptimization.V1.Shipment.VisitRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :arrival_location, 1, type: Google.Type.LatLng, json_name: "arrivalLocation"

  field :arrival_waypoint, 2,
    type: Google.Maps.Routeoptimization.V1.Waypoint,
    json_name: "arrivalWaypoint"

  field :departure_location, 3, type: Google.Type.LatLng, json_name: "departureLocation"

  field :departure_waypoint, 4,
    type: Google.Maps.Routeoptimization.V1.Waypoint,
    json_name: "departureWaypoint"

  field :tags, 5, repeated: true, type: :string

  field :time_windows, 6,
    repeated: true,
    type: Google.Maps.Routeoptimization.V1.TimeWindow,
    json_name: "timeWindows"

  field :duration, 7, type: Google.Protobuf.Duration
  field :cost, 8, type: :double

  field :load_demands, 12,
    repeated: true,
    type: Google.Maps.Routeoptimization.V1.Shipment.VisitRequest.LoadDemandsEntry,
    json_name: "loadDemands",
    map: true

  field :visit_types, 10, repeated: true, type: :string, json_name: "visitTypes"
  field :label, 11, type: :string
end

defmodule Google.Maps.Routeoptimization.V1.Shipment.Load do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :amount, 2, type: :int64
end

defmodule Google.Maps.Routeoptimization.V1.Shipment.LoadDemandsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Maps.Routeoptimization.V1.Shipment.Load
end

defmodule Google.Maps.Routeoptimization.V1.Shipment do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :display_name, 16, type: :string, json_name: "displayName"
  field :pickups, 1, repeated: true, type: Google.Maps.Routeoptimization.V1.Shipment.VisitRequest

  field :deliveries, 2,
    repeated: true,
    type: Google.Maps.Routeoptimization.V1.Shipment.VisitRequest

  field :load_demands, 14,
    repeated: true,
    type: Google.Maps.Routeoptimization.V1.Shipment.LoadDemandsEntry,
    json_name: "loadDemands",
    map: true

  field :penalty_cost, 4, proto3_optional: true, type: :double, json_name: "penaltyCost"

  field :allowed_vehicle_indices, 5,
    repeated: true,
    type: :int32,
    json_name: "allowedVehicleIndices"

  field :costs_per_vehicle, 6, repeated: true, type: :double, json_name: "costsPerVehicle"

  field :costs_per_vehicle_indices, 7,
    repeated: true,
    type: :int32,
    json_name: "costsPerVehicleIndices"

  field :pickup_to_delivery_relative_detour_limit, 8,
    proto3_optional: true,
    type: :double,
    json_name: "pickupToDeliveryRelativeDetourLimit"

  field :pickup_to_delivery_absolute_detour_limit, 9,
    type: Google.Protobuf.Duration,
    json_name: "pickupToDeliveryAbsoluteDetourLimit"

  field :pickup_to_delivery_time_limit, 10,
    type: Google.Protobuf.Duration,
    json_name: "pickupToDeliveryTimeLimit"

  field :shipment_type, 11, type: :string, json_name: "shipmentType"
  field :label, 12, type: :string
  field :ignore, 13, type: :bool
end

defmodule Google.Maps.Routeoptimization.V1.ShipmentTypeIncompatibility do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :types, 1, repeated: true, type: :string

  field :incompatibility_mode, 2,
    type: Google.Maps.Routeoptimization.V1.ShipmentTypeIncompatibility.IncompatibilityMode,
    json_name: "incompatibilityMode",
    enum: true
end

defmodule Google.Maps.Routeoptimization.V1.ShipmentTypeRequirement do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :required_shipment_type_alternatives, 1,
    repeated: true,
    type: :string,
    json_name: "requiredShipmentTypeAlternatives"

  field :dependent_shipment_types, 2,
    repeated: true,
    type: :string,
    json_name: "dependentShipmentTypes"

  field :requirement_mode, 3,
    type: Google.Maps.Routeoptimization.V1.ShipmentTypeRequirement.RequirementMode,
    json_name: "requirementMode",
    enum: true
end

defmodule Google.Maps.Routeoptimization.V1.Vehicle.LoadLimit.Interval do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :min, 1, type: :int64
  field :max, 2, proto3_optional: true, type: :int64
end

defmodule Google.Maps.Routeoptimization.V1.Vehicle.LoadLimit do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :max_load, 1, proto3_optional: true, type: :int64, json_name: "maxLoad"
  field :soft_max_load, 2, type: :int64, json_name: "softMaxLoad"
  field :cost_per_unit_above_soft_max, 3, type: :double, json_name: "costPerUnitAboveSoftMax"

  field :start_load_interval, 4,
    type: Google.Maps.Routeoptimization.V1.Vehicle.LoadLimit.Interval,
    json_name: "startLoadInterval"

  field :end_load_interval, 5,
    type: Google.Maps.Routeoptimization.V1.Vehicle.LoadLimit.Interval,
    json_name: "endLoadInterval"
end

defmodule Google.Maps.Routeoptimization.V1.Vehicle.DurationLimit do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :max_duration, 1, type: Google.Protobuf.Duration, json_name: "maxDuration"
  field :soft_max_duration, 2, type: Google.Protobuf.Duration, json_name: "softMaxDuration"

  field :cost_per_hour_after_soft_max, 3,
    proto3_optional: true,
    type: :double,
    json_name: "costPerHourAfterSoftMax"

  field :quadratic_soft_max_duration, 4,
    type: Google.Protobuf.Duration,
    json_name: "quadraticSoftMaxDuration"

  field :cost_per_square_hour_after_quadratic_soft_max, 5,
    proto3_optional: true,
    type: :double,
    json_name: "costPerSquareHourAfterQuadraticSoftMax"
end

defmodule Google.Maps.Routeoptimization.V1.Vehicle.LoadLimitsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Maps.Routeoptimization.V1.Vehicle.LoadLimit
end

defmodule Google.Maps.Routeoptimization.V1.Vehicle.ExtraVisitDurationForVisitTypeEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Protobuf.Duration
end

defmodule Google.Maps.Routeoptimization.V1.Vehicle do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :display_name, 32, type: :string, json_name: "displayName"

  field :travel_mode, 1,
    type: Google.Maps.Routeoptimization.V1.Vehicle.TravelMode,
    json_name: "travelMode",
    enum: true

  field :start_location, 3, type: Google.Type.LatLng, json_name: "startLocation"

  field :start_waypoint, 4,
    type: Google.Maps.Routeoptimization.V1.Waypoint,
    json_name: "startWaypoint"

  field :end_location, 5, type: Google.Type.LatLng, json_name: "endLocation"

  field :end_waypoint, 6,
    type: Google.Maps.Routeoptimization.V1.Waypoint,
    json_name: "endWaypoint"

  field :start_tags, 7, repeated: true, type: :string, json_name: "startTags"
  field :end_tags, 8, repeated: true, type: :string, json_name: "endTags"

  field :start_time_windows, 9,
    repeated: true,
    type: Google.Maps.Routeoptimization.V1.TimeWindow,
    json_name: "startTimeWindows"

  field :end_time_windows, 10,
    repeated: true,
    type: Google.Maps.Routeoptimization.V1.TimeWindow,
    json_name: "endTimeWindows"

  field :travel_duration_multiple, 11,
    proto3_optional: true,
    type: :double,
    json_name: "travelDurationMultiple"

  field :unloading_policy, 12,
    type: Google.Maps.Routeoptimization.V1.Vehicle.UnloadingPolicy,
    json_name: "unloadingPolicy",
    enum: true

  field :load_limits, 30,
    repeated: true,
    type: Google.Maps.Routeoptimization.V1.Vehicle.LoadLimitsEntry,
    json_name: "loadLimits",
    map: true

  field :cost_per_hour, 16, type: :double, json_name: "costPerHour"
  field :cost_per_traveled_hour, 17, type: :double, json_name: "costPerTraveledHour"
  field :cost_per_kilometer, 18, type: :double, json_name: "costPerKilometer"
  field :fixed_cost, 19, type: :double, json_name: "fixedCost"
  field :used_if_route_is_empty, 20, type: :bool, json_name: "usedIfRouteIsEmpty"

  field :route_duration_limit, 21,
    type: Google.Maps.Routeoptimization.V1.Vehicle.DurationLimit,
    json_name: "routeDurationLimit"

  field :travel_duration_limit, 22,
    type: Google.Maps.Routeoptimization.V1.Vehicle.DurationLimit,
    json_name: "travelDurationLimit"

  field :route_distance_limit, 23,
    type: Google.Maps.Routeoptimization.V1.DistanceLimit,
    json_name: "routeDistanceLimit"

  field :extra_visit_duration_for_visit_type, 24,
    repeated: true,
    type: Google.Maps.Routeoptimization.V1.Vehicle.ExtraVisitDurationForVisitTypeEntry,
    json_name: "extraVisitDurationForVisitType",
    map: true

  field :break_rule, 25, type: Google.Maps.Routeoptimization.V1.BreakRule, json_name: "breakRule"
  field :label, 27, type: :string
  field :ignore, 28, type: :bool
end

defmodule Google.Maps.Routeoptimization.V1.TimeWindow do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :start_time, 1, type: Google.Protobuf.Timestamp, json_name: "startTime"
  field :end_time, 2, type: Google.Protobuf.Timestamp, json_name: "endTime"
  field :soft_start_time, 3, type: Google.Protobuf.Timestamp, json_name: "softStartTime"
  field :soft_end_time, 4, type: Google.Protobuf.Timestamp, json_name: "softEndTime"

  field :cost_per_hour_before_soft_start_time, 5,
    proto3_optional: true,
    type: :double,
    json_name: "costPerHourBeforeSoftStartTime"

  field :cost_per_hour_after_soft_end_time, 6,
    proto3_optional: true,
    type: :double,
    json_name: "costPerHourAfterSoftEndTime"
end

defmodule Google.Maps.Routeoptimization.V1.DistanceLimit do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :max_meters, 1, proto3_optional: true, type: :int64, json_name: "maxMeters"
  field :soft_max_meters, 2, proto3_optional: true, type: :int64, json_name: "softMaxMeters"

  field :cost_per_kilometer_above_soft_max, 3,
    proto3_optional: true,
    type: :double,
    json_name: "costPerKilometerAboveSoftMax"
end

defmodule Google.Maps.Routeoptimization.V1.TransitionAttributes do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :src_tag, 1, type: :string, json_name: "srcTag"
  field :excluded_src_tag, 2, type: :string, json_name: "excludedSrcTag"
  field :dst_tag, 3, type: :string, json_name: "dstTag"
  field :excluded_dst_tag, 4, type: :string, json_name: "excludedDstTag"
  field :cost, 5, type: :double
  field :cost_per_kilometer, 6, type: :double, json_name: "costPerKilometer"

  field :distance_limit, 7,
    type: Google.Maps.Routeoptimization.V1.DistanceLimit,
    json_name: "distanceLimit"

  field :delay, 8, type: Google.Protobuf.Duration
end

defmodule Google.Maps.Routeoptimization.V1.Waypoint do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :location_type, 0

  field :location, 1, type: Google.Maps.Routeoptimization.V1.Location, oneof: 0
  field :place_id, 2, type: :string, json_name: "placeId", oneof: 0
  field :side_of_road, 3, type: :bool, json_name: "sideOfRoad", deprecated: false
end

defmodule Google.Maps.Routeoptimization.V1.Location do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :lat_lng, 1, type: Google.Type.LatLng, json_name: "latLng"
  field :heading, 2, proto3_optional: true, type: :int32
end

defmodule Google.Maps.Routeoptimization.V1.BreakRule.BreakRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :earliest_start_time, 1,
    type: Google.Protobuf.Timestamp,
    json_name: "earliestStartTime",
    deprecated: false

  field :latest_start_time, 2,
    type: Google.Protobuf.Timestamp,
    json_name: "latestStartTime",
    deprecated: false

  field :min_duration, 3,
    type: Google.Protobuf.Duration,
    json_name: "minDuration",
    deprecated: false
end

defmodule Google.Maps.Routeoptimization.V1.BreakRule.FrequencyConstraint do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :min_break_duration, 1,
    type: Google.Protobuf.Duration,
    json_name: "minBreakDuration",
    deprecated: false

  field :max_inter_break_duration, 2,
    type: Google.Protobuf.Duration,
    json_name: "maxInterBreakDuration",
    deprecated: false
end

defmodule Google.Maps.Routeoptimization.V1.BreakRule do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :break_requests, 1,
    repeated: true,
    type: Google.Maps.Routeoptimization.V1.BreakRule.BreakRequest,
    json_name: "breakRequests"

  field :frequency_constraints, 2,
    repeated: true,
    type: Google.Maps.Routeoptimization.V1.BreakRule.FrequencyConstraint,
    json_name: "frequencyConstraints"
end

defmodule Google.Maps.Routeoptimization.V1.ShipmentRoute.Visit.LoadDemandsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Maps.Routeoptimization.V1.Shipment.Load
end

defmodule Google.Maps.Routeoptimization.V1.ShipmentRoute.Visit do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :shipment_index, 1, type: :int32, json_name: "shipmentIndex"
  field :is_pickup, 2, type: :bool, json_name: "isPickup"
  field :visit_request_index, 3, type: :int32, json_name: "visitRequestIndex"
  field :start_time, 4, type: Google.Protobuf.Timestamp, json_name: "startTime"

  field :load_demands, 11,
    repeated: true,
    type: Google.Maps.Routeoptimization.V1.ShipmentRoute.Visit.LoadDemandsEntry,
    json_name: "loadDemands",
    map: true

  field :detour, 6, type: Google.Protobuf.Duration
  field :shipment_label, 7, type: :string, json_name: "shipmentLabel"
  field :visit_label, 8, type: :string, json_name: "visitLabel"
end

defmodule Google.Maps.Routeoptimization.V1.ShipmentRoute.Transition.VehicleLoadsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Maps.Routeoptimization.V1.ShipmentRoute.VehicleLoad
end

defmodule Google.Maps.Routeoptimization.V1.ShipmentRoute.Transition do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :travel_duration, 1, type: Google.Protobuf.Duration, json_name: "travelDuration"
  field :travel_distance_meters, 2, type: :double, json_name: "travelDistanceMeters"
  field :traffic_info_unavailable, 3, type: :bool, json_name: "trafficInfoUnavailable"
  field :delay_duration, 4, type: Google.Protobuf.Duration, json_name: "delayDuration"
  field :break_duration, 5, type: Google.Protobuf.Duration, json_name: "breakDuration"
  field :wait_duration, 6, type: Google.Protobuf.Duration, json_name: "waitDuration"
  field :total_duration, 7, type: Google.Protobuf.Duration, json_name: "totalDuration"
  field :start_time, 8, type: Google.Protobuf.Timestamp, json_name: "startTime"

  field :route_polyline, 9,
    type: Google.Maps.Routeoptimization.V1.ShipmentRoute.EncodedPolyline,
    json_name: "routePolyline"

  field :vehicle_loads, 11,
    repeated: true,
    type: Google.Maps.Routeoptimization.V1.ShipmentRoute.Transition.VehicleLoadsEntry,
    json_name: "vehicleLoads",
    map: true
end

defmodule Google.Maps.Routeoptimization.V1.ShipmentRoute.VehicleLoad do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :amount, 1, type: :int64
end

defmodule Google.Maps.Routeoptimization.V1.ShipmentRoute.EncodedPolyline do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :points, 1, type: :string
end

defmodule Google.Maps.Routeoptimization.V1.ShipmentRoute.Break do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :start_time, 1, type: Google.Protobuf.Timestamp, json_name: "startTime"
  field :duration, 2, type: Google.Protobuf.Duration
end

defmodule Google.Maps.Routeoptimization.V1.ShipmentRoute.RouteCostsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :double
end

defmodule Google.Maps.Routeoptimization.V1.ShipmentRoute do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :vehicle_index, 1, type: :int32, json_name: "vehicleIndex"
  field :vehicle_label, 2, type: :string, json_name: "vehicleLabel"
  field :vehicle_start_time, 5, type: Google.Protobuf.Timestamp, json_name: "vehicleStartTime"
  field :vehicle_end_time, 6, type: Google.Protobuf.Timestamp, json_name: "vehicleEndTime"
  field :visits, 7, repeated: true, type: Google.Maps.Routeoptimization.V1.ShipmentRoute.Visit

  field :transitions, 8,
    repeated: true,
    type: Google.Maps.Routeoptimization.V1.ShipmentRoute.Transition

  field :has_traffic_infeasibilities, 9, type: :bool, json_name: "hasTrafficInfeasibilities"

  field :route_polyline, 10,
    type: Google.Maps.Routeoptimization.V1.ShipmentRoute.EncodedPolyline,
    json_name: "routePolyline"

  field :breaks, 11, repeated: true, type: Google.Maps.Routeoptimization.V1.ShipmentRoute.Break
  field :metrics, 12, type: Google.Maps.Routeoptimization.V1.AggregatedMetrics

  field :route_costs, 17,
    repeated: true,
    type: Google.Maps.Routeoptimization.V1.ShipmentRoute.RouteCostsEntry,
    json_name: "routeCosts",
    map: true

  field :route_total_cost, 18, type: :double, json_name: "routeTotalCost"
end

defmodule Google.Maps.Routeoptimization.V1.SkippedShipment.Reason do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :code, 1, type: Google.Maps.Routeoptimization.V1.SkippedShipment.Reason.Code, enum: true

  field :example_vehicle_index, 2,
    proto3_optional: true,
    type: :int32,
    json_name: "exampleVehicleIndex"

  field :example_exceeded_capacity_type, 3,
    type: :string,
    json_name: "exampleExceededCapacityType"
end

defmodule Google.Maps.Routeoptimization.V1.SkippedShipment do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :index, 1, type: :int32
  field :label, 2, type: :string
  field :reasons, 3, repeated: true, type: Google.Maps.Routeoptimization.V1.SkippedShipment.Reason
end

defmodule Google.Maps.Routeoptimization.V1.AggregatedMetrics.MaxLoadsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Maps.Routeoptimization.V1.ShipmentRoute.VehicleLoad
end

defmodule Google.Maps.Routeoptimization.V1.AggregatedMetrics do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :performed_shipment_count, 1, type: :int32, json_name: "performedShipmentCount"
  field :travel_duration, 2, type: Google.Protobuf.Duration, json_name: "travelDuration"
  field :wait_duration, 3, type: Google.Protobuf.Duration, json_name: "waitDuration"
  field :delay_duration, 4, type: Google.Protobuf.Duration, json_name: "delayDuration"
  field :break_duration, 5, type: Google.Protobuf.Duration, json_name: "breakDuration"
  field :visit_duration, 6, type: Google.Protobuf.Duration, json_name: "visitDuration"
  field :total_duration, 7, type: Google.Protobuf.Duration, json_name: "totalDuration"
  field :travel_distance_meters, 8, type: :double, json_name: "travelDistanceMeters"

  field :max_loads, 9,
    repeated: true,
    type: Google.Maps.Routeoptimization.V1.AggregatedMetrics.MaxLoadsEntry,
    json_name: "maxLoads",
    map: true
end

defmodule Google.Maps.Routeoptimization.V1.InjectedSolutionConstraint.ConstraintRelaxation.Relaxation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :level, 1,
    type:
      Google.Maps.Routeoptimization.V1.InjectedSolutionConstraint.ConstraintRelaxation.Relaxation.Level,
    enum: true

  field :threshold_time, 2, type: Google.Protobuf.Timestamp, json_name: "thresholdTime"
  field :threshold_visit_count, 3, type: :int32, json_name: "thresholdVisitCount"
end

defmodule Google.Maps.Routeoptimization.V1.InjectedSolutionConstraint.ConstraintRelaxation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :relaxations, 1,
    repeated: true,
    type:
      Google.Maps.Routeoptimization.V1.InjectedSolutionConstraint.ConstraintRelaxation.Relaxation

  field :vehicle_indices, 2, repeated: true, type: :int32, json_name: "vehicleIndices"
end

defmodule Google.Maps.Routeoptimization.V1.InjectedSolutionConstraint do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :routes, 1, repeated: true, type: Google.Maps.Routeoptimization.V1.ShipmentRoute

  field :skipped_shipments, 2,
    repeated: true,
    type: Google.Maps.Routeoptimization.V1.SkippedShipment,
    json_name: "skippedShipments"

  field :constraint_relaxations, 3,
    repeated: true,
    type: Google.Maps.Routeoptimization.V1.InjectedSolutionConstraint.ConstraintRelaxation,
    json_name: "constraintRelaxations"
end

defmodule Google.Maps.Routeoptimization.V1.OptimizeToursValidationError.FieldReference do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :index_or_key, 0

  field :name, 1, type: :string
  field :index, 2, type: :int32, oneof: 0
  field :key, 4, type: :string, oneof: 0

  field :sub_field, 3,
    type: Google.Maps.Routeoptimization.V1.OptimizeToursValidationError.FieldReference,
    json_name: "subField"
end

defmodule Google.Maps.Routeoptimization.V1.OptimizeToursValidationError do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :code, 1, type: :int32
  field :display_name, 2, type: :string, json_name: "displayName"

  field :fields, 3,
    repeated: true,
    type: Google.Maps.Routeoptimization.V1.OptimizeToursValidationError.FieldReference

  field :error_message, 4, type: :string, json_name: "errorMessage"
  field :offending_values, 5, type: :string, json_name: "offendingValues"
end

defmodule Google.Maps.Routeoptimization.V1.InputConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :source, 0

  field :gcs_source, 1,
    type: Google.Maps.Routeoptimization.V1.GcsSource,
    json_name: "gcsSource",
    oneof: 0

  field :data_format, 2,
    type: Google.Maps.Routeoptimization.V1.DataFormat,
    json_name: "dataFormat",
    enum: true,
    deprecated: false
end

defmodule Google.Maps.Routeoptimization.V1.OutputConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :destination, 0

  field :gcs_destination, 1,
    type: Google.Maps.Routeoptimization.V1.GcsDestination,
    json_name: "gcsDestination",
    oneof: 0

  field :data_format, 2,
    type: Google.Maps.Routeoptimization.V1.DataFormat,
    json_name: "dataFormat",
    enum: true,
    deprecated: false
end

defmodule Google.Maps.Routeoptimization.V1.GcsSource do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :uri, 1, type: :string, deprecated: false
end

defmodule Google.Maps.Routeoptimization.V1.GcsDestination do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :uri, 1, type: :string, deprecated: false
end

defmodule Google.Maps.Routeoptimization.V1.RouteOptimization.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.maps.routeoptimization.v1.RouteOptimization",
    protoc_gen_elixir_version: "0.12.0"

  rpc :OptimizeTours,
      Google.Maps.Routeoptimization.V1.OptimizeToursRequest,
      Google.Maps.Routeoptimization.V1.OptimizeToursResponse

  rpc :BatchOptimizeTours,
      Google.Maps.Routeoptimization.V1.BatchOptimizeToursRequest,
      Google.Longrunning.Operation
end

defmodule Google.Maps.Routeoptimization.V1.RouteOptimization.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Maps.Routeoptimization.V1.RouteOptimization.Service
end