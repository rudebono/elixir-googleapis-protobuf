defmodule Google.Cloud.Ids.V1.Endpoint.Severity do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :SEVERITY_UNSPECIFIED | :INFORMATIONAL | :LOW | :MEDIUM | :HIGH | :CRITICAL

  field :SEVERITY_UNSPECIFIED, 0
  field :INFORMATIONAL, 1
  field :LOW, 2
  field :MEDIUM, 3
  field :HIGH, 4
  field :CRITICAL, 5
end
defmodule Google.Cloud.Ids.V1.Endpoint.State do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :STATE_UNSPECIFIED | :CREATING | :READY | :DELETING

  field :STATE_UNSPECIFIED, 0
  field :CREATING, 1
  field :READY, 2
  field :DELETING, 3
end
defmodule Google.Cloud.Ids.V1.Endpoint.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct key: "",
            value: ""

  field :key, 1, type: :string
  field :value, 2, type: :string
end
defmodule Google.Cloud.Ids.V1.Endpoint do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          create_time: Google.Protobuf.Timestamp.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil,
          labels: %{String.t() => String.t()},
          network: String.t(),
          endpoint_forwarding_rule: String.t(),
          endpoint_ip: String.t(),
          description: String.t(),
          severity: Google.Cloud.Ids.V1.Endpoint.Severity.t(),
          state: Google.Cloud.Ids.V1.Endpoint.State.t(),
          traffic_logs: boolean
        }

  defstruct name: "",
            create_time: nil,
            update_time: nil,
            labels: %{},
            network: "",
            endpoint_forwarding_rule: "",
            endpoint_ip: "",
            description: "",
            severity: :SEVERITY_UNSPECIFIED,
            state: :STATE_UNSPECIFIED,
            traffic_logs: false

  field :name, 1, type: :string, deprecated: false

  field :create_time, 2,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :labels, 4, repeated: true, type: Google.Cloud.Ids.V1.Endpoint.LabelsEntry, map: true
  field :network, 5, type: :string, deprecated: false

  field :endpoint_forwarding_rule, 6,
    type: :string,
    json_name: "endpointForwardingRule",
    deprecated: false

  field :endpoint_ip, 7, type: :string, json_name: "endpointIp", deprecated: false
  field :description, 8, type: :string
  field :severity, 9, type: Google.Cloud.Ids.V1.Endpoint.Severity, enum: true, deprecated: false
  field :state, 12, type: Google.Cloud.Ids.V1.Endpoint.State, enum: true, deprecated: false
  field :traffic_logs, 13, type: :bool, json_name: "trafficLogs"
end
defmodule Google.Cloud.Ids.V1.ListEndpointsRequest do
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
defmodule Google.Cloud.Ids.V1.ListEndpointsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          endpoints: [Google.Cloud.Ids.V1.Endpoint.t()],
          next_page_token: String.t(),
          unreachable: [String.t()]
        }

  defstruct endpoints: [],
            next_page_token: "",
            unreachable: []

  field :endpoints, 1, repeated: true, type: Google.Cloud.Ids.V1.Endpoint
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end
defmodule Google.Cloud.Ids.V1.GetEndpointRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Ids.V1.CreateEndpointRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          endpoint_id: String.t(),
          endpoint: Google.Cloud.Ids.V1.Endpoint.t() | nil,
          request_id: String.t()
        }

  defstruct parent: "",
            endpoint_id: "",
            endpoint: nil,
            request_id: ""

  field :parent, 1, type: :string, deprecated: false
  field :endpoint_id, 2, type: :string, json_name: "endpointId", deprecated: false
  field :endpoint, 3, type: Google.Cloud.Ids.V1.Endpoint, deprecated: false
  field :request_id, 4, type: :string, json_name: "requestId"
end
defmodule Google.Cloud.Ids.V1.DeleteEndpointRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          request_id: String.t()
        }

  defstruct name: "",
            request_id: ""

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId"
end
defmodule Google.Cloud.Ids.V1.OperationMetadata do
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
defmodule Google.Cloud.Ids.V1.IDS.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.ids.v1.IDS"

  rpc :ListEndpoints,
      Google.Cloud.Ids.V1.ListEndpointsRequest,
      Google.Cloud.Ids.V1.ListEndpointsResponse

  rpc :GetEndpoint, Google.Cloud.Ids.V1.GetEndpointRequest, Google.Cloud.Ids.V1.Endpoint

  rpc :CreateEndpoint, Google.Cloud.Ids.V1.CreateEndpointRequest, Google.Longrunning.Operation

  rpc :DeleteEndpoint, Google.Cloud.Ids.V1.DeleteEndpointRequest, Google.Longrunning.Operation
end

defmodule Google.Cloud.Ids.V1.IDS.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Ids.V1.IDS.Service
end
