defmodule Google.Cloud.Datastream.V1alpha1.DiscoverConnectionProfileRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          target:
            {:connection_profile, Google.Cloud.Datastream.V1alpha1.ConnectionProfile.t() | nil}
            | {:connection_profile_name, String.t()},
          depth: {:recursive, boolean} | {:recursion_depth, integer},
          data_object:
            {:oracle_rdbms, Google.Cloud.Datastream.V1alpha1.OracleRdbms.t() | nil}
            | {:mysql_rdbms, Google.Cloud.Datastream.V1alpha1.MysqlRdbms.t() | nil},
          parent: String.t()
        }

  defstruct [:target, :depth, :data_object, :parent]

  oneof :target, 0
  oneof :depth, 1
  oneof :data_object, 2

  field :parent, 1, type: :string

  field :connection_profile, 200,
    type: Google.Cloud.Datastream.V1alpha1.ConnectionProfile,
    json_name: "connectionProfile",
    oneof: 0

  field :connection_profile_name, 201, type: :string, json_name: "connectionProfileName", oneof: 0
  field :recursive, 3, type: :bool, oneof: 1
  field :recursion_depth, 4, type: :int32, json_name: "recursionDepth", oneof: 1

  field :oracle_rdbms, 100,
    type: Google.Cloud.Datastream.V1alpha1.OracleRdbms,
    json_name: "oracleRdbms",
    oneof: 2

  field :mysql_rdbms, 101,
    type: Google.Cloud.Datastream.V1alpha1.MysqlRdbms,
    json_name: "mysqlRdbms",
    oneof: 2

  def transform_module(), do: nil
end

defmodule Google.Cloud.Datastream.V1alpha1.DiscoverConnectionProfileResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          data_object:
            {:oracle_rdbms, Google.Cloud.Datastream.V1alpha1.OracleRdbms.t() | nil}
            | {:mysql_rdbms, Google.Cloud.Datastream.V1alpha1.MysqlRdbms.t() | nil}
        }

  defstruct [:data_object]

  oneof :data_object, 0

  field :oracle_rdbms, 100,
    type: Google.Cloud.Datastream.V1alpha1.OracleRdbms,
    json_name: "oracleRdbms",
    oneof: 0

  field :mysql_rdbms, 101,
    type: Google.Cloud.Datastream.V1alpha1.MysqlRdbms,
    json_name: "mysqlRdbms",
    oneof: 0

  def transform_module(), do: nil
end

defmodule Google.Cloud.Datastream.V1alpha1.FetchStaticIpsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct [:name, :page_size, :page_token]

  field :name, 1, type: :string
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Datastream.V1alpha1.FetchStaticIpsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          static_ips: [String.t()],
          next_page_token: String.t()
        }

  defstruct [:static_ips, :next_page_token]

  field :static_ips, 1, repeated: true, type: :string, json_name: "staticIps"
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Datastream.V1alpha1.FetchErrorsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          stream: String.t()
        }

  defstruct [:stream]

  field :stream, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Datastream.V1alpha1.FetchErrorsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          errors: [Google.Cloud.Datastream.V1alpha1.Error.t()]
        }

  defstruct [:errors]

  field :errors, 1, repeated: true, type: Google.Cloud.Datastream.V1alpha1.Error

  def transform_module(), do: nil
end

defmodule Google.Cloud.Datastream.V1alpha1.ListConnectionProfilesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t(),
          filter: String.t(),
          order_by: String.t()
        }

  defstruct [:parent, :page_size, :page_token, :filter, :order_by]

  field :parent, 1, type: :string
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
  field :order_by, 5, type: :string, json_name: "orderBy"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Datastream.V1alpha1.ListConnectionProfilesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          connection_profiles: [Google.Cloud.Datastream.V1alpha1.ConnectionProfile.t()],
          next_page_token: String.t(),
          unreachable: [String.t()]
        }

  defstruct [:connection_profiles, :next_page_token, :unreachable]

  field :connection_profiles, 1,
    repeated: true,
    type: Google.Cloud.Datastream.V1alpha1.ConnectionProfile,
    json_name: "connectionProfiles"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Datastream.V1alpha1.GetConnectionProfileRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Datastream.V1alpha1.CreateConnectionProfileRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          connection_profile_id: String.t(),
          connection_profile: Google.Cloud.Datastream.V1alpha1.ConnectionProfile.t() | nil,
          request_id: String.t()
        }

  defstruct [:parent, :connection_profile_id, :connection_profile, :request_id]

  field :parent, 1, type: :string
  field :connection_profile_id, 2, type: :string, json_name: "connectionProfileId"

  field :connection_profile, 3,
    type: Google.Cloud.Datastream.V1alpha1.ConnectionProfile,
    json_name: "connectionProfile"

  field :request_id, 4, type: :string, json_name: "requestId"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Datastream.V1alpha1.UpdateConnectionProfileRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          update_mask: Google.Protobuf.FieldMask.t() | nil,
          connection_profile: Google.Cloud.Datastream.V1alpha1.ConnectionProfile.t() | nil,
          request_id: String.t()
        }

  defstruct [:update_mask, :connection_profile, :request_id]

  field :update_mask, 1, type: Google.Protobuf.FieldMask, json_name: "updateMask"

  field :connection_profile, 2,
    type: Google.Cloud.Datastream.V1alpha1.ConnectionProfile,
    json_name: "connectionProfile"

  field :request_id, 3, type: :string, json_name: "requestId"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Datastream.V1alpha1.DeleteConnectionProfileRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          request_id: String.t()
        }

  defstruct [:name, :request_id]

  field :name, 1, type: :string
  field :request_id, 2, type: :string, json_name: "requestId"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Datastream.V1alpha1.ListStreamsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t(),
          filter: String.t(),
          order_by: String.t()
        }

  defstruct [:parent, :page_size, :page_token, :filter, :order_by]

  field :parent, 1, type: :string
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
  field :order_by, 5, type: :string, json_name: "orderBy"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Datastream.V1alpha1.ListStreamsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          streams: [Google.Cloud.Datastream.V1alpha1.Stream.t()],
          next_page_token: String.t(),
          unreachable: [String.t()]
        }

  defstruct [:streams, :next_page_token, :unreachable]

  field :streams, 1, repeated: true, type: Google.Cloud.Datastream.V1alpha1.Stream
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Datastream.V1alpha1.GetStreamRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Datastream.V1alpha1.CreateStreamRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          stream_id: String.t(),
          stream: Google.Cloud.Datastream.V1alpha1.Stream.t() | nil,
          request_id: String.t(),
          validate_only: boolean,
          force: boolean
        }

  defstruct [:parent, :stream_id, :stream, :request_id, :validate_only, :force]

  field :parent, 1, type: :string
  field :stream_id, 2, type: :string, json_name: "streamId"
  field :stream, 3, type: Google.Cloud.Datastream.V1alpha1.Stream
  field :request_id, 4, type: :string, json_name: "requestId"
  field :validate_only, 5, type: :bool, json_name: "validateOnly"
  field :force, 6, type: :bool

  def transform_module(), do: nil
end

defmodule Google.Cloud.Datastream.V1alpha1.UpdateStreamRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          update_mask: Google.Protobuf.FieldMask.t() | nil,
          stream: Google.Cloud.Datastream.V1alpha1.Stream.t() | nil,
          request_id: String.t(),
          validate_only: boolean,
          force: boolean
        }

  defstruct [:update_mask, :stream, :request_id, :validate_only, :force]

  field :update_mask, 1, type: Google.Protobuf.FieldMask, json_name: "updateMask"
  field :stream, 2, type: Google.Cloud.Datastream.V1alpha1.Stream
  field :request_id, 3, type: :string, json_name: "requestId"
  field :validate_only, 4, type: :bool, json_name: "validateOnly"
  field :force, 5, type: :bool

  def transform_module(), do: nil
end

defmodule Google.Cloud.Datastream.V1alpha1.DeleteStreamRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          request_id: String.t()
        }

  defstruct [:name, :request_id]

  field :name, 1, type: :string
  field :request_id, 2, type: :string, json_name: "requestId"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Datastream.V1alpha1.OperationMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          create_time: Google.Protobuf.Timestamp.t() | nil,
          end_time: Google.Protobuf.Timestamp.t() | nil,
          target: String.t(),
          verb: String.t(),
          status_message: String.t(),
          requested_cancellation: boolean,
          api_version: String.t(),
          validation_result: Google.Cloud.Datastream.V1alpha1.ValidationResult.t() | nil
        }

  defstruct [
    :create_time,
    :end_time,
    :target,
    :verb,
    :status_message,
    :requested_cancellation,
    :api_version,
    :validation_result
  ]

  field :create_time, 1, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :end_time, 2, type: Google.Protobuf.Timestamp, json_name: "endTime"
  field :target, 3, type: :string
  field :verb, 4, type: :string
  field :status_message, 5, type: :string, json_name: "statusMessage"
  field :requested_cancellation, 6, type: :bool, json_name: "requestedCancellation"
  field :api_version, 7, type: :string, json_name: "apiVersion"

  field :validation_result, 8,
    type: Google.Cloud.Datastream.V1alpha1.ValidationResult,
    json_name: "validationResult"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Datastream.V1alpha1.CreatePrivateConnectionRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          private_connection_id: String.t(),
          private_connection: Google.Cloud.Datastream.V1alpha1.PrivateConnection.t() | nil,
          request_id: String.t()
        }

  defstruct [:parent, :private_connection_id, :private_connection, :request_id]

  field :parent, 1, type: :string
  field :private_connection_id, 2, type: :string, json_name: "privateConnectionId"

  field :private_connection, 3,
    type: Google.Cloud.Datastream.V1alpha1.PrivateConnection,
    json_name: "privateConnection"

  field :request_id, 4, type: :string, json_name: "requestId"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Datastream.V1alpha1.ListPrivateConnectionsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t(),
          filter: String.t(),
          order_by: String.t()
        }

  defstruct [:parent, :page_size, :page_token, :filter, :order_by]

  field :parent, 1, type: :string
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
  field :order_by, 5, type: :string, json_name: "orderBy"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Datastream.V1alpha1.ListPrivateConnectionsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          private_connections: [Google.Cloud.Datastream.V1alpha1.PrivateConnection.t()],
          next_page_token: String.t(),
          unreachable: [String.t()]
        }

  defstruct [:private_connections, :next_page_token, :unreachable]

  field :private_connections, 1,
    repeated: true,
    type: Google.Cloud.Datastream.V1alpha1.PrivateConnection,
    json_name: "privateConnections"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Datastream.V1alpha1.DeletePrivateConnectionRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          request_id: String.t(),
          force: boolean
        }

  defstruct [:name, :request_id, :force]

  field :name, 1, type: :string
  field :request_id, 2, type: :string, json_name: "requestId"
  field :force, 3, type: :bool

  def transform_module(), do: nil
end

defmodule Google.Cloud.Datastream.V1alpha1.GetPrivateConnectionRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Datastream.V1alpha1.CreateRouteRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          route_id: String.t(),
          route: Google.Cloud.Datastream.V1alpha1.Route.t() | nil,
          request_id: String.t()
        }

  defstruct [:parent, :route_id, :route, :request_id]

  field :parent, 1, type: :string
  field :route_id, 2, type: :string, json_name: "routeId"
  field :route, 3, type: Google.Cloud.Datastream.V1alpha1.Route
  field :request_id, 4, type: :string, json_name: "requestId"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Datastream.V1alpha1.ListRoutesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t(),
          filter: String.t(),
          order_by: String.t()
        }

  defstruct [:parent, :page_size, :page_token, :filter, :order_by]

  field :parent, 1, type: :string
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
  field :order_by, 5, type: :string, json_name: "orderBy"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Datastream.V1alpha1.ListRoutesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          routes: [Google.Cloud.Datastream.V1alpha1.Route.t()],
          next_page_token: String.t(),
          unreachable: [String.t()]
        }

  defstruct [:routes, :next_page_token, :unreachable]

  field :routes, 1, repeated: true, type: Google.Cloud.Datastream.V1alpha1.Route
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Datastream.V1alpha1.DeleteRouteRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          request_id: String.t()
        }

  defstruct [:name, :request_id]

  field :name, 1, type: :string
  field :request_id, 2, type: :string, json_name: "requestId"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Datastream.V1alpha1.GetRouteRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Datastream.V1alpha1.Datastream.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.datastream.v1alpha1.Datastream"

  rpc :ListConnectionProfiles,
      Google.Cloud.Datastream.V1alpha1.ListConnectionProfilesRequest,
      Google.Cloud.Datastream.V1alpha1.ListConnectionProfilesResponse

  rpc :GetConnectionProfile,
      Google.Cloud.Datastream.V1alpha1.GetConnectionProfileRequest,
      Google.Cloud.Datastream.V1alpha1.ConnectionProfile

  rpc :CreateConnectionProfile,
      Google.Cloud.Datastream.V1alpha1.CreateConnectionProfileRequest,
      Google.Longrunning.Operation

  rpc :UpdateConnectionProfile,
      Google.Cloud.Datastream.V1alpha1.UpdateConnectionProfileRequest,
      Google.Longrunning.Operation

  rpc :DeleteConnectionProfile,
      Google.Cloud.Datastream.V1alpha1.DeleteConnectionProfileRequest,
      Google.Longrunning.Operation

  rpc :DiscoverConnectionProfile,
      Google.Cloud.Datastream.V1alpha1.DiscoverConnectionProfileRequest,
      Google.Cloud.Datastream.V1alpha1.DiscoverConnectionProfileResponse

  rpc :ListStreams,
      Google.Cloud.Datastream.V1alpha1.ListStreamsRequest,
      Google.Cloud.Datastream.V1alpha1.ListStreamsResponse

  rpc :GetStream,
      Google.Cloud.Datastream.V1alpha1.GetStreamRequest,
      Google.Cloud.Datastream.V1alpha1.Stream

  rpc :CreateStream,
      Google.Cloud.Datastream.V1alpha1.CreateStreamRequest,
      Google.Longrunning.Operation

  rpc :UpdateStream,
      Google.Cloud.Datastream.V1alpha1.UpdateStreamRequest,
      Google.Longrunning.Operation

  rpc :DeleteStream,
      Google.Cloud.Datastream.V1alpha1.DeleteStreamRequest,
      Google.Longrunning.Operation

  rpc :FetchErrors,
      Google.Cloud.Datastream.V1alpha1.FetchErrorsRequest,
      Google.Longrunning.Operation

  rpc :FetchStaticIps,
      Google.Cloud.Datastream.V1alpha1.FetchStaticIpsRequest,
      Google.Cloud.Datastream.V1alpha1.FetchStaticIpsResponse

  rpc :CreatePrivateConnection,
      Google.Cloud.Datastream.V1alpha1.CreatePrivateConnectionRequest,
      Google.Longrunning.Operation

  rpc :GetPrivateConnection,
      Google.Cloud.Datastream.V1alpha1.GetPrivateConnectionRequest,
      Google.Cloud.Datastream.V1alpha1.PrivateConnection

  rpc :ListPrivateConnections,
      Google.Cloud.Datastream.V1alpha1.ListPrivateConnectionsRequest,
      Google.Cloud.Datastream.V1alpha1.ListPrivateConnectionsResponse

  rpc :DeletePrivateConnection,
      Google.Cloud.Datastream.V1alpha1.DeletePrivateConnectionRequest,
      Google.Longrunning.Operation

  rpc :CreateRoute,
      Google.Cloud.Datastream.V1alpha1.CreateRouteRequest,
      Google.Longrunning.Operation

  rpc :GetRoute,
      Google.Cloud.Datastream.V1alpha1.GetRouteRequest,
      Google.Cloud.Datastream.V1alpha1.Route

  rpc :ListRoutes,
      Google.Cloud.Datastream.V1alpha1.ListRoutesRequest,
      Google.Cloud.Datastream.V1alpha1.ListRoutesResponse

  rpc :DeleteRoute,
      Google.Cloud.Datastream.V1alpha1.DeleteRouteRequest,
      Google.Longrunning.Operation
end

defmodule Google.Cloud.Datastream.V1alpha1.Datastream.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Datastream.V1alpha1.Datastream.Service
end
