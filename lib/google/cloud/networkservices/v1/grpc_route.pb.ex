defmodule Google.Cloud.Networkservices.V1.GrpcRoute.MethodMatch.Type do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :TYPE_UNSPECIFIED, 0
  field :EXACT, 1
  field :REGULAR_EXPRESSION, 2
end

defmodule Google.Cloud.Networkservices.V1.GrpcRoute.HeaderMatch.Type do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :TYPE_UNSPECIFIED, 0
  field :EXACT, 1
  field :REGULAR_EXPRESSION, 2
end

defmodule Google.Cloud.Networkservices.V1.GrpcRoute.MethodMatch do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :type, 1,
    type: Google.Cloud.Networkservices.V1.GrpcRoute.MethodMatch.Type,
    enum: true,
    deprecated: false

  field :grpc_service, 2, type: :string, json_name: "grpcService", deprecated: false
  field :grpc_method, 3, type: :string, json_name: "grpcMethod", deprecated: false

  field :case_sensitive, 4,
    proto3_optional: true,
    type: :bool,
    json_name: "caseSensitive",
    deprecated: false
end

defmodule Google.Cloud.Networkservices.V1.GrpcRoute.HeaderMatch do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :type, 1,
    type: Google.Cloud.Networkservices.V1.GrpcRoute.HeaderMatch.Type,
    enum: true,
    deprecated: false

  field :key, 2, type: :string, deprecated: false
  field :value, 3, type: :string, deprecated: false
end

defmodule Google.Cloud.Networkservices.V1.GrpcRoute.RouteMatch do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :method, 1,
    proto3_optional: true,
    type: Google.Cloud.Networkservices.V1.GrpcRoute.MethodMatch,
    deprecated: false

  field :headers, 2,
    repeated: true,
    type: Google.Cloud.Networkservices.V1.GrpcRoute.HeaderMatch,
    deprecated: false
end

defmodule Google.Cloud.Networkservices.V1.GrpcRoute.Destination do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :destination_type, 0

  field :service_name, 1, type: :string, json_name: "serviceName", oneof: 0, deprecated: false
  field :weight, 2, proto3_optional: true, type: :int32, deprecated: false
end

defmodule Google.Cloud.Networkservices.V1.GrpcRoute.FaultInjectionPolicy.Delay do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :fixed_delay, 1,
    proto3_optional: true,
    type: Google.Protobuf.Duration,
    json_name: "fixedDelay"

  field :percentage, 2, proto3_optional: true, type: :int32
end

defmodule Google.Cloud.Networkservices.V1.GrpcRoute.FaultInjectionPolicy.Abort do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :http_status, 1, proto3_optional: true, type: :int32, json_name: "httpStatus"
  field :percentage, 2, proto3_optional: true, type: :int32
end

defmodule Google.Cloud.Networkservices.V1.GrpcRoute.FaultInjectionPolicy do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :delay, 1,
    proto3_optional: true,
    type: Google.Cloud.Networkservices.V1.GrpcRoute.FaultInjectionPolicy.Delay

  field :abort, 2,
    proto3_optional: true,
    type: Google.Cloud.Networkservices.V1.GrpcRoute.FaultInjectionPolicy.Abort
end

defmodule Google.Cloud.Networkservices.V1.GrpcRoute.StatefulSessionAffinityPolicy do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :cookie_ttl, 1, type: Google.Protobuf.Duration, json_name: "cookieTtl", deprecated: false
end

defmodule Google.Cloud.Networkservices.V1.GrpcRoute.RetryPolicy do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :retry_conditions, 1, repeated: true, type: :string, json_name: "retryConditions"
  field :num_retries, 2, type: :uint32, json_name: "numRetries"
end

defmodule Google.Cloud.Networkservices.V1.GrpcRoute.RouteAction do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :destinations, 1,
    repeated: true,
    type: Google.Cloud.Networkservices.V1.GrpcRoute.Destination,
    deprecated: false

  field :fault_injection_policy, 3,
    type: Google.Cloud.Networkservices.V1.GrpcRoute.FaultInjectionPolicy,
    json_name: "faultInjectionPolicy",
    deprecated: false

  field :timeout, 7, type: Google.Protobuf.Duration, deprecated: false

  field :retry_policy, 8,
    type: Google.Cloud.Networkservices.V1.GrpcRoute.RetryPolicy,
    json_name: "retryPolicy",
    deprecated: false

  field :stateful_session_affinity, 11,
    type: Google.Cloud.Networkservices.V1.GrpcRoute.StatefulSessionAffinityPolicy,
    json_name: "statefulSessionAffinity",
    deprecated: false

  field :idle_timeout, 12,
    type: Google.Protobuf.Duration,
    json_name: "idleTimeout",
    deprecated: false
end

defmodule Google.Cloud.Networkservices.V1.GrpcRoute.RouteRule do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :matches, 1,
    repeated: true,
    type: Google.Cloud.Networkservices.V1.GrpcRoute.RouteMatch,
    deprecated: false

  field :action, 2, type: Google.Cloud.Networkservices.V1.GrpcRoute.RouteAction, deprecated: false
end

defmodule Google.Cloud.Networkservices.V1.GrpcRoute.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Networkservices.V1.GrpcRoute do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :self_link, 12, type: :string, json_name: "selfLink", deprecated: false

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
    type: Google.Cloud.Networkservices.V1.GrpcRoute.LabelsEntry,
    map: true,
    deprecated: false

  field :description, 5, type: :string, deprecated: false
  field :hostnames, 6, repeated: true, type: :string, deprecated: false
  field :meshes, 9, repeated: true, type: :string, deprecated: false
  field :gateways, 10, repeated: true, type: :string, deprecated: false

  field :rules, 7,
    repeated: true,
    type: Google.Cloud.Networkservices.V1.GrpcRoute.RouteRule,
    deprecated: false
end

defmodule Google.Cloud.Networkservices.V1.ListGrpcRoutesRequest do
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

defmodule Google.Cloud.Networkservices.V1.ListGrpcRoutesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :grpc_routes, 1,
    repeated: true,
    type: Google.Cloud.Networkservices.V1.GrpcRoute,
    json_name: "grpcRoutes"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Networkservices.V1.GetGrpcRouteRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Networkservices.V1.CreateGrpcRouteRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :grpc_route_id, 2, type: :string, json_name: "grpcRouteId", deprecated: false

  field :grpc_route, 3,
    type: Google.Cloud.Networkservices.V1.GrpcRoute,
    json_name: "grpcRoute",
    deprecated: false
end

defmodule Google.Cloud.Networkservices.V1.UpdateGrpcRouteRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :update_mask, 1,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :grpc_route, 2,
    type: Google.Cloud.Networkservices.V1.GrpcRoute,
    json_name: "grpcRoute",
    deprecated: false
end

defmodule Google.Cloud.Networkservices.V1.DeleteGrpcRouteRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end
