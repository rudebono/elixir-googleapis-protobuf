defmodule Google.Cloud.Networkservices.V1.GatewayRouteView do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :route_project_number, 2, type: :int64, json_name: "routeProjectNumber", deprecated: false
  field :route_location, 3, type: :string, json_name: "routeLocation", deprecated: false
  field :route_type, 4, type: :string, json_name: "routeType", deprecated: false
  field :route_id, 5, type: :string, json_name: "routeId", deprecated: false
end

defmodule Google.Cloud.Networkservices.V1.MeshRouteView do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :route_project_number, 2, type: :int64, json_name: "routeProjectNumber", deprecated: false
  field :route_location, 3, type: :string, json_name: "routeLocation", deprecated: false
  field :route_type, 4, type: :string, json_name: "routeType", deprecated: false
  field :route_id, 5, type: :string, json_name: "routeId", deprecated: false
end

defmodule Google.Cloud.Networkservices.V1.GetGatewayRouteViewRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Networkservices.V1.GetMeshRouteViewRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Networkservices.V1.ListGatewayRouteViewsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Cloud.Networkservices.V1.ListMeshRouteViewsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Cloud.Networkservices.V1.ListGatewayRouteViewsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :gateway_route_views, 1,
    repeated: true,
    type: Google.Cloud.Networkservices.V1.GatewayRouteView,
    json_name: "gatewayRouteViews"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Networkservices.V1.ListMeshRouteViewsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :mesh_route_views, 1,
    repeated: true,
    type: Google.Cloud.Networkservices.V1.MeshRouteView,
    json_name: "meshRouteViews"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end
