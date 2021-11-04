defmodule Google.Monitoring.V3.UptimeCheckRegion do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :REGION_UNSPECIFIED | :USA | :EUROPE | :SOUTH_AMERICA | :ASIA_PACIFIC

  field :REGION_UNSPECIFIED, 0
  field :USA, 1
  field :EUROPE, 2
  field :SOUTH_AMERICA, 3
  field :ASIA_PACIFIC, 4
end

defmodule Google.Monitoring.V3.GroupResourceType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :RESOURCE_TYPE_UNSPECIFIED | :INSTANCE | :AWS_ELB_LOAD_BALANCER

  field :RESOURCE_TYPE_UNSPECIFIED, 0
  field :INSTANCE, 1
  field :AWS_ELB_LOAD_BALANCER, 2
end

defmodule Google.Monitoring.V3.InternalChecker.State do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :UNSPECIFIED | :CREATING | :RUNNING

  field :UNSPECIFIED, 0
  field :CREATING, 1
  field :RUNNING, 2
end

defmodule Google.Monitoring.V3.UptimeCheckConfig.HttpCheck.RequestMethod do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :METHOD_UNSPECIFIED | :GET | :POST

  field :METHOD_UNSPECIFIED, 0
  field :GET, 1
  field :POST, 2
end

defmodule Google.Monitoring.V3.UptimeCheckConfig.HttpCheck.ContentType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :TYPE_UNSPECIFIED | :URL_ENCODED

  field :TYPE_UNSPECIFIED, 0
  field :URL_ENCODED, 1
end

defmodule Google.Monitoring.V3.UptimeCheckConfig.ContentMatcher.ContentMatcherOption do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :CONTENT_MATCHER_OPTION_UNSPECIFIED
          | :CONTAINS_STRING
          | :NOT_CONTAINS_STRING
          | :MATCHES_REGEX
          | :NOT_MATCHES_REGEX

  field :CONTENT_MATCHER_OPTION_UNSPECIFIED, 0
  field :CONTAINS_STRING, 1
  field :NOT_CONTAINS_STRING, 2
  field :MATCHES_REGEX, 3
  field :NOT_MATCHES_REGEX, 4
end

defmodule Google.Monitoring.V3.InternalChecker do
  @moduledoc false
  use Protobuf, deprecated: true, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          display_name: String.t(),
          network: String.t(),
          gcp_zone: String.t(),
          peer_project_id: String.t(),
          state: Google.Monitoring.V3.InternalChecker.State.t()
        }

  defstruct [:name, :display_name, :network, :gcp_zone, :peer_project_id, :state]

  field :name, 1, type: :string
  field :display_name, 2, type: :string, json_name: "displayName"
  field :network, 3, type: :string
  field :gcp_zone, 4, type: :string, json_name: "gcpZone"
  field :peer_project_id, 6, type: :string, json_name: "peerProjectId"
  field :state, 7, type: Google.Monitoring.V3.InternalChecker.State, enum: true

  def transform_module(), do: nil
end

defmodule Google.Monitoring.V3.UptimeCheckConfig.ResourceGroup do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          group_id: String.t(),
          resource_type: Google.Monitoring.V3.GroupResourceType.t()
        }

  defstruct [:group_id, :resource_type]

  field :group_id, 1, type: :string, json_name: "groupId"

  field :resource_type, 2,
    type: Google.Monitoring.V3.GroupResourceType,
    enum: true,
    json_name: "resourceType"

  def transform_module(), do: nil
end

defmodule Google.Monitoring.V3.UptimeCheckConfig.HttpCheck.BasicAuthentication do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          username: String.t(),
          password: String.t()
        }

  defstruct [:username, :password]

  field :username, 1, type: :string
  field :password, 2, type: :string

  def transform_module(), do: nil
end

defmodule Google.Monitoring.V3.UptimeCheckConfig.HttpCheck.HeadersEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: :string

  def transform_module(), do: nil
end

defmodule Google.Monitoring.V3.UptimeCheckConfig.HttpCheck do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          request_method: Google.Monitoring.V3.UptimeCheckConfig.HttpCheck.RequestMethod.t(),
          use_ssl: boolean,
          path: String.t(),
          port: integer,
          auth_info:
            Google.Monitoring.V3.UptimeCheckConfig.HttpCheck.BasicAuthentication.t() | nil,
          mask_headers: boolean,
          headers: %{String.t() => String.t()},
          content_type: Google.Monitoring.V3.UptimeCheckConfig.HttpCheck.ContentType.t(),
          validate_ssl: boolean,
          body: binary
        }

  defstruct [
    :request_method,
    :use_ssl,
    :path,
    :port,
    :auth_info,
    :mask_headers,
    :headers,
    :content_type,
    :validate_ssl,
    :body
  ]

  field :request_method, 8,
    type: Google.Monitoring.V3.UptimeCheckConfig.HttpCheck.RequestMethod,
    enum: true,
    json_name: "requestMethod"

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
    enum: true,
    json_name: "contentType"

  field :validate_ssl, 7, type: :bool, json_name: "validateSsl"
  field :body, 10, type: :bytes

  def transform_module(), do: nil
end

defmodule Google.Monitoring.V3.UptimeCheckConfig.TcpCheck do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          port: integer
        }

  defstruct [:port]

  field :port, 1, type: :int32

  def transform_module(), do: nil
end

defmodule Google.Monitoring.V3.UptimeCheckConfig.ContentMatcher do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          content: String.t(),
          matcher: Google.Monitoring.V3.UptimeCheckConfig.ContentMatcher.ContentMatcherOption.t()
        }

  defstruct [:content, :matcher]

  field :content, 1, type: :string

  field :matcher, 2,
    type: Google.Monitoring.V3.UptimeCheckConfig.ContentMatcher.ContentMatcherOption,
    enum: true

  def transform_module(), do: nil
end

defmodule Google.Monitoring.V3.UptimeCheckConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource:
            {:monitored_resource, Google.Api.MonitoredResource.t() | nil}
            | {:resource_group, Google.Monitoring.V3.UptimeCheckConfig.ResourceGroup.t() | nil},
          check_request_type:
            {:http_check, Google.Monitoring.V3.UptimeCheckConfig.HttpCheck.t() | nil}
            | {:tcp_check, Google.Monitoring.V3.UptimeCheckConfig.TcpCheck.t() | nil},
          name: String.t(),
          display_name: String.t(),
          period: Google.Protobuf.Duration.t() | nil,
          timeout: Google.Protobuf.Duration.t() | nil,
          content_matchers: [Google.Monitoring.V3.UptimeCheckConfig.ContentMatcher.t()],
          selected_regions: [Google.Monitoring.V3.UptimeCheckRegion.t()],
          is_internal: boolean,
          internal_checkers: [Google.Monitoring.V3.InternalChecker.t()]
        }

  defstruct [
    :resource,
    :check_request_type,
    :name,
    :display_name,
    :period,
    :timeout,
    :content_matchers,
    :selected_regions,
    :is_internal,
    :internal_checkers
  ]

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

  field :selected_regions, 10,
    repeated: true,
    type: Google.Monitoring.V3.UptimeCheckRegion,
    enum: true,
    json_name: "selectedRegions"

  field :is_internal, 15, type: :bool, deprecated: true, json_name: "isInternal"

  field :internal_checkers, 14,
    repeated: true,
    type: Google.Monitoring.V3.InternalChecker,
    deprecated: true,
    json_name: "internalCheckers"

  def transform_module(), do: nil
end

defmodule Google.Monitoring.V3.UptimeCheckIp do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          region: Google.Monitoring.V3.UptimeCheckRegion.t(),
          location: String.t(),
          ip_address: String.t()
        }

  defstruct [:region, :location, :ip_address]

  field :region, 1, type: Google.Monitoring.V3.UptimeCheckRegion, enum: true
  field :location, 2, type: :string
  field :ip_address, 3, type: :string, json_name: "ipAddress"

  def transform_module(), do: nil
end
