defmodule Google.Cloud.Apigateway.V1.Api.State do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :STATE_UNSPECIFIED | :CREATING | :ACTIVE | :FAILED | :DELETING | :UPDATING

  field :STATE_UNSPECIFIED, 0
  field :CREATING, 1
  field :ACTIVE, 2
  field :FAILED, 3
  field :DELETING, 4
  field :UPDATING, 5
end

defmodule Google.Cloud.Apigateway.V1.ApiConfig.State do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :STATE_UNSPECIFIED
          | :CREATING
          | :ACTIVE
          | :FAILED
          | :DELETING
          | :UPDATING
          | :ACTIVATING

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
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :STATE_UNSPECIFIED | :CREATING | :ACTIVE | :FAILED | :DELETING | :UPDATING

  field :STATE_UNSPECIFIED, 0
  field :CREATING, 1
  field :ACTIVE, 2
  field :FAILED, 3
  field :DELETING, 4
  field :UPDATING, 5
end

defmodule Google.Cloud.Apigateway.V1.GetApiConfigRequest.ConfigView do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :CONFIG_VIEW_UNSPECIFIED | :BASIC | :FULL

  field :CONFIG_VIEW_UNSPECIFIED, 0
  field :BASIC, 1
  field :FULL, 2
end

defmodule Google.Cloud.Apigateway.V1.Api.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Apigateway.V1.Api do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          create_time: Google.Protobuf.Timestamp.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil,
          labels: %{String.t() => String.t()},
          display_name: String.t(),
          managed_service: String.t(),
          state: Google.Cloud.Apigateway.V1.Api.State.t()
        }

  defstruct [:name, :create_time, :update_time, :labels, :display_name, :managed_service, :state]

  field :name, 1, type: :string
  field :create_time, 2, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :update_time, 3, type: Google.Protobuf.Timestamp, json_name: "updateTime"
  field :labels, 4, repeated: true, type: Google.Cloud.Apigateway.V1.Api.LabelsEntry, map: true
  field :display_name, 5, type: :string, json_name: "displayName"
  field :managed_service, 7, type: :string, json_name: "managedService"
  field :state, 12, type: Google.Cloud.Apigateway.V1.Api.State, enum: true

  def transform_module(), do: nil
end

defmodule Google.Cloud.Apigateway.V1.ApiConfig.File do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          path: String.t(),
          contents: binary
        }

  defstruct [:path, :contents]

  field :path, 1, type: :string
  field :contents, 2, type: :bytes

  def transform_module(), do: nil
end

defmodule Google.Cloud.Apigateway.V1.ApiConfig.OpenApiDocument do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          document: Google.Cloud.Apigateway.V1.ApiConfig.File.t() | nil
        }

  defstruct [:document]

  field :document, 1, type: Google.Cloud.Apigateway.V1.ApiConfig.File

  def transform_module(), do: nil
end

defmodule Google.Cloud.Apigateway.V1.ApiConfig.GrpcServiceDefinition do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          file_descriptor_set: Google.Cloud.Apigateway.V1.ApiConfig.File.t() | nil,
          source: [Google.Cloud.Apigateway.V1.ApiConfig.File.t()]
        }

  defstruct [:file_descriptor_set, :source]

  field :file_descriptor_set, 1,
    type: Google.Cloud.Apigateway.V1.ApiConfig.File,
    json_name: "fileDescriptorSet"

  field :source, 2, repeated: true, type: Google.Cloud.Apigateway.V1.ApiConfig.File

  def transform_module(), do: nil
end

defmodule Google.Cloud.Apigateway.V1.ApiConfig.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Apigateway.V1.ApiConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          create_time: Google.Protobuf.Timestamp.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil,
          labels: %{String.t() => String.t()},
          display_name: String.t(),
          gateway_service_account: String.t(),
          service_config_id: String.t(),
          state: Google.Cloud.Apigateway.V1.ApiConfig.State.t(),
          openapi_documents: [Google.Cloud.Apigateway.V1.ApiConfig.OpenApiDocument.t()],
          grpc_services: [Google.Cloud.Apigateway.V1.ApiConfig.GrpcServiceDefinition.t()],
          managed_service_configs: [Google.Cloud.Apigateway.V1.ApiConfig.File.t()]
        }

  defstruct [
    :name,
    :create_time,
    :update_time,
    :labels,
    :display_name,
    :gateway_service_account,
    :service_config_id,
    :state,
    :openapi_documents,
    :grpc_services,
    :managed_service_configs
  ]

  field :name, 1, type: :string
  field :create_time, 2, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :update_time, 3, type: Google.Protobuf.Timestamp, json_name: "updateTime"

  field :labels, 4,
    repeated: true,
    type: Google.Cloud.Apigateway.V1.ApiConfig.LabelsEntry,
    map: true

  field :display_name, 5, type: :string, json_name: "displayName"
  field :gateway_service_account, 14, type: :string, json_name: "gatewayServiceAccount"
  field :service_config_id, 12, type: :string, json_name: "serviceConfigId"
  field :state, 8, type: Google.Cloud.Apigateway.V1.ApiConfig.State, enum: true

  field :openapi_documents, 9,
    repeated: true,
    type: Google.Cloud.Apigateway.V1.ApiConfig.OpenApiDocument,
    json_name: "openapiDocuments"

  field :grpc_services, 10,
    repeated: true,
    type: Google.Cloud.Apigateway.V1.ApiConfig.GrpcServiceDefinition,
    json_name: "grpcServices"

  field :managed_service_configs, 11,
    repeated: true,
    type: Google.Cloud.Apigateway.V1.ApiConfig.File,
    json_name: "managedServiceConfigs"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Apigateway.V1.Gateway.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Apigateway.V1.Gateway do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          create_time: Google.Protobuf.Timestamp.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil,
          labels: %{String.t() => String.t()},
          display_name: String.t(),
          api_config: String.t(),
          state: Google.Cloud.Apigateway.V1.Gateway.State.t(),
          default_hostname: String.t()
        }

  defstruct [
    :name,
    :create_time,
    :update_time,
    :labels,
    :display_name,
    :api_config,
    :state,
    :default_hostname
  ]

  field :name, 1, type: :string
  field :create_time, 2, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :update_time, 3, type: Google.Protobuf.Timestamp, json_name: "updateTime"

  field :labels, 4,
    repeated: true,
    type: Google.Cloud.Apigateway.V1.Gateway.LabelsEntry,
    map: true

  field :display_name, 5, type: :string, json_name: "displayName"
  field :api_config, 6, type: :string, json_name: "apiConfig"
  field :state, 7, type: Google.Cloud.Apigateway.V1.Gateway.State, enum: true
  field :default_hostname, 9, type: :string, json_name: "defaultHostname"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Apigateway.V1.ListGatewaysRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t(),
          filter: String.t(),
          order_by: String.t()
        }

  defstruct [:parent, :page_size, :page_token, :filter, :order_by]

  field :parent, 1, type: :string
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
  field :order_by, 5, type: :string, json_name: "orderBy"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Apigateway.V1.ListGatewaysResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          gateways: [Google.Cloud.Apigateway.V1.Gateway.t()],
          next_page_token: String.t(),
          unreachable_locations: [String.t()]
        }

  defstruct [:gateways, :next_page_token, :unreachable_locations]

  field :gateways, 1, repeated: true, type: Google.Cloud.Apigateway.V1.Gateway
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"

  field :unreachable_locations, 3,
    repeated: true,
    type: :string,
    json_name: "unreachableLocations"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Apigateway.V1.GetGatewayRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Apigateway.V1.CreateGatewayRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          gateway_id: String.t(),
          gateway: Google.Cloud.Apigateway.V1.Gateway.t() | nil
        }

  defstruct [:parent, :gateway_id, :gateway]

  field :parent, 1, type: :string
  field :gateway_id, 2, type: :string, json_name: "gatewayId"
  field :gateway, 3, type: Google.Cloud.Apigateway.V1.Gateway

  def transform_module(), do: nil
end

defmodule Google.Cloud.Apigateway.V1.UpdateGatewayRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          update_mask: Google.Protobuf.FieldMask.t() | nil,
          gateway: Google.Cloud.Apigateway.V1.Gateway.t() | nil
        }

  defstruct [:update_mask, :gateway]

  field :update_mask, 1, type: Google.Protobuf.FieldMask, json_name: "updateMask"
  field :gateway, 2, type: Google.Cloud.Apigateway.V1.Gateway

  def transform_module(), do: nil
end

defmodule Google.Cloud.Apigateway.V1.DeleteGatewayRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Apigateway.V1.ListApisRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t(),
          filter: String.t(),
          order_by: String.t()
        }

  defstruct [:parent, :page_size, :page_token, :filter, :order_by]

  field :parent, 1, type: :string
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
  field :order_by, 5, type: :string, json_name: "orderBy"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Apigateway.V1.ListApisResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          apis: [Google.Cloud.Apigateway.V1.Api.t()],
          next_page_token: String.t(),
          unreachable_locations: [String.t()]
        }

  defstruct [:apis, :next_page_token, :unreachable_locations]

  field :apis, 1, repeated: true, type: Google.Cloud.Apigateway.V1.Api
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"

  field :unreachable_locations, 3,
    repeated: true,
    type: :string,
    json_name: "unreachableLocations"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Apigateway.V1.GetApiRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Apigateway.V1.CreateApiRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          api_id: String.t(),
          api: Google.Cloud.Apigateway.V1.Api.t() | nil
        }

  defstruct [:parent, :api_id, :api]

  field :parent, 1, type: :string
  field :api_id, 2, type: :string, json_name: "apiId"
  field :api, 3, type: Google.Cloud.Apigateway.V1.Api

  def transform_module(), do: nil
end

defmodule Google.Cloud.Apigateway.V1.UpdateApiRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          update_mask: Google.Protobuf.FieldMask.t() | nil,
          api: Google.Cloud.Apigateway.V1.Api.t() | nil
        }

  defstruct [:update_mask, :api]

  field :update_mask, 1, type: Google.Protobuf.FieldMask, json_name: "updateMask"
  field :api, 2, type: Google.Cloud.Apigateway.V1.Api

  def transform_module(), do: nil
end

defmodule Google.Cloud.Apigateway.V1.DeleteApiRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Apigateway.V1.ListApiConfigsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t(),
          filter: String.t(),
          order_by: String.t()
        }

  defstruct [:parent, :page_size, :page_token, :filter, :order_by]

  field :parent, 1, type: :string
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
  field :order_by, 5, type: :string, json_name: "orderBy"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Apigateway.V1.ListApiConfigsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          api_configs: [Google.Cloud.Apigateway.V1.ApiConfig.t()],
          next_page_token: String.t(),
          unreachable_locations: [String.t()]
        }

  defstruct [:api_configs, :next_page_token, :unreachable_locations]

  field :api_configs, 1,
    repeated: true,
    type: Google.Cloud.Apigateway.V1.ApiConfig,
    json_name: "apiConfigs"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"

  field :unreachable_locations, 3,
    repeated: true,
    type: :string,
    json_name: "unreachableLocations"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Apigateway.V1.GetApiConfigRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          view: Google.Cloud.Apigateway.V1.GetApiConfigRequest.ConfigView.t()
        }

  defstruct [:name, :view]

  field :name, 1, type: :string
  field :view, 3, type: Google.Cloud.Apigateway.V1.GetApiConfigRequest.ConfigView, enum: true

  def transform_module(), do: nil
end

defmodule Google.Cloud.Apigateway.V1.CreateApiConfigRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          api_config_id: String.t(),
          api_config: Google.Cloud.Apigateway.V1.ApiConfig.t() | nil
        }

  defstruct [:parent, :api_config_id, :api_config]

  field :parent, 1, type: :string
  field :api_config_id, 2, type: :string, json_name: "apiConfigId"
  field :api_config, 3, type: Google.Cloud.Apigateway.V1.ApiConfig, json_name: "apiConfig"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Apigateway.V1.UpdateApiConfigRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          update_mask: Google.Protobuf.FieldMask.t() | nil,
          api_config: Google.Cloud.Apigateway.V1.ApiConfig.t() | nil
        }

  defstruct [:update_mask, :api_config]

  field :update_mask, 1, type: Google.Protobuf.FieldMask, json_name: "updateMask"
  field :api_config, 2, type: Google.Cloud.Apigateway.V1.ApiConfig, json_name: "apiConfig"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Apigateway.V1.DeleteApiConfigRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Apigateway.V1.OperationMetadata.Diagnostic do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          location: String.t(),
          message: String.t()
        }

  defstruct [:location, :message]

  field :location, 1, type: :string
  field :message, 2, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Apigateway.V1.OperationMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          create_time: Google.Protobuf.Timestamp.t() | nil,
          end_time: Google.Protobuf.Timestamp.t() | nil,
          target: String.t(),
          verb: String.t(),
          status_message: String.t(),
          requested_cancellation: boolean,
          api_version: String.t(),
          diagnostics: [Google.Cloud.Apigateway.V1.OperationMetadata.Diagnostic.t()]
        }

  defstruct [
    :create_time,
    :end_time,
    :target,
    :verb,
    :status_message,
    :requested_cancellation,
    :api_version,
    :diagnostics
  ]

  field :create_time, 1, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :end_time, 2, type: Google.Protobuf.Timestamp, json_name: "endTime"
  field :target, 3, type: :string
  field :verb, 4, type: :string
  field :status_message, 5, type: :string, json_name: "statusMessage"
  field :requested_cancellation, 6, type: :bool, json_name: "requestedCancellation"
  field :api_version, 7, type: :string, json_name: "apiVersion"

  field :diagnostics, 8,
    repeated: true,
    type: Google.Cloud.Apigateway.V1.OperationMetadata.Diagnostic

  def transform_module(), do: nil
end
