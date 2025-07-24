defmodule Google.Cloud.Licensemanager.V1.ListConfigurationsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
end

defmodule Google.Cloud.Licensemanager.V1.ListConfigurationsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :configurations, 1, repeated: true, type: Google.Cloud.Licensemanager.V1.Configuration
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Licensemanager.V1.GetConfigurationRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Licensemanager.V1.CreateConfigurationRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :configuration_id, 2, type: :string, json_name: "configurationId", deprecated: false
  field :configuration, 3, type: Google.Cloud.Licensemanager.V1.Configuration, deprecated: false
  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Licensemanager.V1.UpdateConfigurationRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :update_mask, 1,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :configuration, 2, type: Google.Cloud.Licensemanager.V1.Configuration, deprecated: false
  field :request_id, 3, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Licensemanager.V1.DeleteConfigurationRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Licensemanager.V1.ListInstancesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
end

defmodule Google.Cloud.Licensemanager.V1.ListInstancesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :instances, 1, repeated: true, type: Google.Cloud.Licensemanager.V1.Instance
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Licensemanager.V1.GetInstanceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Licensemanager.V1.QueryConfigurationLicenseUsageRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :start_time, 2, type: Google.Protobuf.Timestamp, json_name: "startTime", deprecated: false
  field :end_time, 3, type: Google.Protobuf.Timestamp, json_name: "endTime", deprecated: false
end

defmodule Google.Cloud.Licensemanager.V1.QueryConfigurationLicenseUsageResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :details, 0

  field :user_count_usage, 1,
    type: Google.Cloud.Licensemanager.V1.UserCountUsage,
    json_name: "userCountUsage",
    oneof: 0
end

defmodule Google.Cloud.Licensemanager.V1.DeactivateConfigurationRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Licensemanager.V1.ReactivateConfigurationRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Licensemanager.V1.AggregateUsageRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :page_size, 3, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 4, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 5, type: :string, deprecated: false
  field :order_by, 6, type: :string, json_name: "orderBy", deprecated: false
  field :start_time, 7, type: Google.Protobuf.Timestamp, json_name: "startTime", deprecated: false
  field :end_time, 8, type: Google.Protobuf.Timestamp, json_name: "endTime", deprecated: false
end

defmodule Google.Cloud.Licensemanager.V1.AggregateUsageResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :usages, 1, repeated: true, type: Google.Cloud.Licensemanager.V1.Usage
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Licensemanager.V1.ListProductsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
end

defmodule Google.Cloud.Licensemanager.V1.ListProductsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :products, 1, repeated: true, type: Google.Cloud.Licensemanager.V1.Product
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Licensemanager.V1.GetProductRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Licensemanager.V1.OperationMetadata do
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

defmodule Google.Cloud.Licensemanager.V1.LicenseManager.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.licensemanager.v1.LicenseManager",
    protoc_gen_elixir_version: "0.15.0"

  rpc :ListConfigurations,
      Google.Cloud.Licensemanager.V1.ListConfigurationsRequest,
      Google.Cloud.Licensemanager.V1.ListConfigurationsResponse

  rpc :GetConfiguration,
      Google.Cloud.Licensemanager.V1.GetConfigurationRequest,
      Google.Cloud.Licensemanager.V1.Configuration

  rpc :CreateConfiguration,
      Google.Cloud.Licensemanager.V1.CreateConfigurationRequest,
      Google.Longrunning.Operation

  rpc :UpdateConfiguration,
      Google.Cloud.Licensemanager.V1.UpdateConfigurationRequest,
      Google.Longrunning.Operation

  rpc :DeleteConfiguration,
      Google.Cloud.Licensemanager.V1.DeleteConfigurationRequest,
      Google.Longrunning.Operation

  rpc :ListInstances,
      Google.Cloud.Licensemanager.V1.ListInstancesRequest,
      Google.Cloud.Licensemanager.V1.ListInstancesResponse

  rpc :GetInstance,
      Google.Cloud.Licensemanager.V1.GetInstanceRequest,
      Google.Cloud.Licensemanager.V1.Instance

  rpc :DeactivateConfiguration,
      Google.Cloud.Licensemanager.V1.DeactivateConfigurationRequest,
      Google.Longrunning.Operation

  rpc :ReactivateConfiguration,
      Google.Cloud.Licensemanager.V1.ReactivateConfigurationRequest,
      Google.Longrunning.Operation

  rpc :QueryConfigurationLicenseUsage,
      Google.Cloud.Licensemanager.V1.QueryConfigurationLicenseUsageRequest,
      Google.Cloud.Licensemanager.V1.QueryConfigurationLicenseUsageResponse

  rpc :AggregateUsage,
      Google.Cloud.Licensemanager.V1.AggregateUsageRequest,
      Google.Cloud.Licensemanager.V1.AggregateUsageResponse

  rpc :ListProducts,
      Google.Cloud.Licensemanager.V1.ListProductsRequest,
      Google.Cloud.Licensemanager.V1.ListProductsResponse

  rpc :GetProduct,
      Google.Cloud.Licensemanager.V1.GetProductRequest,
      Google.Cloud.Licensemanager.V1.Product
end

defmodule Google.Cloud.Licensemanager.V1.LicenseManager.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Licensemanager.V1.LicenseManager.Service
end
