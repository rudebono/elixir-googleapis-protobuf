defmodule Google.Cloud.Cloudsecuritycompliance.V1.EnforcementMode do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :ENFORCEMENT_MODE_UNSPECIFIED, 0
  field :PREVENTIVE, 1
  field :DETECTIVE, 2
  field :AUDIT, 3
end

defmodule Google.Cloud.Cloudsecuritycompliance.V1.FrameworkCategory do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :FRAMEWORK_CATEGORY_UNSPECIFIED, 0
  field :INDUSTRY_DEFINED_STANDARD, 1
  field :ASSURED_WORKLOADS, 2
  field :DATA_SECURITY, 3
  field :GOOGLE_BEST_PRACTICES, 4
  field :CUSTOM_FRAMEWORK, 5
end

defmodule Google.Cloud.Cloudsecuritycompliance.V1.CloudControlCategory do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :CLOUD_CONTROL_CATEGORY_UNSPECIFIED, 0
  field :CC_CATEGORY_INFRASTRUCTURE, 1
  field :CC_CATEGORY_ARTIFICIAL_INTELLIGENCE, 2
  field :CC_CATEGORY_PHYSICAL_SECURITY, 3
  field :CC_CATEGORY_DATA_SECURITY, 4
  field :CC_CATEGORY_NETWORK_SECURITY, 5
  field :CC_CATEGORY_INCIDENT_MANAGEMENT, 6
  field :CC_CATEGORY_IDENTITY_AND_ACCESS_MANAGEMENT, 7
  field :CC_CATEGORY_ENCRYPTION, 8
  field :CC_CATEGORY_LOGS_MANAGEMENT_AND_INFRASTRUCTURE, 9
  field :CC_CATEGORY_HR_ADMIN_AND_PROCESSES, 10
  field :CC_CATEGORY_THIRD_PARTY_AND_SUB_PROCESSOR_MANAGEMENT, 11
  field :CC_CATEGORY_LEGAL_AND_DISCLOSURES, 12
  field :CC_CATEGORY_VULNERABILITY_MANAGEMENT, 13
  field :CC_CATEGORY_PRIVACY, 14
  field :CC_CATEGORY_BCDR, 15
end

defmodule Google.Cloud.Cloudsecuritycompliance.V1.CloudProvider do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :CLOUD_PROVIDER_UNSPECIFIED, 0
  field :AWS, 1
  field :AZURE, 2
  field :GCP, 3
end

defmodule Google.Cloud.Cloudsecuritycompliance.V1.Severity do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :SEVERITY_UNSPECIFIED, 0
  field :CRITICAL, 1
  field :HIGH, 2
  field :MEDIUM, 3
  field :LOW, 4
end

defmodule Google.Cloud.Cloudsecuritycompliance.V1.RuleActionType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :RULE_ACTION_TYPE_UNSPECIFIED, 0
  field :RULE_ACTION_TYPE_PREVENTIVE, 1
  field :RULE_ACTION_TYPE_DETECTIVE, 2
  field :RULE_ACTION_TYPE_AUDIT, 3
end

defmodule Google.Cloud.Cloudsecuritycompliance.V1.TargetResourceType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :TARGET_RESOURCE_TYPE_UNSPECIFIED, 0
  field :TARGET_RESOURCE_CRM_TYPE_ORG, 1
  field :TARGET_RESOURCE_CRM_TYPE_FOLDER, 2
  field :TARGET_RESOURCE_CRM_TYPE_PROJECT, 3
  field :TARGET_RESOURCE_TYPE_APPLICATION, 4
end

defmodule Google.Cloud.Cloudsecuritycompliance.V1.Framework.FrameworkType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :FRAMEWORK_TYPE_UNSPECIFIED, 0
  field :BUILT_IN, 1
  field :CUSTOM, 2
end

defmodule Google.Cloud.Cloudsecuritycompliance.V1.ParameterSpec.ValueType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :VALUE_TYPE_UNSPECIFIED, 0
  field :STRING, 3
  field :BOOLEAN, 4
  field :STRINGLIST, 5
  field :NUMBER, 6
  field :ONEOF, 7
end

defmodule Google.Cloud.Cloudsecuritycompliance.V1.Framework do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :major_revision_id, 2, type: :int64, json_name: "majorRevisionId", deprecated: false
  field :display_name, 4, type: :string, json_name: "displayName", deprecated: false
  field :description, 5, type: :string, deprecated: false

  field :type, 6,
    type: Google.Cloud.Cloudsecuritycompliance.V1.Framework.FrameworkType,
    enum: true,
    deprecated: false

  field :cloud_control_details, 8,
    repeated: true,
    type: Google.Cloud.Cloudsecuritycompliance.V1.CloudControlDetails,
    json_name: "cloudControlDetails",
    deprecated: false

  field :category, 9,
    repeated: true,
    type: Google.Cloud.Cloudsecuritycompliance.V1.FrameworkCategory,
    enum: true,
    deprecated: false

  field :supported_cloud_providers, 10,
    repeated: true,
    type: Google.Cloud.Cloudsecuritycompliance.V1.CloudProvider,
    json_name: "supportedCloudProviders",
    enum: true,
    deprecated: false

  field :supported_target_resource_types, 11,
    repeated: true,
    type: Google.Cloud.Cloudsecuritycompliance.V1.TargetResourceType,
    json_name: "supportedTargetResourceTypes",
    enum: true,
    deprecated: false

  field :supported_enforcement_modes, 13,
    repeated: true,
    type: Google.Cloud.Cloudsecuritycompliance.V1.EnforcementMode,
    json_name: "supportedEnforcementModes",
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Cloudsecuritycompliance.V1.CloudControlDetails do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :major_revision_id, 2, type: :int64, json_name: "majorRevisionId", deprecated: false

  field :parameters, 4,
    repeated: true,
    type: Google.Cloud.Cloudsecuritycompliance.V1.Parameter,
    deprecated: false
end

defmodule Google.Cloud.Cloudsecuritycompliance.V1.FrameworkReference do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :framework, 1, type: :string, deprecated: false

  field :major_revision_id, 2,
    proto3_optional: true,
    type: :int64,
    json_name: "majorRevisionId",
    deprecated: false
end

defmodule Google.Cloud.Cloudsecuritycompliance.V1.Parameter do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :parameter_value, 2,
    type: Google.Cloud.Cloudsecuritycompliance.V1.ParamValue,
    json_name: "parameterValue",
    deprecated: false
end

defmodule Google.Cloud.Cloudsecuritycompliance.V1.CloudControl do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :major_revision_id, 2, type: :int64, json_name: "majorRevisionId", deprecated: false
  field :description, 4, type: :string, deprecated: false
  field :display_name, 5, type: :string, json_name: "displayName", deprecated: false

  field :supported_enforcement_modes, 7,
    repeated: true,
    type: Google.Cloud.Cloudsecuritycompliance.V1.EnforcementMode,
    json_name: "supportedEnforcementModes",
    enum: true,
    deprecated: false

  field :parameter_spec, 8,
    repeated: true,
    type: Google.Cloud.Cloudsecuritycompliance.V1.ParameterSpec,
    json_name: "parameterSpec",
    deprecated: false

  field :rules, 9,
    repeated: true,
    type: Google.Cloud.Cloudsecuritycompliance.V1.Rule,
    deprecated: false

  field :severity, 11,
    type: Google.Cloud.Cloudsecuritycompliance.V1.Severity,
    enum: true,
    deprecated: false

  field :finding_category, 12, type: :string, json_name: "findingCategory", deprecated: false

  field :supported_cloud_providers, 13,
    repeated: true,
    type: Google.Cloud.Cloudsecuritycompliance.V1.CloudProvider,
    json_name: "supportedCloudProviders",
    enum: true,
    deprecated: false

  field :related_frameworks, 14,
    repeated: true,
    type: :string,
    json_name: "relatedFrameworks",
    deprecated: false

  field :remediation_steps, 15, type: :string, json_name: "remediationSteps", deprecated: false

  field :categories, 16,
    repeated: true,
    type: Google.Cloud.Cloudsecuritycompliance.V1.CloudControlCategory,
    enum: true,
    deprecated: false

  field :create_time, 17,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :supported_target_resource_types, 18,
    repeated: true,
    type: Google.Cloud.Cloudsecuritycompliance.V1.TargetResourceType,
    json_name: "supportedTargetResourceTypes",
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Cloudsecuritycompliance.V1.ParameterSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :display_name, 2, type: :string, json_name: "displayName", deprecated: false
  field :description, 3, type: :string, deprecated: false
  field :is_required, 4, type: :bool, json_name: "isRequired", deprecated: false

  field :value_type, 5,
    type: Google.Cloud.Cloudsecuritycompliance.V1.ParameterSpec.ValueType,
    json_name: "valueType",
    enum: true,
    deprecated: false

  field :default_value, 6,
    type: Google.Cloud.Cloudsecuritycompliance.V1.ParamValue,
    json_name: "defaultValue",
    deprecated: false

  field :substitution_rules, 7,
    repeated: true,
    type: Google.Cloud.Cloudsecuritycompliance.V1.ParameterSubstitutionRule,
    json_name: "substitutionRules",
    deprecated: false

  field :sub_parameters, 8,
    repeated: true,
    type: Google.Cloud.Cloudsecuritycompliance.V1.ParameterSpec,
    json_name: "subParameters",
    deprecated: false

  field :validation, 9,
    type: Google.Cloud.Cloudsecuritycompliance.V1.Validation,
    deprecated: false
end

defmodule Google.Cloud.Cloudsecuritycompliance.V1.Validation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :constraint, 0

  field :allowed_values, 1,
    type: Google.Cloud.Cloudsecuritycompliance.V1.AllowedValues,
    json_name: "allowedValues",
    oneof: 0

  field :int_range, 2,
    type: Google.Cloud.Cloudsecuritycompliance.V1.IntRange,
    json_name: "intRange",
    oneof: 0

  field :regexp_pattern, 3,
    type: Google.Cloud.Cloudsecuritycompliance.V1.RegexpPattern,
    json_name: "regexpPattern",
    oneof: 0
end

defmodule Google.Cloud.Cloudsecuritycompliance.V1.AllowedValues do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :values, 1,
    repeated: true,
    type: Google.Cloud.Cloudsecuritycompliance.V1.ParamValue,
    deprecated: false
end

defmodule Google.Cloud.Cloudsecuritycompliance.V1.RegexpPattern do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :pattern, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Cloudsecuritycompliance.V1.IntRange do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :min, 1, type: :int64, deprecated: false
  field :max, 2, type: :int64, deprecated: false
end

defmodule Google.Cloud.Cloudsecuritycompliance.V1.StringList do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :values, 1, repeated: true, type: :string, deprecated: false
end

defmodule Google.Cloud.Cloudsecuritycompliance.V1.ParamValue do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :kind, 0

  field :string_value, 3, type: :string, json_name: "stringValue", oneof: 0
  field :bool_value, 4, type: :bool, json_name: "boolValue", oneof: 0

  field :string_list_value, 5,
    type: Google.Cloud.Cloudsecuritycompliance.V1.StringList,
    json_name: "stringListValue",
    oneof: 0

  field :number_value, 6, type: :double, json_name: "numberValue", oneof: 0

  field :oneof_value, 7,
    type: Google.Cloud.Cloudsecuritycompliance.V1.Parameter,
    json_name: "oneofValue",
    oneof: 0
end

defmodule Google.Cloud.Cloudsecuritycompliance.V1.ParameterSubstitutionRule do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :substitution_type, 0

  field :placeholder_substitution_rule, 1,
    type: Google.Cloud.Cloudsecuritycompliance.V1.PlaceholderSubstitutionRule,
    json_name: "placeholderSubstitutionRule",
    oneof: 0

  field :attribute_substitution_rule, 2,
    type: Google.Cloud.Cloudsecuritycompliance.V1.AttributeSubstitutionRule,
    json_name: "attributeSubstitutionRule",
    oneof: 0
end

defmodule Google.Cloud.Cloudsecuritycompliance.V1.AttributeSubstitutionRule do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :attribute, 1, type: :string
end

defmodule Google.Cloud.Cloudsecuritycompliance.V1.PlaceholderSubstitutionRule do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :attribute, 1, type: :string
end

defmodule Google.Cloud.Cloudsecuritycompliance.V1.Rule do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :implementation, 0

  field :cel_expression, 1,
    type: Google.Cloud.Cloudsecuritycompliance.V1.CELExpression,
    json_name: "celExpression",
    oneof: 0

  field :description, 10, type: :string, deprecated: false

  field :rule_action_types, 16,
    repeated: true,
    type: Google.Cloud.Cloudsecuritycompliance.V1.RuleActionType,
    json_name: "ruleActionTypes",
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Cloudsecuritycompliance.V1.CELExpression do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :criteria, 0

  field :resource_types_values, 3,
    type: Google.Cloud.Cloudsecuritycompliance.V1.StringList,
    json_name: "resourceTypesValues",
    oneof: 0

  field :expression, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Cloudsecuritycompliance.V1.OperationMetadata do
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
end
