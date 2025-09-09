defmodule Google.Cloud.Capacityplanner.V1beta.QueryReservationsRequest.ReservationType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :RESERVATION_TYPE_UNSPECIFIED, 0
  field :RESERVATION_TYPE_ALLOCATION, 1
  field :RESERVATION_TYPE_FUTURE_RESERVATION, 2
  field :RESERVATION_TYPE_ALL, 3
end

defmodule Google.Cloud.Capacityplanner.V1beta.QueryReservationsRequest.ShareType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :SHARE_TYPE_UNSPECIFIED, 0
  field :SHARE_TYPE_LOCAL, 1
  field :SHARE_TYPE_SPECIFIC_PROJECTS, 2
end

defmodule Google.Cloud.Capacityplanner.V1beta.QueryReservationsRequest.OwnershipType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :OWNERSHIP_TYPE_UNSPECIFIED, 0
  field :OWNERSHIP_TYPE_OWNED, 1
  field :OWNERSHIP_TYPE_SHARED_BY_OTHERS, 2
end

defmodule Google.Cloud.Capacityplanner.V1beta.QueryReservationsRequest.ReservationDataLevel do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :RESERVATION_DATA_LEVEL_UNSPECIFIED, 0
  field :RESERVATION_DATA_LEVEL_AGGREGATED, 1
  field :RESERVATION_DATA_LEVEL_PER_RESERVATION, 2
end

defmodule Google.Cloud.Capacityplanner.V1beta.Forecast.ForecastType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :FORECAST_TYPE_UNSPECIFIED, 0
  field :STATISTICAL, 1
  field :STATISTICAL_WITH_BFCM, 2
  field :YEARLY_SEASONALITY, 3
end

defmodule Google.Cloud.Capacityplanner.V1beta.Forecast.Bounds do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :BOUNDS_UNSPECIFIED, 0
  field :LOWER_BOUND, 1
  field :MEDIAN, 2
  field :UPPER_BOUND, 3
end

defmodule Google.Cloud.Capacityplanner.V1beta.Forecast.PredictionInterval do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :PREDICTION_INTERVAL_UNSPECIFIED, 0
  field :PREDICTION_INTERVAL_90, 1
  field :PREDICTION_INTERVAL_50, 2
end

defmodule Google.Cloud.Capacityplanner.V1beta.UsageHistory.AggregationMethod do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :AGGREGATION_METHOD_UNSPECIFIED, 0
  field :MEDIAN, 1
  field :PEAK, 2
  field :P50, 3
  field :P75, 4
  field :P99, 5
end

defmodule Google.Cloud.Capacityplanner.V1beta.TimeSeries.LocationType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :LOCATION_TYPE_UNSPECIFIED, 0
  field :REGIONAL, 1
  field :ZONAL, 2
end

defmodule Google.Cloud.Capacityplanner.V1beta.ExportReservationsUsageRequest.ShareType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :SHARE_TYPE_UNSPECIFIED, 0
  field :SHARE_TYPE_LOCAL, 1
  field :SHARE_TYPE_SPECIFIC_PROJECTS, 2
end

defmodule Google.Cloud.Capacityplanner.V1beta.BigQueryDestination.PartitionKey do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :PARTITION_KEY_UNSPECIFIED, 0
  field :REQUEST_TIME, 1
end

defmodule Google.Cloud.Capacityplanner.V1beta.BigQueryDestination.WriteDisposition do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :WRITE_DISPOSITION_UNSPECIFIED, 0
  field :WRITE_APPEND, 1
  field :WRITE_TRUNCATE, 2
  field :WRITE_EMPTY, 3
end

defmodule Google.Cloud.Capacityplanner.V1beta.BigQueryDestination.CreateDisposition do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :CREATE_DISPOSITION_UNSPECIFIED, 0
  field :CREATE_IF_NEEDED, 1
  field :CREATE_NEVER, 2
end

defmodule Google.Cloud.Capacityplanner.V1beta.QueryUsageHistoriesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :location_level, 11,
    type: Google.Cloud.Capacityplanner.V1beta.TimeSeries.LocationType,
    json_name: "locationLevel",
    enum: true,
    deprecated: false

  field :is_spot, 14, type: :bool, json_name: "isSpot", deprecated: false
  field :machine_family, 2, type: :string, json_name: "machineFamily"

  field :machine_shape, 13,
    type: Google.Cloud.Capacityplanner.V1beta.MachineShape,
    json_name: "machineShape",
    deprecated: false

  field :disk_type, 7, type: :string, json_name: "diskType", deprecated: false
  field :confidential_mode, 15, type: :bool, json_name: "confidentialMode", deprecated: false
  field :gpu_type, 8, type: :string, json_name: "gpuType", deprecated: false
  field :tpu_type, 12, type: :string, json_name: "tpuType", deprecated: false
  field :cloud_resource_type, 3, type: :string, json_name: "cloudResourceType"

  field :usage_aggregation_method, 4,
    type: Google.Cloud.Capacityplanner.V1beta.UsageHistory.AggregationMethod,
    json_name: "usageAggregationMethod",
    enum: true

  field :start_date, 9, type: Google.Type.Date, json_name: "startDate", deprecated: false
  field :end_date, 10, type: Google.Type.Date, json_name: "endDate", deprecated: false
end

defmodule Google.Cloud.Capacityplanner.V1beta.QueryUsageHistoriesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :usage_histories, 1,
    repeated: true,
    type: Google.Cloud.Capacityplanner.V1beta.UsageHistory,
    json_name: "usageHistories"
end

defmodule Google.Cloud.Capacityplanner.V1beta.QueryForecastsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :machine_family, 2, type: :string, json_name: "machineFamily"

  field :machine_shape, 12,
    type: Google.Cloud.Capacityplanner.V1beta.MachineShape,
    json_name: "machineShape",
    deprecated: false

  field :disk_type, 9, type: :string, json_name: "diskType", deprecated: false
  field :confidential_mode, 13, type: :bool, json_name: "confidentialMode", deprecated: false
  field :gpu_type, 10, type: :string, json_name: "gpuType", deprecated: false
  field :tpu_type, 11, type: :string, json_name: "tpuType", deprecated: false
  field :cloud_resource_type, 3, type: :string, json_name: "cloudResourceType"

  field :forecast_type, 4,
    type: Google.Cloud.Capacityplanner.V1beta.Forecast.ForecastType,
    json_name: "forecastType",
    enum: true

  field :prediction_interval, 5,
    type: Google.Cloud.Capacityplanner.V1beta.Forecast.PredictionInterval,
    json_name: "predictionInterval",
    enum: true

  field :aggregation_method, 8,
    type: Google.Cloud.Capacityplanner.V1beta.UsageHistory.AggregationMethod,
    json_name: "aggregationMethod",
    enum: true
end

defmodule Google.Cloud.Capacityplanner.V1beta.QueryForecastsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :forecasts, 1, repeated: true, type: Google.Cloud.Capacityplanner.V1beta.Forecast
end

defmodule Google.Cloud.Capacityplanner.V1beta.QueryReservationsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :location_level, 16,
    type: Google.Cloud.Capacityplanner.V1beta.TimeSeries.LocationType,
    json_name: "locationLevel",
    enum: true,
    deprecated: false

  field :machine_family, 2, type: :string, json_name: "machineFamily", deprecated: false

  field :machine_shape, 11,
    type: Google.Cloud.Capacityplanner.V1beta.MachineShape,
    json_name: "machineShape",
    deprecated: false

  field :gpu_type, 3, type: :string, json_name: "gpuType", deprecated: false
  field :cloud_resource_type, 4, type: :string, json_name: "cloudResourceType", deprecated: false

  field :reservation_type, 5,
    type: Google.Cloud.Capacityplanner.V1beta.QueryReservationsRequest.ReservationType,
    json_name: "reservationType",
    enum: true,
    deprecated: false

  field :share_type, 6,
    type: Google.Cloud.Capacityplanner.V1beta.QueryReservationsRequest.ShareType,
    json_name: "shareType",
    enum: true,
    deprecated: false

  field :ownership_type, 7,
    type: Google.Cloud.Capacityplanner.V1beta.QueryReservationsRequest.OwnershipType,
    json_name: "ownershipType",
    enum: true,
    deprecated: false

  field :reservation_data_level, 8,
    type: Google.Cloud.Capacityplanner.V1beta.QueryReservationsRequest.ReservationDataLevel,
    json_name: "reservationDataLevel",
    enum: true,
    deprecated: false

  field :include_unapproved_reservations, 12,
    type: :bool,
    json_name: "includeUnapprovedReservations",
    deprecated: false

  field :aggregation_method, 13,
    type: Google.Cloud.Capacityplanner.V1beta.UsageHistory.AggregationMethod,
    json_name: "aggregationMethod",
    enum: true,
    deprecated: false

  field :start_date, 14, type: Google.Type.Date, json_name: "startDate", deprecated: false
  field :end_date, 15, type: Google.Type.Date, json_name: "endDate", deprecated: false
end

defmodule Google.Cloud.Capacityplanner.V1beta.QueryReservationsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :reservations, 1,
    repeated: true,
    type: Google.Cloud.Capacityplanner.V1beta.ReservationData
end

defmodule Google.Cloud.Capacityplanner.V1beta.Point do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :event_time, 1, type: Google.Protobuf.Timestamp, json_name: "eventTime"
  field :value, 2, type: :double
end

defmodule Google.Cloud.Capacityplanner.V1beta.Forecast do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string

  field :time_series, 2,
    type: Google.Cloud.Capacityplanner.V1beta.TimeSeries,
    json_name: "timeSeries"

  field :forecast_type, 3,
    type: Google.Cloud.Capacityplanner.V1beta.Forecast.ForecastType,
    json_name: "forecastType",
    enum: true

  field :bounds, 4, type: Google.Cloud.Capacityplanner.V1beta.Forecast.Bounds, enum: true

  field :prediction_interval, 5,
    type: Google.Cloud.Capacityplanner.V1beta.Forecast.PredictionInterval,
    json_name: "predictionInterval",
    enum: true

  field :aggregation_method, 6,
    type: Google.Cloud.Capacityplanner.V1beta.UsageHistory.AggregationMethod,
    json_name: "aggregationMethod",
    enum: true
end

defmodule Google.Cloud.Capacityplanner.V1beta.UsageHistory do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :time_series, 1,
    type: Google.Cloud.Capacityplanner.V1beta.TimeSeries,
    json_name: "timeSeries"

  field :aggregation_method, 2,
    type: Google.Cloud.Capacityplanner.V1beta.UsageHistory.AggregationMethod,
    json_name: "aggregationMethod",
    enum: true
end

defmodule Google.Cloud.Capacityplanner.V1beta.TimeSeries do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :location_type, 1,
    type: Google.Cloud.Capacityplanner.V1beta.TimeSeries.LocationType,
    json_name: "locationType",
    enum: true,
    deprecated: false

  field :location, 9, type: :string, deprecated: false
  field :is_spot, 11, type: :bool, json_name: "isSpot", deprecated: false
  field :machine_family, 2, type: :string, json_name: "machineFamily"
  field :disk_type, 6, type: :string, json_name: "diskType"
  field :confidential_mode, 12, type: :bool, json_name: "confidentialMode", deprecated: false
  field :gpu_type, 7, type: :string, json_name: "gpuType"
  field :tpu_type, 10, type: :string, json_name: "tpuType"

  field :machine_shape, 8,
    type: Google.Cloud.Capacityplanner.V1beta.MachineShape,
    json_name: "machineShape"

  field :cloud_resource_type, 3, type: :string, json_name: "cloudResourceType"
  field :points, 4, repeated: true, type: Google.Cloud.Capacityplanner.V1beta.Point
  field :unit, 5, type: :string
end

defmodule Google.Cloud.Capacityplanner.V1beta.ReservationData do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :time_series, 2,
    type: Google.Cloud.Capacityplanner.V1beta.TimeSeries,
    json_name: "timeSeries"

  field :used_reservation_values, 5,
    type: Google.Cloud.Capacityplanner.V1beta.TimeSeries,
    json_name: "usedReservationValues"

  field :future_reservations, 3,
    repeated: true,
    type: Google.Cloud.Capacityplanner.V1beta.FutureReservation,
    json_name: "futureReservations"

  field :allocations, 4, repeated: true, type: Google.Cloud.Capacityplanner.V1beta.Allocation
end

defmodule Google.Cloud.Capacityplanner.V1beta.MachineShape do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :machine_family, 1, type: :string, json_name: "machineFamily", deprecated: false
  field :machine_type, 2, type: :string, json_name: "machineType", deprecated: false
  field :machine_shape, 3, type: :string, json_name: "machineShape", deprecated: false
  field :cpu_cores, 4, type: :double, json_name: "cpuCores", deprecated: false
  field :gpu_type, 5, type: :string, json_name: "gpuType", deprecated: false
  field :gpu_compute_type, 10, type: :string, json_name: "gpuComputeType", deprecated: false
  field :gpu_cores, 6, type: :int64, json_name: "gpuCores", deprecated: false
  field :local_ssd_partitions, 7, type: :int64, json_name: "localSsdPartitions", deprecated: false
  field :local_ssd_gb, 8, type: :double, json_name: "localSsdGb", deprecated: false
  field :memory_gb, 9, type: :double, json_name: "memoryGb", deprecated: false
  field :local_ssd_interface, 11, type: :string, json_name: "localSsdInterface", deprecated: false
  field :min_cpu_platform, 12, type: :string, json_name: "minCpuPlatform", deprecated: false
end

defmodule Google.Cloud.Capacityplanner.V1beta.ExportUsageHistoriesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :is_spot, 11, type: :bool, json_name: "isSpot", deprecated: false
  field :machine_family, 2, type: :string, json_name: "machineFamily", deprecated: false

  field :machine_shape, 13,
    type: Google.Cloud.Capacityplanner.V1beta.MachineShape,
    json_name: "machineShape",
    deprecated: false

  field :disk_type, 3, type: :string, json_name: "diskType", deprecated: false
  field :gpu_type, 9, type: :string, json_name: "gpuType", deprecated: false
  field :tpu_type, 10, type: :string, json_name: "tpuType", deprecated: false
  field :resource_type, 4, type: :string, json_name: "resourceType", deprecated: false

  field :usage_aggregation_method, 5,
    type: Google.Cloud.Capacityplanner.V1beta.UsageHistory.AggregationMethod,
    json_name: "usageAggregationMethod",
    enum: true,
    deprecated: false

  field :start_date, 6, type: Google.Type.Date, json_name: "startDate", deprecated: false
  field :end_date, 7, type: Google.Type.Date, json_name: "endDate", deprecated: false

  field :output_config, 8,
    type: Google.Cloud.Capacityplanner.V1beta.OutputConfig,
    json_name: "outputConfig",
    deprecated: false
end

defmodule Google.Cloud.Capacityplanner.V1beta.ExportForecastsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :machine_family, 2, type: :string, json_name: "machineFamily", deprecated: false

  field :machine_shape, 12,
    type: Google.Cloud.Capacityplanner.V1beta.MachineShape,
    json_name: "machineShape",
    deprecated: false

  field :disk_type, 3, type: :string, json_name: "diskType", deprecated: false
  field :gpu_type, 10, type: :string, json_name: "gpuType", deprecated: false
  field :tpu_type, 11, type: :string, json_name: "tpuType", deprecated: false
  field :resource_type, 4, type: :string, json_name: "resourceType", deprecated: false

  field :prediction_interval, 5,
    type: Google.Cloud.Capacityplanner.V1beta.Forecast.PredictionInterval,
    json_name: "predictionInterval",
    enum: true,
    deprecated: false

  field :aggregation_method, 6,
    type: Google.Cloud.Capacityplanner.V1beta.UsageHistory.AggregationMethod,
    json_name: "aggregationMethod",
    enum: true,
    deprecated: false

  field :start_date, 7, type: Google.Type.Date, json_name: "startDate", deprecated: false
  field :end_date, 8, type: Google.Type.Date, json_name: "endDate", deprecated: false

  field :output_config, 9,
    type: Google.Cloud.Capacityplanner.V1beta.OutputConfig,
    json_name: "outputConfig",
    deprecated: false
end

defmodule Google.Cloud.Capacityplanner.V1beta.ExportReservationsUsageRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :resource, 0

  field :machine_family, 2, type: :string, json_name: "machineFamily", oneof: 0, deprecated: false

  field :machine_shape, 3,
    type: Google.Cloud.Capacityplanner.V1beta.MachineShape,
    json_name: "machineShape",
    oneof: 0,
    deprecated: false

  field :gpu_type, 4, type: :string, json_name: "gpuType", oneof: 0, deprecated: false
  field :parent, 1, type: :string, deprecated: false

  field :location_level, 11,
    type: Google.Cloud.Capacityplanner.V1beta.TimeSeries.LocationType,
    json_name: "locationLevel",
    enum: true,
    deprecated: false

  field :cloud_resource_type, 5, type: :string, json_name: "cloudResourceType", deprecated: false

  field :usage_aggregation_method, 6,
    type: Google.Cloud.Capacityplanner.V1beta.UsageHistory.AggregationMethod,
    json_name: "usageAggregationMethod",
    enum: true,
    deprecated: false

  field :share_type, 7,
    type: Google.Cloud.Capacityplanner.V1beta.ExportReservationsUsageRequest.ShareType,
    json_name: "shareType",
    enum: true,
    deprecated: false

  field :start_date, 8, type: Google.Type.Date, json_name: "startDate", deprecated: false
  field :end_date, 9, type: Google.Type.Date, json_name: "endDate", deprecated: false

  field :output_config, 10,
    type: Google.Cloud.Capacityplanner.V1beta.OutputConfig,
    json_name: "outputConfig",
    deprecated: false
end

defmodule Google.Cloud.Capacityplanner.V1beta.OutputConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :destination, 0

  field :gcs_destination, 1,
    type: Google.Cloud.Capacityplanner.V1beta.GcsDestination,
    json_name: "gcsDestination",
    oneof: 0

  field :bigquery_destination, 2,
    type: Google.Cloud.Capacityplanner.V1beta.BigQueryDestination,
    json_name: "bigqueryDestination",
    oneof: 0
end

defmodule Google.Cloud.Capacityplanner.V1beta.GcsDestination do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :uri, 1, type: :string, deprecated: false
  field :bucket, 3, type: :string, deprecated: false
  field :object, 4, type: :string, deprecated: false
  field :force, 2, type: :bool, deprecated: false
end

defmodule Google.Cloud.Capacityplanner.V1beta.BigQueryDestination do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :dataset, 1, type: :string, deprecated: false
  field :table, 2, type: :string, deprecated: false

  field :partition_key, 3,
    type: Google.Cloud.Capacityplanner.V1beta.BigQueryDestination.PartitionKey,
    json_name: "partitionKey",
    enum: true,
    deprecated: false

  field :write_disposition, 4,
    type: Google.Cloud.Capacityplanner.V1beta.BigQueryDestination.WriteDisposition,
    json_name: "writeDisposition",
    enum: true,
    deprecated: false

  field :create_disposition, 5,
    type: Google.Cloud.Capacityplanner.V1beta.BigQueryDestination.CreateDisposition,
    json_name: "createDisposition",
    enum: true,
    deprecated: false

  field :gcs_location, 6, type: :string, json_name: "gcsLocation", deprecated: false
end

defmodule Google.Cloud.Capacityplanner.V1beta.OperationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :create_time, 1,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :end_time, 2, type: Google.Protobuf.Timestamp, json_name: "endTime", deprecated: false
end

defmodule Google.Cloud.Capacityplanner.V1beta.ExportUsageHistoriesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :response, 1, type: :string
end

defmodule Google.Cloud.Capacityplanner.V1beta.ExportForecastsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :response, 1, type: :string
end

defmodule Google.Cloud.Capacityplanner.V1beta.ExportReservationsUsageResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :response, 1, type: :string
end

defmodule Google.Cloud.Capacityplanner.V1beta.UsageService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.capacityplanner.v1beta.UsageService",
    protoc_gen_elixir_version: "0.15.0"

  rpc :QueryUsageHistories,
      Google.Cloud.Capacityplanner.V1beta.QueryUsageHistoriesRequest,
      Google.Cloud.Capacityplanner.V1beta.QueryUsageHistoriesResponse

  rpc :QueryForecasts,
      Google.Cloud.Capacityplanner.V1beta.QueryForecastsRequest,
      Google.Cloud.Capacityplanner.V1beta.QueryForecastsResponse

  rpc :QueryReservations,
      Google.Cloud.Capacityplanner.V1beta.QueryReservationsRequest,
      Google.Cloud.Capacityplanner.V1beta.QueryReservationsResponse

  rpc :ExportUsageHistories,
      Google.Cloud.Capacityplanner.V1beta.ExportUsageHistoriesRequest,
      Google.Longrunning.Operation

  rpc :ExportForecasts,
      Google.Cloud.Capacityplanner.V1beta.ExportForecastsRequest,
      Google.Longrunning.Operation

  rpc :ExportReservationsUsage,
      Google.Cloud.Capacityplanner.V1beta.ExportReservationsUsageRequest,
      Google.Longrunning.Operation
end

defmodule Google.Cloud.Capacityplanner.V1beta.UsageService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Capacityplanner.V1beta.UsageService.Service
end
