defmodule Google.Cloud.Beyondcorp.Clientgateways.V1.ClientGateway.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :CREATING, 1
  field :UPDATING, 2
  field :DELETING, 3
  field :RUNNING, 4
  field :DOWN, 5
  field :ERROR, 6
end

defmodule Google.Cloud.Beyondcorp.Clientgateways.V1.ClientGateway do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :create_time, 2,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :state, 4,
    type: Google.Cloud.Beyondcorp.Clientgateways.V1.ClientGateway.State,
    enum: true,
    deprecated: false

  field :id, 5, type: :string, deprecated: false

  field :client_connector_service, 6,
    type: :string,
    json_name: "clientConnectorService",
    deprecated: false
end

defmodule Google.Cloud.Beyondcorp.Clientgateways.V1.ListClientGatewaysRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
end

defmodule Google.Cloud.Beyondcorp.Clientgateways.V1.ListClientGatewaysResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :client_gateways, 1,
    repeated: true,
    type: Google.Cloud.Beyondcorp.Clientgateways.V1.ClientGateway,
    json_name: "clientGateways"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Beyondcorp.Clientgateways.V1.GetClientGatewayRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Beyondcorp.Clientgateways.V1.CreateClientGatewayRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :client_gateway_id, 2, type: :string, json_name: "clientGatewayId", deprecated: false

  field :client_gateway, 3,
    type: Google.Cloud.Beyondcorp.Clientgateways.V1.ClientGateway,
    json_name: "clientGateway",
    deprecated: false

  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
  field :validate_only, 5, type: :bool, json_name: "validateOnly", deprecated: false
end

defmodule Google.Cloud.Beyondcorp.Clientgateways.V1.DeleteClientGatewayRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
  field :validate_only, 3, type: :bool, json_name: "validateOnly", deprecated: false
end

defmodule Google.Cloud.Beyondcorp.Clientgateways.V1.ClientGatewayOperationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

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

defmodule Google.Cloud.Beyondcorp.Clientgateways.V1.ClientGatewaysService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.beyondcorp.clientgateways.v1.ClientGatewaysService",
    protoc_gen_elixir_version: "0.14.0"

  rpc :ListClientGateways,
      Google.Cloud.Beyondcorp.Clientgateways.V1.ListClientGatewaysRequest,
      Google.Cloud.Beyondcorp.Clientgateways.V1.ListClientGatewaysResponse

  rpc :GetClientGateway,
      Google.Cloud.Beyondcorp.Clientgateways.V1.GetClientGatewayRequest,
      Google.Cloud.Beyondcorp.Clientgateways.V1.ClientGateway

  rpc :CreateClientGateway,
      Google.Cloud.Beyondcorp.Clientgateways.V1.CreateClientGatewayRequest,
      Google.Longrunning.Operation

  rpc :DeleteClientGateway,
      Google.Cloud.Beyondcorp.Clientgateways.V1.DeleteClientGatewayRequest,
      Google.Longrunning.Operation
end

defmodule Google.Cloud.Beyondcorp.Clientgateways.V1.ClientGatewaysService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Beyondcorp.Clientgateways.V1.ClientGatewaysService.Service
end
