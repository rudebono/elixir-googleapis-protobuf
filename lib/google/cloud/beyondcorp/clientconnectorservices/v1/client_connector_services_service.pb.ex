defmodule Google.Cloud.Beyondcorp.Clientconnectorservices.V1.ClientConnectorService.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :CREATING, 1
  field :UPDATING, 2
  field :DELETING, 3
  field :RUNNING, 4
  field :DOWN, 5
  field :ERROR, 6
end

defmodule Google.Cloud.Beyondcorp.Clientconnectorservices.V1.ClientConnectorService.Ingress.Config.TransportProtocol do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :TRANSPORT_PROTOCOL_UNSPECIFIED, 0
  field :TCP, 1
end

defmodule Google.Cloud.Beyondcorp.Clientconnectorservices.V1.ClientConnectorService.Ingress.Config.DestinationRoute do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :address, 1, type: :string, deprecated: false
  field :netmask, 2, type: :string, deprecated: false
end

defmodule Google.Cloud.Beyondcorp.Clientconnectorservices.V1.ClientConnectorService.Ingress.Config do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :transport_protocol, 1,
    type:
      Google.Cloud.Beyondcorp.Clientconnectorservices.V1.ClientConnectorService.Ingress.Config.TransportProtocol,
    json_name: "transportProtocol",
    enum: true,
    deprecated: false

  field :destination_routes, 2,
    repeated: true,
    type:
      Google.Cloud.Beyondcorp.Clientconnectorservices.V1.ClientConnectorService.Ingress.Config.DestinationRoute,
    json_name: "destinationRoutes",
    deprecated: false
end

defmodule Google.Cloud.Beyondcorp.Clientconnectorservices.V1.ClientConnectorService.Ingress do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :ingress_config, 0

  field :config, 1,
    type:
      Google.Cloud.Beyondcorp.Clientconnectorservices.V1.ClientConnectorService.Ingress.Config,
    oneof: 0
end

defmodule Google.Cloud.Beyondcorp.Clientconnectorservices.V1.ClientConnectorService.Egress.PeeredVpc do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :network_vpc, 1, type: :string, json_name: "networkVpc", deprecated: false
end

defmodule Google.Cloud.Beyondcorp.Clientconnectorservices.V1.ClientConnectorService.Egress do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :destination_type, 0

  field :peered_vpc, 1,
    type:
      Google.Cloud.Beyondcorp.Clientconnectorservices.V1.ClientConnectorService.Egress.PeeredVpc,
    json_name: "peeredVpc",
    oneof: 0
end

defmodule Google.Cloud.Beyondcorp.Clientconnectorservices.V1.ClientConnectorService do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :create_time, 2,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :display_name, 4, type: :string, json_name: "displayName", deprecated: false

  field :ingress, 6,
    type: Google.Cloud.Beyondcorp.Clientconnectorservices.V1.ClientConnectorService.Ingress,
    deprecated: false

  field :egress, 7,
    type: Google.Cloud.Beyondcorp.Clientconnectorservices.V1.ClientConnectorService.Egress,
    deprecated: false

  field :state, 8,
    type: Google.Cloud.Beyondcorp.Clientconnectorservices.V1.ClientConnectorService.State,
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Beyondcorp.Clientconnectorservices.V1.ListClientConnectorServicesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
end

defmodule Google.Cloud.Beyondcorp.Clientconnectorservices.V1.ListClientConnectorServicesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :client_connector_services, 1,
    repeated: true,
    type: Google.Cloud.Beyondcorp.Clientconnectorservices.V1.ClientConnectorService,
    json_name: "clientConnectorServices"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Beyondcorp.Clientconnectorservices.V1.GetClientConnectorServiceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Beyondcorp.Clientconnectorservices.V1.CreateClientConnectorServiceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :client_connector_service_id, 2,
    type: :string,
    json_name: "clientConnectorServiceId",
    deprecated: false

  field :client_connector_service, 3,
    type: Google.Cloud.Beyondcorp.Clientconnectorservices.V1.ClientConnectorService,
    json_name: "clientConnectorService",
    deprecated: false

  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
  field :validate_only, 5, type: :bool, json_name: "validateOnly", deprecated: false
end

defmodule Google.Cloud.Beyondcorp.Clientconnectorservices.V1.UpdateClientConnectorServiceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :update_mask, 1,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :client_connector_service, 2,
    type: Google.Cloud.Beyondcorp.Clientconnectorservices.V1.ClientConnectorService,
    json_name: "clientConnectorService",
    deprecated: false

  field :request_id, 3, type: :string, json_name: "requestId", deprecated: false
  field :validate_only, 4, type: :bool, json_name: "validateOnly", deprecated: false
  field :allow_missing, 5, type: :bool, json_name: "allowMissing", deprecated: false
end

defmodule Google.Cloud.Beyondcorp.Clientconnectorservices.V1.DeleteClientConnectorServiceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
  field :validate_only, 3, type: :bool, json_name: "validateOnly", deprecated: false
end

defmodule Google.Cloud.Beyondcorp.Clientconnectorservices.V1.ClientConnectorServiceOperationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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

defmodule Google.Cloud.Beyondcorp.Clientconnectorservices.V1.ClientConnectorServicesService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.beyondcorp.clientconnectorservices.v1.ClientConnectorServicesService",
    protoc_gen_elixir_version: "0.12.0"

  rpc :ListClientConnectorServices,
      Google.Cloud.Beyondcorp.Clientconnectorservices.V1.ListClientConnectorServicesRequest,
      Google.Cloud.Beyondcorp.Clientconnectorservices.V1.ListClientConnectorServicesResponse

  rpc :GetClientConnectorService,
      Google.Cloud.Beyondcorp.Clientconnectorservices.V1.GetClientConnectorServiceRequest,
      Google.Cloud.Beyondcorp.Clientconnectorservices.V1.ClientConnectorService

  rpc :CreateClientConnectorService,
      Google.Cloud.Beyondcorp.Clientconnectorservices.V1.CreateClientConnectorServiceRequest,
      Google.Longrunning.Operation

  rpc :UpdateClientConnectorService,
      Google.Cloud.Beyondcorp.Clientconnectorservices.V1.UpdateClientConnectorServiceRequest,
      Google.Longrunning.Operation

  rpc :DeleteClientConnectorService,
      Google.Cloud.Beyondcorp.Clientconnectorservices.V1.DeleteClientConnectorServiceRequest,
      Google.Longrunning.Operation
end

defmodule Google.Cloud.Beyondcorp.Clientconnectorservices.V1.ClientConnectorServicesService.Stub do
  @moduledoc false

  use GRPC.Stub,
    service:
      Google.Cloud.Beyondcorp.Clientconnectorservices.V1.ClientConnectorServicesService.Service
end