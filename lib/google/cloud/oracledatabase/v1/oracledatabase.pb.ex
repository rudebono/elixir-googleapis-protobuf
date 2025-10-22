defmodule Google.Cloud.Oracledatabase.V1.ListCloudExadataInfrastructuresRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
end

defmodule Google.Cloud.Oracledatabase.V1.ListCloudExadataInfrastructuresResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :cloud_exadata_infrastructures, 1,
    repeated: true,
    type: Google.Cloud.Oracledatabase.V1.CloudExadataInfrastructure,
    json_name: "cloudExadataInfrastructures"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Oracledatabase.V1.GetCloudExadataInfrastructureRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Oracledatabase.V1.CreateCloudExadataInfrastructureRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :cloud_exadata_infrastructure_id, 2,
    type: :string,
    json_name: "cloudExadataInfrastructureId",
    deprecated: false

  field :cloud_exadata_infrastructure, 3,
    type: Google.Cloud.Oracledatabase.V1.CloudExadataInfrastructure,
    json_name: "cloudExadataInfrastructure",
    deprecated: false

  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Oracledatabase.V1.DeleteCloudExadataInfrastructureRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
  field :force, 3, type: :bool, deprecated: false
end

defmodule Google.Cloud.Oracledatabase.V1.ListCloudVmClustersRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
end

defmodule Google.Cloud.Oracledatabase.V1.ListCloudVmClustersResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :cloud_vm_clusters, 1,
    repeated: true,
    type: Google.Cloud.Oracledatabase.V1.CloudVmCluster,
    json_name: "cloudVmClusters"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Oracledatabase.V1.GetCloudVmClusterRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Oracledatabase.V1.CreateCloudVmClusterRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :cloud_vm_cluster_id, 2, type: :string, json_name: "cloudVmClusterId", deprecated: false

  field :cloud_vm_cluster, 3,
    type: Google.Cloud.Oracledatabase.V1.CloudVmCluster,
    json_name: "cloudVmCluster",
    deprecated: false

  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Oracledatabase.V1.DeleteCloudVmClusterRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
  field :force, 3, type: :bool, deprecated: false
end

defmodule Google.Cloud.Oracledatabase.V1.ListEntitlementsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Cloud.Oracledatabase.V1.ListEntitlementsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :entitlements, 1, repeated: true, type: Google.Cloud.Oracledatabase.V1.Entitlement
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Oracledatabase.V1.ListDbServersRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Cloud.Oracledatabase.V1.ListDbServersResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :db_servers, 1,
    repeated: true,
    type: Google.Cloud.Oracledatabase.V1.DbServer,
    json_name: "dbServers"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Oracledatabase.V1.ListDbNodesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Cloud.Oracledatabase.V1.ListDbNodesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :db_nodes, 1,
    repeated: true,
    type: Google.Cloud.Oracledatabase.V1.DbNode,
    json_name: "dbNodes"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Oracledatabase.V1.ListGiVersionsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
end

defmodule Google.Cloud.Oracledatabase.V1.ListGiVersionsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :gi_versions, 1,
    repeated: true,
    type: Google.Cloud.Oracledatabase.V1.GiVersion,
    json_name: "giVersions"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Oracledatabase.V1.ListDbSystemShapesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
end

defmodule Google.Cloud.Oracledatabase.V1.ListDbSystemShapesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :db_system_shapes, 1,
    repeated: true,
    type: Google.Cloud.Oracledatabase.V1.DbSystemShape,
    json_name: "dbSystemShapes"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Oracledatabase.V1.OperationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

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
  field :percent_complete, 8, type: :double, json_name: "percentComplete", deprecated: false
end

defmodule Google.Cloud.Oracledatabase.V1.ListAutonomousDatabasesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
end

defmodule Google.Cloud.Oracledatabase.V1.ListAutonomousDatabasesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :autonomous_databases, 1,
    repeated: true,
    type: Google.Cloud.Oracledatabase.V1.AutonomousDatabase,
    json_name: "autonomousDatabases"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Oracledatabase.V1.GetAutonomousDatabaseRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Oracledatabase.V1.CreateAutonomousDatabaseRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :autonomous_database_id, 2,
    type: :string,
    json_name: "autonomousDatabaseId",
    deprecated: false

  field :autonomous_database, 3,
    type: Google.Cloud.Oracledatabase.V1.AutonomousDatabase,
    json_name: "autonomousDatabase",
    deprecated: false

  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Oracledatabase.V1.UpdateAutonomousDatabaseRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :update_mask, 1,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :autonomous_database, 2,
    type: Google.Cloud.Oracledatabase.V1.AutonomousDatabase,
    json_name: "autonomousDatabase",
    deprecated: false

  field :request_id, 3, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Oracledatabase.V1.DeleteAutonomousDatabaseRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Oracledatabase.V1.RestoreAutonomousDatabaseRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :restore_time, 2,
    type: Google.Protobuf.Timestamp,
    json_name: "restoreTime",
    deprecated: false
end

defmodule Google.Cloud.Oracledatabase.V1.StopAutonomousDatabaseRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Oracledatabase.V1.StartAutonomousDatabaseRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Oracledatabase.V1.RestartAutonomousDatabaseRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Oracledatabase.V1.SwitchoverAutonomousDatabaseRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :peer_autonomous_database, 2,
    type: :string,
    json_name: "peerAutonomousDatabase",
    deprecated: false
end

defmodule Google.Cloud.Oracledatabase.V1.FailoverAutonomousDatabaseRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :peer_autonomous_database, 2,
    type: :string,
    json_name: "peerAutonomousDatabase",
    deprecated: false
end

defmodule Google.Cloud.Oracledatabase.V1.GenerateAutonomousDatabaseWalletRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :type, 2, type: Google.Cloud.Oracledatabase.V1.GenerateType, enum: true, deprecated: false
  field :is_regional, 3, type: :bool, json_name: "isRegional", deprecated: false
  field :password, 4, type: :string, deprecated: false
end

defmodule Google.Cloud.Oracledatabase.V1.GenerateAutonomousDatabaseWalletResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :archive_content, 1, type: :bytes, json_name: "archiveContent", deprecated: false
end

defmodule Google.Cloud.Oracledatabase.V1.ListAutonomousDbVersionsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Cloud.Oracledatabase.V1.ListAutonomousDbVersionsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :autonomous_db_versions, 1,
    repeated: true,
    type: Google.Cloud.Oracledatabase.V1.AutonomousDbVersion,
    json_name: "autonomousDbVersions"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Oracledatabase.V1.ListAutonomousDatabaseCharacterSetsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
end

defmodule Google.Cloud.Oracledatabase.V1.ListAutonomousDatabaseCharacterSetsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :autonomous_database_character_sets, 1,
    repeated: true,
    type: Google.Cloud.Oracledatabase.V1.AutonomousDatabaseCharacterSet,
    json_name: "autonomousDatabaseCharacterSets"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Oracledatabase.V1.ListAutonomousDatabaseBackupsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :filter, 5, type: :string, deprecated: false
  field :page_size, 3, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 4, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Cloud.Oracledatabase.V1.ListAutonomousDatabaseBackupsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :autonomous_database_backups, 1,
    repeated: true,
    type: Google.Cloud.Oracledatabase.V1.AutonomousDatabaseBackup,
    json_name: "autonomousDatabaseBackups"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Oracledatabase.V1.CreateExadbVmClusterRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :exadb_vm_cluster_id, 2, type: :string, json_name: "exadbVmClusterId", deprecated: false

  field :exadb_vm_cluster, 3,
    type: Google.Cloud.Oracledatabase.V1.ExadbVmCluster,
    json_name: "exadbVmCluster",
    deprecated: false

  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Oracledatabase.V1.DeleteExadbVmClusterRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Oracledatabase.V1.GetExadbVmClusterRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Oracledatabase.V1.ListExadbVmClustersRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
end

defmodule Google.Cloud.Oracledatabase.V1.ListExadbVmClustersResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :exadb_vm_clusters, 1,
    repeated: true,
    type: Google.Cloud.Oracledatabase.V1.ExadbVmCluster,
    json_name: "exadbVmClusters"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Oracledatabase.V1.UpdateExadbVmClusterRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :update_mask, 1,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :exadb_vm_cluster, 2,
    type: Google.Cloud.Oracledatabase.V1.ExadbVmCluster,
    json_name: "exadbVmCluster",
    deprecated: false

  field :request_id, 3, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Oracledatabase.V1.RemoveVirtualMachineExadbVmClusterRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 3, type: :string, json_name: "requestId", deprecated: false
  field :hostnames, 4, repeated: true, type: :string, deprecated: false
end

defmodule Google.Cloud.Oracledatabase.V1.OracleDatabase.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.oracledatabase.v1.OracleDatabase",
    protoc_gen_elixir_version: "0.15.0"

  rpc :ListCloudExadataInfrastructures,
      Google.Cloud.Oracledatabase.V1.ListCloudExadataInfrastructuresRequest,
      Google.Cloud.Oracledatabase.V1.ListCloudExadataInfrastructuresResponse

  rpc :GetCloudExadataInfrastructure,
      Google.Cloud.Oracledatabase.V1.GetCloudExadataInfrastructureRequest,
      Google.Cloud.Oracledatabase.V1.CloudExadataInfrastructure

  rpc :CreateCloudExadataInfrastructure,
      Google.Cloud.Oracledatabase.V1.CreateCloudExadataInfrastructureRequest,
      Google.Longrunning.Operation

  rpc :DeleteCloudExadataInfrastructure,
      Google.Cloud.Oracledatabase.V1.DeleteCloudExadataInfrastructureRequest,
      Google.Longrunning.Operation

  rpc :ListCloudVmClusters,
      Google.Cloud.Oracledatabase.V1.ListCloudVmClustersRequest,
      Google.Cloud.Oracledatabase.V1.ListCloudVmClustersResponse

  rpc :GetCloudVmCluster,
      Google.Cloud.Oracledatabase.V1.GetCloudVmClusterRequest,
      Google.Cloud.Oracledatabase.V1.CloudVmCluster

  rpc :CreateCloudVmCluster,
      Google.Cloud.Oracledatabase.V1.CreateCloudVmClusterRequest,
      Google.Longrunning.Operation

  rpc :DeleteCloudVmCluster,
      Google.Cloud.Oracledatabase.V1.DeleteCloudVmClusterRequest,
      Google.Longrunning.Operation

  rpc :ListEntitlements,
      Google.Cloud.Oracledatabase.V1.ListEntitlementsRequest,
      Google.Cloud.Oracledatabase.V1.ListEntitlementsResponse

  rpc :ListDbServers,
      Google.Cloud.Oracledatabase.V1.ListDbServersRequest,
      Google.Cloud.Oracledatabase.V1.ListDbServersResponse

  rpc :ListDbNodes,
      Google.Cloud.Oracledatabase.V1.ListDbNodesRequest,
      Google.Cloud.Oracledatabase.V1.ListDbNodesResponse

  rpc :ListGiVersions,
      Google.Cloud.Oracledatabase.V1.ListGiVersionsRequest,
      Google.Cloud.Oracledatabase.V1.ListGiVersionsResponse

  rpc :ListMinorVersions,
      Google.Cloud.Oracledatabase.V1.ListMinorVersionsRequest,
      Google.Cloud.Oracledatabase.V1.ListMinorVersionsResponse

  rpc :ListDbSystemShapes,
      Google.Cloud.Oracledatabase.V1.ListDbSystemShapesRequest,
      Google.Cloud.Oracledatabase.V1.ListDbSystemShapesResponse

  rpc :ListAutonomousDatabases,
      Google.Cloud.Oracledatabase.V1.ListAutonomousDatabasesRequest,
      Google.Cloud.Oracledatabase.V1.ListAutonomousDatabasesResponse

  rpc :GetAutonomousDatabase,
      Google.Cloud.Oracledatabase.V1.GetAutonomousDatabaseRequest,
      Google.Cloud.Oracledatabase.V1.AutonomousDatabase

  rpc :CreateAutonomousDatabase,
      Google.Cloud.Oracledatabase.V1.CreateAutonomousDatabaseRequest,
      Google.Longrunning.Operation

  rpc :UpdateAutonomousDatabase,
      Google.Cloud.Oracledatabase.V1.UpdateAutonomousDatabaseRequest,
      Google.Longrunning.Operation

  rpc :DeleteAutonomousDatabase,
      Google.Cloud.Oracledatabase.V1.DeleteAutonomousDatabaseRequest,
      Google.Longrunning.Operation

  rpc :RestoreAutonomousDatabase,
      Google.Cloud.Oracledatabase.V1.RestoreAutonomousDatabaseRequest,
      Google.Longrunning.Operation

  rpc :GenerateAutonomousDatabaseWallet,
      Google.Cloud.Oracledatabase.V1.GenerateAutonomousDatabaseWalletRequest,
      Google.Cloud.Oracledatabase.V1.GenerateAutonomousDatabaseWalletResponse

  rpc :ListAutonomousDbVersions,
      Google.Cloud.Oracledatabase.V1.ListAutonomousDbVersionsRequest,
      Google.Cloud.Oracledatabase.V1.ListAutonomousDbVersionsResponse

  rpc :ListAutonomousDatabaseCharacterSets,
      Google.Cloud.Oracledatabase.V1.ListAutonomousDatabaseCharacterSetsRequest,
      Google.Cloud.Oracledatabase.V1.ListAutonomousDatabaseCharacterSetsResponse

  rpc :ListAutonomousDatabaseBackups,
      Google.Cloud.Oracledatabase.V1.ListAutonomousDatabaseBackupsRequest,
      Google.Cloud.Oracledatabase.V1.ListAutonomousDatabaseBackupsResponse

  rpc :StopAutonomousDatabase,
      Google.Cloud.Oracledatabase.V1.StopAutonomousDatabaseRequest,
      Google.Longrunning.Operation

  rpc :StartAutonomousDatabase,
      Google.Cloud.Oracledatabase.V1.StartAutonomousDatabaseRequest,
      Google.Longrunning.Operation

  rpc :RestartAutonomousDatabase,
      Google.Cloud.Oracledatabase.V1.RestartAutonomousDatabaseRequest,
      Google.Longrunning.Operation

  rpc :SwitchoverAutonomousDatabase,
      Google.Cloud.Oracledatabase.V1.SwitchoverAutonomousDatabaseRequest,
      Google.Longrunning.Operation

  rpc :FailoverAutonomousDatabase,
      Google.Cloud.Oracledatabase.V1.FailoverAutonomousDatabaseRequest,
      Google.Longrunning.Operation

  rpc :ListOdbNetworks,
      Google.Cloud.Oracledatabase.V1.ListOdbNetworksRequest,
      Google.Cloud.Oracledatabase.V1.ListOdbNetworksResponse

  rpc :GetOdbNetwork,
      Google.Cloud.Oracledatabase.V1.GetOdbNetworkRequest,
      Google.Cloud.Oracledatabase.V1.OdbNetwork

  rpc :CreateOdbNetwork,
      Google.Cloud.Oracledatabase.V1.CreateOdbNetworkRequest,
      Google.Longrunning.Operation

  rpc :DeleteOdbNetwork,
      Google.Cloud.Oracledatabase.V1.DeleteOdbNetworkRequest,
      Google.Longrunning.Operation

  rpc :ListOdbSubnets,
      Google.Cloud.Oracledatabase.V1.ListOdbSubnetsRequest,
      Google.Cloud.Oracledatabase.V1.ListOdbSubnetsResponse

  rpc :GetOdbSubnet,
      Google.Cloud.Oracledatabase.V1.GetOdbSubnetRequest,
      Google.Cloud.Oracledatabase.V1.OdbSubnet

  rpc :CreateOdbSubnet,
      Google.Cloud.Oracledatabase.V1.CreateOdbSubnetRequest,
      Google.Longrunning.Operation

  rpc :DeleteOdbSubnet,
      Google.Cloud.Oracledatabase.V1.DeleteOdbSubnetRequest,
      Google.Longrunning.Operation

  rpc :ListExadbVmClusters,
      Google.Cloud.Oracledatabase.V1.ListExadbVmClustersRequest,
      Google.Cloud.Oracledatabase.V1.ListExadbVmClustersResponse

  rpc :GetExadbVmCluster,
      Google.Cloud.Oracledatabase.V1.GetExadbVmClusterRequest,
      Google.Cloud.Oracledatabase.V1.ExadbVmCluster

  rpc :CreateExadbVmCluster,
      Google.Cloud.Oracledatabase.V1.CreateExadbVmClusterRequest,
      Google.Longrunning.Operation

  rpc :DeleteExadbVmCluster,
      Google.Cloud.Oracledatabase.V1.DeleteExadbVmClusterRequest,
      Google.Longrunning.Operation

  rpc :UpdateExadbVmCluster,
      Google.Cloud.Oracledatabase.V1.UpdateExadbVmClusterRequest,
      Google.Longrunning.Operation

  rpc :RemoveVirtualMachineExadbVmCluster,
      Google.Cloud.Oracledatabase.V1.RemoveVirtualMachineExadbVmClusterRequest,
      Google.Longrunning.Operation

  rpc :ListExascaleDbStorageVaults,
      Google.Cloud.Oracledatabase.V1.ListExascaleDbStorageVaultsRequest,
      Google.Cloud.Oracledatabase.V1.ListExascaleDbStorageVaultsResponse

  rpc :GetExascaleDbStorageVault,
      Google.Cloud.Oracledatabase.V1.GetExascaleDbStorageVaultRequest,
      Google.Cloud.Oracledatabase.V1.ExascaleDbStorageVault

  rpc :CreateExascaleDbStorageVault,
      Google.Cloud.Oracledatabase.V1.CreateExascaleDbStorageVaultRequest,
      Google.Longrunning.Operation

  rpc :DeleteExascaleDbStorageVault,
      Google.Cloud.Oracledatabase.V1.DeleteExascaleDbStorageVaultRequest,
      Google.Longrunning.Operation

  rpc :ListDbSystemInitialStorageSizes,
      Google.Cloud.Oracledatabase.V1.ListDbSystemInitialStorageSizesRequest,
      Google.Cloud.Oracledatabase.V1.ListDbSystemInitialStorageSizesResponse

  rpc :ListDatabases,
      Google.Cloud.Oracledatabase.V1.ListDatabasesRequest,
      Google.Cloud.Oracledatabase.V1.ListDatabasesResponse

  rpc :GetDatabase,
      Google.Cloud.Oracledatabase.V1.GetDatabaseRequest,
      Google.Cloud.Oracledatabase.V1.Database

  rpc :ListPluggableDatabases,
      Google.Cloud.Oracledatabase.V1.ListPluggableDatabasesRequest,
      Google.Cloud.Oracledatabase.V1.ListPluggableDatabasesResponse

  rpc :GetPluggableDatabase,
      Google.Cloud.Oracledatabase.V1.GetPluggableDatabaseRequest,
      Google.Cloud.Oracledatabase.V1.PluggableDatabase

  rpc :ListDbSystems,
      Google.Cloud.Oracledatabase.V1.ListDbSystemsRequest,
      Google.Cloud.Oracledatabase.V1.ListDbSystemsResponse

  rpc :GetDbSystem,
      Google.Cloud.Oracledatabase.V1.GetDbSystemRequest,
      Google.Cloud.Oracledatabase.V1.DbSystem

  rpc :CreateDbSystem,
      Google.Cloud.Oracledatabase.V1.CreateDbSystemRequest,
      Google.Longrunning.Operation

  rpc :DeleteDbSystem,
      Google.Cloud.Oracledatabase.V1.DeleteDbSystemRequest,
      Google.Longrunning.Operation

  rpc :ListDbVersions,
      Google.Cloud.Oracledatabase.V1.ListDbVersionsRequest,
      Google.Cloud.Oracledatabase.V1.ListDbVersionsResponse

  rpc :ListDatabaseCharacterSets,
      Google.Cloud.Oracledatabase.V1.ListDatabaseCharacterSetsRequest,
      Google.Cloud.Oracledatabase.V1.ListDatabaseCharacterSetsResponse
end

defmodule Google.Cloud.Oracledatabase.V1.OracleDatabase.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Oracledatabase.V1.OracleDatabase.Service
end
