defmodule Google.Cloud.Networkconnectivity.V1.Destination.DestinationEndpoint.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :VALID, 1
  field :INVALID, 2
end

defmodule Google.Cloud.Networkconnectivity.V1.StateTimeline.StateMetadata.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :ADDING, 1
  field :ACTIVE, 2
  field :DELETING, 3
  field :SUSPENDING, 4
  field :SUSPENDED, 5
end

defmodule Google.Cloud.Networkconnectivity.V1.ServiceConfig.EligibilityCriteria do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :ELIGIBILITY_CRITERIA_UNSPECIFIED, 0
  field :NETWORK_SERVICE_TIER_PREMIUM_ONLY, 1
  field :NETWORK_SERVICE_TIER_STANDARD_ONLY, 2
  field :REQUEST_ENDPOINT_REGIONAL_ENDPOINT_ONLY, 3
end

defmodule Google.Cloud.Networkconnectivity.V1.MulticloudDataTransferConfig.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Networkconnectivity.V1.MulticloudDataTransferConfig.ServicesEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Networkconnectivity.V1.StateTimeline
end

defmodule Google.Cloud.Networkconnectivity.V1.MulticloudDataTransferConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :create_time, 2,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :labels, 4,
    repeated: true,
    type: Google.Cloud.Networkconnectivity.V1.MulticloudDataTransferConfig.LabelsEntry,
    map: true,
    deprecated: false

  field :etag, 5, type: :string
  field :description, 6, type: :string, deprecated: false
  field :destinations_count, 7, type: :int32, json_name: "destinationsCount", deprecated: false

  field :destinations_active_count, 8,
    type: :int32,
    json_name: "destinationsActiveCount",
    deprecated: false

  field :services, 9,
    repeated: true,
    type: Google.Cloud.Networkconnectivity.V1.MulticloudDataTransferConfig.ServicesEntry,
    map: true,
    deprecated: false

  field :uid, 10, type: :string, deprecated: false
end

defmodule Google.Cloud.Networkconnectivity.V1.ListMulticloudDataTransferConfigsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false

  field :return_partial_success, 6,
    type: :bool,
    json_name: "returnPartialSuccess",
    deprecated: false
end

defmodule Google.Cloud.Networkconnectivity.V1.ListMulticloudDataTransferConfigsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :multicloud_data_transfer_configs, 1,
    repeated: true,
    type: Google.Cloud.Networkconnectivity.V1.MulticloudDataTransferConfig,
    json_name: "multicloudDataTransferConfigs"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Networkconnectivity.V1.GetMulticloudDataTransferConfigRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Networkconnectivity.V1.CreateMulticloudDataTransferConfigRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :multicloud_data_transfer_config_id, 2,
    type: :string,
    json_name: "multicloudDataTransferConfigId",
    deprecated: false

  field :multicloud_data_transfer_config, 3,
    type: Google.Cloud.Networkconnectivity.V1.MulticloudDataTransferConfig,
    json_name: "multicloudDataTransferConfig",
    deprecated: false

  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Networkconnectivity.V1.UpdateMulticloudDataTransferConfigRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :update_mask, 1,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :multicloud_data_transfer_config, 2,
    type: Google.Cloud.Networkconnectivity.V1.MulticloudDataTransferConfig,
    json_name: "multicloudDataTransferConfig",
    deprecated: false

  field :request_id, 3, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Networkconnectivity.V1.DeleteMulticloudDataTransferConfigRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
  field :etag, 3, type: :string, deprecated: false
end

defmodule Google.Cloud.Networkconnectivity.V1.Destination.DestinationEndpoint do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :asn, 1, type: :int64, deprecated: false
  field :csp, 2, type: :string, deprecated: false

  field :state, 3,
    type: Google.Cloud.Networkconnectivity.V1.Destination.DestinationEndpoint.State,
    enum: true,
    deprecated: false

  field :update_time, 4,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false
end

defmodule Google.Cloud.Networkconnectivity.V1.Destination.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Networkconnectivity.V1.Destination do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :create_time, 2,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :labels, 4,
    repeated: true,
    type: Google.Cloud.Networkconnectivity.V1.Destination.LabelsEntry,
    map: true,
    deprecated: false

  field :etag, 5, type: :string
  field :description, 6, type: :string, deprecated: false
  field :ip_prefix, 7, type: :string, json_name: "ipPrefix", deprecated: false

  field :endpoints, 8,
    repeated: true,
    type: Google.Cloud.Networkconnectivity.V1.Destination.DestinationEndpoint,
    deprecated: false

  field :state_timeline, 9,
    type: Google.Cloud.Networkconnectivity.V1.StateTimeline,
    json_name: "stateTimeline",
    deprecated: false

  field :uid, 10, type: :string, deprecated: false
end

defmodule Google.Cloud.Networkconnectivity.V1.ListDestinationsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false

  field :return_partial_success, 6,
    type: :bool,
    json_name: "returnPartialSuccess",
    deprecated: false
end

defmodule Google.Cloud.Networkconnectivity.V1.ListDestinationsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :destinations, 1, repeated: true, type: Google.Cloud.Networkconnectivity.V1.Destination
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Networkconnectivity.V1.GetDestinationRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Networkconnectivity.V1.CreateDestinationRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :destination_id, 2, type: :string, json_name: "destinationId", deprecated: false
  field :destination, 3, type: Google.Cloud.Networkconnectivity.V1.Destination, deprecated: false
  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Networkconnectivity.V1.UpdateDestinationRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :update_mask, 1,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :destination, 2, type: Google.Cloud.Networkconnectivity.V1.Destination, deprecated: false
  field :request_id, 3, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Networkconnectivity.V1.DeleteDestinationRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
  field :etag, 3, type: :string, deprecated: false
end

defmodule Google.Cloud.Networkconnectivity.V1.StateTimeline.StateMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :state, 1,
    type: Google.Cloud.Networkconnectivity.V1.StateTimeline.StateMetadata.State,
    enum: true,
    deprecated: false

  field :effective_time, 2,
    type: Google.Protobuf.Timestamp,
    json_name: "effectiveTime",
    deprecated: false
end

defmodule Google.Cloud.Networkconnectivity.V1.StateTimeline do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :states, 1,
    repeated: true,
    type: Google.Cloud.Networkconnectivity.V1.StateTimeline.StateMetadata,
    deprecated: false
end

defmodule Google.Cloud.Networkconnectivity.V1.MulticloudDataTransferSupportedService do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :service_configs, 2,
    repeated: true,
    type: Google.Cloud.Networkconnectivity.V1.ServiceConfig,
    json_name: "serviceConfigs",
    deprecated: false
end

defmodule Google.Cloud.Networkconnectivity.V1.ServiceConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :eligibility_criteria, 1,
    type: Google.Cloud.Networkconnectivity.V1.ServiceConfig.EligibilityCriteria,
    json_name: "eligibilityCriteria",
    enum: true,
    deprecated: false

  field :support_end_time, 2,
    type: Google.Protobuf.Timestamp,
    json_name: "supportEndTime",
    deprecated: false
end

defmodule Google.Cloud.Networkconnectivity.V1.GetMulticloudDataTransferSupportedServiceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Networkconnectivity.V1.ListMulticloudDataTransferSupportedServicesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Cloud.Networkconnectivity.V1.ListMulticloudDataTransferSupportedServicesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :multicloud_data_transfer_supported_services, 1,
    repeated: true,
    type: Google.Cloud.Networkconnectivity.V1.MulticloudDataTransferSupportedService,
    json_name: "multicloudDataTransferSupportedServices"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Networkconnectivity.V1.DataTransferService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.networkconnectivity.v1.DataTransferService",
    protoc_gen_elixir_version: "0.15.0"

  rpc :ListMulticloudDataTransferConfigs,
      Google.Cloud.Networkconnectivity.V1.ListMulticloudDataTransferConfigsRequest,
      Google.Cloud.Networkconnectivity.V1.ListMulticloudDataTransferConfigsResponse

  rpc :GetMulticloudDataTransferConfig,
      Google.Cloud.Networkconnectivity.V1.GetMulticloudDataTransferConfigRequest,
      Google.Cloud.Networkconnectivity.V1.MulticloudDataTransferConfig

  rpc :CreateMulticloudDataTransferConfig,
      Google.Cloud.Networkconnectivity.V1.CreateMulticloudDataTransferConfigRequest,
      Google.Longrunning.Operation

  rpc :UpdateMulticloudDataTransferConfig,
      Google.Cloud.Networkconnectivity.V1.UpdateMulticloudDataTransferConfigRequest,
      Google.Longrunning.Operation

  rpc :DeleteMulticloudDataTransferConfig,
      Google.Cloud.Networkconnectivity.V1.DeleteMulticloudDataTransferConfigRequest,
      Google.Longrunning.Operation

  rpc :ListDestinations,
      Google.Cloud.Networkconnectivity.V1.ListDestinationsRequest,
      Google.Cloud.Networkconnectivity.V1.ListDestinationsResponse

  rpc :GetDestination,
      Google.Cloud.Networkconnectivity.V1.GetDestinationRequest,
      Google.Cloud.Networkconnectivity.V1.Destination

  rpc :CreateDestination,
      Google.Cloud.Networkconnectivity.V1.CreateDestinationRequest,
      Google.Longrunning.Operation

  rpc :UpdateDestination,
      Google.Cloud.Networkconnectivity.V1.UpdateDestinationRequest,
      Google.Longrunning.Operation

  rpc :DeleteDestination,
      Google.Cloud.Networkconnectivity.V1.DeleteDestinationRequest,
      Google.Longrunning.Operation

  rpc :GetMulticloudDataTransferSupportedService,
      Google.Cloud.Networkconnectivity.V1.GetMulticloudDataTransferSupportedServiceRequest,
      Google.Cloud.Networkconnectivity.V1.MulticloudDataTransferSupportedService

  rpc :ListMulticloudDataTransferSupportedServices,
      Google.Cloud.Networkconnectivity.V1.ListMulticloudDataTransferSupportedServicesRequest,
      Google.Cloud.Networkconnectivity.V1.ListMulticloudDataTransferSupportedServicesResponse
end

defmodule Google.Cloud.Networkconnectivity.V1.DataTransferService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Networkconnectivity.V1.DataTransferService.Service
end
