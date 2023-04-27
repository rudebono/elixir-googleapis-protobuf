defmodule Google.Cloud.Datastream.V1alpha1.DiscoverConnectionProfileRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :target, 0

  oneof :depth, 1

  oneof :data_object, 2

  field :parent, 1, type: :string, deprecated: false

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
end

defmodule Google.Cloud.Datastream.V1alpha1.DiscoverConnectionProfileResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :data_object, 0

  field :oracle_rdbms, 100,
    type: Google.Cloud.Datastream.V1alpha1.OracleRdbms,
    json_name: "oracleRdbms",
    oneof: 0

  field :mysql_rdbms, 101,
    type: Google.Cloud.Datastream.V1alpha1.MysqlRdbms,
    json_name: "mysqlRdbms",
    oneof: 0
end

defmodule Google.Cloud.Datastream.V1alpha1.FetchStaticIpsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Cloud.Datastream.V1alpha1.FetchStaticIpsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :static_ips, 1, repeated: true, type: :string, json_name: "staticIps"
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Datastream.V1alpha1.FetchErrorsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :stream, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Datastream.V1alpha1.FetchErrorsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :errors, 1, repeated: true, type: Google.Cloud.Datastream.V1alpha1.Error
end

defmodule Google.Cloud.Datastream.V1alpha1.ListConnectionProfilesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
  field :order_by, 5, type: :string, json_name: "orderBy"
end

defmodule Google.Cloud.Datastream.V1alpha1.ListConnectionProfilesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :connection_profiles, 1,
    repeated: true,
    type: Google.Cloud.Datastream.V1alpha1.ConnectionProfile,
    json_name: "connectionProfiles"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Datastream.V1alpha1.GetConnectionProfileRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Datastream.V1alpha1.CreateConnectionProfileRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :connection_profile_id, 2,
    type: :string,
    json_name: "connectionProfileId",
    deprecated: false

  field :connection_profile, 3,
    type: Google.Cloud.Datastream.V1alpha1.ConnectionProfile,
    json_name: "connectionProfile",
    deprecated: false

  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Datastream.V1alpha1.UpdateConnectionProfileRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :update_mask, 1,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :connection_profile, 2,
    type: Google.Cloud.Datastream.V1alpha1.ConnectionProfile,
    json_name: "connectionProfile",
    deprecated: false

  field :request_id, 3, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Datastream.V1alpha1.DeleteConnectionProfileRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Datastream.V1alpha1.ListStreamsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
  field :order_by, 5, type: :string, json_name: "orderBy"
end

defmodule Google.Cloud.Datastream.V1alpha1.ListStreamsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :streams, 1, repeated: true, type: Google.Cloud.Datastream.V1alpha1.Stream
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Datastream.V1alpha1.GetStreamRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Datastream.V1alpha1.CreateStreamRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :stream_id, 2, type: :string, json_name: "streamId", deprecated: false
  field :stream, 3, type: Google.Cloud.Datastream.V1alpha1.Stream, deprecated: false
  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
  field :validate_only, 5, type: :bool, json_name: "validateOnly", deprecated: false
  field :force, 6, type: :bool, deprecated: false
end

defmodule Google.Cloud.Datastream.V1alpha1.UpdateStreamRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :update_mask, 1,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :stream, 2, type: Google.Cloud.Datastream.V1alpha1.Stream, deprecated: false
  field :request_id, 3, type: :string, json_name: "requestId", deprecated: false
  field :validate_only, 4, type: :bool, json_name: "validateOnly", deprecated: false
  field :force, 5, type: :bool, deprecated: false
end

defmodule Google.Cloud.Datastream.V1alpha1.DeleteStreamRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Datastream.V1alpha1.OperationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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
    type: Google.Cloud.Datastream.V1alpha1.ValidationResult,
    json_name: "validationResult",
    deprecated: false
end

defmodule Google.Cloud.Datastream.V1alpha1.CreatePrivateConnectionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :private_connection_id, 2,
    type: :string,
    json_name: "privateConnectionId",
    deprecated: false

  field :private_connection, 3,
    type: Google.Cloud.Datastream.V1alpha1.PrivateConnection,
    json_name: "privateConnection",
    deprecated: false

  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Datastream.V1alpha1.ListPrivateConnectionsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
  field :order_by, 5, type: :string, json_name: "orderBy"
end

defmodule Google.Cloud.Datastream.V1alpha1.ListPrivateConnectionsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :private_connections, 1,
    repeated: true,
    type: Google.Cloud.Datastream.V1alpha1.PrivateConnection,
    json_name: "privateConnections"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Datastream.V1alpha1.DeletePrivateConnectionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
  field :force, 3, type: :bool, deprecated: false
end

defmodule Google.Cloud.Datastream.V1alpha1.GetPrivateConnectionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Datastream.V1alpha1.CreateRouteRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :route_id, 2, type: :string, json_name: "routeId", deprecated: false
  field :route, 3, type: Google.Cloud.Datastream.V1alpha1.Route, deprecated: false
  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Datastream.V1alpha1.ListRoutesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
  field :order_by, 5, type: :string, json_name: "orderBy"
end

defmodule Google.Cloud.Datastream.V1alpha1.ListRoutesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :routes, 1, repeated: true, type: Google.Cloud.Datastream.V1alpha1.Route
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Datastream.V1alpha1.DeleteRouteRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Datastream.V1alpha1.GetRouteRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Datastream.V1alpha1.Datastream.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.datastream.v1alpha1.Datastream",
    protoc_gen_elixir_version: "0.12.0"

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