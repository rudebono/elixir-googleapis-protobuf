defmodule Google.Cloud.Networkservices.V1.TcpRoute.RouteRule do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :matches, 1,
    repeated: true,
    type: Google.Cloud.Networkservices.V1.TcpRoute.RouteMatch,
    deprecated: false

  field :action, 2, type: Google.Cloud.Networkservices.V1.TcpRoute.RouteAction, deprecated: false
end

defmodule Google.Cloud.Networkservices.V1.TcpRoute.RouteMatch do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :address, 1, type: :string, deprecated: false
  field :port, 2, type: :string, deprecated: false
end

defmodule Google.Cloud.Networkservices.V1.TcpRoute.RouteAction do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :destinations, 1,
    repeated: true,
    type: Google.Cloud.Networkservices.V1.TcpRoute.RouteDestination,
    deprecated: false

  field :original_destination, 3, type: :bool, json_name: "originalDestination", deprecated: false

  field :idle_timeout, 5,
    type: Google.Protobuf.Duration,
    json_name: "idleTimeout",
    deprecated: false
end

defmodule Google.Cloud.Networkservices.V1.TcpRoute.RouteDestination do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :service_name, 1, type: :string, json_name: "serviceName", deprecated: false
  field :weight, 2, type: :int32, deprecated: false
end

defmodule Google.Cloud.Networkservices.V1.TcpRoute.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Networkservices.V1.TcpRoute do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :self_link, 11, type: :string, json_name: "selfLink", deprecated: false

  field :create_time, 2,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :description, 4, type: :string, deprecated: false

  field :rules, 5,
    repeated: true,
    type: Google.Cloud.Networkservices.V1.TcpRoute.RouteRule,
    deprecated: false

  field :meshes, 8, repeated: true, type: :string, deprecated: false
  field :gateways, 9, repeated: true, type: :string, deprecated: false

  field :labels, 10,
    repeated: true,
    type: Google.Cloud.Networkservices.V1.TcpRoute.LabelsEntry,
    map: true,
    deprecated: false
end

defmodule Google.Cloud.Networkservices.V1.ListTcpRoutesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"

  field :return_partial_success, 4,
    type: :bool,
    json_name: "returnPartialSuccess",
    deprecated: false
end

defmodule Google.Cloud.Networkservices.V1.ListTcpRoutesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :tcp_routes, 1,
    repeated: true,
    type: Google.Cloud.Networkservices.V1.TcpRoute,
    json_name: "tcpRoutes"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Networkservices.V1.GetTcpRouteRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Networkservices.V1.CreateTcpRouteRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :tcp_route_id, 2, type: :string, json_name: "tcpRouteId", deprecated: false

  field :tcp_route, 3,
    type: Google.Cloud.Networkservices.V1.TcpRoute,
    json_name: "tcpRoute",
    deprecated: false
end

defmodule Google.Cloud.Networkservices.V1.UpdateTcpRouteRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :update_mask, 1,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :tcp_route, 2,
    type: Google.Cloud.Networkservices.V1.TcpRoute,
    json_name: "tcpRoute",
    deprecated: false
end

defmodule Google.Cloud.Networkservices.V1.DeleteTcpRouteRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end
