defmodule Google.Cloud.Datastream.V1.DiscoverConnectionProfileRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

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

  field :postgresql_rdbms, 102,
    type: Google.Cloud.Datastream.V1.PostgresqlRdbms,
    json_name: "postgresqlRdbms",
    oneof: 2

  field :sql_server_rdbms, 103,
    type: Google.Cloud.Datastream.V1.SqlServerRdbms,
    json_name: "sqlServerRdbms",
    oneof: 2
end

defmodule Google.Cloud.Datastream.V1.DiscoverConnectionProfileResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :data_object, 0

  field :oracle_rdbms, 100,
    type: Google.Cloud.Datastream.V1.OracleRdbms,
    json_name: "oracleRdbms",
    oneof: 0

  field :mysql_rdbms, 101,
    type: Google.Cloud.Datastream.V1.MysqlRdbms,
    json_name: "mysqlRdbms",
    oneof: 0

  field :postgresql_rdbms, 102,
    type: Google.Cloud.Datastream.V1.PostgresqlRdbms,
    json_name: "postgresqlRdbms",
    oneof: 0

  field :sql_server_rdbms, 103,
    type: Google.Cloud.Datastream.V1.SqlServerRdbms,
    json_name: "sqlServerRdbms",
    oneof: 0
end

defmodule Google.Cloud.Datastream.V1.FetchStaticIpsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Cloud.Datastream.V1.FetchStaticIpsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :static_ips, 1, repeated: true, type: :string, json_name: "staticIps"
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Datastream.V1.ListConnectionProfilesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
  field :order_by, 5, type: :string, json_name: "orderBy"
end

defmodule Google.Cloud.Datastream.V1.ListConnectionProfilesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :connection_profiles, 1,
    repeated: true,
    type: Google.Cloud.Datastream.V1.ConnectionProfile,
    json_name: "connectionProfiles"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Datastream.V1.GetConnectionProfileRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Datastream.V1.CreateConnectionProfileRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Datastream.V1.ListStreamsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
  field :order_by, 5, type: :string, json_name: "orderBy"
end

defmodule Google.Cloud.Datastream.V1.ListStreamsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :streams, 1, repeated: true, type: Google.Cloud.Datastream.V1.Stream
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Datastream.V1.GetStreamRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Datastream.V1.CreateStreamRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :stream_id, 2, type: :string, json_name: "streamId", deprecated: false
  field :stream, 3, type: Google.Cloud.Datastream.V1.Stream, deprecated: false
  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
  field :validate_only, 5, type: :bool, json_name: "validateOnly", deprecated: false
  field :force, 6, type: :bool, deprecated: false
end

defmodule Google.Cloud.Datastream.V1.UpdateStreamRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Datastream.V1.RunStreamRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :cdc_strategy, 2,
    type: Google.Cloud.Datastream.V1.CdcStrategy,
    json_name: "cdcStrategy",
    deprecated: false

  field :force, 3, type: :bool, deprecated: false
end

defmodule Google.Cloud.Datastream.V1.GetStreamObjectRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Datastream.V1.LookupStreamObjectRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :source_object_identifier, 2,
    type: Google.Cloud.Datastream.V1.SourceObjectIdentifier,
    json_name: "sourceObjectIdentifier",
    deprecated: false
end

defmodule Google.Cloud.Datastream.V1.StartBackfillJobRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :object, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Datastream.V1.StartBackfillJobResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :object, 1, type: Google.Cloud.Datastream.V1.StreamObject
end

defmodule Google.Cloud.Datastream.V1.StopBackfillJobRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :object, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Datastream.V1.StopBackfillJobResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :object, 1, type: Google.Cloud.Datastream.V1.StreamObject
end

defmodule Google.Cloud.Datastream.V1.ListStreamObjectsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Cloud.Datastream.V1.ListStreamObjectsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :stream_objects, 1,
    repeated: true,
    type: Google.Cloud.Datastream.V1.StreamObject,
    json_name: "streamObjects"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Datastream.V1.OperationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

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
  field :force, 6, type: :bool, deprecated: false
end

defmodule Google.Cloud.Datastream.V1.ListPrivateConnectionsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
  field :order_by, 5, type: :string, json_name: "orderBy"
end

defmodule Google.Cloud.Datastream.V1.ListPrivateConnectionsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :private_connections, 1,
    repeated: true,
    type: Google.Cloud.Datastream.V1.PrivateConnection,
    json_name: "privateConnections"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Datastream.V1.DeletePrivateConnectionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
  field :force, 3, type: :bool, deprecated: false
end

defmodule Google.Cloud.Datastream.V1.GetPrivateConnectionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Datastream.V1.CreateRouteRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :route_id, 2, type: :string, json_name: "routeId", deprecated: false
  field :route, 3, type: Google.Cloud.Datastream.V1.Route, deprecated: false
  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Datastream.V1.ListRoutesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
  field :order_by, 5, type: :string, json_name: "orderBy"
end

defmodule Google.Cloud.Datastream.V1.ListRoutesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :routes, 1, repeated: true, type: Google.Cloud.Datastream.V1.Route
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Datastream.V1.DeleteRouteRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Datastream.V1.GetRouteRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Datastream.V1.Datastream.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.datastream.v1.Datastream",
    protoc_gen_elixir_version: "0.14.1"

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

  rpc :RunStream, Google.Cloud.Datastream.V1.RunStreamRequest, Google.Longrunning.Operation

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
