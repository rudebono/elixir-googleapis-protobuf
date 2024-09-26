defmodule Google.Cloud.Backupdr.V1.NetworkConfig.PeeringMode do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :PEERING_MODE_UNSPECIFIED, 0
  field :PRIVATE_SERVICE_ACCESS, 1
end

defmodule Google.Cloud.Backupdr.V1.ManagementServer.InstanceType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :INSTANCE_TYPE_UNSPECIFIED, 0
  field :BACKUP_RESTORE, 1
end

defmodule Google.Cloud.Backupdr.V1.ManagementServer.InstanceState do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :INSTANCE_STATE_UNSPECIFIED, 0
  field :CREATING, 1
  field :READY, 2
  field :UPDATING, 3
  field :DELETING, 4
  field :REPAIRING, 5
  field :MAINTENANCE, 6
  field :ERROR, 7
end

defmodule Google.Cloud.Backupdr.V1.NetworkConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :network, 1, type: :string, deprecated: false

  field :peering_mode, 2,
    type: Google.Cloud.Backupdr.V1.NetworkConfig.PeeringMode,
    json_name: "peeringMode",
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Backupdr.V1.ManagementURI do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :web_ui, 1, type: :string, json_name: "webUi", deprecated: false
  field :api, 2, type: :string, deprecated: false
end

defmodule Google.Cloud.Backupdr.V1.WorkforceIdentityBasedManagementURI do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :first_party_management_uri, 1,
    type: :string,
    json_name: "firstPartyManagementUri",
    deprecated: false

  field :third_party_management_uri, 2,
    type: :string,
    json_name: "thirdPartyManagementUri",
    deprecated: false
end

defmodule Google.Cloud.Backupdr.V1.WorkforceIdentityBasedOAuth2ClientID do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :first_party_oauth2_client_id, 1,
    type: :string,
    json_name: "firstPartyOauth2ClientId",
    deprecated: false

  field :third_party_oauth2_client_id, 2,
    type: :string,
    json_name: "thirdPartyOauth2ClientId",
    deprecated: false
end

defmodule Google.Cloud.Backupdr.V1.ManagementServer.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Backupdr.V1.ManagementServer do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :description, 9, type: :string, deprecated: false

  field :labels, 4,
    repeated: true,
    type: Google.Cloud.Backupdr.V1.ManagementServer.LabelsEntry,
    map: true,
    deprecated: false

  field :create_time, 2,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :type, 14,
    type: Google.Cloud.Backupdr.V1.ManagementServer.InstanceType,
    enum: true,
    deprecated: false

  field :management_uri, 11,
    type: Google.Cloud.Backupdr.V1.ManagementURI,
    json_name: "managementUri",
    deprecated: false

  field :workforce_identity_based_management_uri, 16,
    type: Google.Cloud.Backupdr.V1.WorkforceIdentityBasedManagementURI,
    json_name: "workforceIdentityBasedManagementUri",
    deprecated: false

  field :state, 7,
    type: Google.Cloud.Backupdr.V1.ManagementServer.InstanceState,
    enum: true,
    deprecated: false

  field :networks, 8,
    repeated: true,
    type: Google.Cloud.Backupdr.V1.NetworkConfig,
    deprecated: false

  field :etag, 13, type: :string, deprecated: false
  field :oauth2_client_id, 15, type: :string, json_name: "oauth2ClientId", deprecated: false

  field :workforce_identity_based_oauth2_client_id, 17,
    type: Google.Cloud.Backupdr.V1.WorkforceIdentityBasedOAuth2ClientID,
    json_name: "workforceIdentityBasedOauth2ClientId",
    deprecated: false

  field :ba_proxy_uri, 18,
    repeated: true,
    type: :string,
    json_name: "baProxyUri",
    deprecated: false

  field :satisfies_pzs, 19,
    type: Google.Protobuf.BoolValue,
    json_name: "satisfiesPzs",
    deprecated: false

  field :satisfies_pzi, 20, type: :bool, json_name: "satisfiesPzi", deprecated: false
end

defmodule Google.Cloud.Backupdr.V1.ListManagementServersRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, proto3_optional: true, type: :string, deprecated: false

  field :order_by, 5,
    proto3_optional: true,
    type: :string,
    json_name: "orderBy",
    deprecated: false
end

defmodule Google.Cloud.Backupdr.V1.ListManagementServersResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :management_servers, 1,
    repeated: true,
    type: Google.Cloud.Backupdr.V1.ManagementServer,
    json_name: "managementServers"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Backupdr.V1.GetManagementServerRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Backupdr.V1.CreateManagementServerRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :management_server_id, 2,
    type: :string,
    json_name: "managementServerId",
    deprecated: false

  field :management_server, 3,
    type: Google.Cloud.Backupdr.V1.ManagementServer,
    json_name: "managementServer",
    deprecated: false

  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Backupdr.V1.DeleteManagementServerRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Backupdr.V1.OperationMetadata.AdditionalInfoEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Backupdr.V1.OperationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

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

  field :additional_info, 8,
    repeated: true,
    type: Google.Cloud.Backupdr.V1.OperationMetadata.AdditionalInfoEntry,
    json_name: "additionalInfo",
    map: true,
    deprecated: false
end

defmodule Google.Cloud.Backupdr.V1.BackupDR.Service do
  @moduledoc false

  use GRPC.Service, name: "google.cloud.backupdr.v1.BackupDR", protoc_gen_elixir_version: "0.13.0"

  rpc :ListManagementServers,
      Google.Cloud.Backupdr.V1.ListManagementServersRequest,
      Google.Cloud.Backupdr.V1.ListManagementServersResponse

  rpc :GetManagementServer,
      Google.Cloud.Backupdr.V1.GetManagementServerRequest,
      Google.Cloud.Backupdr.V1.ManagementServer

  rpc :CreateManagementServer,
      Google.Cloud.Backupdr.V1.CreateManagementServerRequest,
      Google.Longrunning.Operation

  rpc :DeleteManagementServer,
      Google.Cloud.Backupdr.V1.DeleteManagementServerRequest,
      Google.Longrunning.Operation

  rpc :CreateBackupVault,
      Google.Cloud.Backupdr.V1.CreateBackupVaultRequest,
      Google.Longrunning.Operation

  rpc :ListBackupVaults,
      Google.Cloud.Backupdr.V1.ListBackupVaultsRequest,
      Google.Cloud.Backupdr.V1.ListBackupVaultsResponse

  rpc :FetchUsableBackupVaults,
      Google.Cloud.Backupdr.V1.FetchUsableBackupVaultsRequest,
      Google.Cloud.Backupdr.V1.FetchUsableBackupVaultsResponse

  rpc :GetBackupVault,
      Google.Cloud.Backupdr.V1.GetBackupVaultRequest,
      Google.Cloud.Backupdr.V1.BackupVault

  rpc :UpdateBackupVault,
      Google.Cloud.Backupdr.V1.UpdateBackupVaultRequest,
      Google.Longrunning.Operation

  rpc :DeleteBackupVault,
      Google.Cloud.Backupdr.V1.DeleteBackupVaultRequest,
      Google.Longrunning.Operation

  rpc :TestIamPermissions,
      Google.Iam.V1.TestIamPermissionsRequest,
      Google.Iam.V1.TestIamPermissionsResponse

  rpc :ListDataSources,
      Google.Cloud.Backupdr.V1.ListDataSourcesRequest,
      Google.Cloud.Backupdr.V1.ListDataSourcesResponse

  rpc :GetDataSource,
      Google.Cloud.Backupdr.V1.GetDataSourceRequest,
      Google.Cloud.Backupdr.V1.DataSource

  rpc :UpdateDataSource,
      Google.Cloud.Backupdr.V1.UpdateDataSourceRequest,
      Google.Longrunning.Operation

  rpc :RemoveDataSource,
      Google.Cloud.Backupdr.V1.RemoveDataSourceRequest,
      Google.Longrunning.Operation

  rpc :SetInternalStatus,
      Google.Cloud.Backupdr.V1.SetInternalStatusRequest,
      Google.Longrunning.Operation

  rpc :InitiateBackup,
      Google.Cloud.Backupdr.V1.InitiateBackupRequest,
      Google.Cloud.Backupdr.V1.InitiateBackupResponse

  rpc :AbandonBackup, Google.Cloud.Backupdr.V1.AbandonBackupRequest, Google.Longrunning.Operation

  rpc :FinalizeBackup,
      Google.Cloud.Backupdr.V1.FinalizeBackupRequest,
      Google.Longrunning.Operation

  rpc :FetchAccessToken,
      Google.Cloud.Backupdr.V1.FetchAccessTokenRequest,
      Google.Cloud.Backupdr.V1.FetchAccessTokenResponse

  rpc :ListBackups,
      Google.Cloud.Backupdr.V1.ListBackupsRequest,
      Google.Cloud.Backupdr.V1.ListBackupsResponse

  rpc :GetBackup, Google.Cloud.Backupdr.V1.GetBackupRequest, Google.Cloud.Backupdr.V1.Backup

  rpc :UpdateBackup, Google.Cloud.Backupdr.V1.UpdateBackupRequest, Google.Longrunning.Operation

  rpc :DeleteBackup, Google.Cloud.Backupdr.V1.DeleteBackupRequest, Google.Longrunning.Operation

  rpc :RestoreBackup, Google.Cloud.Backupdr.V1.RestoreBackupRequest, Google.Longrunning.Operation

  rpc :CreateBackupPlan,
      Google.Cloud.Backupdr.V1.CreateBackupPlanRequest,
      Google.Longrunning.Operation

  rpc :GetBackupPlan,
      Google.Cloud.Backupdr.V1.GetBackupPlanRequest,
      Google.Cloud.Backupdr.V1.BackupPlan

  rpc :ListBackupPlans,
      Google.Cloud.Backupdr.V1.ListBackupPlansRequest,
      Google.Cloud.Backupdr.V1.ListBackupPlansResponse

  rpc :DeleteBackupPlan,
      Google.Cloud.Backupdr.V1.DeleteBackupPlanRequest,
      Google.Longrunning.Operation

  rpc :CreateBackupPlanAssociation,
      Google.Cloud.Backupdr.V1.CreateBackupPlanAssociationRequest,
      Google.Longrunning.Operation

  rpc :GetBackupPlanAssociation,
      Google.Cloud.Backupdr.V1.GetBackupPlanAssociationRequest,
      Google.Cloud.Backupdr.V1.BackupPlanAssociation

  rpc :ListBackupPlanAssociations,
      Google.Cloud.Backupdr.V1.ListBackupPlanAssociationsRequest,
      Google.Cloud.Backupdr.V1.ListBackupPlanAssociationsResponse

  rpc :DeleteBackupPlanAssociation,
      Google.Cloud.Backupdr.V1.DeleteBackupPlanAssociationRequest,
      Google.Longrunning.Operation

  rpc :TriggerBackup, Google.Cloud.Backupdr.V1.TriggerBackupRequest, Google.Longrunning.Operation
end

defmodule Google.Cloud.Backupdr.V1.BackupDR.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Backupdr.V1.BackupDR.Service
end