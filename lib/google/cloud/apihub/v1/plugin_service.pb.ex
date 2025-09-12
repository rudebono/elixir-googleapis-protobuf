defmodule Google.Cloud.Apihub.V1.ActionType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :ACTION_TYPE_UNSPECIFIED, 0
  field :SYNC_METADATA, 1
  field :SYNC_RUNTIME_DATA, 2
end

defmodule Google.Cloud.Apihub.V1.GatewayType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :GATEWAY_TYPE_UNSPECIFIED, 0
  field :APIGEE_X_AND_HYBRID, 1
  field :APIGEE_EDGE_PUBLIC_CLOUD, 2
  field :APIGEE_EDGE_PRIVATE_CLOUD, 3
  field :CLOUD_API_GATEWAY, 4
  field :CLOUD_ENDPOINTS, 5
  field :API_DISCOVERY, 6
  field :OTHERS, 7
end

defmodule Google.Cloud.Apihub.V1.CurationType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :CURATION_TYPE_UNSPECIFIED, 0
  field :DEFAULT_CURATION_FOR_API_METADATA, 1
  field :CUSTOM_CURATION_FOR_API_METADATA, 2
end

defmodule Google.Cloud.Apihub.V1.Plugin.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :ENABLED, 1
  field :DISABLED, 2
end

defmodule Google.Cloud.Apihub.V1.Plugin.OwnershipType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :OWNERSHIP_TYPE_UNSPECIFIED, 0
  field :SYSTEM_OWNED, 1
  field :USER_OWNED, 2
end

defmodule Google.Cloud.Apihub.V1.PluginActionConfig.TriggerMode do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :TRIGGER_MODE_UNSPECIFIED, 0
  field :API_HUB_ON_DEMAND_TRIGGER, 1
  field :API_HUB_SCHEDULE_TRIGGER, 2
  field :NON_API_HUB_MANAGED, 3
end

defmodule Google.Cloud.Apihub.V1.PluginInstanceAction.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :ENABLED, 1
  field :DISABLED, 2
  field :ENABLING, 3
  field :DISABLING, 4
  field :ERROR, 5
end

defmodule Google.Cloud.Apihub.V1.PluginInstance.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :CREATING, 1
  field :ACTIVE, 2
  field :APPLYING_CONFIG, 3
  field :ERROR, 4
  field :FAILED, 5
  field :DELETING, 6
end

defmodule Google.Cloud.Apihub.V1.ExecutionStatus.CurrentExecutionState do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :CURRENT_EXECUTION_STATE_UNSPECIFIED, 0
  field :RUNNING, 1
  field :NOT_RUNNING, 2
end

defmodule Google.Cloud.Apihub.V1.ExecutionStatus.LastExecution.Result do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :RESULT_UNSPECIFIED, 0
  field :SUCCEEDED, 1
  field :FAILED, 2
end

defmodule Google.Cloud.Apihub.V1.Plugin.HostingService do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :service_uri, 1, type: :string, json_name: "serviceUri", deprecated: false
end

defmodule Google.Cloud.Apihub.V1.Plugin.ConfigTemplate.AuthConfigTemplate do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :supported_auth_types, 1,
    repeated: true,
    type: Google.Cloud.Apihub.V1.AuthType,
    json_name: "supportedAuthTypes",
    enum: true,
    deprecated: false

  field :service_account, 2,
    type: Google.Cloud.Apihub.V1.GoogleServiceAccountConfig,
    json_name: "serviceAccount",
    deprecated: false
end

defmodule Google.Cloud.Apihub.V1.Plugin.ConfigTemplate do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :auth_config_template, 1,
    type: Google.Cloud.Apihub.V1.Plugin.ConfigTemplate.AuthConfigTemplate,
    json_name: "authConfigTemplate",
    deprecated: false

  field :additional_config_template, 2,
    repeated: true,
    type: Google.Cloud.Apihub.V1.ConfigVariableTemplate,
    json_name: "additionalConfigTemplate",
    deprecated: false
end

defmodule Google.Cloud.Apihub.V1.Plugin do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :display_name, 2, type: :string, json_name: "displayName", deprecated: false
  field :type, 3, type: Google.Cloud.Apihub.V1.AttributeValues, deprecated: false
  field :description, 4, type: :string, deprecated: false
  field :state, 5, type: Google.Cloud.Apihub.V1.Plugin.State, enum: true, deprecated: false

  field :ownership_type, 6,
    type: Google.Cloud.Apihub.V1.Plugin.OwnershipType,
    json_name: "ownershipType",
    enum: true,
    deprecated: false

  field :hosting_service, 7,
    type: Google.Cloud.Apihub.V1.Plugin.HostingService,
    json_name: "hostingService",
    deprecated: false

  field :actions_config, 8,
    repeated: true,
    type: Google.Cloud.Apihub.V1.PluginActionConfig,
    json_name: "actionsConfig",
    deprecated: false

  field :documentation, 9, type: Google.Cloud.Apihub.V1.Documentation, deprecated: false

  field :plugin_category, 11,
    type: Google.Cloud.Apihub.V1.PluginCategory,
    json_name: "pluginCategory",
    enum: true,
    deprecated: false

  field :config_template, 12,
    type: Google.Cloud.Apihub.V1.Plugin.ConfigTemplate,
    json_name: "configTemplate",
    deprecated: false

  field :create_time, 13,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 14,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :gateway_type, 15,
    type: Google.Cloud.Apihub.V1.GatewayType,
    json_name: "gatewayType",
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Apihub.V1.PluginActionConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :id, 1, type: :string, deprecated: false
  field :display_name, 2, type: :string, json_name: "displayName", deprecated: false
  field :description, 3, type: :string, deprecated: false

  field :trigger_mode, 4,
    type: Google.Cloud.Apihub.V1.PluginActionConfig.TriggerMode,
    json_name: "triggerMode",
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Apihub.V1.GetPluginRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Apihub.V1.EnablePluginRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Apihub.V1.DisablePluginRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Apihub.V1.PluginInstanceAction.ResourceConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :action_type, 1,
    type: Google.Cloud.Apihub.V1.ActionType,
    json_name: "actionType",
    enum: true,
    deprecated: false

  field :pubsub_topic, 2, type: :string, json_name: "pubsubTopic", deprecated: false
end

defmodule Google.Cloud.Apihub.V1.PluginInstanceAction do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :action_status, 0

  field :hub_instance_action, 6,
    type: Google.Cloud.Apihub.V1.ExecutionStatus,
    json_name: "hubInstanceAction",
    oneof: 0,
    deprecated: false

  field :action_id, 1, type: :string, json_name: "actionId", deprecated: false

  field :state, 2,
    type: Google.Cloud.Apihub.V1.PluginInstanceAction.State,
    enum: true,
    deprecated: false

  field :schedule_cron_expression, 4,
    type: :string,
    json_name: "scheduleCronExpression",
    deprecated: false

  field :curation_config, 5,
    type: Google.Cloud.Apihub.V1.CurationConfig,
    json_name: "curationConfig",
    deprecated: false

  field :schedule_time_zone, 7, type: :string, json_name: "scheduleTimeZone", deprecated: false
  field :service_account, 8, type: :string, json_name: "serviceAccount", deprecated: false

  field :resource_config, 9,
    type: Google.Cloud.Apihub.V1.PluginInstanceAction.ResourceConfig,
    json_name: "resourceConfig",
    deprecated: false
end

defmodule Google.Cloud.Apihub.V1.PluginInstance.AdditionalConfigEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Apihub.V1.ConfigVariable
end

defmodule Google.Cloud.Apihub.V1.PluginInstance do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :display_name, 2, type: :string, json_name: "displayName", deprecated: false

  field :auth_config, 3,
    type: Google.Cloud.Apihub.V1.AuthConfig,
    json_name: "authConfig",
    deprecated: false

  field :additional_config, 4,
    repeated: true,
    type: Google.Cloud.Apihub.V1.PluginInstance.AdditionalConfigEntry,
    json_name: "additionalConfig",
    map: true,
    deprecated: false

  field :state, 5,
    type: Google.Cloud.Apihub.V1.PluginInstance.State,
    enum: true,
    deprecated: false

  field :error_message, 6, type: :string, json_name: "errorMessage", deprecated: false

  field :actions, 7,
    repeated: true,
    type: Google.Cloud.Apihub.V1.PluginInstanceAction,
    deprecated: false

  field :create_time, 9,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 10,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :source_project_id, 11, type: :string, json_name: "sourceProjectId", deprecated: false
end

defmodule Google.Cloud.Apihub.V1.CurationConfig.CustomCuration do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :curation, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Apihub.V1.CurationConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :curation_config, 0

  field :custom_curation, 2,
    type: Google.Cloud.Apihub.V1.CurationConfig.CustomCuration,
    json_name: "customCuration",
    oneof: 0,
    deprecated: false

  field :curation_type, 1,
    type: Google.Cloud.Apihub.V1.CurationType,
    json_name: "curationType",
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Apihub.V1.ExecutionStatus.LastExecution do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :result, 1,
    type: Google.Cloud.Apihub.V1.ExecutionStatus.LastExecution.Result,
    enum: true,
    deprecated: false

  field :error_message, 2, type: :string, json_name: "errorMessage", deprecated: false
  field :start_time, 3, type: Google.Protobuf.Timestamp, json_name: "startTime", deprecated: false
  field :end_time, 4, type: Google.Protobuf.Timestamp, json_name: "endTime", deprecated: false
end

defmodule Google.Cloud.Apihub.V1.ExecutionStatus do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :current_execution_state, 1,
    type: Google.Cloud.Apihub.V1.ExecutionStatus.CurrentExecutionState,
    json_name: "currentExecutionState",
    enum: true,
    deprecated: false

  field :last_execution, 2,
    type: Google.Cloud.Apihub.V1.ExecutionStatus.LastExecution,
    json_name: "lastExecution",
    deprecated: false
end

defmodule Google.Cloud.Apihub.V1.CreatePluginRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :plugin_id, 2, type: :string, json_name: "pluginId", deprecated: false
  field :plugin, 3, type: Google.Cloud.Apihub.V1.Plugin, deprecated: false
end

defmodule Google.Cloud.Apihub.V1.DeletePluginRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Apihub.V1.ListPluginsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :filter, 2, type: :string, deprecated: false
  field :page_size, 3, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 4, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Cloud.Apihub.V1.ListPluginsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :plugins, 1, repeated: true, type: Google.Cloud.Apihub.V1.Plugin
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Apihub.V1.CreatePluginInstanceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :plugin_instance_id, 2, type: :string, json_name: "pluginInstanceId", deprecated: false

  field :plugin_instance, 3,
    type: Google.Cloud.Apihub.V1.PluginInstance,
    json_name: "pluginInstance",
    deprecated: false
end

defmodule Google.Cloud.Apihub.V1.ExecutePluginInstanceActionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :action_execution_detail, 2,
    type: Google.Cloud.Apihub.V1.ActionExecutionDetail,
    json_name: "actionExecutionDetail",
    deprecated: false
end

defmodule Google.Cloud.Apihub.V1.ActionExecutionDetail do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :action_id, 1, type: :string, json_name: "actionId", deprecated: false
end

defmodule Google.Cloud.Apihub.V1.ExecutePluginInstanceActionResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Cloud.Apihub.V1.GetPluginInstanceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Apihub.V1.ListPluginInstancesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :filter, 2, type: :string, deprecated: false
  field :page_size, 3, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 4, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Cloud.Apihub.V1.ListPluginInstancesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :plugin_instances, 1,
    repeated: true,
    type: Google.Cloud.Apihub.V1.PluginInstance,
    json_name: "pluginInstances"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Apihub.V1.EnablePluginInstanceActionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :action_id, 2, type: :string, json_name: "actionId", deprecated: false
end

defmodule Google.Cloud.Apihub.V1.EnablePluginInstanceActionResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Cloud.Apihub.V1.DisablePluginInstanceActionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :action_id, 2, type: :string, json_name: "actionId", deprecated: false
end

defmodule Google.Cloud.Apihub.V1.DisablePluginInstanceActionResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Cloud.Apihub.V1.UpdatePluginInstanceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :plugin_instance, 1,
    type: Google.Cloud.Apihub.V1.PluginInstance,
    json_name: "pluginInstance",
    deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Cloud.Apihub.V1.DeletePluginInstanceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Apihub.V1.ApiHubPlugin.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.apihub.v1.ApiHubPlugin",
    protoc_gen_elixir_version: "0.15.0"

  rpc :GetPlugin, Google.Cloud.Apihub.V1.GetPluginRequest, Google.Cloud.Apihub.V1.Plugin

  rpc :EnablePlugin, Google.Cloud.Apihub.V1.EnablePluginRequest, Google.Cloud.Apihub.V1.Plugin

  rpc :DisablePlugin, Google.Cloud.Apihub.V1.DisablePluginRequest, Google.Cloud.Apihub.V1.Plugin

  rpc :CreatePlugin, Google.Cloud.Apihub.V1.CreatePluginRequest, Google.Cloud.Apihub.V1.Plugin

  rpc :ListPlugins,
      Google.Cloud.Apihub.V1.ListPluginsRequest,
      Google.Cloud.Apihub.V1.ListPluginsResponse

  rpc :DeletePlugin, Google.Cloud.Apihub.V1.DeletePluginRequest, Google.Longrunning.Operation

  rpc :CreatePluginInstance,
      Google.Cloud.Apihub.V1.CreatePluginInstanceRequest,
      Google.Longrunning.Operation

  rpc :ExecutePluginInstanceAction,
      Google.Cloud.Apihub.V1.ExecutePluginInstanceActionRequest,
      Google.Longrunning.Operation

  rpc :GetPluginInstance,
      Google.Cloud.Apihub.V1.GetPluginInstanceRequest,
      Google.Cloud.Apihub.V1.PluginInstance

  rpc :ListPluginInstances,
      Google.Cloud.Apihub.V1.ListPluginInstancesRequest,
      Google.Cloud.Apihub.V1.ListPluginInstancesResponse

  rpc :EnablePluginInstanceAction,
      Google.Cloud.Apihub.V1.EnablePluginInstanceActionRequest,
      Google.Longrunning.Operation

  rpc :DisablePluginInstanceAction,
      Google.Cloud.Apihub.V1.DisablePluginInstanceActionRequest,
      Google.Longrunning.Operation

  rpc :UpdatePluginInstance,
      Google.Cloud.Apihub.V1.UpdatePluginInstanceRequest,
      Google.Cloud.Apihub.V1.PluginInstance

  rpc :DeletePluginInstance,
      Google.Cloud.Apihub.V1.DeletePluginInstanceRequest,
      Google.Longrunning.Operation
end

defmodule Google.Cloud.Apihub.V1.ApiHubPlugin.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Apihub.V1.ApiHubPlugin.Service
end
