defmodule Google.Cloud.Securitycentermanagement.V1.SecurityCenterService.EnablementState do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :ENABLEMENT_STATE_UNSPECIFIED, 0
  field :INHERITED, 1
  field :ENABLED, 2
  field :DISABLED, 3
  field :INGEST_ONLY, 4
end

defmodule Google.Cloud.Securitycentermanagement.V1.EffectiveSecurityHealthAnalyticsCustomModule.EnablementState do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :ENABLEMENT_STATE_UNSPECIFIED, 0
  field :ENABLED, 1
  field :DISABLED, 2
end

defmodule Google.Cloud.Securitycentermanagement.V1.SecurityHealthAnalyticsCustomModule.EnablementState do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :ENABLEMENT_STATE_UNSPECIFIED, 0
  field :ENABLED, 1
  field :DISABLED, 2
  field :INHERITED, 3
end

defmodule Google.Cloud.Securitycentermanagement.V1.CustomConfig.Severity do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :SEVERITY_UNSPECIFIED, 0
  field :CRITICAL, 1
  field :HIGH, 2
  field :MEDIUM, 3
  field :LOW, 4
end

defmodule Google.Cloud.Securitycentermanagement.V1.SimulatedFinding.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :ACTIVE, 1
  field :INACTIVE, 2
end

defmodule Google.Cloud.Securitycentermanagement.V1.SimulatedFinding.Severity do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :SEVERITY_UNSPECIFIED, 0
  field :CRITICAL, 1
  field :HIGH, 2
  field :MEDIUM, 3
  field :LOW, 4
end

defmodule Google.Cloud.Securitycentermanagement.V1.SimulatedFinding.FindingClass do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :FINDING_CLASS_UNSPECIFIED, 0
  field :THREAT, 1
  field :VULNERABILITY, 2
  field :MISCONFIGURATION, 3
  field :OBSERVATION, 4
  field :SCC_ERROR, 5
  field :POSTURE_VIOLATION, 6
  field :TOXIC_COMBINATION, 7
end

defmodule Google.Cloud.Securitycentermanagement.V1.EffectiveEventThreatDetectionCustomModule.EnablementState do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :ENABLEMENT_STATE_UNSPECIFIED, 0
  field :ENABLED, 1
  field :DISABLED, 2
end

defmodule Google.Cloud.Securitycentermanagement.V1.EventThreatDetectionCustomModule.EnablementState do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :ENABLEMENT_STATE_UNSPECIFIED, 0
  field :ENABLED, 1
  field :DISABLED, 2
  field :INHERITED, 3
end

defmodule Google.Cloud.Securitycentermanagement.V1.SecurityCenterService.ModuleSettings do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :intended_enablement_state, 1,
    type: Google.Cloud.Securitycentermanagement.V1.SecurityCenterService.EnablementState,
    json_name: "intendedEnablementState",
    enum: true,
    deprecated: false

  field :effective_enablement_state, 2,
    type: Google.Cloud.Securitycentermanagement.V1.SecurityCenterService.EnablementState,
    json_name: "effectiveEnablementState",
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Securitycentermanagement.V1.SecurityCenterService.ModulesEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string

  field :value, 2,
    type: Google.Cloud.Securitycentermanagement.V1.SecurityCenterService.ModuleSettings
end

defmodule Google.Cloud.Securitycentermanagement.V1.SecurityCenterService do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :intended_enablement_state, 2,
    type: Google.Cloud.Securitycentermanagement.V1.SecurityCenterService.EnablementState,
    json_name: "intendedEnablementState",
    enum: true,
    deprecated: false

  field :effective_enablement_state, 3,
    type: Google.Cloud.Securitycentermanagement.V1.SecurityCenterService.EnablementState,
    json_name: "effectiveEnablementState",
    enum: true,
    deprecated: false

  field :modules, 4,
    repeated: true,
    type: Google.Cloud.Securitycentermanagement.V1.SecurityCenterService.ModulesEntry,
    map: true,
    deprecated: false

  field :update_time, 5,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :service_config, 6,
    type: Google.Protobuf.Struct,
    json_name: "serviceConfig",
    deprecated: false
end

defmodule Google.Cloud.Securitycentermanagement.V1.EffectiveSecurityHealthAnalyticsCustomModule do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :custom_config, 2,
    type: Google.Cloud.Securitycentermanagement.V1.CustomConfig,
    json_name: "customConfig",
    deprecated: false

  field :enablement_state, 3,
    type:
      Google.Cloud.Securitycentermanagement.V1.EffectiveSecurityHealthAnalyticsCustomModule.EnablementState,
    json_name: "enablementState",
    enum: true,
    deprecated: false

  field :display_name, 4, type: :string, json_name: "displayName", deprecated: false
end

defmodule Google.Cloud.Securitycentermanagement.V1.ListEffectiveSecurityHealthAnalyticsCustomModulesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Cloud.Securitycentermanagement.V1.ListEffectiveSecurityHealthAnalyticsCustomModulesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :effective_security_health_analytics_custom_modules, 1,
    repeated: true,
    type: Google.Cloud.Securitycentermanagement.V1.EffectiveSecurityHealthAnalyticsCustomModule,
    json_name: "effectiveSecurityHealthAnalyticsCustomModules"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Securitycentermanagement.V1.GetEffectiveSecurityHealthAnalyticsCustomModuleRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Securitycentermanagement.V1.SecurityHealthAnalyticsCustomModule do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :display_name, 2, type: :string, json_name: "displayName", deprecated: false

  field :enablement_state, 3,
    type:
      Google.Cloud.Securitycentermanagement.V1.SecurityHealthAnalyticsCustomModule.EnablementState,
    json_name: "enablementState",
    enum: true,
    deprecated: false

  field :update_time, 4,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :last_editor, 5, type: :string, json_name: "lastEditor", deprecated: false
  field :ancestor_module, 6, type: :string, json_name: "ancestorModule", deprecated: false

  field :custom_config, 7,
    type: Google.Cloud.Securitycentermanagement.V1.CustomConfig,
    json_name: "customConfig",
    deprecated: false
end

defmodule Google.Cloud.Securitycentermanagement.V1.CustomConfig.CustomOutputSpec.Property do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :value_expression, 2,
    type: Google.Type.Expr,
    json_name: "valueExpression",
    deprecated: false
end

defmodule Google.Cloud.Securitycentermanagement.V1.CustomConfig.CustomOutputSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :properties, 1,
    repeated: true,
    type: Google.Cloud.Securitycentermanagement.V1.CustomConfig.CustomOutputSpec.Property,
    deprecated: false
end

defmodule Google.Cloud.Securitycentermanagement.V1.CustomConfig.ResourceSelector do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :resource_types, 1,
    repeated: true,
    type: :string,
    json_name: "resourceTypes",
    deprecated: false
end

defmodule Google.Cloud.Securitycentermanagement.V1.CustomConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :predicate, 1, type: Google.Type.Expr, deprecated: false

  field :custom_output, 2,
    type: Google.Cloud.Securitycentermanagement.V1.CustomConfig.CustomOutputSpec,
    json_name: "customOutput",
    deprecated: false

  field :resource_selector, 3,
    type: Google.Cloud.Securitycentermanagement.V1.CustomConfig.ResourceSelector,
    json_name: "resourceSelector",
    deprecated: false

  field :severity, 4,
    type: Google.Cloud.Securitycentermanagement.V1.CustomConfig.Severity,
    enum: true,
    deprecated: false

  field :description, 5, type: :string, deprecated: false
  field :recommendation, 6, type: :string, deprecated: false
end

defmodule Google.Cloud.Securitycentermanagement.V1.ListSecurityHealthAnalyticsCustomModulesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Cloud.Securitycentermanagement.V1.ListSecurityHealthAnalyticsCustomModulesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :security_health_analytics_custom_modules, 1,
    repeated: true,
    type: Google.Cloud.Securitycentermanagement.V1.SecurityHealthAnalyticsCustomModule,
    json_name: "securityHealthAnalyticsCustomModules"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Securitycentermanagement.V1.ListDescendantSecurityHealthAnalyticsCustomModulesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Cloud.Securitycentermanagement.V1.ListDescendantSecurityHealthAnalyticsCustomModulesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :security_health_analytics_custom_modules, 1,
    repeated: true,
    type: Google.Cloud.Securitycentermanagement.V1.SecurityHealthAnalyticsCustomModule,
    json_name: "securityHealthAnalyticsCustomModules"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Securitycentermanagement.V1.GetSecurityHealthAnalyticsCustomModuleRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Securitycentermanagement.V1.CreateSecurityHealthAnalyticsCustomModuleRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :security_health_analytics_custom_module, 2,
    type: Google.Cloud.Securitycentermanagement.V1.SecurityHealthAnalyticsCustomModule,
    json_name: "securityHealthAnalyticsCustomModule",
    deprecated: false

  field :validate_only, 3, type: :bool, json_name: "validateOnly", deprecated: false
end

defmodule Google.Cloud.Securitycentermanagement.V1.UpdateSecurityHealthAnalyticsCustomModuleRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :update_mask, 1,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :security_health_analytics_custom_module, 2,
    type: Google.Cloud.Securitycentermanagement.V1.SecurityHealthAnalyticsCustomModule,
    json_name: "securityHealthAnalyticsCustomModule",
    deprecated: false

  field :validate_only, 3, type: :bool, json_name: "validateOnly", deprecated: false
end

defmodule Google.Cloud.Securitycentermanagement.V1.DeleteSecurityHealthAnalyticsCustomModuleRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :validate_only, 2, type: :bool, json_name: "validateOnly", deprecated: false
end

defmodule Google.Cloud.Securitycentermanagement.V1.SimulateSecurityHealthAnalyticsCustomModuleRequest.SimulatedResource do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :resource_type, 1, type: :string, json_name: "resourceType", deprecated: false

  field :resource_data, 2,
    type: Google.Protobuf.Struct,
    json_name: "resourceData",
    deprecated: false

  field :iam_policy_data, 3,
    type: Google.Iam.V1.Policy,
    json_name: "iamPolicyData",
    deprecated: false
end

defmodule Google.Cloud.Securitycentermanagement.V1.SimulateSecurityHealthAnalyticsCustomModuleRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :custom_config, 2,
    type: Google.Cloud.Securitycentermanagement.V1.CustomConfig,
    json_name: "customConfig",
    deprecated: false

  field :resource, 3,
    type:
      Google.Cloud.Securitycentermanagement.V1.SimulateSecurityHealthAnalyticsCustomModuleRequest.SimulatedResource,
    deprecated: false
end

defmodule Google.Cloud.Securitycentermanagement.V1.SimulatedFinding.SourcePropertiesEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Protobuf.Value
end

defmodule Google.Cloud.Securitycentermanagement.V1.SimulatedFinding do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :parent, 2, type: :string
  field :resource_name, 3, type: :string, json_name: "resourceName"
  field :category, 4, type: :string

  field :state, 5,
    type: Google.Cloud.Securitycentermanagement.V1.SimulatedFinding.State,
    enum: true,
    deprecated: false

  field :source_properties, 6,
    repeated: true,
    type: Google.Cloud.Securitycentermanagement.V1.SimulatedFinding.SourcePropertiesEntry,
    json_name: "sourceProperties",
    map: true

  field :event_time, 7, type: Google.Protobuf.Timestamp, json_name: "eventTime"

  field :severity, 8,
    type: Google.Cloud.Securitycentermanagement.V1.SimulatedFinding.Severity,
    enum: true

  field :finding_class, 9,
    type: Google.Cloud.Securitycentermanagement.V1.SimulatedFinding.FindingClass,
    json_name: "findingClass",
    enum: true
end

defmodule Google.Cloud.Securitycentermanagement.V1.SimulateSecurityHealthAnalyticsCustomModuleResponse.SimulatedResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :result, 0

  field :finding, 1, type: Google.Cloud.Securitycentermanagement.V1.SimulatedFinding, oneof: 0
  field :no_violation, 2, type: Google.Protobuf.Empty, json_name: "noViolation", oneof: 0
  field :error, 3, type: Google.Rpc.Status, oneof: 0
end

defmodule Google.Cloud.Securitycentermanagement.V1.SimulateSecurityHealthAnalyticsCustomModuleResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :result, 1,
    type:
      Google.Cloud.Securitycentermanagement.V1.SimulateSecurityHealthAnalyticsCustomModuleResponse.SimulatedResult
end

defmodule Google.Cloud.Securitycentermanagement.V1.EffectiveEventThreatDetectionCustomModule do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :config, 2, type: Google.Protobuf.Struct, deprecated: false

  field :enablement_state, 3,
    type:
      Google.Cloud.Securitycentermanagement.V1.EffectiveEventThreatDetectionCustomModule.EnablementState,
    json_name: "enablementState",
    enum: true,
    deprecated: false

  field :type, 4, type: :string, deprecated: false
  field :display_name, 5, type: :string, json_name: "displayName", deprecated: false
  field :description, 6, type: :string, deprecated: false
end

defmodule Google.Cloud.Securitycentermanagement.V1.ListEffectiveEventThreatDetectionCustomModulesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Cloud.Securitycentermanagement.V1.ListEffectiveEventThreatDetectionCustomModulesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :effective_event_threat_detection_custom_modules, 1,
    repeated: true,
    type: Google.Cloud.Securitycentermanagement.V1.EffectiveEventThreatDetectionCustomModule,
    json_name: "effectiveEventThreatDetectionCustomModules"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Securitycentermanagement.V1.GetEffectiveEventThreatDetectionCustomModuleRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Securitycentermanagement.V1.EventThreatDetectionCustomModule do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :config, 2, type: Google.Protobuf.Struct, deprecated: false
  field :ancestor_module, 3, type: :string, json_name: "ancestorModule", deprecated: false

  field :enablement_state, 4,
    type:
      Google.Cloud.Securitycentermanagement.V1.EventThreatDetectionCustomModule.EnablementState,
    json_name: "enablementState",
    enum: true,
    deprecated: false

  field :type, 5, type: :string, deprecated: false
  field :display_name, 6, type: :string, json_name: "displayName", deprecated: false
  field :description, 7, type: :string, deprecated: false

  field :update_time, 8,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :last_editor, 9, type: :string, json_name: "lastEditor", deprecated: false
end

defmodule Google.Cloud.Securitycentermanagement.V1.ListEventThreatDetectionCustomModulesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Cloud.Securitycentermanagement.V1.ListEventThreatDetectionCustomModulesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :event_threat_detection_custom_modules, 1,
    repeated: true,
    type: Google.Cloud.Securitycentermanagement.V1.EventThreatDetectionCustomModule,
    json_name: "eventThreatDetectionCustomModules"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Securitycentermanagement.V1.ListDescendantEventThreatDetectionCustomModulesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Cloud.Securitycentermanagement.V1.ListDescendantEventThreatDetectionCustomModulesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :event_threat_detection_custom_modules, 1,
    repeated: true,
    type: Google.Cloud.Securitycentermanagement.V1.EventThreatDetectionCustomModule,
    json_name: "eventThreatDetectionCustomModules"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Securitycentermanagement.V1.GetEventThreatDetectionCustomModuleRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Securitycentermanagement.V1.CreateEventThreatDetectionCustomModuleRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :event_threat_detection_custom_module, 3,
    type: Google.Cloud.Securitycentermanagement.V1.EventThreatDetectionCustomModule,
    json_name: "eventThreatDetectionCustomModule",
    deprecated: false

  field :validate_only, 4, type: :bool, json_name: "validateOnly", deprecated: false
end

defmodule Google.Cloud.Securitycentermanagement.V1.UpdateEventThreatDetectionCustomModuleRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :update_mask, 1,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :event_threat_detection_custom_module, 2,
    type: Google.Cloud.Securitycentermanagement.V1.EventThreatDetectionCustomModule,
    json_name: "eventThreatDetectionCustomModule",
    deprecated: false

  field :validate_only, 3, type: :bool, json_name: "validateOnly", deprecated: false
end

defmodule Google.Cloud.Securitycentermanagement.V1.DeleteEventThreatDetectionCustomModuleRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :validate_only, 2, type: :bool, json_name: "validateOnly", deprecated: false
end

defmodule Google.Cloud.Securitycentermanagement.V1.ValidateEventThreatDetectionCustomModuleRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :raw_text, 2, type: :string, json_name: "rawText", deprecated: false
  field :type, 3, type: :string, deprecated: false
end

defmodule Google.Cloud.Securitycentermanagement.V1.ValidateEventThreatDetectionCustomModuleResponse.CustomModuleValidationError do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :description, 1, type: :string
  field :field_path, 2, type: :string, json_name: "fieldPath"

  field :start, 3,
    proto3_optional: true,
    type:
      Google.Cloud.Securitycentermanagement.V1.ValidateEventThreatDetectionCustomModuleResponse.Position

  field :end, 4,
    proto3_optional: true,
    type:
      Google.Cloud.Securitycentermanagement.V1.ValidateEventThreatDetectionCustomModuleResponse.Position
end

defmodule Google.Cloud.Securitycentermanagement.V1.ValidateEventThreatDetectionCustomModuleResponse.Position do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :line_number, 1, type: :int32, json_name: "lineNumber"
  field :column_number, 2, type: :int32, json_name: "columnNumber"
end

defmodule Google.Cloud.Securitycentermanagement.V1.ValidateEventThreatDetectionCustomModuleResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :errors, 2,
    repeated: true,
    type:
      Google.Cloud.Securitycentermanagement.V1.ValidateEventThreatDetectionCustomModuleResponse.CustomModuleValidationError
end

defmodule Google.Cloud.Securitycentermanagement.V1.GetSecurityCenterServiceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :show_eligible_modules_only, 2, type: :bool, json_name: "showEligibleModulesOnly"
end

defmodule Google.Cloud.Securitycentermanagement.V1.ListSecurityCenterServicesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :show_eligible_modules_only, 4, type: :bool, json_name: "showEligibleModulesOnly"
end

defmodule Google.Cloud.Securitycentermanagement.V1.ListSecurityCenterServicesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :security_center_services, 1,
    repeated: true,
    type: Google.Cloud.Securitycentermanagement.V1.SecurityCenterService,
    json_name: "securityCenterServices"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Securitycentermanagement.V1.UpdateSecurityCenterServiceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :security_center_service, 1,
    type: Google.Cloud.Securitycentermanagement.V1.SecurityCenterService,
    json_name: "securityCenterService",
    deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :validate_only, 3, type: :bool, json_name: "validateOnly", deprecated: false
end

defmodule Google.Cloud.Securitycentermanagement.V1.SecurityCenterManagement.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.securitycentermanagement.v1.SecurityCenterManagement",
    protoc_gen_elixir_version: "0.14.1"

  rpc :ListEffectiveSecurityHealthAnalyticsCustomModules,
      Google.Cloud.Securitycentermanagement.V1.ListEffectiveSecurityHealthAnalyticsCustomModulesRequest,
      Google.Cloud.Securitycentermanagement.V1.ListEffectiveSecurityHealthAnalyticsCustomModulesResponse

  rpc :GetEffectiveSecurityHealthAnalyticsCustomModule,
      Google.Cloud.Securitycentermanagement.V1.GetEffectiveSecurityHealthAnalyticsCustomModuleRequest,
      Google.Cloud.Securitycentermanagement.V1.EffectiveSecurityHealthAnalyticsCustomModule

  rpc :ListSecurityHealthAnalyticsCustomModules,
      Google.Cloud.Securitycentermanagement.V1.ListSecurityHealthAnalyticsCustomModulesRequest,
      Google.Cloud.Securitycentermanagement.V1.ListSecurityHealthAnalyticsCustomModulesResponse

  rpc :ListDescendantSecurityHealthAnalyticsCustomModules,
      Google.Cloud.Securitycentermanagement.V1.ListDescendantSecurityHealthAnalyticsCustomModulesRequest,
      Google.Cloud.Securitycentermanagement.V1.ListDescendantSecurityHealthAnalyticsCustomModulesResponse

  rpc :GetSecurityHealthAnalyticsCustomModule,
      Google.Cloud.Securitycentermanagement.V1.GetSecurityHealthAnalyticsCustomModuleRequest,
      Google.Cloud.Securitycentermanagement.V1.SecurityHealthAnalyticsCustomModule

  rpc :CreateSecurityHealthAnalyticsCustomModule,
      Google.Cloud.Securitycentermanagement.V1.CreateSecurityHealthAnalyticsCustomModuleRequest,
      Google.Cloud.Securitycentermanagement.V1.SecurityHealthAnalyticsCustomModule

  rpc :UpdateSecurityHealthAnalyticsCustomModule,
      Google.Cloud.Securitycentermanagement.V1.UpdateSecurityHealthAnalyticsCustomModuleRequest,
      Google.Cloud.Securitycentermanagement.V1.SecurityHealthAnalyticsCustomModule

  rpc :DeleteSecurityHealthAnalyticsCustomModule,
      Google.Cloud.Securitycentermanagement.V1.DeleteSecurityHealthAnalyticsCustomModuleRequest,
      Google.Protobuf.Empty

  rpc :SimulateSecurityHealthAnalyticsCustomModule,
      Google.Cloud.Securitycentermanagement.V1.SimulateSecurityHealthAnalyticsCustomModuleRequest,
      Google.Cloud.Securitycentermanagement.V1.SimulateSecurityHealthAnalyticsCustomModuleResponse

  rpc :ListEffectiveEventThreatDetectionCustomModules,
      Google.Cloud.Securitycentermanagement.V1.ListEffectiveEventThreatDetectionCustomModulesRequest,
      Google.Cloud.Securitycentermanagement.V1.ListEffectiveEventThreatDetectionCustomModulesResponse

  rpc :GetEffectiveEventThreatDetectionCustomModule,
      Google.Cloud.Securitycentermanagement.V1.GetEffectiveEventThreatDetectionCustomModuleRequest,
      Google.Cloud.Securitycentermanagement.V1.EffectiveEventThreatDetectionCustomModule

  rpc :ListEventThreatDetectionCustomModules,
      Google.Cloud.Securitycentermanagement.V1.ListEventThreatDetectionCustomModulesRequest,
      Google.Cloud.Securitycentermanagement.V1.ListEventThreatDetectionCustomModulesResponse

  rpc :ListDescendantEventThreatDetectionCustomModules,
      Google.Cloud.Securitycentermanagement.V1.ListDescendantEventThreatDetectionCustomModulesRequest,
      Google.Cloud.Securitycentermanagement.V1.ListDescendantEventThreatDetectionCustomModulesResponse

  rpc :GetEventThreatDetectionCustomModule,
      Google.Cloud.Securitycentermanagement.V1.GetEventThreatDetectionCustomModuleRequest,
      Google.Cloud.Securitycentermanagement.V1.EventThreatDetectionCustomModule

  rpc :CreateEventThreatDetectionCustomModule,
      Google.Cloud.Securitycentermanagement.V1.CreateEventThreatDetectionCustomModuleRequest,
      Google.Cloud.Securitycentermanagement.V1.EventThreatDetectionCustomModule

  rpc :UpdateEventThreatDetectionCustomModule,
      Google.Cloud.Securitycentermanagement.V1.UpdateEventThreatDetectionCustomModuleRequest,
      Google.Cloud.Securitycentermanagement.V1.EventThreatDetectionCustomModule

  rpc :DeleteEventThreatDetectionCustomModule,
      Google.Cloud.Securitycentermanagement.V1.DeleteEventThreatDetectionCustomModuleRequest,
      Google.Protobuf.Empty

  rpc :ValidateEventThreatDetectionCustomModule,
      Google.Cloud.Securitycentermanagement.V1.ValidateEventThreatDetectionCustomModuleRequest,
      Google.Cloud.Securitycentermanagement.V1.ValidateEventThreatDetectionCustomModuleResponse

  rpc :GetSecurityCenterService,
      Google.Cloud.Securitycentermanagement.V1.GetSecurityCenterServiceRequest,
      Google.Cloud.Securitycentermanagement.V1.SecurityCenterService

  rpc :ListSecurityCenterServices,
      Google.Cloud.Securitycentermanagement.V1.ListSecurityCenterServicesRequest,
      Google.Cloud.Securitycentermanagement.V1.ListSecurityCenterServicesResponse

  rpc :UpdateSecurityCenterService,
      Google.Cloud.Securitycentermanagement.V1.UpdateSecurityCenterServiceRequest,
      Google.Cloud.Securitycentermanagement.V1.SecurityCenterService
end

defmodule Google.Cloud.Securitycentermanagement.V1.SecurityCenterManagement.Stub do
  @moduledoc false

  use GRPC.Stub,
    service: Google.Cloud.Securitycentermanagement.V1.SecurityCenterManagement.Service
end
