defmodule Google.Cloud.Networkservices.V1.TlsRoute.RouteRule do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :matches, 1,
    repeated: true,
    type: Google.Cloud.Networkservices.V1.TlsRoute.RouteMatch,
    deprecated: false

  field :action, 2, type: Google.Cloud.Networkservices.V1.TlsRoute.RouteAction, deprecated: false
end

defmodule Google.Cloud.Networkservices.V1.TlsRoute.RouteMatch do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :sni_host, 1, repeated: true, type: :string, json_name: "sniHost", deprecated: false
  field :alpn, 2, repeated: true, type: :string, deprecated: false
end

defmodule Google.Cloud.Networkservices.V1.TlsRoute.RouteAction do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :destinations, 1,
    repeated: true,
    type: Google.Cloud.Networkservices.V1.TlsRoute.RouteDestination,
    deprecated: false
end

defmodule Google.Cloud.Networkservices.V1.TlsRoute.RouteDestination do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :service_name, 1, type: :string, json_name: "serviceName", deprecated: false
  field :weight, 2, type: :int32, deprecated: false
end

defmodule Google.Cloud.Networkservices.V1.TlsRoute do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :self_link, 8, type: :string, json_name: "selfLink", deprecated: false

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
    type: Google.Cloud.Networkservices.V1.TlsRoute.RouteRule,
    deprecated: false

  field :meshes, 6, repeated: true, type: :string, deprecated: false
  field :gateways, 7, repeated: true, type: :string, deprecated: false
end

defmodule Google.Cloud.Networkservices.V1.ListTlsRoutesRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Cloud.Networkservices.V1.ListTlsRoutesResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :tls_routes, 1,
    repeated: true,
    type: Google.Cloud.Networkservices.V1.TlsRoute,
    json_name: "tlsRoutes"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Networkservices.V1.GetTlsRouteRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Networkservices.V1.CreateTlsRouteRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :tls_route_id, 2, type: :string, json_name: "tlsRouteId", deprecated: false

  field :tls_route, 3,
    type: Google.Cloud.Networkservices.V1.TlsRoute,
    json_name: "tlsRoute",
    deprecated: false
end

defmodule Google.Cloud.Networkservices.V1.UpdateTlsRouteRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :update_mask, 1,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :tls_route, 2,
    type: Google.Cloud.Networkservices.V1.TlsRoute,
    json_name: "tlsRoute",
    deprecated: false
end

defmodule Google.Cloud.Networkservices.V1.DeleteTlsRouteRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end