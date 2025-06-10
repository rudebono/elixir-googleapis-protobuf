defmodule Google.Cloud.Networkservices.V1.HttpRoute.Redirect.ResponseCode do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :RESPONSE_CODE_UNSPECIFIED, 0
  field :MOVED_PERMANENTLY_DEFAULT, 1
  field :FOUND, 2
  field :SEE_OTHER, 3
  field :TEMPORARY_REDIRECT, 4
  field :PERMANENT_REDIRECT, 5
end

defmodule Google.Cloud.Networkservices.V1.HttpRoute.HeaderMatch.IntegerRange do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :start, 1, type: :int32
  field :end, 2, type: :int32
end

defmodule Google.Cloud.Networkservices.V1.HttpRoute.HeaderMatch do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :MatchType, 0

  field :exact_match, 2, type: :string, json_name: "exactMatch", oneof: 0
  field :regex_match, 3, type: :string, json_name: "regexMatch", oneof: 0
  field :prefix_match, 4, type: :string, json_name: "prefixMatch", oneof: 0
  field :present_match, 5, type: :bool, json_name: "presentMatch", oneof: 0
  field :suffix_match, 6, type: :string, json_name: "suffixMatch", oneof: 0

  field :range_match, 7,
    type: Google.Cloud.Networkservices.V1.HttpRoute.HeaderMatch.IntegerRange,
    json_name: "rangeMatch",
    oneof: 0

  field :header, 1, type: :string
  field :invert_match, 8, type: :bool, json_name: "invertMatch"
end

defmodule Google.Cloud.Networkservices.V1.HttpRoute.QueryParameterMatch do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :MatchType, 0

  field :exact_match, 2, type: :string, json_name: "exactMatch", oneof: 0
  field :regex_match, 3, type: :string, json_name: "regexMatch", oneof: 0
  field :present_match, 4, type: :bool, json_name: "presentMatch", oneof: 0
  field :query_parameter, 1, type: :string, json_name: "queryParameter"
end

defmodule Google.Cloud.Networkservices.V1.HttpRoute.RouteMatch do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :PathMatch, 0

  field :full_path_match, 1, type: :string, json_name: "fullPathMatch", oneof: 0
  field :prefix_match, 2, type: :string, json_name: "prefixMatch", oneof: 0
  field :regex_match, 3, type: :string, json_name: "regexMatch", oneof: 0
  field :ignore_case, 4, type: :bool, json_name: "ignoreCase"
  field :headers, 5, repeated: true, type: Google.Cloud.Networkservices.V1.HttpRoute.HeaderMatch

  field :query_parameters, 6,
    repeated: true,
    type: Google.Cloud.Networkservices.V1.HttpRoute.QueryParameterMatch,
    json_name: "queryParameters"
end

defmodule Google.Cloud.Networkservices.V1.HttpRoute.Destination do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :service_name, 1, type: :string, json_name: "serviceName", deprecated: false
  field :weight, 2, type: :int32

  field :request_header_modifier, 3,
    type: Google.Cloud.Networkservices.V1.HttpRoute.HeaderModifier,
    json_name: "requestHeaderModifier",
    deprecated: false

  field :response_header_modifier, 4,
    type: Google.Cloud.Networkservices.V1.HttpRoute.HeaderModifier,
    json_name: "responseHeaderModifier",
    deprecated: false
end

defmodule Google.Cloud.Networkservices.V1.HttpRoute.Redirect do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :host_redirect, 1, type: :string, json_name: "hostRedirect"
  field :path_redirect, 2, type: :string, json_name: "pathRedirect"
  field :prefix_rewrite, 3, type: :string, json_name: "prefixRewrite"

  field :response_code, 4,
    type: Google.Cloud.Networkservices.V1.HttpRoute.Redirect.ResponseCode,
    json_name: "responseCode",
    enum: true

  field :https_redirect, 5, type: :bool, json_name: "httpsRedirect"
  field :strip_query, 6, type: :bool, json_name: "stripQuery"
  field :port_redirect, 7, type: :int32, json_name: "portRedirect"
end

defmodule Google.Cloud.Networkservices.V1.HttpRoute.FaultInjectionPolicy.Delay do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :fixed_delay, 1, type: Google.Protobuf.Duration, json_name: "fixedDelay"
  field :percentage, 2, type: :int32
end

defmodule Google.Cloud.Networkservices.V1.HttpRoute.FaultInjectionPolicy.Abort do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :http_status, 1, type: :int32, json_name: "httpStatus"
  field :percentage, 2, type: :int32
end

defmodule Google.Cloud.Networkservices.V1.HttpRoute.FaultInjectionPolicy do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :delay, 1, type: Google.Cloud.Networkservices.V1.HttpRoute.FaultInjectionPolicy.Delay
  field :abort, 2, type: Google.Cloud.Networkservices.V1.HttpRoute.FaultInjectionPolicy.Abort
end

defmodule Google.Cloud.Networkservices.V1.HttpRoute.StatefulSessionAffinityPolicy do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :cookie_ttl, 1, type: Google.Protobuf.Duration, json_name: "cookieTtl", deprecated: false
end

defmodule Google.Cloud.Networkservices.V1.HttpRoute.HeaderModifier.SetEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Networkservices.V1.HttpRoute.HeaderModifier.AddEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Networkservices.V1.HttpRoute.HeaderModifier do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :set, 1,
    repeated: true,
    type: Google.Cloud.Networkservices.V1.HttpRoute.HeaderModifier.SetEntry,
    map: true

  field :add, 2,
    repeated: true,
    type: Google.Cloud.Networkservices.V1.HttpRoute.HeaderModifier.AddEntry,
    map: true

  field :remove, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Networkservices.V1.HttpRoute.URLRewrite do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :path_prefix_rewrite, 1, type: :string, json_name: "pathPrefixRewrite"
  field :host_rewrite, 2, type: :string, json_name: "hostRewrite"
end

defmodule Google.Cloud.Networkservices.V1.HttpRoute.RetryPolicy do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :retry_conditions, 1, repeated: true, type: :string, json_name: "retryConditions"
  field :num_retries, 2, type: :int32, json_name: "numRetries"
  field :per_try_timeout, 3, type: Google.Protobuf.Duration, json_name: "perTryTimeout"
end

defmodule Google.Cloud.Networkservices.V1.HttpRoute.RequestMirrorPolicy do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :destination, 1, type: Google.Cloud.Networkservices.V1.HttpRoute.Destination
  field :mirror_percent, 2, type: :float, json_name: "mirrorPercent", deprecated: false
end

defmodule Google.Cloud.Networkservices.V1.HttpRoute.CorsPolicy do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :allow_origins, 1, repeated: true, type: :string, json_name: "allowOrigins"
  field :allow_origin_regexes, 2, repeated: true, type: :string, json_name: "allowOriginRegexes"
  field :allow_methods, 3, repeated: true, type: :string, json_name: "allowMethods"
  field :allow_headers, 4, repeated: true, type: :string, json_name: "allowHeaders"
  field :expose_headers, 5, repeated: true, type: :string, json_name: "exposeHeaders"
  field :max_age, 6, type: :string, json_name: "maxAge"
  field :allow_credentials, 7, type: :bool, json_name: "allowCredentials"
  field :disabled, 8, type: :bool
end

defmodule Google.Cloud.Networkservices.V1.HttpRoute.HttpDirectResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :HttpBody, 0

  field :string_body, 2, type: :string, json_name: "stringBody", oneof: 0, deprecated: false
  field :bytes_body, 3, type: :bytes, json_name: "bytesBody", oneof: 0, deprecated: false
  field :status, 1, type: :int32, deprecated: false
end

defmodule Google.Cloud.Networkservices.V1.HttpRoute.RouteAction do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :destinations, 1,
    repeated: true,
    type: Google.Cloud.Networkservices.V1.HttpRoute.Destination

  field :redirect, 2, type: Google.Cloud.Networkservices.V1.HttpRoute.Redirect

  field :fault_injection_policy, 4,
    type: Google.Cloud.Networkservices.V1.HttpRoute.FaultInjectionPolicy,
    json_name: "faultInjectionPolicy"

  field :request_header_modifier, 5,
    type: Google.Cloud.Networkservices.V1.HttpRoute.HeaderModifier,
    json_name: "requestHeaderModifier"

  field :response_header_modifier, 6,
    type: Google.Cloud.Networkservices.V1.HttpRoute.HeaderModifier,
    json_name: "responseHeaderModifier"

  field :url_rewrite, 7,
    type: Google.Cloud.Networkservices.V1.HttpRoute.URLRewrite,
    json_name: "urlRewrite"

  field :timeout, 8, type: Google.Protobuf.Duration

  field :retry_policy, 9,
    type: Google.Cloud.Networkservices.V1.HttpRoute.RetryPolicy,
    json_name: "retryPolicy"

  field :request_mirror_policy, 10,
    type: Google.Cloud.Networkservices.V1.HttpRoute.RequestMirrorPolicy,
    json_name: "requestMirrorPolicy"

  field :cors_policy, 11,
    type: Google.Cloud.Networkservices.V1.HttpRoute.CorsPolicy,
    json_name: "corsPolicy"

  field :stateful_session_affinity, 12,
    type: Google.Cloud.Networkservices.V1.HttpRoute.StatefulSessionAffinityPolicy,
    json_name: "statefulSessionAffinity",
    deprecated: false

  field :direct_response, 13,
    type: Google.Cloud.Networkservices.V1.HttpRoute.HttpDirectResponse,
    json_name: "directResponse",
    deprecated: false

  field :idle_timeout, 14,
    type: Google.Protobuf.Duration,
    json_name: "idleTimeout",
    deprecated: false
end

defmodule Google.Cloud.Networkservices.V1.HttpRoute.RouteRule do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :matches, 1, repeated: true, type: Google.Cloud.Networkservices.V1.HttpRoute.RouteMatch
  field :action, 2, type: Google.Cloud.Networkservices.V1.HttpRoute.RouteAction
end

defmodule Google.Cloud.Networkservices.V1.HttpRoute.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Networkservices.V1.HttpRoute do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :self_link, 11, type: :string, json_name: "selfLink", deprecated: false
  field :description, 2, type: :string, deprecated: false

  field :create_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 4,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :hostnames, 5, repeated: true, type: :string, deprecated: false
  field :meshes, 8, repeated: true, type: :string, deprecated: false
  field :gateways, 9, repeated: true, type: :string, deprecated: false

  field :labels, 10,
    repeated: true,
    type: Google.Cloud.Networkservices.V1.HttpRoute.LabelsEntry,
    map: true,
    deprecated: false

  field :rules, 6,
    repeated: true,
    type: Google.Cloud.Networkservices.V1.HttpRoute.RouteRule,
    deprecated: false
end

defmodule Google.Cloud.Networkservices.V1.ListHttpRoutesRequest do
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

defmodule Google.Cloud.Networkservices.V1.ListHttpRoutesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :http_routes, 1,
    repeated: true,
    type: Google.Cloud.Networkservices.V1.HttpRoute,
    json_name: "httpRoutes"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Networkservices.V1.GetHttpRouteRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Networkservices.V1.CreateHttpRouteRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :http_route_id, 2, type: :string, json_name: "httpRouteId", deprecated: false

  field :http_route, 3,
    type: Google.Cloud.Networkservices.V1.HttpRoute,
    json_name: "httpRoute",
    deprecated: false
end

defmodule Google.Cloud.Networkservices.V1.UpdateHttpRouteRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :update_mask, 1,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :http_route, 2,
    type: Google.Cloud.Networkservices.V1.HttpRoute,
    json_name: "httpRoute",
    deprecated: false
end

defmodule Google.Cloud.Networkservices.V1.DeleteHttpRouteRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end
