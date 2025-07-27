defmodule Google.Cloud.Securitycenter.V2.BulkMuteFindingsRequest.MuteState do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :MUTE_STATE_UNSPECIFIED, 0
  field :MUTED, 1
  field :UNDEFINED, 2
end

defmodule Google.Cloud.Securitycenter.V2.BatchCreateResourceValueConfigsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :requests, 2,
    repeated: true,
    type: Google.Cloud.Securitycenter.V2.CreateResourceValueConfigRequest,
    deprecated: false
end

defmodule Google.Cloud.Securitycenter.V2.BatchCreateResourceValueConfigsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :resource_value_configs, 1,
    repeated: true,
    type: Google.Cloud.Securitycenter.V2.ResourceValueConfig,
    json_name: "resourceValueConfigs"
end

defmodule Google.Cloud.Securitycenter.V2.BulkMuteFindingsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :filter, 2, type: :string

  field :mute_state, 3,
    type: Google.Cloud.Securitycenter.V2.BulkMuteFindingsRequest.MuteState,
    json_name: "muteState",
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Securitycenter.V2.BulkMuteFindingsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Cloud.Securitycenter.V2.CreateBigQueryExportRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :big_query_export, 2,
    type: Google.Cloud.Securitycenter.V2.BigQueryExport,
    json_name: "bigQueryExport",
    deprecated: false

  field :big_query_export_id, 3, type: :string, json_name: "bigQueryExportId", deprecated: false
end

defmodule Google.Cloud.Securitycenter.V2.CreateFindingRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :finding_id, 2, type: :string, json_name: "findingId", deprecated: false
  field :finding, 3, type: Google.Cloud.Securitycenter.V2.Finding, deprecated: false
end

defmodule Google.Cloud.Securitycenter.V2.CreateMuteConfigRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :mute_config, 2,
    type: Google.Cloud.Securitycenter.V2.MuteConfig,
    json_name: "muteConfig",
    deprecated: false

  field :mute_config_id, 3, type: :string, json_name: "muteConfigId", deprecated: false
end

defmodule Google.Cloud.Securitycenter.V2.CreateNotificationConfigRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :config_id, 2, type: :string, json_name: "configId", deprecated: false

  field :notification_config, 3,
    type: Google.Cloud.Securitycenter.V2.NotificationConfig,
    json_name: "notificationConfig",
    deprecated: false
end

defmodule Google.Cloud.Securitycenter.V2.CreateResourceValueConfigRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :resource_value_config, 2,
    type: Google.Cloud.Securitycenter.V2.ResourceValueConfig,
    json_name: "resourceValueConfig",
    deprecated: false
end

defmodule Google.Cloud.Securitycenter.V2.CreateSourceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :source, 2, type: Google.Cloud.Securitycenter.V2.Source, deprecated: false
end

defmodule Google.Cloud.Securitycenter.V2.DeleteBigQueryExportRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Securitycenter.V2.DeleteMuteConfigRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Securitycenter.V2.DeleteNotificationConfigRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Securitycenter.V2.DeleteResourceValueConfigRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Securitycenter.V2.BigQueryDestination do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :dataset, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Securitycenter.V2.ExportFindingsMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :destination, 0

  field :export_start_time, 1,
    type: Google.Protobuf.Timestamp,
    json_name: "exportStartTime",
    deprecated: false

  field :big_query_destination, 2,
    type: Google.Cloud.Securitycenter.V2.BigQueryDestination,
    json_name: "bigQueryDestination",
    oneof: 0,
    deprecated: false
end

defmodule Google.Cloud.Securitycenter.V2.ExportFindingsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Cloud.Securitycenter.V2.GetBigQueryExportRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Securitycenter.V2.GetMuteConfigRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Securitycenter.V2.GetNotificationConfigRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Securitycenter.V2.GetResourceValueConfigRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Securitycenter.V2.GetSourceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Securitycenter.V2.GroupFindingsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :filter, 2, type: :string
  field :group_by, 3, type: :string, json_name: "groupBy", deprecated: false
  field :page_token, 7, type: :string, json_name: "pageToken"
  field :page_size, 8, type: :int32, json_name: "pageSize"
end

defmodule Google.Cloud.Securitycenter.V2.GroupFindingsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :group_by_results, 1,
    repeated: true,
    type: Google.Cloud.Securitycenter.V2.GroupResult,
    json_name: "groupByResults"

  field :next_page_token, 3, type: :string, json_name: "nextPageToken"
  field :total_size, 4, type: :int32, json_name: "totalSize"
end

defmodule Google.Cloud.Securitycenter.V2.GroupResult.PropertiesEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Protobuf.Value
end

defmodule Google.Cloud.Securitycenter.V2.GroupResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :properties, 1,
    repeated: true,
    type: Google.Cloud.Securitycenter.V2.GroupResult.PropertiesEntry,
    map: true

  field :count, 2, type: :int64
end

defmodule Google.Cloud.Securitycenter.V2.ListAttackPathsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :filter, 2, type: :string
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :page_size, 4, type: :int32, json_name: "pageSize"
end

defmodule Google.Cloud.Securitycenter.V2.ListAttackPathsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :attack_paths, 1,
    repeated: true,
    type: Google.Cloud.Securitycenter.V2.AttackPath,
    json_name: "attackPaths"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Securitycenter.V2.GetSimulationRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Securitycenter.V2.GetValuedResourceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Securitycenter.V2.ListBigQueryExportsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Cloud.Securitycenter.V2.ListBigQueryExportsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :big_query_exports, 1,
    repeated: true,
    type: Google.Cloud.Securitycenter.V2.BigQueryExport,
    json_name: "bigQueryExports"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Securitycenter.V2.ListFindingsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :filter, 2, type: :string
  field :order_by, 3, type: :string, json_name: "orderBy"
  field :field_mask, 7, type: Google.Protobuf.FieldMask, json_name: "fieldMask"
  field :page_token, 8, type: :string, json_name: "pageToken"
  field :page_size, 9, type: :int32, json_name: "pageSize"
end

defmodule Google.Cloud.Securitycenter.V2.ListFindingsResponse.ListFindingsResult.Resource do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :cloud_provider_metadata, 0

  field :name, 1, type: :string
  field :display_name, 2, type: :string, json_name: "displayName"
  field :type, 3, type: :string

  field :cloud_provider, 4,
    type: Google.Cloud.Securitycenter.V2.CloudProvider,
    json_name: "cloudProvider",
    enum: true

  field :service, 5, type: :string
  field :location, 6, type: :string

  field :gcp_metadata, 7,
    type: Google.Cloud.Securitycenter.V2.GcpMetadata,
    json_name: "gcpMetadata",
    oneof: 0

  field :aws_metadata, 8,
    type: Google.Cloud.Securitycenter.V2.AwsMetadata,
    json_name: "awsMetadata",
    oneof: 0

  field :azure_metadata, 9,
    type: Google.Cloud.Securitycenter.V2.AzureMetadata,
    json_name: "azureMetadata",
    oneof: 0

  field :resource_path, 10,
    type: Google.Cloud.Securitycenter.V2.ResourcePath,
    json_name: "resourcePath"

  field :resource_path_string, 11, type: :string, json_name: "resourcePathString"
end

defmodule Google.Cloud.Securitycenter.V2.ListFindingsResponse.ListFindingsResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :finding, 1, type: Google.Cloud.Securitycenter.V2.Finding

  field :resource, 3,
    type: Google.Cloud.Securitycenter.V2.ListFindingsResponse.ListFindingsResult.Resource,
    deprecated: false
end

defmodule Google.Cloud.Securitycenter.V2.ListFindingsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :list_findings_results, 1,
    repeated: true,
    type: Google.Cloud.Securitycenter.V2.ListFindingsResponse.ListFindingsResult,
    json_name: "listFindingsResults"

  field :next_page_token, 3, type: :string, json_name: "nextPageToken"
  field :total_size, 4, type: :int32, json_name: "totalSize"
end

defmodule Google.Cloud.Securitycenter.V2.ListMuteConfigsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Cloud.Securitycenter.V2.ListMuteConfigsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :mute_configs, 1,
    repeated: true,
    type: Google.Cloud.Securitycenter.V2.MuteConfig,
    json_name: "muteConfigs"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Securitycenter.V2.ListNotificationConfigsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_token, 2, type: :string, json_name: "pageToken"
  field :page_size, 3, type: :int32, json_name: "pageSize"
end

defmodule Google.Cloud.Securitycenter.V2.ListNotificationConfigsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :notification_configs, 1,
    repeated: true,
    type: Google.Cloud.Securitycenter.V2.NotificationConfig,
    json_name: "notificationConfigs"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Securitycenter.V2.ListResourceValueConfigsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Cloud.Securitycenter.V2.ListResourceValueConfigsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :resource_value_configs, 1,
    repeated: true,
    type: Google.Cloud.Securitycenter.V2.ResourceValueConfig,
    json_name: "resourceValueConfigs"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Securitycenter.V2.ListSourcesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_token, 2, type: :string, json_name: "pageToken"
  field :page_size, 7, type: :int32, json_name: "pageSize"
end

defmodule Google.Cloud.Securitycenter.V2.ListSourcesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :sources, 1, repeated: true, type: Google.Cloud.Securitycenter.V2.Source
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Securitycenter.V2.ListValuedResourcesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :filter, 2, type: :string
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :page_size, 4, type: :int32, json_name: "pageSize"
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
end

defmodule Google.Cloud.Securitycenter.V2.ListValuedResourcesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :valued_resources, 1,
    repeated: true,
    type: Google.Cloud.Securitycenter.V2.ValuedResource,
    json_name: "valuedResources"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :total_size, 3, type: :int32, json_name: "totalSize"
end

defmodule Google.Cloud.Securitycenter.V2.SetFindingStateRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :state, 2,
    type: Google.Cloud.Securitycenter.V2.Finding.State,
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Securitycenter.V2.SetMuteRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :mute, 2, type: Google.Cloud.Securitycenter.V2.Finding.Mute, enum: true, deprecated: false
end

defmodule Google.Cloud.Securitycenter.V2.UpdateBigQueryExportRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :big_query_export, 1,
    type: Google.Cloud.Securitycenter.V2.BigQueryExport,
    json_name: "bigQueryExport",
    deprecated: false

  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end

defmodule Google.Cloud.Securitycenter.V2.UpdateExternalSystemRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :external_system, 1,
    type: Google.Cloud.Securitycenter.V2.ExternalSystem,
    json_name: "externalSystem",
    deprecated: false

  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end

defmodule Google.Cloud.Securitycenter.V2.UpdateFindingRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :finding, 1, type: Google.Cloud.Securitycenter.V2.Finding, deprecated: false
  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end

defmodule Google.Cloud.Securitycenter.V2.UpdateMuteConfigRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :mute_config, 1,
    type: Google.Cloud.Securitycenter.V2.MuteConfig,
    json_name: "muteConfig",
    deprecated: false

  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end

defmodule Google.Cloud.Securitycenter.V2.UpdateNotificationConfigRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :notification_config, 1,
    type: Google.Cloud.Securitycenter.V2.NotificationConfig,
    json_name: "notificationConfig",
    deprecated: false

  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end

defmodule Google.Cloud.Securitycenter.V2.UpdateResourceValueConfigRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :resource_value_config, 1,
    type: Google.Cloud.Securitycenter.V2.ResourceValueConfig,
    json_name: "resourceValueConfig",
    deprecated: false

  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end

defmodule Google.Cloud.Securitycenter.V2.UpdateSecurityMarksRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :security_marks, 1,
    type: Google.Cloud.Securitycenter.V2.SecurityMarks,
    json_name: "securityMarks",
    deprecated: false

  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end

defmodule Google.Cloud.Securitycenter.V2.UpdateSourceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :source, 1, type: Google.Cloud.Securitycenter.V2.Source, deprecated: false
  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end

defmodule Google.Cloud.Securitycenter.V2.SecurityCenter.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.securitycenter.v2.SecurityCenter",
    protoc_gen_elixir_version: "0.15.0"

  rpc :BatchCreateResourceValueConfigs,
      Google.Cloud.Securitycenter.V2.BatchCreateResourceValueConfigsRequest,
      Google.Cloud.Securitycenter.V2.BatchCreateResourceValueConfigsResponse

  rpc :BulkMuteFindings,
      Google.Cloud.Securitycenter.V2.BulkMuteFindingsRequest,
      Google.Longrunning.Operation

  rpc :CreateBigQueryExport,
      Google.Cloud.Securitycenter.V2.CreateBigQueryExportRequest,
      Google.Cloud.Securitycenter.V2.BigQueryExport

  rpc :CreateFinding,
      Google.Cloud.Securitycenter.V2.CreateFindingRequest,
      Google.Cloud.Securitycenter.V2.Finding

  rpc :CreateMuteConfig,
      Google.Cloud.Securitycenter.V2.CreateMuteConfigRequest,
      Google.Cloud.Securitycenter.V2.MuteConfig

  rpc :CreateNotificationConfig,
      Google.Cloud.Securitycenter.V2.CreateNotificationConfigRequest,
      Google.Cloud.Securitycenter.V2.NotificationConfig

  rpc :CreateSource,
      Google.Cloud.Securitycenter.V2.CreateSourceRequest,
      Google.Cloud.Securitycenter.V2.Source

  rpc :DeleteBigQueryExport,
      Google.Cloud.Securitycenter.V2.DeleteBigQueryExportRequest,
      Google.Protobuf.Empty

  rpc :DeleteMuteConfig,
      Google.Cloud.Securitycenter.V2.DeleteMuteConfigRequest,
      Google.Protobuf.Empty

  rpc :DeleteNotificationConfig,
      Google.Cloud.Securitycenter.V2.DeleteNotificationConfigRequest,
      Google.Protobuf.Empty

  rpc :DeleteResourceValueConfig,
      Google.Cloud.Securitycenter.V2.DeleteResourceValueConfigRequest,
      Google.Protobuf.Empty

  rpc :GetBigQueryExport,
      Google.Cloud.Securitycenter.V2.GetBigQueryExportRequest,
      Google.Cloud.Securitycenter.V2.BigQueryExport

  rpc :GetSimulation,
      Google.Cloud.Securitycenter.V2.GetSimulationRequest,
      Google.Cloud.Securitycenter.V2.Simulation

  rpc :GetValuedResource,
      Google.Cloud.Securitycenter.V2.GetValuedResourceRequest,
      Google.Cloud.Securitycenter.V2.ValuedResource

  rpc :GetIamPolicy, Google.Iam.V1.GetIamPolicyRequest, Google.Iam.V1.Policy

  rpc :GetMuteConfig,
      Google.Cloud.Securitycenter.V2.GetMuteConfigRequest,
      Google.Cloud.Securitycenter.V2.MuteConfig

  rpc :GetNotificationConfig,
      Google.Cloud.Securitycenter.V2.GetNotificationConfigRequest,
      Google.Cloud.Securitycenter.V2.NotificationConfig

  rpc :GetResourceValueConfig,
      Google.Cloud.Securitycenter.V2.GetResourceValueConfigRequest,
      Google.Cloud.Securitycenter.V2.ResourceValueConfig

  rpc :GetSource,
      Google.Cloud.Securitycenter.V2.GetSourceRequest,
      Google.Cloud.Securitycenter.V2.Source

  rpc :GroupFindings,
      Google.Cloud.Securitycenter.V2.GroupFindingsRequest,
      Google.Cloud.Securitycenter.V2.GroupFindingsResponse

  rpc :ListAttackPaths,
      Google.Cloud.Securitycenter.V2.ListAttackPathsRequest,
      Google.Cloud.Securitycenter.V2.ListAttackPathsResponse

  rpc :ListBigQueryExports,
      Google.Cloud.Securitycenter.V2.ListBigQueryExportsRequest,
      Google.Cloud.Securitycenter.V2.ListBigQueryExportsResponse

  rpc :ListFindings,
      Google.Cloud.Securitycenter.V2.ListFindingsRequest,
      Google.Cloud.Securitycenter.V2.ListFindingsResponse

  rpc :ListMuteConfigs,
      Google.Cloud.Securitycenter.V2.ListMuteConfigsRequest,
      Google.Cloud.Securitycenter.V2.ListMuteConfigsResponse

  rpc :ListNotificationConfigs,
      Google.Cloud.Securitycenter.V2.ListNotificationConfigsRequest,
      Google.Cloud.Securitycenter.V2.ListNotificationConfigsResponse

  rpc :ListResourceValueConfigs,
      Google.Cloud.Securitycenter.V2.ListResourceValueConfigsRequest,
      Google.Cloud.Securitycenter.V2.ListResourceValueConfigsResponse

  rpc :ListSources,
      Google.Cloud.Securitycenter.V2.ListSourcesRequest,
      Google.Cloud.Securitycenter.V2.ListSourcesResponse

  rpc :ListValuedResources,
      Google.Cloud.Securitycenter.V2.ListValuedResourcesRequest,
      Google.Cloud.Securitycenter.V2.ListValuedResourcesResponse

  rpc :SetFindingState,
      Google.Cloud.Securitycenter.V2.SetFindingStateRequest,
      Google.Cloud.Securitycenter.V2.Finding

  rpc :SetIamPolicy, Google.Iam.V1.SetIamPolicyRequest, Google.Iam.V1.Policy

  rpc :SetMute,
      Google.Cloud.Securitycenter.V2.SetMuteRequest,
      Google.Cloud.Securitycenter.V2.Finding

  rpc :TestIamPermissions,
      Google.Iam.V1.TestIamPermissionsRequest,
      Google.Iam.V1.TestIamPermissionsResponse

  rpc :UpdateBigQueryExport,
      Google.Cloud.Securitycenter.V2.UpdateBigQueryExportRequest,
      Google.Cloud.Securitycenter.V2.BigQueryExport

  rpc :UpdateExternalSystem,
      Google.Cloud.Securitycenter.V2.UpdateExternalSystemRequest,
      Google.Cloud.Securitycenter.V2.ExternalSystem

  rpc :UpdateFinding,
      Google.Cloud.Securitycenter.V2.UpdateFindingRequest,
      Google.Cloud.Securitycenter.V2.Finding

  rpc :UpdateMuteConfig,
      Google.Cloud.Securitycenter.V2.UpdateMuteConfigRequest,
      Google.Cloud.Securitycenter.V2.MuteConfig

  rpc :UpdateNotificationConfig,
      Google.Cloud.Securitycenter.V2.UpdateNotificationConfigRequest,
      Google.Cloud.Securitycenter.V2.NotificationConfig

  rpc :UpdateResourceValueConfig,
      Google.Cloud.Securitycenter.V2.UpdateResourceValueConfigRequest,
      Google.Cloud.Securitycenter.V2.ResourceValueConfig

  rpc :UpdateSecurityMarks,
      Google.Cloud.Securitycenter.V2.UpdateSecurityMarksRequest,
      Google.Cloud.Securitycenter.V2.SecurityMarks

  rpc :UpdateSource,
      Google.Cloud.Securitycenter.V2.UpdateSourceRequest,
      Google.Cloud.Securitycenter.V2.Source
end

defmodule Google.Cloud.Securitycenter.V2.SecurityCenter.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Securitycenter.V2.SecurityCenter.Service
end
