defmodule Google.Cloud.Apihub.V1.LintState do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :LINT_STATE_UNSPECIFIED, 0
  field :LINT_STATE_SUCCESS, 1
  field :LINT_STATE_ERROR, 2
end

defmodule Google.Cloud.Apihub.V1.Linter do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :LINTER_UNSPECIFIED, 0
  field :SPECTRAL, 1
  field :OTHER, 2
end

defmodule Google.Cloud.Apihub.V1.Severity do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :SEVERITY_UNSPECIFIED, 0
  field :SEVERITY_ERROR, 1
  field :SEVERITY_WARNING, 2
  field :SEVERITY_INFO, 3
  field :SEVERITY_HINT, 4
end

defmodule Google.Cloud.Apihub.V1.Spec.ParsingMode do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :PARSING_MODE_UNSPECIFIED, 0
  field :RELAXED, 1
  field :STRICT, 2
end

defmodule Google.Cloud.Apihub.V1.Definition.Type do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :TYPE_UNSPECIFIED, 0
  field :SCHEMA, 1
end

defmodule Google.Cloud.Apihub.V1.Attribute.DefinitionType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :DEFINITION_TYPE_UNSPECIFIED, 0
  field :SYSTEM_DEFINED, 1
  field :USER_DEFINED, 2
end

defmodule Google.Cloud.Apihub.V1.Attribute.Scope do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :SCOPE_UNSPECIFIED, 0
  field :API, 1
  field :VERSION, 2
  field :SPEC, 3
  field :API_OPERATION, 4
  field :DEPLOYMENT, 5
  field :DEPENDENCY, 6
  field :DEFINITION, 7
  field :EXTERNAL_API, 8
  field :PLUGIN, 9
end

defmodule Google.Cloud.Apihub.V1.Attribute.DataType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :DATA_TYPE_UNSPECIFIED, 0
  field :ENUM, 1
  field :JSON, 2
  field :STRING, 3
end

defmodule Google.Cloud.Apihub.V1.OpenApiSpecDetails.Format do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :FORMAT_UNSPECIFIED, 0
  field :OPEN_API_SPEC_2_0, 1
  field :OPEN_API_SPEC_3_0, 2
  field :OPEN_API_SPEC_3_1, 3
end

defmodule Google.Cloud.Apihub.V1.HttpOperation.Method do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :METHOD_UNSPECIFIED, 0
  field :GET, 1
  field :PUT, 2
  field :POST, 3
  field :DELETE, 4
  field :OPTIONS, 5
  field :HEAD, 6
  field :PATCH, 7
  field :TRACE, 8
end

defmodule Google.Cloud.Apihub.V1.Dependency.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :PROPOSED, 1
  field :VALIDATED, 2
end

defmodule Google.Cloud.Apihub.V1.Dependency.DiscoveryMode do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :DISCOVERY_MODE_UNSPECIFIED, 0
  field :MANUAL, 1
end

defmodule Google.Cloud.Apihub.V1.DependencyErrorDetail.Error do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :ERROR_UNSPECIFIED, 0
  field :SUPPLIER_NOT_FOUND, 1
  field :SUPPLIER_RECREATED, 2
end

defmodule Google.Cloud.Apihub.V1.ApiHubInstance.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :INACTIVE, 1
  field :CREATING, 2
  field :ACTIVE, 3
  field :UPDATING, 4
  field :DELETING, 5
  field :FAILED, 6
end

defmodule Google.Cloud.Apihub.V1.Api.AttributesEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Apihub.V1.AttributeValues
end

defmodule Google.Cloud.Apihub.V1.Api do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :display_name, 2, type: :string, json_name: "displayName", deprecated: false
  field :description, 3, type: :string, deprecated: false
  field :documentation, 4, type: Google.Cloud.Apihub.V1.Documentation, deprecated: false
  field :owner, 5, type: Google.Cloud.Apihub.V1.Owner, deprecated: false
  field :versions, 6, repeated: true, type: :string, deprecated: false

  field :create_time, 7,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 8,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :target_user, 9,
    type: Google.Cloud.Apihub.V1.AttributeValues,
    json_name: "targetUser",
    deprecated: false

  field :team, 10, type: Google.Cloud.Apihub.V1.AttributeValues, deprecated: false

  field :business_unit, 11,
    type: Google.Cloud.Apihub.V1.AttributeValues,
    json_name: "businessUnit",
    deprecated: false

  field :maturity_level, 12,
    type: Google.Cloud.Apihub.V1.AttributeValues,
    json_name: "maturityLevel",
    deprecated: false

  field :attributes, 13,
    repeated: true,
    type: Google.Cloud.Apihub.V1.Api.AttributesEntry,
    map: true,
    deprecated: false

  field :api_style, 14,
    type: Google.Cloud.Apihub.V1.AttributeValues,
    json_name: "apiStyle",
    deprecated: false

  field :selected_version, 15, type: :string, json_name: "selectedVersion", deprecated: false
end

defmodule Google.Cloud.Apihub.V1.Version.AttributesEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Apihub.V1.AttributeValues
end

defmodule Google.Cloud.Apihub.V1.Version do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :display_name, 2, type: :string, json_name: "displayName", deprecated: false
  field :description, 3, type: :string, deprecated: false
  field :documentation, 4, type: Google.Cloud.Apihub.V1.Documentation, deprecated: false
  field :specs, 5, repeated: true, type: :string, deprecated: false

  field :api_operations, 6,
    repeated: true,
    type: :string,
    json_name: "apiOperations",
    deprecated: false

  field :definitions, 7, repeated: true, type: :string, deprecated: false
  field :deployments, 8, repeated: true, type: :string, deprecated: false

  field :create_time, 9,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 10,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :lifecycle, 11, type: Google.Cloud.Apihub.V1.AttributeValues, deprecated: false
  field :compliance, 12, type: Google.Cloud.Apihub.V1.AttributeValues, deprecated: false
  field :accreditation, 13, type: Google.Cloud.Apihub.V1.AttributeValues, deprecated: false

  field :attributes, 14,
    repeated: true,
    type: Google.Cloud.Apihub.V1.Version.AttributesEntry,
    map: true,
    deprecated: false

  field :selected_deployment, 16,
    type: :string,
    json_name: "selectedDeployment",
    deprecated: false
end

defmodule Google.Cloud.Apihub.V1.Spec.AttributesEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Apihub.V1.AttributeValues
end

defmodule Google.Cloud.Apihub.V1.Spec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :display_name, 2, type: :string, json_name: "displayName", deprecated: false

  field :spec_type, 3,
    type: Google.Cloud.Apihub.V1.AttributeValues,
    json_name: "specType",
    deprecated: false

  field :contents, 4, type: Google.Cloud.Apihub.V1.SpecContents, deprecated: false
  field :details, 5, type: Google.Cloud.Apihub.V1.SpecDetails, deprecated: false
  field :source_uri, 6, type: :string, json_name: "sourceUri", deprecated: false

  field :create_time, 7,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 8,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :lint_response, 9,
    type: Google.Cloud.Apihub.V1.LintResponse,
    json_name: "lintResponse",
    deprecated: false

  field :attributes, 10,
    repeated: true,
    type: Google.Cloud.Apihub.V1.Spec.AttributesEntry,
    map: true,
    deprecated: false

  field :documentation, 11, type: Google.Cloud.Apihub.V1.Documentation, deprecated: false

  field :parsing_mode, 12,
    type: Google.Cloud.Apihub.V1.Spec.ParsingMode,
    json_name: "parsingMode",
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Apihub.V1.Deployment.AttributesEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Apihub.V1.AttributeValues
end

defmodule Google.Cloud.Apihub.V1.Deployment do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :display_name, 2, type: :string, json_name: "displayName", deprecated: false
  field :description, 3, type: :string, deprecated: false
  field :documentation, 4, type: Google.Cloud.Apihub.V1.Documentation, deprecated: false

  field :deployment_type, 5,
    type: Google.Cloud.Apihub.V1.AttributeValues,
    json_name: "deploymentType",
    deprecated: false

  field :resource_uri, 6, type: :string, json_name: "resourceUri", deprecated: false
  field :endpoints, 7, repeated: true, type: :string, deprecated: false

  field :api_versions, 8,
    repeated: true,
    type: :string,
    json_name: "apiVersions",
    deprecated: false

  field :create_time, 9,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 10,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :slo, 11, type: Google.Cloud.Apihub.V1.AttributeValues, deprecated: false
  field :environment, 12, type: Google.Cloud.Apihub.V1.AttributeValues, deprecated: false

  field :attributes, 13,
    repeated: true,
    type: Google.Cloud.Apihub.V1.Deployment.AttributesEntry,
    map: true,
    deprecated: false
end

defmodule Google.Cloud.Apihub.V1.ApiOperation.AttributesEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Apihub.V1.AttributeValues
end

defmodule Google.Cloud.Apihub.V1.ApiOperation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :spec, 2, type: :string, deprecated: false
  field :details, 3, type: Google.Cloud.Apihub.V1.OperationDetails, deprecated: false

  field :create_time, 4,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 5,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :attributes, 6,
    repeated: true,
    type: Google.Cloud.Apihub.V1.ApiOperation.AttributesEntry,
    map: true,
    deprecated: false
end

defmodule Google.Cloud.Apihub.V1.Definition.AttributesEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Apihub.V1.AttributeValues
end

defmodule Google.Cloud.Apihub.V1.Definition do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :value, 0

  field :schema, 4, type: Google.Cloud.Apihub.V1.Schema, oneof: 0, deprecated: false
  field :name, 1, type: :string, deprecated: false
  field :spec, 2, type: :string, deprecated: false
  field :type, 3, type: Google.Cloud.Apihub.V1.Definition.Type, enum: true, deprecated: false

  field :create_time, 5,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 6,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :attributes, 7,
    repeated: true,
    type: Google.Cloud.Apihub.V1.Definition.AttributesEntry,
    map: true,
    deprecated: false
end

defmodule Google.Cloud.Apihub.V1.Attribute.AllowedValue do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :id, 1, type: :string, deprecated: false
  field :display_name, 2, type: :string, json_name: "displayName", deprecated: false
  field :description, 3, type: :string, deprecated: false
  field :immutable, 4, type: :bool, deprecated: false
end

defmodule Google.Cloud.Apihub.V1.Attribute do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :display_name, 2, type: :string, json_name: "displayName", deprecated: false
  field :description, 3, type: :string, deprecated: false

  field :definition_type, 4,
    type: Google.Cloud.Apihub.V1.Attribute.DefinitionType,
    json_name: "definitionType",
    enum: true,
    deprecated: false

  field :scope, 5, type: Google.Cloud.Apihub.V1.Attribute.Scope, enum: true, deprecated: false

  field :data_type, 6,
    type: Google.Cloud.Apihub.V1.Attribute.DataType,
    json_name: "dataType",
    enum: true,
    deprecated: false

  field :allowed_values, 7,
    repeated: true,
    type: Google.Cloud.Apihub.V1.Attribute.AllowedValue,
    json_name: "allowedValues",
    deprecated: false

  field :cardinality, 8, type: :int32, deprecated: false
  field :mandatory, 9, type: :bool, deprecated: false

  field :create_time, 10,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 11,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false
end

defmodule Google.Cloud.Apihub.V1.SpecContents do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :contents, 1, type: :bytes, deprecated: false
  field :mime_type, 2, type: :string, json_name: "mimeType", deprecated: false
end

defmodule Google.Cloud.Apihub.V1.SpecDetails do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :details, 0

  field :open_api_spec_details, 2,
    type: Google.Cloud.Apihub.V1.OpenApiSpecDetails,
    json_name: "openApiSpecDetails",
    oneof: 0,
    deprecated: false

  field :description, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Apihub.V1.OpenApiSpecDetails do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :format, 1,
    type: Google.Cloud.Apihub.V1.OpenApiSpecDetails.Format,
    enum: true,
    deprecated: false

  field :version, 2, type: :string, deprecated: false
  field :owner, 3, type: Google.Cloud.Apihub.V1.Owner, deprecated: false
end

defmodule Google.Cloud.Apihub.V1.OperationDetails do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :operation, 0

  field :http_operation, 4,
    type: Google.Cloud.Apihub.V1.HttpOperation,
    json_name: "httpOperation",
    oneof: 0

  field :description, 1, type: :string, deprecated: false
  field :documentation, 2, type: Google.Cloud.Apihub.V1.Documentation, deprecated: false
  field :deprecated, 3, type: :bool, deprecated: false
end

defmodule Google.Cloud.Apihub.V1.HttpOperation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :path, 1, type: Google.Cloud.Apihub.V1.Path, deprecated: false

  field :method, 2,
    type: Google.Cloud.Apihub.V1.HttpOperation.Method,
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Apihub.V1.Path do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :path, 1, type: :string, deprecated: false
  field :description, 2, type: :string, deprecated: false
end

defmodule Google.Cloud.Apihub.V1.Schema do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :display_name, 1, type: :string, json_name: "displayName", deprecated: false
  field :raw_value, 2, type: :bytes, json_name: "rawValue", deprecated: false
end

defmodule Google.Cloud.Apihub.V1.Owner do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :display_name, 1, type: :string, json_name: "displayName", deprecated: false
  field :email, 2, type: :string, deprecated: false
end

defmodule Google.Cloud.Apihub.V1.Documentation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :external_uri, 1, type: :string, json_name: "externalUri", deprecated: false
end

defmodule Google.Cloud.Apihub.V1.AttributeValues.EnumAttributeValues do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :values, 1,
    repeated: true,
    type: Google.Cloud.Apihub.V1.Attribute.AllowedValue,
    deprecated: false
end

defmodule Google.Cloud.Apihub.V1.AttributeValues.StringAttributeValues do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :values, 1, repeated: true, type: :string, deprecated: false
end

defmodule Google.Cloud.Apihub.V1.AttributeValues do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :Value, 0

  field :enum_values, 2,
    type: Google.Cloud.Apihub.V1.AttributeValues.EnumAttributeValues,
    json_name: "enumValues",
    oneof: 0

  field :string_values, 3,
    type: Google.Cloud.Apihub.V1.AttributeValues.StringAttributeValues,
    json_name: "stringValues",
    oneof: 0

  field :json_values, 4,
    type: Google.Cloud.Apihub.V1.AttributeValues.StringAttributeValues,
    json_name: "jsonValues",
    oneof: 0

  field :attribute, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Apihub.V1.Dependency.AttributesEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Apihub.V1.AttributeValues
end

defmodule Google.Cloud.Apihub.V1.Dependency do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :consumer, 2, type: Google.Cloud.Apihub.V1.DependencyEntityReference, deprecated: false
  field :supplier, 3, type: Google.Cloud.Apihub.V1.DependencyEntityReference, deprecated: false
  field :state, 4, type: Google.Cloud.Apihub.V1.Dependency.State, enum: true, deprecated: false
  field :description, 5, type: :string, deprecated: false

  field :discovery_mode, 6,
    type: Google.Cloud.Apihub.V1.Dependency.DiscoveryMode,
    json_name: "discoveryMode",
    enum: true,
    deprecated: false

  field :error_detail, 7,
    type: Google.Cloud.Apihub.V1.DependencyErrorDetail,
    json_name: "errorDetail",
    deprecated: false

  field :create_time, 8,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 9,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :attributes, 10,
    repeated: true,
    type: Google.Cloud.Apihub.V1.Dependency.AttributesEntry,
    map: true,
    deprecated: false
end

defmodule Google.Cloud.Apihub.V1.DependencyEntityReference do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :identifier, 0

  field :operation_resource_name, 2, type: :string, json_name: "operationResourceName", oneof: 0

  field :external_api_resource_name, 3,
    type: :string,
    json_name: "externalApiResourceName",
    oneof: 0

  field :display_name, 1, type: :string, json_name: "displayName", deprecated: false
end

defmodule Google.Cloud.Apihub.V1.DependencyErrorDetail do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :error, 1,
    type: Google.Cloud.Apihub.V1.DependencyErrorDetail.Error,
    enum: true,
    deprecated: false

  field :error_time, 2, type: Google.Protobuf.Timestamp, json_name: "errorTime", deprecated: false
end

defmodule Google.Cloud.Apihub.V1.LintResponse.SummaryEntry do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :severity, 1, type: Google.Cloud.Apihub.V1.Severity, enum: true, deprecated: false
  field :count, 2, type: :int32, deprecated: false
end

defmodule Google.Cloud.Apihub.V1.LintResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :issues, 1, repeated: true, type: Google.Cloud.Apihub.V1.Issue, deprecated: false

  field :summary, 2,
    repeated: true,
    type: Google.Cloud.Apihub.V1.LintResponse.SummaryEntry,
    deprecated: false

  field :state, 3, type: Google.Cloud.Apihub.V1.LintState, enum: true, deprecated: false
  field :source, 4, type: :string, deprecated: false
  field :linter, 5, type: Google.Cloud.Apihub.V1.Linter, enum: true, deprecated: false

  field :create_time, 6,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false
end

defmodule Google.Cloud.Apihub.V1.Issue do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :code, 1, type: :string, deprecated: false
  field :path, 2, repeated: true, type: :string, deprecated: false
  field :message, 3, type: :string, deprecated: false
  field :severity, 4, type: Google.Cloud.Apihub.V1.Severity, enum: true, deprecated: false
  field :range, 5, type: Google.Cloud.Apihub.V1.Range, deprecated: false
end

defmodule Google.Cloud.Apihub.V1.Range do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :start, 1, type: Google.Cloud.Apihub.V1.Point, deprecated: false
  field :end, 2, type: Google.Cloud.Apihub.V1.Point, deprecated: false
end

defmodule Google.Cloud.Apihub.V1.Point do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :line, 1, type: :int32, deprecated: false
  field :character, 2, type: :int32, deprecated: false
end

defmodule Google.Cloud.Apihub.V1.OperationMetadata do
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
end

defmodule Google.Cloud.Apihub.V1.ApiHubInstance.Config do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :cmek_key_name, 1, type: :string, json_name: "cmekKeyName", deprecated: false
end

defmodule Google.Cloud.Apihub.V1.ApiHubInstance.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Apihub.V1.ApiHubInstance do
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

  field :state, 4,
    type: Google.Cloud.Apihub.V1.ApiHubInstance.State,
    enum: true,
    deprecated: false

  field :state_message, 5, type: :string, json_name: "stateMessage", deprecated: false
  field :config, 6, type: Google.Cloud.Apihub.V1.ApiHubInstance.Config, deprecated: false

  field :labels, 7,
    repeated: true,
    type: Google.Cloud.Apihub.V1.ApiHubInstance.LabelsEntry,
    map: true,
    deprecated: false

  field :description, 8, type: :string, deprecated: false
end

defmodule Google.Cloud.Apihub.V1.ExternalApi.AttributesEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Apihub.V1.AttributeValues
end

defmodule Google.Cloud.Apihub.V1.ExternalApi do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :display_name, 2, type: :string, json_name: "displayName", deprecated: false
  field :description, 3, type: :string, deprecated: false
  field :endpoints, 4, repeated: true, type: :string, deprecated: false
  field :paths, 5, repeated: true, type: :string, deprecated: false
  field :documentation, 6, type: Google.Cloud.Apihub.V1.Documentation, deprecated: false

  field :attributes, 7,
    repeated: true,
    type: Google.Cloud.Apihub.V1.ExternalApi.AttributesEntry,
    map: true,
    deprecated: false

  field :create_time, 8,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 9,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false
end
