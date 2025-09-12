defmodule Google.Cloud.Apihub.V1.LintState do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :LINT_STATE_UNSPECIFIED, 0
  field :LINT_STATE_SUCCESS, 1
  field :LINT_STATE_ERROR, 2
end

defmodule Google.Cloud.Apihub.V1.Linter do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :LINTER_UNSPECIFIED, 0
  field :SPECTRAL, 1
  field :OTHER, 2
end

defmodule Google.Cloud.Apihub.V1.Severity do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :SEVERITY_UNSPECIFIED, 0
  field :SEVERITY_ERROR, 1
  field :SEVERITY_WARNING, 2
  field :SEVERITY_INFO, 3
  field :SEVERITY_HINT, 4
end

defmodule Google.Cloud.Apihub.V1.AuthType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :AUTH_TYPE_UNSPECIFIED, 0
  field :NO_AUTH, 1
  field :GOOGLE_SERVICE_ACCOUNT, 2
  field :USER_PASSWORD, 3
  field :API_KEY, 4
  field :OAUTH2_CLIENT_CREDENTIALS, 5
end

defmodule Google.Cloud.Apihub.V1.PluginCategory do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :PLUGIN_CATEGORY_UNSPECIFIED, 0
  field :API_GATEWAY, 1
  field :API_PRODUCER, 2
end

defmodule Google.Cloud.Apihub.V1.Spec.ParsingMode do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :PARSING_MODE_UNSPECIFIED, 0
  field :RELAXED, 1
  field :STRICT, 2
end

defmodule Google.Cloud.Apihub.V1.Definition.Type do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :TYPE_UNSPECIFIED, 0
  field :SCHEMA, 1
end

defmodule Google.Cloud.Apihub.V1.Attribute.DefinitionType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :DEFINITION_TYPE_UNSPECIFIED, 0
  field :SYSTEM_DEFINED, 1
  field :USER_DEFINED, 2
end

defmodule Google.Cloud.Apihub.V1.Attribute.Scope do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

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

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :DATA_TYPE_UNSPECIFIED, 0
  field :ENUM, 1
  field :JSON, 2
  field :STRING, 3
  field :URI, 4
end

defmodule Google.Cloud.Apihub.V1.OpenApiSpecDetails.Format do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :FORMAT_UNSPECIFIED, 0
  field :OPEN_API_SPEC_2_0, 1
  field :OPEN_API_SPEC_3_0, 2
  field :OPEN_API_SPEC_3_1, 3
end

defmodule Google.Cloud.Apihub.V1.HttpOperation.Method do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

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

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :PROPOSED, 1
  field :VALIDATED, 2
end

defmodule Google.Cloud.Apihub.V1.Dependency.DiscoveryMode do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :DISCOVERY_MODE_UNSPECIFIED, 0
  field :MANUAL, 1
end

defmodule Google.Cloud.Apihub.V1.DependencyErrorDetail.Error do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :ERROR_UNSPECIFIED, 0
  field :SUPPLIER_NOT_FOUND, 1
  field :SUPPLIER_RECREATED, 2
end

defmodule Google.Cloud.Apihub.V1.ApiHubInstance.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :INACTIVE, 1
  field :CREATING, 2
  field :ACTIVE, 3
  field :UPDATING, 4
  field :DELETING, 5
  field :FAILED, 6
end

defmodule Google.Cloud.Apihub.V1.ApiHubInstance.Config.EncryptionType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :ENCRYPTION_TYPE_UNSPECIFIED, 0
  field :GMEK, 1
  field :CMEK, 2
end

defmodule Google.Cloud.Apihub.V1.ConfigVariableTemplate.ValueType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :VALUE_TYPE_UNSPECIFIED, 0
  field :STRING, 1
  field :INT, 2
  field :BOOL, 3
  field :SECRET, 4
  field :ENUM, 5
  field :MULTI_SELECT, 6
  field :MULTI_STRING, 7
  field :MULTI_INT, 8
end

defmodule Google.Cloud.Apihub.V1.AuthConfig.ApiKeyConfig.HttpElementLocation do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :HTTP_ELEMENT_LOCATION_UNSPECIFIED, 0
  field :QUERY, 1
  field :HEADER, 2
  field :PATH, 3
  field :BODY, 4
  field :COOKIE, 5
end

defmodule Google.Cloud.Apihub.V1.SourceMetadata.SourceType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :SOURCE_TYPE_UNSPECIFIED, 0
  field :PLUGIN, 1
end

defmodule Google.Cloud.Apihub.V1.DiscoveredApiObservation.Style do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :STYLE_UNSPECIFIED, 0
  field :REST, 1
  field :GRPC, 2
  field :GRAPHQL, 3
end

defmodule Google.Cloud.Apihub.V1.DiscoveredApiObservation.SourceType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :SOURCE_TYPE_UNSPECIFIED, 0
  field :GCP_XLB, 1
  field :GCP_ILB, 2
end

defmodule Google.Cloud.Apihub.V1.DiscoveredApiOperation.Classification do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :CLASSIFICATION_UNSPECIFIED, 0
  field :KNOWN, 1
  field :UNKNOWN, 2
end

defmodule Google.Cloud.Apihub.V1.HttpOperationDetails.DataType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :DATA_TYPE_UNSPECIFIED, 0
  field :BOOL, 1
  field :INTEGER, 2
  field :FLOAT, 3
  field :STRING, 4
  field :UUID, 5
end

defmodule Google.Cloud.Apihub.V1.Api.AttributesEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Apihub.V1.AttributeValues
end

defmodule Google.Cloud.Apihub.V1.Api do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

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

  field :api_requirements, 16,
    type: Google.Cloud.Apihub.V1.AttributeValues,
    json_name: "apiRequirements",
    deprecated: false

  field :fingerprint, 17, type: :string, deprecated: false

  field :source_metadata, 18,
    repeated: true,
    type: Google.Cloud.Apihub.V1.SourceMetadata,
    json_name: "sourceMetadata",
    deprecated: false

  field :api_functional_requirements, 19,
    type: Google.Cloud.Apihub.V1.AttributeValues,
    json_name: "apiFunctionalRequirements",
    deprecated: false

  field :api_technical_requirements, 20,
    type: Google.Cloud.Apihub.V1.AttributeValues,
    json_name: "apiTechnicalRequirements",
    deprecated: false
end

defmodule Google.Cloud.Apihub.V1.Version.AttributesEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Apihub.V1.AttributeValues
end

defmodule Google.Cloud.Apihub.V1.Version do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

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

  field :source_metadata, 17,
    repeated: true,
    type: Google.Cloud.Apihub.V1.SourceMetadata,
    json_name: "sourceMetadata",
    deprecated: false
end

defmodule Google.Cloud.Apihub.V1.Spec.AttributesEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Apihub.V1.AttributeValues
end

defmodule Google.Cloud.Apihub.V1.Spec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

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

  field :source_metadata, 13,
    repeated: true,
    type: Google.Cloud.Apihub.V1.SourceMetadata,
    json_name: "sourceMetadata",
    deprecated: false
end

defmodule Google.Cloud.Apihub.V1.Deployment.AttributesEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Apihub.V1.AttributeValues
end

defmodule Google.Cloud.Apihub.V1.Deployment do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

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

  field :source_metadata, 14,
    repeated: true,
    type: Google.Cloud.Apihub.V1.SourceMetadata,
    json_name: "sourceMetadata",
    deprecated: false

  field :management_url, 15,
    type: Google.Cloud.Apihub.V1.AttributeValues,
    json_name: "managementUrl",
    deprecated: false

  field :source_uri, 16,
    type: Google.Cloud.Apihub.V1.AttributeValues,
    json_name: "sourceUri",
    deprecated: false

  field :source_project, 17, type: :string, json_name: "sourceProject", deprecated: false
  field :source_environment, 18, type: :string, json_name: "sourceEnvironment", deprecated: false
end

defmodule Google.Cloud.Apihub.V1.ApiOperation.AttributesEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Apihub.V1.AttributeValues
end

defmodule Google.Cloud.Apihub.V1.ApiOperation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

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

  field :source_metadata, 7,
    repeated: true,
    type: Google.Cloud.Apihub.V1.SourceMetadata,
    json_name: "sourceMetadata",
    deprecated: false
end

defmodule Google.Cloud.Apihub.V1.Definition.AttributesEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Apihub.V1.AttributeValues
end

defmodule Google.Cloud.Apihub.V1.Definition do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :id, 1, type: :string, deprecated: false
  field :display_name, 2, type: :string, json_name: "displayName", deprecated: false
  field :description, 3, type: :string, deprecated: false
  field :immutable, 4, type: :bool, deprecated: false
end

defmodule Google.Cloud.Apihub.V1.Attribute do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :contents, 1, type: :bytes, deprecated: false
  field :mime_type, 2, type: :string, json_name: "mimeType", deprecated: false
end

defmodule Google.Cloud.Apihub.V1.SpecDetails do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :format, 1,
    type: Google.Cloud.Apihub.V1.OpenApiSpecDetails.Format,
    enum: true,
    deprecated: false

  field :version, 2, type: :string, deprecated: false
  field :owner, 3, type: Google.Cloud.Apihub.V1.Owner, deprecated: false
end

defmodule Google.Cloud.Apihub.V1.OperationDetails do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :path, 1, type: Google.Cloud.Apihub.V1.Path, deprecated: false

  field :method, 2,
    type: Google.Cloud.Apihub.V1.HttpOperation.Method,
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Apihub.V1.Path do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :path, 1, type: :string, deprecated: false
  field :description, 2, type: :string, deprecated: false
end

defmodule Google.Cloud.Apihub.V1.Schema do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :display_name, 1, type: :string, json_name: "displayName", deprecated: false
  field :raw_value, 2, type: :bytes, json_name: "rawValue", deprecated: false
end

defmodule Google.Cloud.Apihub.V1.Owner do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :display_name, 1, type: :string, json_name: "displayName", deprecated: false
  field :email, 2, type: :string, deprecated: false
end

defmodule Google.Cloud.Apihub.V1.Documentation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :external_uri, 1, type: :string, json_name: "externalUri", deprecated: false
end

defmodule Google.Cloud.Apihub.V1.AttributeValues.EnumAttributeValues do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :values, 1,
    repeated: true,
    type: Google.Cloud.Apihub.V1.Attribute.AllowedValue,
    deprecated: false
end

defmodule Google.Cloud.Apihub.V1.AttributeValues.StringAttributeValues do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :values, 1, repeated: true, type: :string, deprecated: false
end

defmodule Google.Cloud.Apihub.V1.AttributeValues do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

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

  field :uri_values, 5,
    type: Google.Cloud.Apihub.V1.AttributeValues.StringAttributeValues,
    json_name: "uriValues",
    oneof: 0

  field :attribute, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Apihub.V1.Dependency.AttributesEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Apihub.V1.AttributeValues
end

defmodule Google.Cloud.Apihub.V1.Dependency do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :error, 1,
    type: Google.Cloud.Apihub.V1.DependencyErrorDetail.Error,
    enum: true,
    deprecated: false

  field :error_time, 2, type: Google.Protobuf.Timestamp, json_name: "errorTime", deprecated: false
end

defmodule Google.Cloud.Apihub.V1.LintResponse.SummaryEntry do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :severity, 1, type: Google.Cloud.Apihub.V1.Severity, enum: true, deprecated: false
  field :count, 2, type: :int32, deprecated: false
end

defmodule Google.Cloud.Apihub.V1.LintResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :code, 1, type: :string, deprecated: false
  field :path, 2, repeated: true, type: :string, deprecated: false
  field :message, 3, type: :string, deprecated: false
  field :severity, 4, type: Google.Cloud.Apihub.V1.Severity, enum: true, deprecated: false
  field :range, 5, type: Google.Cloud.Apihub.V1.Range, deprecated: false
end

defmodule Google.Cloud.Apihub.V1.Range do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :start, 1, type: Google.Cloud.Apihub.V1.Point, deprecated: false
  field :end, 2, type: Google.Cloud.Apihub.V1.Point, deprecated: false
end

defmodule Google.Cloud.Apihub.V1.Point do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :line, 1, type: :int32, deprecated: false
  field :character, 2, type: :int32, deprecated: false
end

defmodule Google.Cloud.Apihub.V1.OperationMetadata do
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

defmodule Google.Cloud.Apihub.V1.ApiHubInstance.Config do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :cmek_key_name, 1, type: :string, json_name: "cmekKeyName", deprecated: false
  field :disable_search, 2, type: :bool, json_name: "disableSearch", deprecated: false
  field :vertex_location, 3, type: :string, json_name: "vertexLocation", deprecated: false

  field :encryption_type, 4,
    type: Google.Cloud.Apihub.V1.ApiHubInstance.Config.EncryptionType,
    json_name: "encryptionType",
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Apihub.V1.ApiHubInstance.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Apihub.V1.ApiHubInstance do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

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

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Apihub.V1.AttributeValues
end

defmodule Google.Cloud.Apihub.V1.ExternalApi do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

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

defmodule Google.Cloud.Apihub.V1.ConfigValueOption do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :id, 1, type: :string, deprecated: false
  field :display_name, 2, type: :string, json_name: "displayName", deprecated: false
  field :description, 3, type: :string, deprecated: false
end

defmodule Google.Cloud.Apihub.V1.Secret do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :secret_version, 1, type: :string, json_name: "secretVersion", deprecated: false
end

defmodule Google.Cloud.Apihub.V1.ConfigVariableTemplate do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :id, 1, type: :string, deprecated: false

  field :value_type, 2,
    type: Google.Cloud.Apihub.V1.ConfigVariableTemplate.ValueType,
    json_name: "valueType",
    enum: true,
    deprecated: false

  field :description, 3, type: :string, deprecated: false
  field :validation_regex, 4, type: :string, json_name: "validationRegex", deprecated: false
  field :required, 5, type: :bool, deprecated: false

  field :enum_options, 6,
    repeated: true,
    type: Google.Cloud.Apihub.V1.ConfigValueOption,
    json_name: "enumOptions",
    deprecated: false

  field :multi_select_options, 7,
    repeated: true,
    type: Google.Cloud.Apihub.V1.ConfigValueOption,
    json_name: "multiSelectOptions",
    deprecated: false
end

defmodule Google.Cloud.Apihub.V1.ConfigVariable.MultiSelectValues do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :values, 1,
    repeated: true,
    type: Google.Cloud.Apihub.V1.ConfigValueOption,
    deprecated: false
end

defmodule Google.Cloud.Apihub.V1.ConfigVariable.MultiStringValues do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :values, 1, repeated: true, type: :string, deprecated: false
end

defmodule Google.Cloud.Apihub.V1.ConfigVariable.MultiIntValues do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :values, 1, repeated: true, type: :int32, deprecated: false
end

defmodule Google.Cloud.Apihub.V1.ConfigVariable do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :value, 0

  field :string_value, 2, type: :string, json_name: "stringValue", oneof: 0, deprecated: false
  field :int_value, 3, type: :int64, json_name: "intValue", oneof: 0, deprecated: false
  field :bool_value, 4, type: :bool, json_name: "boolValue", oneof: 0, deprecated: false

  field :secret_value, 5,
    type: Google.Cloud.Apihub.V1.Secret,
    json_name: "secretValue",
    oneof: 0,
    deprecated: false

  field :enum_value, 6,
    type: Google.Cloud.Apihub.V1.ConfigValueOption,
    json_name: "enumValue",
    oneof: 0,
    deprecated: false

  field :multi_select_values, 7,
    type: Google.Cloud.Apihub.V1.ConfigVariable.MultiSelectValues,
    json_name: "multiSelectValues",
    oneof: 0,
    deprecated: false

  field :multi_string_values, 8,
    type: Google.Cloud.Apihub.V1.ConfigVariable.MultiStringValues,
    json_name: "multiStringValues",
    oneof: 0,
    deprecated: false

  field :multi_int_values, 9,
    type: Google.Cloud.Apihub.V1.ConfigVariable.MultiIntValues,
    json_name: "multiIntValues",
    oneof: 0,
    deprecated: false

  field :key, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Apihub.V1.GoogleServiceAccountConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :service_account, 1, type: :string, json_name: "serviceAccount", deprecated: false
end

defmodule Google.Cloud.Apihub.V1.AuthConfig.UserPasswordConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :username, 1, type: :string, deprecated: false
  field :password, 2, type: Google.Cloud.Apihub.V1.Secret, deprecated: false
end

defmodule Google.Cloud.Apihub.V1.AuthConfig.Oauth2ClientCredentialsConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :client_id, 1, type: :string, json_name: "clientId", deprecated: false

  field :client_secret, 2,
    type: Google.Cloud.Apihub.V1.Secret,
    json_name: "clientSecret",
    deprecated: false
end

defmodule Google.Cloud.Apihub.V1.AuthConfig.ApiKeyConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :api_key, 2, type: Google.Cloud.Apihub.V1.Secret, json_name: "apiKey", deprecated: false

  field :http_element_location, 3,
    type: Google.Cloud.Apihub.V1.AuthConfig.ApiKeyConfig.HttpElementLocation,
    json_name: "httpElementLocation",
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Apihub.V1.AuthConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :config, 0

  field :google_service_account_config, 2,
    type: Google.Cloud.Apihub.V1.GoogleServiceAccountConfig,
    json_name: "googleServiceAccountConfig",
    oneof: 0

  field :user_password_config, 3,
    type: Google.Cloud.Apihub.V1.AuthConfig.UserPasswordConfig,
    json_name: "userPasswordConfig",
    oneof: 0

  field :api_key_config, 4,
    type: Google.Cloud.Apihub.V1.AuthConfig.ApiKeyConfig,
    json_name: "apiKeyConfig",
    oneof: 0

  field :oauth2_client_credentials_config, 5,
    type: Google.Cloud.Apihub.V1.AuthConfig.Oauth2ClientCredentialsConfig,
    json_name: "oauth2ClientCredentialsConfig",
    oneof: 0

  field :auth_type, 1,
    type: Google.Cloud.Apihub.V1.AuthType,
    json_name: "authType",
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Apihub.V1.SourceMetadata.PluginInstanceActionSource do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :plugin_instance, 1, type: :string, json_name: "pluginInstance", deprecated: false
  field :action_id, 2, type: :string, json_name: "actionId", deprecated: false
end

defmodule Google.Cloud.Apihub.V1.SourceMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :source, 0

  field :plugin_instance_action_source, 1,
    type: Google.Cloud.Apihub.V1.SourceMetadata.PluginInstanceActionSource,
    json_name: "pluginInstanceActionSource",
    oneof: 0,
    deprecated: false

  field :source_type, 2,
    type: Google.Cloud.Apihub.V1.SourceMetadata.SourceType,
    json_name: "sourceType",
    enum: true,
    deprecated: false

  field :original_resource_id, 3,
    type: :string,
    json_name: "originalResourceId",
    deprecated: false

  field :original_resource_create_time, 4,
    type: Google.Protobuf.Timestamp,
    json_name: "originalResourceCreateTime",
    deprecated: false

  field :original_resource_update_time, 5,
    type: Google.Protobuf.Timestamp,
    json_name: "originalResourceUpdateTime",
    deprecated: false
end

defmodule Google.Cloud.Apihub.V1.DiscoveredApiObservation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :style, 2,
    type: Google.Cloud.Apihub.V1.DiscoveredApiObservation.Style,
    enum: true,
    deprecated: false

  field :server_ips, 3, repeated: true, type: :string, json_name: "serverIps", deprecated: false
  field :hostname, 4, type: :string, deprecated: false

  field :last_event_detected_time, 5,
    type: Google.Protobuf.Timestamp,
    json_name: "lastEventDetectedTime",
    deprecated: false

  field :source_locations, 6,
    repeated: true,
    type: :string,
    json_name: "sourceLocations",
    deprecated: false

  field :api_operation_count, 7, type: :int64, json_name: "apiOperationCount", deprecated: false
  field :origin, 8, type: :string, deprecated: false

  field :source_types, 9,
    repeated: true,
    type: Google.Cloud.Apihub.V1.DiscoveredApiObservation.SourceType,
    json_name: "sourceTypes",
    enum: true,
    deprecated: false

  field :known_operations_count, 10,
    type: :int64,
    json_name: "knownOperationsCount",
    deprecated: false

  field :unknown_operations_count, 11,
    type: :int64,
    json_name: "unknownOperationsCount",
    deprecated: false

  field :create_time, 12,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 13,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :source_metadata, 14,
    type: Google.Cloud.Apihub.V1.SourceMetadata,
    json_name: "sourceMetadata",
    deprecated: false
end

defmodule Google.Cloud.Apihub.V1.DiscoveredApiOperation.MatchResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Apihub.V1.DiscoveredApiOperation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :operation, 0

  field :http_operation, 2,
    type: Google.Cloud.Apihub.V1.HttpOperationDetails,
    json_name: "httpOperation",
    oneof: 0,
    deprecated: false

  field :name, 1, type: :string, deprecated: false

  field :first_seen_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "firstSeenTime",
    deprecated: false

  field :last_seen_time, 4,
    type: Google.Protobuf.Timestamp,
    json_name: "lastSeenTime",
    deprecated: false

  field :count, 5, type: :int64, deprecated: false

  field :classification, 6,
    type: Google.Cloud.Apihub.V1.DiscoveredApiOperation.Classification,
    enum: true,
    deprecated: false

  field :match_results, 7,
    repeated: true,
    type: Google.Cloud.Apihub.V1.DiscoveredApiOperation.MatchResult,
    json_name: "matchResults",
    deprecated: false

  field :source_metadata, 8,
    type: Google.Cloud.Apihub.V1.SourceMetadata,
    json_name: "sourceMetadata",
    deprecated: false

  field :create_time, 9,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 10,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false
end

defmodule Google.Cloud.Apihub.V1.HttpOperationDetails.PathParam do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :position, 1, type: :int32, deprecated: false

  field :data_type, 2,
    type: Google.Cloud.Apihub.V1.HttpOperationDetails.DataType,
    json_name: "dataType",
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Apihub.V1.HttpOperationDetails.QueryParam do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :count, 2, type: :int64, deprecated: false

  field :data_type, 3,
    type: Google.Cloud.Apihub.V1.HttpOperationDetails.DataType,
    json_name: "dataType",
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Apihub.V1.HttpOperationDetails.Header do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string
  field :count, 2, type: :int64

  field :data_type, 3,
    type: Google.Cloud.Apihub.V1.HttpOperationDetails.DataType,
    json_name: "dataType",
    enum: true
end

defmodule Google.Cloud.Apihub.V1.HttpOperationDetails.HttpRequest.HeadersEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Apihub.V1.HttpOperationDetails.Header
end

defmodule Google.Cloud.Apihub.V1.HttpOperationDetails.HttpRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :headers, 1,
    repeated: true,
    type: Google.Cloud.Apihub.V1.HttpOperationDetails.HttpRequest.HeadersEntry,
    map: true,
    deprecated: false
end

defmodule Google.Cloud.Apihub.V1.HttpOperationDetails.HttpResponse.HeadersEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Apihub.V1.HttpOperationDetails.Header
end

defmodule Google.Cloud.Apihub.V1.HttpOperationDetails.HttpResponse.ResponseCodesEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :int32
  field :value, 2, type: :int64
end

defmodule Google.Cloud.Apihub.V1.HttpOperationDetails.HttpResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :headers, 1,
    repeated: true,
    type: Google.Cloud.Apihub.V1.HttpOperationDetails.HttpResponse.HeadersEntry,
    map: true,
    deprecated: false

  field :response_codes, 2,
    repeated: true,
    type: Google.Cloud.Apihub.V1.HttpOperationDetails.HttpResponse.ResponseCodesEntry,
    json_name: "responseCodes",
    map: true,
    deprecated: false
end

defmodule Google.Cloud.Apihub.V1.HttpOperationDetails.QueryParamsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Apihub.V1.HttpOperationDetails.QueryParam
end

defmodule Google.Cloud.Apihub.V1.HttpOperationDetails do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :http_operation, 1,
    type: Google.Cloud.Apihub.V1.HttpOperation,
    json_name: "httpOperation",
    deprecated: false

  field :path_params, 2,
    repeated: true,
    type: Google.Cloud.Apihub.V1.HttpOperationDetails.PathParam,
    json_name: "pathParams",
    deprecated: false

  field :query_params, 3,
    repeated: true,
    type: Google.Cloud.Apihub.V1.HttpOperationDetails.QueryParamsEntry,
    json_name: "queryParams",
    map: true,
    deprecated: false

  field :request, 4,
    type: Google.Cloud.Apihub.V1.HttpOperationDetails.HttpRequest,
    deprecated: false

  field :response, 5,
    type: Google.Cloud.Apihub.V1.HttpOperationDetails.HttpResponse,
    deprecated: false
end
