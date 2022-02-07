defmodule Google.Cloud.Datastream.V1.DiscoverConnectionProfileRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          target:
            {:connection_profile, Google.Cloud.Datastream.V1.ConnectionProfile.t() | nil}
            | {:connection_profile_name, String.t()},
          hierarchy: {:full_hierarchy, boolean} | {:hierarchy_depth, integer},
          data_object:
            {:oracle_rdbms, Google.Cloud.Datastream.V1.OracleRdbms.t() | nil}
            | {:mysql_rdbms, Google.Cloud.Datastream.V1.MysqlRdbms.t() | nil},
          parent: String.t()
        }

  defstruct target: nil,
            hierarchy: nil,
            data_object: nil,
            parent: ""

  oneof :target, 0
  oneof :hierarchy, 1
  oneof :data_object, 2

  field :parent, 1, type: :string, deprecated: false

  field :connection_profile, 200,
    type: Google.Cloud.Datastream.V1.ConnectionProfile,
    json_name: "connectionProfile",
    oneof: 0

  field :connection_profile_name, 201, type: :string, json_name: "connectionProfileName", oneof: 0
  field :full_hierarchy, 3, type: :bool, json_name: "fullHierarchy", oneof: 1
  field :hierarchy_depth, 4, type: :int32, json_name: "hierarchyDepth", oneof: 1

  field :oracle_rdbms, 100,
    type: Google.Cloud.Datastream.V1.OracleRdbms,
    json_name: "oracleRdbms",
    oneof: 2

  field :mysql_rdbms, 101,
    type: Google.Cloud.Datastream.V1.MysqlRdbms,
    json_name: "mysqlRdbms",
    oneof: 2
end
defmodule Google.Cloud.Datastream.V1.DiscoverConnectionProfileResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          data_object:
            {:oracle_rdbms, Google.Cloud.Datastream.V1.OracleRdbms.t() | nil}
            | {:mysql_rdbms, Google.Cloud.Datastream.V1.MysqlRdbms.t() | nil}
        }

  defstruct data_object: nil

  oneof :data_object, 0

  field :oracle_rdbms, 100,
    type: Google.Cloud.Datastream.V1.OracleRdbms,
    json_name: "oracleRdbms",
    oneof: 0

  field :mysql_rdbms, 101,
    type: Google.Cloud.Datastream.V1.MysqlRdbms,
    json_name: "mysqlRdbms",
    oneof: 0
end
defmodule Google.Cloud.Datastream.V1.FetchStaticIpsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct name: "",
            page_size: 0,
            page_token: ""

  field :name, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end
defmodule Google.Cloud.Datastream.V1.FetchStaticIpsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          static_ips: [String.t()],
          next_page_token: String.t()
        }

  defstruct static_ips: [],
            next_page_token: ""

  field :static_ips, 1, repeated: true, type: :string, json_name: "staticIps"
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Google.Cloud.Datastream.V1.ListConnectionProfilesRequest do
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
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
  field :order_by, 5, type: :string, json_name: "orderBy"
end
defmodule Google.Cloud.Datastream.V1.ListConnectionProfilesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          connection_profiles: [Google.Cloud.Datastream.V1.ConnectionProfile.t()],
          next_page_token: String.t(),
          unreachable: [String.t()]
        }

  defstruct connection_profiles: [],
            next_page_token: "",
            unreachable: []

  field :connection_profiles, 1,
    repeated: true,
    type: Google.Cloud.Datastream.V1.ConnectionProfile,
    json_name: "connectionProfiles"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end
defmodule Google.Cloud.Datastream.V1.GetConnectionProfileRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Datastream.V1.CreateConnectionProfileRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          connection_profile_id: String.t(),
          connection_profile: Google.Cloud.Datastream.V1.ConnectionProfile.t() | nil,
          request_id: String.t(),
          validate_only: boolean,
          force: boolean
        }

  defstruct parent: "",
            connection_profile_id: "",
            connection_profile: nil,
            request_id: "",
            validate_only: false,
            force: false

  field :parent, 1, type: :string, deprecated: false

  field :connection_profile_id, 2,
    type: :string,
    json_name: "connectionProfileId",
    deprecated: false

  field :connection_profile, 3,
    type: Google.Cloud.Datastream.V1.ConnectionProfile,
    json_name: "connectionProfile",
    deprecated: false

  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
  field :validate_only, 5, type: :bool, json_name: "validateOnly", deprecated: false
  field :force, 6, type: :bool, deprecated: false
end
defmodule Google.Cloud.Datastream.V1.UpdateConnectionProfileRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          update_mask: Google.Protobuf.FieldMask.t() | nil,
          connection_profile: Google.Cloud.Datastream.V1.ConnectionProfile.t() | nil,
          request_id: String.t(),
          validate_only: boolean,
          force: boolean
        }

  defstruct update_mask: nil,
            connection_profile: nil,
            request_id: "",
            validate_only: false,
            force: false

  field :update_mask, 1,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :connection_profile, 2,
    type: Google.Cloud.Datastream.V1.ConnectionProfile,
    json_name: "connectionProfile",
    deprecated: false

  field :request_id, 3, type: :string, json_name: "requestId", deprecated: false
  field :validate_only, 4, type: :bool, json_name: "validateOnly", deprecated: false
  field :force, 5, type: :bool, deprecated: false
end
defmodule Google.Cloud.Datastream.V1.DeleteConnectionProfileRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          request_id: String.t()
        }

  defstruct name: "",
            request_id: ""

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
end
defmodule Google.Cloud.Datastream.V1.ListStreamsRequest do
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
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
  field :order_by, 5, type: :string, json_name: "orderBy"
end
defmodule Google.Cloud.Datastream.V1.ListStreamsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          streams: [Google.Cloud.Datastream.V1.Stream.t()],
          next_page_token: String.t(),
          unreachable: [String.t()]
        }

  defstruct streams: [],
            next_page_token: "",
            unreachable: []

  field :streams, 1, repeated: true, type: Google.Cloud.Datastream.V1.Stream
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end
defmodule Google.Cloud.Datastream.V1.GetStreamRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Datastream.V1.CreateStreamRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          stream_id: String.t(),
          stream: Google.Cloud.Datastream.V1.Stream.t() | nil,
          request_id: String.t(),
          validate_only: boolean,
          force: boolean
        }

  defstruct parent: "",
            stream_id: "",
            stream: nil,
            request_id: "",
            validate_only: false,
            force: false

  field :parent, 1, type: :string, deprecated: false
  field :stream_id, 2, type: :string, json_name: "streamId", deprecated: false
  field :stream, 3, type: Google.Cloud.Datastream.V1.Stream, deprecated: false
  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
  field :validate_only, 5, type: :bool, json_name: "validateOnly", deprecated: false
  field :force, 6, type: :bool, deprecated: false
end
defmodule Google.Cloud.Datastream.V1.UpdateStreamRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          update_mask: Google.Protobuf.FieldMask.t() | nil,
          stream: Google.Cloud.Datastream.V1.Stream.t() | nil,
          request_id: String.t(),
          validate_only: boolean,
          force: boolean
        }

  defstruct update_mask: nil,
            stream: nil,
            request_id: "",
            validate_only: false,
            force: false

  field :update_mask, 1,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :stream, 2, type: Google.Cloud.Datastream.V1.Stream, deprecated: false
  field :request_id, 3, type: :string, json_name: "requestId", deprecated: false
  field :validate_only, 4, type: :bool, json_name: "validateOnly", deprecated: false
  field :force, 5, type: :bool, deprecated: false
end
defmodule Google.Cloud.Datastream.V1.DeleteStreamRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          request_id: String.t()
        }

  defstruct name: "",
            request_id: ""

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
end
defmodule Google.Cloud.Datastream.V1.GetStreamObjectRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Datastream.V1.LookupStreamObjectRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          source_object_identifier: Google.Cloud.Datastream.V1.SourceObjectIdentifier.t() | nil
        }

  defstruct parent: "",
            source_object_identifier: nil

  field :parent, 1, type: :string, deprecated: false

  field :source_object_identifier, 2,
    type: Google.Cloud.Datastream.V1.SourceObjectIdentifier,
    json_name: "sourceObjectIdentifier",
    deprecated: false
end
defmodule Google.Cloud.Datastream.V1.StartBackfillJobRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          object: String.t()
        }

  defstruct object: ""

  field :object, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Datastream.V1.StartBackfillJobResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          object: Google.Cloud.Datastream.V1.StreamObject.t() | nil
        }

  defstruct object: nil

  field :object, 1, type: Google.Cloud.Datastream.V1.StreamObject
end
defmodule Google.Cloud.Datastream.V1.StopBackfillJobRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          object: String.t()
        }

  defstruct object: ""

  field :object, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Datastream.V1.StopBackfillJobResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          object: Google.Cloud.Datastream.V1.StreamObject.t() | nil
        }

  defstruct object: nil

  field :object, 1, type: Google.Cloud.Datastream.V1.StreamObject
end
defmodule Google.Cloud.Datastream.V1.ListStreamObjectsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct parent: "",
            page_size: 0,
            page_token: ""

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end
defmodule Google.Cloud.Datastream.V1.ListStreamObjectsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          stream_objects: [Google.Cloud.Datastream.V1.StreamObject.t()],
          next_page_token: String.t()
        }

  defstruct stream_objects: [],
            next_page_token: ""

  field :stream_objects, 1,
    repeated: true,
    type: Google.Cloud.Datastream.V1.StreamObject,
    json_name: "streamObjects"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Google.Cloud.Datastream.V1.OperationMetadata do
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
          validation_result: Google.Cloud.Datastream.V1.ValidationResult.t() | nil
        }

  defstruct create_time: nil,
            end_time: nil,
            target: "",
            verb: "",
            status_message: "",
            requested_cancellation: false,
            api_version: "",
            validation_result: nil

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

  field :validation_result, 8,
    type: Google.Cloud.Datastream.V1.ValidationResult,
    json_name: "validationResult",
    deprecated: false
end
defmodule Google.Cloud.Datastream.V1.CreatePrivateConnectionRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          private_connection_id: String.t(),
          private_connection: Google.Cloud.Datastream.V1.PrivateConnection.t() | nil,
          request_id: String.t()
        }

  defstruct parent: "",
            private_connection_id: "",
            private_connection: nil,
            request_id: ""

  field :parent, 1, type: :string, deprecated: false

  field :private_connection_id, 2,
    type: :string,
    json_name: "privateConnectionId",
    deprecated: false

  field :private_connection, 3,
    type: Google.Cloud.Datastream.V1.PrivateConnection,
    json_name: "privateConnection",
    deprecated: false

  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
end
defmodule Google.Cloud.Datastream.V1.ListPrivateConnectionsRequest do
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
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
  field :order_by, 5, type: :string, json_name: "orderBy"
end
defmodule Google.Cloud.Datastream.V1.ListPrivateConnectionsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          private_connections: [Google.Cloud.Datastream.V1.PrivateConnection.t()],
          next_page_token: String.t(),
          unreachable: [String.t()]
        }

  defstruct private_connections: [],
            next_page_token: "",
            unreachable: []

  field :private_connections, 1,
    repeated: true,
    type: Google.Cloud.Datastream.V1.PrivateConnection,
    json_name: "privateConnections"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end
defmodule Google.Cloud.Datastream.V1.DeletePrivateConnectionRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          request_id: String.t(),
          force: boolean
        }

  defstruct name: "",
            request_id: "",
            force: false

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
  field :force, 3, type: :bool, deprecated: false
end
defmodule Google.Cloud.Datastream.V1.GetPrivateConnectionRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Datastream.V1.CreateRouteRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          route_id: String.t(),
          route: Google.Cloud.Datastream.V1.Route.t() | nil,
          request_id: String.t()
        }

  defstruct parent: "",
            route_id: "",
            route: nil,
            request_id: ""

  field :parent, 1, type: :string, deprecated: false
  field :route_id, 2, type: :string, json_name: "routeId", deprecated: false
  field :route, 3, type: Google.Cloud.Datastream.V1.Route, deprecated: false
  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
end
defmodule Google.Cloud.Datastream.V1.ListRoutesRequest do
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
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
  field :order_by, 5, type: :string, json_name: "orderBy"
end
defmodule Google.Cloud.Datastream.V1.ListRoutesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          routes: [Google.Cloud.Datastream.V1.Route.t()],
          next_page_token: String.t(),
          unreachable: [String.t()]
        }

  defstruct routes: [],
            next_page_token: "",
            unreachable: []

  field :routes, 1, repeated: true, type: Google.Cloud.Datastream.V1.Route
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end
defmodule Google.Cloud.Datastream.V1.DeleteRouteRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          request_id: String.t()
        }

  defstruct name: "",
            request_id: ""

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
end
defmodule Google.Cloud.Datastream.V1.GetRouteRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Datastream.V1.Datastream.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.datastream.v1.Datastream"

  rpc :ListConnectionProfiles,
      Google.Cloud.Datastream.V1.ListConnectionProfilesRequest,
      Google.Cloud.Datastream.V1.ListConnectionProfilesResponse

  rpc :GetConnectionProfile,
      Google.Cloud.Datastream.V1.GetConnectionProfileRequest,
      Google.Cloud.Datastream.V1.ConnectionProfile

  rpc :CreateConnectionProfile,
      Google.Cloud.Datastream.V1.CreateConnectionProfileRequest,
      Google.Longrunning.Operation

  rpc :UpdateConnectionProfile,
      Google.Cloud.Datastream.V1.UpdateConnectionProfileRequest,
      Google.Longrunning.Operation

  rpc :DeleteConnectionProfile,
      Google.Cloud.Datastream.V1.DeleteConnectionProfileRequest,
      Google.Longrunning.Operation

  rpc :DiscoverConnectionProfile,
      Google.Cloud.Datastream.V1.DiscoverConnectionProfileRequest,
      Google.Cloud.Datastream.V1.DiscoverConnectionProfileResponse

  rpc :ListStreams,
      Google.Cloud.Datastream.V1.ListStreamsRequest,
      Google.Cloud.Datastream.V1.ListStreamsResponse

  rpc :GetStream, Google.Cloud.Datastream.V1.GetStreamRequest, Google.Cloud.Datastream.V1.Stream

  rpc :CreateStream, Google.Cloud.Datastream.V1.CreateStreamRequest, Google.Longrunning.Operation

  rpc :UpdateStream, Google.Cloud.Datastream.V1.UpdateStreamRequest, Google.Longrunning.Operation

  rpc :DeleteStream, Google.Cloud.Datastream.V1.DeleteStreamRequest, Google.Longrunning.Operation

  rpc :GetStreamObject,
      Google.Cloud.Datastream.V1.GetStreamObjectRequest,
      Google.Cloud.Datastream.V1.StreamObject

  rpc :LookupStreamObject,
      Google.Cloud.Datastream.V1.LookupStreamObjectRequest,
      Google.Cloud.Datastream.V1.StreamObject

  rpc :ListStreamObjects,
      Google.Cloud.Datastream.V1.ListStreamObjectsRequest,
      Google.Cloud.Datastream.V1.ListStreamObjectsResponse

  rpc :StartBackfillJob,
      Google.Cloud.Datastream.V1.StartBackfillJobRequest,
      Google.Cloud.Datastream.V1.StartBackfillJobResponse

  rpc :StopBackfillJob,
      Google.Cloud.Datastream.V1.StopBackfillJobRequest,
      Google.Cloud.Datastream.V1.StopBackfillJobResponse

  rpc :FetchStaticIps,
      Google.Cloud.Datastream.V1.FetchStaticIpsRequest,
      Google.Cloud.Datastream.V1.FetchStaticIpsResponse

  rpc :CreatePrivateConnection,
      Google.Cloud.Datastream.V1.CreatePrivateConnectionRequest,
      Google.Longrunning.Operation

  rpc :GetPrivateConnection,
      Google.Cloud.Datastream.V1.GetPrivateConnectionRequest,
      Google.Cloud.Datastream.V1.PrivateConnection

  rpc :ListPrivateConnections,
      Google.Cloud.Datastream.V1.ListPrivateConnectionsRequest,
      Google.Cloud.Datastream.V1.ListPrivateConnectionsResponse

  rpc :DeletePrivateConnection,
      Google.Cloud.Datastream.V1.DeletePrivateConnectionRequest,
      Google.Longrunning.Operation

  rpc :CreateRoute, Google.Cloud.Datastream.V1.CreateRouteRequest, Google.Longrunning.Operation

  rpc :GetRoute, Google.Cloud.Datastream.V1.GetRouteRequest, Google.Cloud.Datastream.V1.Route

  rpc :ListRoutes,
      Google.Cloud.Datastream.V1.ListRoutesRequest,
      Google.Cloud.Datastream.V1.ListRoutesResponse

  rpc :DeleteRoute, Google.Cloud.Datastream.V1.DeleteRouteRequest, Google.Longrunning.Operation
end

defmodule Google.Cloud.Datastream.V1.Datastream.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Datastream.V1.Datastream.Service
end
