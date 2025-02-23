defmodule Google.Cloud.Modelarmor.V1.FilterMatchState do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :FILTER_MATCH_STATE_UNSPECIFIED, 0
  field :NO_MATCH_FOUND, 1
  field :MATCH_FOUND, 2
end

defmodule Google.Cloud.Modelarmor.V1.FilterExecutionState do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :FILTER_EXECUTION_STATE_UNSPECIFIED, 0
  field :EXECUTION_SUCCESS, 1
  field :EXECUTION_SKIPPED, 2
end

defmodule Google.Cloud.Modelarmor.V1.RaiFilterType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :RAI_FILTER_TYPE_UNSPECIFIED, 0
  field :SEXUALLY_EXPLICIT, 2
  field :HATE_SPEECH, 3
  field :HARASSMENT, 6
  field :DANGEROUS, 17
end

defmodule Google.Cloud.Modelarmor.V1.DetectionConfidenceLevel do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :DETECTION_CONFIDENCE_LEVEL_UNSPECIFIED, 0
  field :LOW_AND_ABOVE, 1
  field :MEDIUM_AND_ABOVE, 2
  field :HIGH, 3
end

defmodule Google.Cloud.Modelarmor.V1.SdpFindingLikelihood do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :SDP_FINDING_LIKELIHOOD_UNSPECIFIED, 0
  field :VERY_UNLIKELY, 1
  field :UNLIKELY, 2
  field :POSSIBLE, 3
  field :LIKELY, 4
  field :VERY_LIKELY, 5
end

defmodule Google.Cloud.Modelarmor.V1.InvocationResult do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :INVOCATION_RESULT_UNSPECIFIED, 0
  field :SUCCESS, 1
  field :PARTIAL, 2
  field :FAILURE, 3
end

defmodule Google.Cloud.Modelarmor.V1.PiAndJailbreakFilterSettings.PiAndJailbreakFilterEnforcement do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :PI_AND_JAILBREAK_FILTER_ENFORCEMENT_UNSPECIFIED, 0
  field :ENABLED, 1
  field :DISABLED, 2
end

defmodule Google.Cloud.Modelarmor.V1.MaliciousUriFilterSettings.MaliciousUriFilterEnforcement do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :MALICIOUS_URI_FILTER_ENFORCEMENT_UNSPECIFIED, 0
  field :ENABLED, 1
  field :DISABLED, 2
end

defmodule Google.Cloud.Modelarmor.V1.SdpBasicConfig.SdpBasicConfigEnforcement do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :SDP_BASIC_CONFIG_ENFORCEMENT_UNSPECIFIED, 0
  field :ENABLED, 1
  field :DISABLED, 2
end

defmodule Google.Cloud.Modelarmor.V1.ByteDataItem.ByteItemType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :BYTE_ITEM_TYPE_UNSPECIFIED, 0
  field :PLAINTEXT_UTF8, 1
  field :PDF, 2
end

defmodule Google.Cloud.Modelarmor.V1.VirusScanFilterResult.ScannedContentType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :SCANNED_CONTENT_TYPE_UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :PLAINTEXT, 2
  field :PDF, 3
end

defmodule Google.Cloud.Modelarmor.V1.VirusDetail.ThreatType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :THREAT_TYPE_UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :VIRUS_OR_WORM, 2
  field :MALICIOUS_PROGRAM, 3
  field :POTENTIALLY_HARMFUL_CONTENT, 4
  field :POTENTIALLY_UNWANTED_CONTENT, 5
end

defmodule Google.Cloud.Modelarmor.V1.MessageItem.MessageType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :MESSAGE_TYPE_UNSPECIFIED, 0
  field :INFO, 1
  field :WARNING, 2
  field :ERROR, 3
end

defmodule Google.Cloud.Modelarmor.V1.Template.TemplateMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :ignore_partial_invocation_failures, 1,
    type: :bool,
    json_name: "ignorePartialInvocationFailures",
    deprecated: false

  field :custom_prompt_safety_error_code, 2,
    type: :int32,
    json_name: "customPromptSafetyErrorCode",
    deprecated: false

  field :custom_prompt_safety_error_message, 3,
    type: :string,
    json_name: "customPromptSafetyErrorMessage",
    deprecated: false

  field :custom_llm_response_safety_error_code, 4,
    type: :int32,
    json_name: "customLlmResponseSafetyErrorCode",
    deprecated: false

  field :custom_llm_response_safety_error_message, 5,
    type: :string,
    json_name: "customLlmResponseSafetyErrorMessage",
    deprecated: false

  field :log_template_operations, 6,
    type: :bool,
    json_name: "logTemplateOperations",
    deprecated: false

  field :log_sanitize_operations, 7,
    type: :bool,
    json_name: "logSanitizeOperations",
    deprecated: false
end

defmodule Google.Cloud.Modelarmor.V1.Template.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Modelarmor.V1.Template do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :create_time, 2,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :labels, 4,
    repeated: true,
    type: Google.Cloud.Modelarmor.V1.Template.LabelsEntry,
    map: true,
    deprecated: false

  field :filter_config, 5,
    type: Google.Cloud.Modelarmor.V1.FilterConfig,
    json_name: "filterConfig",
    deprecated: false

  field :template_metadata, 6,
    type: Google.Cloud.Modelarmor.V1.Template.TemplateMetadata,
    json_name: "templateMetadata",
    deprecated: false
end

defmodule Google.Cloud.Modelarmor.V1.FloorSetting do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :create_time, 2,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :filter_config, 4,
    type: Google.Cloud.Modelarmor.V1.FilterConfig,
    json_name: "filterConfig",
    deprecated: false

  field :enable_floor_setting_enforcement, 5,
    type: :bool,
    json_name: "enableFloorSettingEnforcement",
    deprecated: false
end

defmodule Google.Cloud.Modelarmor.V1.ListTemplatesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
end

defmodule Google.Cloud.Modelarmor.V1.ListTemplatesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :templates, 1, repeated: true, type: Google.Cloud.Modelarmor.V1.Template
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Modelarmor.V1.GetTemplateRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Modelarmor.V1.CreateTemplateRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :template_id, 2, type: :string, json_name: "templateId", deprecated: false
  field :template, 3, type: Google.Cloud.Modelarmor.V1.Template, deprecated: false
  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Modelarmor.V1.UpdateTemplateRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :update_mask, 1,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :template, 2, type: Google.Cloud.Modelarmor.V1.Template, deprecated: false
  field :request_id, 3, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Modelarmor.V1.DeleteTemplateRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Modelarmor.V1.GetFloorSettingRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Modelarmor.V1.UpdateFloorSettingRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :floor_setting, 1,
    type: Google.Cloud.Modelarmor.V1.FloorSetting,
    json_name: "floorSetting",
    deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Cloud.Modelarmor.V1.FilterConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :rai_settings, 1,
    type: Google.Cloud.Modelarmor.V1.RaiFilterSettings,
    json_name: "raiSettings",
    deprecated: false

  field :sdp_settings, 2,
    type: Google.Cloud.Modelarmor.V1.SdpFilterSettings,
    json_name: "sdpSettings",
    deprecated: false

  field :pi_and_jailbreak_filter_settings, 3,
    type: Google.Cloud.Modelarmor.V1.PiAndJailbreakFilterSettings,
    json_name: "piAndJailbreakFilterSettings",
    deprecated: false

  field :malicious_uri_filter_settings, 4,
    type: Google.Cloud.Modelarmor.V1.MaliciousUriFilterSettings,
    json_name: "maliciousUriFilterSettings",
    deprecated: false
end

defmodule Google.Cloud.Modelarmor.V1.PiAndJailbreakFilterSettings do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :filter_enforcement, 1,
    type: Google.Cloud.Modelarmor.V1.PiAndJailbreakFilterSettings.PiAndJailbreakFilterEnforcement,
    json_name: "filterEnforcement",
    enum: true,
    deprecated: false

  field :confidence_level, 3,
    type: Google.Cloud.Modelarmor.V1.DetectionConfidenceLevel,
    json_name: "confidenceLevel",
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Modelarmor.V1.MaliciousUriFilterSettings do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :filter_enforcement, 1,
    type: Google.Cloud.Modelarmor.V1.MaliciousUriFilterSettings.MaliciousUriFilterEnforcement,
    json_name: "filterEnforcement",
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Modelarmor.V1.RaiFilterSettings.RaiFilter do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :filter_type, 1,
    type: Google.Cloud.Modelarmor.V1.RaiFilterType,
    json_name: "filterType",
    enum: true,
    deprecated: false

  field :confidence_level, 2,
    type: Google.Cloud.Modelarmor.V1.DetectionConfidenceLevel,
    json_name: "confidenceLevel",
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Modelarmor.V1.RaiFilterSettings do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :rai_filters, 1,
    repeated: true,
    type: Google.Cloud.Modelarmor.V1.RaiFilterSettings.RaiFilter,
    json_name: "raiFilters",
    deprecated: false
end

defmodule Google.Cloud.Modelarmor.V1.SdpFilterSettings do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :sdp_configuration, 0

  field :basic_config, 1,
    type: Google.Cloud.Modelarmor.V1.SdpBasicConfig,
    json_name: "basicConfig",
    oneof: 0,
    deprecated: false

  field :advanced_config, 2,
    type: Google.Cloud.Modelarmor.V1.SdpAdvancedConfig,
    json_name: "advancedConfig",
    oneof: 0,
    deprecated: false
end

defmodule Google.Cloud.Modelarmor.V1.SdpBasicConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :filter_enforcement, 3,
    type: Google.Cloud.Modelarmor.V1.SdpBasicConfig.SdpBasicConfigEnforcement,
    json_name: "filterEnforcement",
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Modelarmor.V1.SdpAdvancedConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :inspect_template, 1, type: :string, json_name: "inspectTemplate", deprecated: false
  field :deidentify_template, 2, type: :string, json_name: "deidentifyTemplate", deprecated: false
end

defmodule Google.Cloud.Modelarmor.V1.SanitizeUserPromptRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :user_prompt_data, 2,
    type: Google.Cloud.Modelarmor.V1.DataItem,
    json_name: "userPromptData",
    deprecated: false
end

defmodule Google.Cloud.Modelarmor.V1.SanitizeModelResponseRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :model_response_data, 2,
    type: Google.Cloud.Modelarmor.V1.DataItem,
    json_name: "modelResponseData",
    deprecated: false

  field :user_prompt, 4, type: :string, json_name: "userPrompt", deprecated: false
end

defmodule Google.Cloud.Modelarmor.V1.SanitizeUserPromptResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :sanitization_result, 1,
    type: Google.Cloud.Modelarmor.V1.SanitizationResult,
    json_name: "sanitizationResult",
    deprecated: false
end

defmodule Google.Cloud.Modelarmor.V1.SanitizeModelResponseResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :sanitization_result, 1,
    type: Google.Cloud.Modelarmor.V1.SanitizationResult,
    json_name: "sanitizationResult",
    deprecated: false
end

defmodule Google.Cloud.Modelarmor.V1.SanitizationResult.SanitizationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :error_code, 1, type: :int64, json_name: "errorCode"
  field :error_message, 2, type: :string, json_name: "errorMessage"
end

defmodule Google.Cloud.Modelarmor.V1.SanitizationResult.FilterResultsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Modelarmor.V1.FilterResult
end

defmodule Google.Cloud.Modelarmor.V1.SanitizationResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :filter_match_state, 1,
    type: Google.Cloud.Modelarmor.V1.FilterMatchState,
    json_name: "filterMatchState",
    enum: true,
    deprecated: false

  field :filter_results, 2,
    repeated: true,
    type: Google.Cloud.Modelarmor.V1.SanitizationResult.FilterResultsEntry,
    json_name: "filterResults",
    map: true,
    deprecated: false

  field :invocation_result, 4,
    type: Google.Cloud.Modelarmor.V1.InvocationResult,
    json_name: "invocationResult",
    enum: true,
    deprecated: false

  field :sanitization_metadata, 3,
    type: Google.Cloud.Modelarmor.V1.SanitizationResult.SanitizationMetadata,
    json_name: "sanitizationMetadata",
    deprecated: false
end

defmodule Google.Cloud.Modelarmor.V1.FilterResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :filter_result, 0

  field :rai_filter_result, 1,
    type: Google.Cloud.Modelarmor.V1.RaiFilterResult,
    json_name: "raiFilterResult",
    oneof: 0

  field :sdp_filter_result, 2,
    type: Google.Cloud.Modelarmor.V1.SdpFilterResult,
    json_name: "sdpFilterResult",
    oneof: 0

  field :pi_and_jailbreak_filter_result, 3,
    type: Google.Cloud.Modelarmor.V1.PiAndJailbreakFilterResult,
    json_name: "piAndJailbreakFilterResult",
    oneof: 0

  field :malicious_uri_filter_result, 4,
    type: Google.Cloud.Modelarmor.V1.MaliciousUriFilterResult,
    json_name: "maliciousUriFilterResult",
    oneof: 0

  field :csam_filter_filter_result, 5,
    type: Google.Cloud.Modelarmor.V1.CsamFilterResult,
    json_name: "csamFilterFilterResult",
    oneof: 0

  field :virus_scan_filter_result, 6,
    type: Google.Cloud.Modelarmor.V1.VirusScanFilterResult,
    json_name: "virusScanFilterResult",
    oneof: 0
end

defmodule Google.Cloud.Modelarmor.V1.RaiFilterResult.RaiFilterTypeResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :filter_type, 1,
    type: Google.Cloud.Modelarmor.V1.RaiFilterType,
    json_name: "filterType",
    enum: true

  field :confidence_level, 2,
    type: Google.Cloud.Modelarmor.V1.DetectionConfidenceLevel,
    json_name: "confidenceLevel",
    enum: true

  field :match_state, 3,
    type: Google.Cloud.Modelarmor.V1.FilterMatchState,
    json_name: "matchState",
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Modelarmor.V1.RaiFilterResult.RaiFilterTypeResultsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Modelarmor.V1.RaiFilterResult.RaiFilterTypeResult
end

defmodule Google.Cloud.Modelarmor.V1.RaiFilterResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :execution_state, 1,
    type: Google.Cloud.Modelarmor.V1.FilterExecutionState,
    json_name: "executionState",
    enum: true,
    deprecated: false

  field :message_items, 2,
    repeated: true,
    type: Google.Cloud.Modelarmor.V1.MessageItem,
    json_name: "messageItems"

  field :match_state, 3,
    type: Google.Cloud.Modelarmor.V1.FilterMatchState,
    json_name: "matchState",
    enum: true,
    deprecated: false

  field :rai_filter_type_results, 4,
    repeated: true,
    type: Google.Cloud.Modelarmor.V1.RaiFilterResult.RaiFilterTypeResultsEntry,
    json_name: "raiFilterTypeResults",
    map: true
end

defmodule Google.Cloud.Modelarmor.V1.SdpFilterResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :result, 0

  field :inspect_result, 1,
    type: Google.Cloud.Modelarmor.V1.SdpInspectResult,
    json_name: "inspectResult",
    oneof: 0

  field :deidentify_result, 2,
    type: Google.Cloud.Modelarmor.V1.SdpDeidentifyResult,
    json_name: "deidentifyResult",
    oneof: 0
end

defmodule Google.Cloud.Modelarmor.V1.SdpInspectResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :execution_state, 1,
    type: Google.Cloud.Modelarmor.V1.FilterExecutionState,
    json_name: "executionState",
    enum: true,
    deprecated: false

  field :message_items, 2,
    repeated: true,
    type: Google.Cloud.Modelarmor.V1.MessageItem,
    json_name: "messageItems"

  field :match_state, 3,
    type: Google.Cloud.Modelarmor.V1.FilterMatchState,
    json_name: "matchState",
    enum: true,
    deprecated: false

  field :findings, 4, repeated: true, type: Google.Cloud.Modelarmor.V1.SdpFinding
  field :findings_truncated, 5, type: :bool, json_name: "findingsTruncated"
end

defmodule Google.Cloud.Modelarmor.V1.DataItem do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :data_item, 0

  field :text, 1, type: :string, oneof: 0

  field :byte_item, 2,
    type: Google.Cloud.Modelarmor.V1.ByteDataItem,
    json_name: "byteItem",
    oneof: 0
end

defmodule Google.Cloud.Modelarmor.V1.ByteDataItem do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :byte_data_type, 1,
    type: Google.Cloud.Modelarmor.V1.ByteDataItem.ByteItemType,
    json_name: "byteDataType",
    enum: true,
    deprecated: false

  field :byte_data, 2, type: :bytes, json_name: "byteData", deprecated: false
end

defmodule Google.Cloud.Modelarmor.V1.SdpDeidentifyResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :execution_state, 1,
    type: Google.Cloud.Modelarmor.V1.FilterExecutionState,
    json_name: "executionState",
    enum: true,
    deprecated: false

  field :message_items, 2,
    repeated: true,
    type: Google.Cloud.Modelarmor.V1.MessageItem,
    json_name: "messageItems"

  field :match_state, 3,
    type: Google.Cloud.Modelarmor.V1.FilterMatchState,
    json_name: "matchState",
    enum: true,
    deprecated: false

  field :data, 4, type: Google.Cloud.Modelarmor.V1.DataItem
  field :transformed_bytes, 5, type: :int64, json_name: "transformedBytes"
end

defmodule Google.Cloud.Modelarmor.V1.SdpFinding.SdpFindingLocation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :byte_range, 1, type: Google.Cloud.Modelarmor.V1.RangeInfo, json_name: "byteRange"

  field :codepoint_range, 2,
    type: Google.Cloud.Modelarmor.V1.RangeInfo,
    json_name: "codepointRange"
end

defmodule Google.Cloud.Modelarmor.V1.SdpFinding do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :info_type, 1, type: :string, json_name: "infoType"
  field :likelihood, 2, type: Google.Cloud.Modelarmor.V1.SdpFindingLikelihood, enum: true
  field :location, 3, type: Google.Cloud.Modelarmor.V1.SdpFinding.SdpFindingLocation
end

defmodule Google.Cloud.Modelarmor.V1.PiAndJailbreakFilterResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :execution_state, 1,
    type: Google.Cloud.Modelarmor.V1.FilterExecutionState,
    json_name: "executionState",
    enum: true,
    deprecated: false

  field :message_items, 2,
    repeated: true,
    type: Google.Cloud.Modelarmor.V1.MessageItem,
    json_name: "messageItems"

  field :match_state, 3,
    type: Google.Cloud.Modelarmor.V1.FilterMatchState,
    json_name: "matchState",
    enum: true,
    deprecated: false

  field :confidence_level, 5,
    type: Google.Cloud.Modelarmor.V1.DetectionConfidenceLevel,
    json_name: "confidenceLevel",
    enum: true
end

defmodule Google.Cloud.Modelarmor.V1.MaliciousUriFilterResult.MaliciousUriMatchedItem do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :uri, 1, type: :string
  field :locations, 2, repeated: true, type: Google.Cloud.Modelarmor.V1.RangeInfo
end

defmodule Google.Cloud.Modelarmor.V1.MaliciousUriFilterResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :execution_state, 1,
    type: Google.Cloud.Modelarmor.V1.FilterExecutionState,
    json_name: "executionState",
    enum: true,
    deprecated: false

  field :message_items, 2,
    repeated: true,
    type: Google.Cloud.Modelarmor.V1.MessageItem,
    json_name: "messageItems"

  field :match_state, 3,
    type: Google.Cloud.Modelarmor.V1.FilterMatchState,
    json_name: "matchState",
    enum: true,
    deprecated: false

  field :malicious_uri_matched_items, 4,
    repeated: true,
    type: Google.Cloud.Modelarmor.V1.MaliciousUriFilterResult.MaliciousUriMatchedItem,
    json_name: "maliciousUriMatchedItems"
end

defmodule Google.Cloud.Modelarmor.V1.VirusScanFilterResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :execution_state, 1,
    type: Google.Cloud.Modelarmor.V1.FilterExecutionState,
    json_name: "executionState",
    enum: true,
    deprecated: false

  field :message_items, 2,
    repeated: true,
    type: Google.Cloud.Modelarmor.V1.MessageItem,
    json_name: "messageItems"

  field :match_state, 3,
    type: Google.Cloud.Modelarmor.V1.FilterMatchState,
    json_name: "matchState",
    enum: true,
    deprecated: false

  field :scanned_content_type, 4,
    type: Google.Cloud.Modelarmor.V1.VirusScanFilterResult.ScannedContentType,
    json_name: "scannedContentType",
    enum: true

  field :scanned_size, 5, proto3_optional: true, type: :int64, json_name: "scannedSize"

  field :virus_details, 6,
    repeated: true,
    type: Google.Cloud.Modelarmor.V1.VirusDetail,
    json_name: "virusDetails"
end

defmodule Google.Cloud.Modelarmor.V1.VirusDetail do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :vendor, 1, type: :string
  field :names, 2, repeated: true, type: :string

  field :threat_type, 3,
    type: Google.Cloud.Modelarmor.V1.VirusDetail.ThreatType,
    json_name: "threatType",
    enum: true
end

defmodule Google.Cloud.Modelarmor.V1.CsamFilterResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :execution_state, 1,
    type: Google.Cloud.Modelarmor.V1.FilterExecutionState,
    json_name: "executionState",
    enum: true,
    deprecated: false

  field :message_items, 2,
    repeated: true,
    type: Google.Cloud.Modelarmor.V1.MessageItem,
    json_name: "messageItems"

  field :match_state, 3,
    type: Google.Cloud.Modelarmor.V1.FilterMatchState,
    json_name: "matchState",
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Modelarmor.V1.MessageItem do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :message_type, 1,
    type: Google.Cloud.Modelarmor.V1.MessageItem.MessageType,
    json_name: "messageType",
    enum: true

  field :message, 2, type: :string
end

defmodule Google.Cloud.Modelarmor.V1.RangeInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :start, 1, proto3_optional: true, type: :int64
  field :end, 2, proto3_optional: true, type: :int64
end

defmodule Google.Cloud.Modelarmor.V1.ModelArmor.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.modelarmor.v1.ModelArmor",
    protoc_gen_elixir_version: "0.14.1"

  rpc :ListTemplates,
      Google.Cloud.Modelarmor.V1.ListTemplatesRequest,
      Google.Cloud.Modelarmor.V1.ListTemplatesResponse

  rpc :GetTemplate,
      Google.Cloud.Modelarmor.V1.GetTemplateRequest,
      Google.Cloud.Modelarmor.V1.Template

  rpc :CreateTemplate,
      Google.Cloud.Modelarmor.V1.CreateTemplateRequest,
      Google.Cloud.Modelarmor.V1.Template

  rpc :UpdateTemplate,
      Google.Cloud.Modelarmor.V1.UpdateTemplateRequest,
      Google.Cloud.Modelarmor.V1.Template

  rpc :DeleteTemplate, Google.Cloud.Modelarmor.V1.DeleteTemplateRequest, Google.Protobuf.Empty

  rpc :GetFloorSetting,
      Google.Cloud.Modelarmor.V1.GetFloorSettingRequest,
      Google.Cloud.Modelarmor.V1.FloorSetting

  rpc :UpdateFloorSetting,
      Google.Cloud.Modelarmor.V1.UpdateFloorSettingRequest,
      Google.Cloud.Modelarmor.V1.FloorSetting

  rpc :SanitizeUserPrompt,
      Google.Cloud.Modelarmor.V1.SanitizeUserPromptRequest,
      Google.Cloud.Modelarmor.V1.SanitizeUserPromptResponse

  rpc :SanitizeModelResponse,
      Google.Cloud.Modelarmor.V1.SanitizeModelResponseRequest,
      Google.Cloud.Modelarmor.V1.SanitizeModelResponseResponse
end

defmodule Google.Cloud.Modelarmor.V1.ModelArmor.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Modelarmor.V1.ModelArmor.Service
end
