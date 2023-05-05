defmodule Google.Monitoring.V3.UptimeCheckRegion do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :REGION_UNSPECIFIED, 0
  field :USA, 1
  field :EUROPE, 2
  field :SOUTH_AMERICA, 3
  field :ASIA_PACIFIC, 4
  field :USA_OREGON, 5
  field :USA_IOWA, 6
  field :USA_VIRGINIA, 7
end

defmodule Google.Monitoring.V3.GroupResourceType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :RESOURCE_TYPE_UNSPECIFIED, 0
  field :INSTANCE, 1
  field :AWS_ELB_LOAD_BALANCER, 2
end

defmodule Google.Monitoring.V3.InternalChecker.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :UNSPECIFIED, 0
  field :CREATING, 1
  field :RUNNING, 2
end

defmodule Google.Monitoring.V3.UptimeCheckConfig.CheckerType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :CHECKER_TYPE_UNSPECIFIED, 0
  field :STATIC_IP_CHECKERS, 1
  field :VPC_CHECKERS, 3
end

defmodule Google.Monitoring.V3.UptimeCheckConfig.HttpCheck.RequestMethod do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :METHOD_UNSPECIFIED, 0
  field :GET, 1
  field :POST, 2
end

defmodule Google.Monitoring.V3.UptimeCheckConfig.HttpCheck.ContentType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :TYPE_UNSPECIFIED, 0
  field :URL_ENCODED, 1
  field :USER_PROVIDED, 2
end

defmodule Google.Monitoring.V3.UptimeCheckConfig.HttpCheck.ResponseStatusCode.StatusClass do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :STATUS_CLASS_UNSPECIFIED, 0
  field :STATUS_CLASS_1XX, 100
  field :STATUS_CLASS_2XX, 200
  field :STATUS_CLASS_3XX, 300
  field :STATUS_CLASS_4XX, 400
  field :STATUS_CLASS_5XX, 500
  field :STATUS_CLASS_ANY, 1000
end

defmodule Google.Monitoring.V3.UptimeCheckConfig.ContentMatcher.ContentMatcherOption do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :CONTENT_MATCHER_OPTION_UNSPECIFIED, 0
  field :CONTAINS_STRING, 1
  field :NOT_CONTAINS_STRING, 2
  field :MATCHES_REGEX, 3
  field :NOT_MATCHES_REGEX, 4
  field :MATCHES_JSON_PATH, 5
  field :NOT_MATCHES_JSON_PATH, 6
end

defmodule Google.Monitoring.V3.UptimeCheckConfig.ContentMatcher.JsonPathMatcher.JsonPathMatcherOption do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :JSON_PATH_MATCHER_OPTION_UNSPECIFIED, 0
  field :EXACT_MATCH, 1
  field :REGEX_MATCH, 2
end

defmodule Google.Monitoring.V3.InternalChecker do
  @moduledoc false

  use Protobuf, deprecated: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string
  field :display_name, 2, type: :string, json_name: "displayName"
  field :network, 3, type: :string
  field :gcp_zone, 4, type: :string, json_name: "gcpZone"
  field :peer_project_id, 6, type: :string, json_name: "peerProjectId"
  field :state, 7, type: Google.Monitoring.V3.InternalChecker.State, enum: true
end

defmodule Google.Monitoring.V3.UptimeCheckConfig.ResourceGroup do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :group_id, 1, type: :string, json_name: "groupId"

  field :resource_type, 2,
    type: Google.Monitoring.V3.GroupResourceType,
    json_name: "resourceType",
    enum: true
end

defmodule Google.Monitoring.V3.UptimeCheckConfig.PingConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :pings_count, 1, type: :int32, json_name: "pingsCount"
end

defmodule Google.Monitoring.V3.UptimeCheckConfig.HttpCheck.BasicAuthentication do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :username, 1, type: :string
  field :password, 2, type: :string
end

defmodule Google.Monitoring.V3.UptimeCheckConfig.HttpCheck.ResponseStatusCode do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :status_code, 0

  field :status_value, 1, type: :int32, json_name: "statusValue", oneof: 0

  field :status_class, 2,
    type: Google.Monitoring.V3.UptimeCheckConfig.HttpCheck.ResponseStatusCode.StatusClass,
    json_name: "statusClass",
    enum: true,
    oneof: 0
end

defmodule Google.Monitoring.V3.UptimeCheckConfig.HttpCheck.HeadersEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Monitoring.V3.UptimeCheckConfig.HttpCheck do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :request_method, 8,
    type: Google.Monitoring.V3.UptimeCheckConfig.HttpCheck.RequestMethod,
    json_name: "requestMethod",
    enum: true

  field :use_ssl, 1, type: :bool, json_name: "useSsl"
  field :path, 2, type: :string
  field :port, 3, type: :int32

  field :auth_info, 4,
    type: Google.Monitoring.V3.UptimeCheckConfig.HttpCheck.BasicAuthentication,
    json_name: "authInfo"

  field :mask_headers, 5, type: :bool, json_name: "maskHeaders"

  field :headers, 6,
    repeated: true,
    type: Google.Monitoring.V3.UptimeCheckConfig.HttpCheck.HeadersEntry,
    map: true

  field :content_type, 9,
    type: Google.Monitoring.V3.UptimeCheckConfig.HttpCheck.ContentType,
    json_name: "contentType",
    enum: true

  field :custom_content_type, 13, type: :string, json_name: "customContentType"
  field :validate_ssl, 7, type: :bool, json_name: "validateSsl"
  field :body, 10, type: :bytes

  field :accepted_response_status_codes, 11,
    repeated: true,
    type: Google.Monitoring.V3.UptimeCheckConfig.HttpCheck.ResponseStatusCode,
    json_name: "acceptedResponseStatusCodes"

  field :ping_config, 12,
    type: Google.Monitoring.V3.UptimeCheckConfig.PingConfig,
    json_name: "pingConfig"
end

defmodule Google.Monitoring.V3.UptimeCheckConfig.TcpCheck do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :port, 1, type: :int32

  field :ping_config, 2,
    type: Google.Monitoring.V3.UptimeCheckConfig.PingConfig,
    json_name: "pingConfig"
end

defmodule Google.Monitoring.V3.UptimeCheckConfig.ContentMatcher.JsonPathMatcher do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :json_path, 1, type: :string, json_name: "jsonPath"

  field :json_matcher, 2,
    type:
      Google.Monitoring.V3.UptimeCheckConfig.ContentMatcher.JsonPathMatcher.JsonPathMatcherOption,
    json_name: "jsonMatcher",
    enum: true
end

defmodule Google.Monitoring.V3.UptimeCheckConfig.ContentMatcher do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :additional_matcher_info, 0

  field :content, 1, type: :string

  field :matcher, 2,
    type: Google.Monitoring.V3.UptimeCheckConfig.ContentMatcher.ContentMatcherOption,
    enum: true

  field :json_path_matcher, 3,
    type: Google.Monitoring.V3.UptimeCheckConfig.ContentMatcher.JsonPathMatcher,
    json_name: "jsonPathMatcher",
    oneof: 0
end

defmodule Google.Monitoring.V3.UptimeCheckConfig.UserLabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Monitoring.V3.UptimeCheckConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :resource, 0

  oneof :check_request_type, 1

  field :name, 1, type: :string
  field :display_name, 2, type: :string, json_name: "displayName"

  field :monitored_resource, 3,
    type: Google.Api.MonitoredResource,
    json_name: "monitoredResource",
    oneof: 0

  field :resource_group, 4,
    type: Google.Monitoring.V3.UptimeCheckConfig.ResourceGroup,
    json_name: "resourceGroup",
    oneof: 0

  field :http_check, 5,
    type: Google.Monitoring.V3.UptimeCheckConfig.HttpCheck,
    json_name: "httpCheck",
    oneof: 1

  field :tcp_check, 6,
    type: Google.Monitoring.V3.UptimeCheckConfig.TcpCheck,
    json_name: "tcpCheck",
    oneof: 1

  field :period, 7, type: Google.Protobuf.Duration
  field :timeout, 8, type: Google.Protobuf.Duration

  field :content_matchers, 9,
    repeated: true,
    type: Google.Monitoring.V3.UptimeCheckConfig.ContentMatcher,
    json_name: "contentMatchers"

  field :checker_type, 17,
    type: Google.Monitoring.V3.UptimeCheckConfig.CheckerType,
    json_name: "checkerType",
    enum: true

  field :selected_regions, 10,
    repeated: true,
    type: Google.Monitoring.V3.UptimeCheckRegion,
    json_name: "selectedRegions",
    enum: true

  field :is_internal, 15, type: :bool, json_name: "isInternal", deprecated: true

  field :internal_checkers, 14,
    repeated: true,
    type: Google.Monitoring.V3.InternalChecker,
    json_name: "internalCheckers",
    deprecated: true

  field :user_labels, 20,
    repeated: true,
    type: Google.Monitoring.V3.UptimeCheckConfig.UserLabelsEntry,
    json_name: "userLabels",
    map: true
end

defmodule Google.Monitoring.V3.UptimeCheckIp do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :region, 1, type: Google.Monitoring.V3.UptimeCheckRegion, enum: true
  field :location, 2, type: :string
  field :ip_address, 3, type: :string, json_name: "ipAddress"
end