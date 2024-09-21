defmodule Google.Cloud.Apigateway.V1.Api.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :CREATING, 1
  field :ACTIVE, 2
  field :FAILED, 3
  field :DELETING, 4
  field :UPDATING, 5
end

defmodule Google.Cloud.Apigateway.V1.ApiConfig.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :CREATING, 1
  field :ACTIVE, 2
  field :FAILED, 3
  field :DELETING, 4
  field :UPDATING, 5
  field :ACTIVATING, 6
end

defmodule Google.Cloud.Apigateway.V1.Gateway.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :CREATING, 1
  field :ACTIVE, 2
  field :FAILED, 3
  field :DELETING, 4
  field :UPDATING, 5
end

defmodule Google.Cloud.Apigateway.V1.GetApiConfigRequest.ConfigView do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :CONFIG_VIEW_UNSPECIFIED, 0
  field :BASIC, 1
  field :FULL, 2
end

defmodule Google.Cloud.Apigateway.V1.Api.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Apigateway.V1.Api do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

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
    type: Google.Cloud.Apigateway.V1.Api.LabelsEntry,
    map: true,
    deprecated: false

  field :display_name, 5, type: :string, json_name: "displayName", deprecated: false
  field :managed_service, 7, type: :string, json_name: "managedService", deprecated: false
  field :state, 12, type: Google.Cloud.Apigateway.V1.Api.State, enum: true, deprecated: false
end

defmodule Google.Cloud.Apigateway.V1.ApiConfig.File do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :path, 1, type: :string
  field :contents, 2, type: :bytes
end

defmodule Google.Cloud.Apigateway.V1.ApiConfig.OpenApiDocument do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :document, 1, type: Google.Cloud.Apigateway.V1.ApiConfig.File
end

defmodule Google.Cloud.Apigateway.V1.ApiConfig.GrpcServiceDefinition do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :file_descriptor_set, 1,
    type: Google.Cloud.Apigateway.V1.ApiConfig.File,
    json_name: "fileDescriptorSet",
    deprecated: false

  field :source, 2,
    repeated: true,
    type: Google.Cloud.Apigateway.V1.ApiConfig.File,
    deprecated: false
end

defmodule Google.Cloud.Apigateway.V1.ApiConfig.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Apigateway.V1.ApiConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

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
    type: Google.Cloud.Apigateway.V1.ApiConfig.LabelsEntry,
    map: true,
    deprecated: false

  field :display_name, 5, type: :string, json_name: "displayName", deprecated: false

  field :gateway_service_account, 14,
    type: :string,
    json_name: "gatewayServiceAccount",
    deprecated: false

  field :service_config_id, 12, type: :string, json_name: "serviceConfigId", deprecated: false
  field :state, 8, type: Google.Cloud.Apigateway.V1.ApiConfig.State, enum: true, deprecated: false

  field :openapi_documents, 9,
    repeated: true,
    type: Google.Cloud.Apigateway.V1.ApiConfig.OpenApiDocument,
    json_name: "openapiDocuments",
    deprecated: false

  field :grpc_services, 10,
    repeated: true,
    type: Google.Cloud.Apigateway.V1.ApiConfig.GrpcServiceDefinition,
    json_name: "grpcServices",
    deprecated: false

  field :managed_service_configs, 11,
    repeated: true,
    type: Google.Cloud.Apigateway.V1.ApiConfig.File,
    json_name: "managedServiceConfigs",
    deprecated: false
end

defmodule Google.Cloud.Apigateway.V1.Gateway.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Apigateway.V1.Gateway do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

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
    type: Google.Cloud.Apigateway.V1.Gateway.LabelsEntry,
    map: true,
    deprecated: false

  field :display_name, 5, type: :string, json_name: "displayName", deprecated: false
  field :api_config, 6, type: :string, json_name: "apiConfig", deprecated: false
  field :state, 7, type: Google.Cloud.Apigateway.V1.Gateway.State, enum: true, deprecated: false
  field :default_hostname, 9, type: :string, json_name: "defaultHostname", deprecated: false
end

defmodule Google.Cloud.Apigateway.V1.ListGatewaysRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
  field :order_by, 5, type: :string, json_name: "orderBy"
end

defmodule Google.Cloud.Apigateway.V1.ListGatewaysResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :gateways, 1, repeated: true, type: Google.Cloud.Apigateway.V1.Gateway
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"

  field :unreachable_locations, 3,
    repeated: true,
    type: :string,
    json_name: "unreachableLocations"
end

defmodule Google.Cloud.Apigateway.V1.GetGatewayRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Apigateway.V1.CreateGatewayRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :gateway_id, 2, type: :string, json_name: "gatewayId", deprecated: false
  field :gateway, 3, type: Google.Cloud.Apigateway.V1.Gateway, deprecated: false
end

defmodule Google.Cloud.Apigateway.V1.UpdateGatewayRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :update_mask, 1, type: Google.Protobuf.FieldMask, json_name: "updateMask"
  field :gateway, 2, type: Google.Cloud.Apigateway.V1.Gateway, deprecated: false
end

defmodule Google.Cloud.Apigateway.V1.DeleteGatewayRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Apigateway.V1.ListApisRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
  field :order_by, 5, type: :string, json_name: "orderBy"
end

defmodule Google.Cloud.Apigateway.V1.ListApisResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :apis, 1, repeated: true, type: Google.Cloud.Apigateway.V1.Api
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"

  field :unreachable_locations, 3,
    repeated: true,
    type: :string,
    json_name: "unreachableLocations"
end

defmodule Google.Cloud.Apigateway.V1.GetApiRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Apigateway.V1.CreateApiRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :api_id, 2, type: :string, json_name: "apiId", deprecated: false
  field :api, 3, type: Google.Cloud.Apigateway.V1.Api, deprecated: false
end

defmodule Google.Cloud.Apigateway.V1.UpdateApiRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :update_mask, 1, type: Google.Protobuf.FieldMask, json_name: "updateMask"
  field :api, 2, type: Google.Cloud.Apigateway.V1.Api, deprecated: false
end

defmodule Google.Cloud.Apigateway.V1.DeleteApiRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Apigateway.V1.ListApiConfigsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
  field :order_by, 5, type: :string, json_name: "orderBy"
end

defmodule Google.Cloud.Apigateway.V1.ListApiConfigsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :api_configs, 1,
    repeated: true,
    type: Google.Cloud.Apigateway.V1.ApiConfig,
    json_name: "apiConfigs"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"

  field :unreachable_locations, 3,
    repeated: true,
    type: :string,
    json_name: "unreachableLocations"
end

defmodule Google.Cloud.Apigateway.V1.GetApiConfigRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :view, 3, type: Google.Cloud.Apigateway.V1.GetApiConfigRequest.ConfigView, enum: true
end

defmodule Google.Cloud.Apigateway.V1.CreateApiConfigRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :api_config_id, 2, type: :string, json_name: "apiConfigId", deprecated: false

  field :api_config, 3,
    type: Google.Cloud.Apigateway.V1.ApiConfig,
    json_name: "apiConfig",
    deprecated: false
end

defmodule Google.Cloud.Apigateway.V1.UpdateApiConfigRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :update_mask, 1, type: Google.Protobuf.FieldMask, json_name: "updateMask"

  field :api_config, 2,
    type: Google.Cloud.Apigateway.V1.ApiConfig,
    json_name: "apiConfig",
    deprecated: false
end

defmodule Google.Cloud.Apigateway.V1.DeleteApiConfigRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Apigateway.V1.OperationMetadata.Diagnostic do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :location, 1, type: :string
  field :message, 2, type: :string
end

defmodule Google.Cloud.Apigateway.V1.OperationMetadata do
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

  field :diagnostics, 8,
    repeated: true,
    type: Google.Cloud.Apigateway.V1.OperationMetadata.Diagnostic,
    deprecated: false
end