defmodule Google.Cloud.Iot.V1.CreateDeviceRegistryRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :device_registry, 2,
    type: Google.Cloud.Iot.V1.DeviceRegistry,
    json_name: "deviceRegistry",
    deprecated: false
end

defmodule Google.Cloud.Iot.V1.GetDeviceRegistryRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Iot.V1.DeleteDeviceRegistryRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Iot.V1.UpdateDeviceRegistryRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :device_registry, 1,
    type: Google.Cloud.Iot.V1.DeviceRegistry,
    json_name: "deviceRegistry",
    deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Cloud.Iot.V1.ListDeviceRegistriesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Cloud.Iot.V1.ListDeviceRegistriesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :device_registries, 1,
    repeated: true,
    type: Google.Cloud.Iot.V1.DeviceRegistry,
    json_name: "deviceRegistries"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Iot.V1.CreateDeviceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :device, 2, type: Google.Cloud.Iot.V1.Device, deprecated: false
end

defmodule Google.Cloud.Iot.V1.GetDeviceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :field_mask, 2, type: Google.Protobuf.FieldMask, json_name: "fieldMask"
end

defmodule Google.Cloud.Iot.V1.UpdateDeviceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :device, 2, type: Google.Cloud.Iot.V1.Device, deprecated: false

  field :update_mask, 3,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Cloud.Iot.V1.DeleteDeviceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Iot.V1.ListDevicesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :device_num_ids, 2, repeated: true, type: :uint64, json_name: "deviceNumIds"
  field :device_ids, 3, repeated: true, type: :string, json_name: "deviceIds"
  field :field_mask, 4, type: Google.Protobuf.FieldMask, json_name: "fieldMask"

  field :gateway_list_options, 6,
    type: Google.Cloud.Iot.V1.GatewayListOptions,
    json_name: "gatewayListOptions"

  field :page_size, 100, type: :int32, json_name: "pageSize"
  field :page_token, 101, type: :string, json_name: "pageToken"
end

defmodule Google.Cloud.Iot.V1.GatewayListOptions do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  oneof :filter, 0

  field :gateway_type, 1,
    type: Google.Cloud.Iot.V1.GatewayType,
    json_name: "gatewayType",
    enum: true,
    oneof: 0

  field :associations_gateway_id, 2, type: :string, json_name: "associationsGatewayId", oneof: 0
  field :associations_device_id, 3, type: :string, json_name: "associationsDeviceId", oneof: 0
end

defmodule Google.Cloud.Iot.V1.ListDevicesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :devices, 1, repeated: true, type: Google.Cloud.Iot.V1.Device
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Iot.V1.ModifyCloudToDeviceConfigRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :version_to_update, 2, type: :int64, json_name: "versionToUpdate"
  field :binary_data, 3, type: :bytes, json_name: "binaryData", deprecated: false
end

defmodule Google.Cloud.Iot.V1.ListDeviceConfigVersionsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :num_versions, 2, type: :int32, json_name: "numVersions"
end

defmodule Google.Cloud.Iot.V1.ListDeviceConfigVersionsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :device_configs, 1,
    repeated: true,
    type: Google.Cloud.Iot.V1.DeviceConfig,
    json_name: "deviceConfigs"
end

defmodule Google.Cloud.Iot.V1.ListDeviceStatesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :num_states, 2, type: :int32, json_name: "numStates"
end

defmodule Google.Cloud.Iot.V1.ListDeviceStatesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :device_states, 1,
    repeated: true,
    type: Google.Cloud.Iot.V1.DeviceState,
    json_name: "deviceStates"
end

defmodule Google.Cloud.Iot.V1.SendCommandToDeviceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :binary_data, 2, type: :bytes, json_name: "binaryData", deprecated: false
  field :subfolder, 3, type: :string
end

defmodule Google.Cloud.Iot.V1.SendCommandToDeviceResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3
end

defmodule Google.Cloud.Iot.V1.BindDeviceToGatewayRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :gateway_id, 2, type: :string, json_name: "gatewayId", deprecated: false
  field :device_id, 3, type: :string, json_name: "deviceId", deprecated: false
end

defmodule Google.Cloud.Iot.V1.BindDeviceToGatewayResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3
end

defmodule Google.Cloud.Iot.V1.UnbindDeviceFromGatewayRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :gateway_id, 2, type: :string, json_name: "gatewayId", deprecated: false
  field :device_id, 3, type: :string, json_name: "deviceId", deprecated: false
end

defmodule Google.Cloud.Iot.V1.UnbindDeviceFromGatewayResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3
end

defmodule Google.Cloud.Iot.V1.DeviceManager.Service do
  @moduledoc false

  use GRPC.Service, name: "google.cloud.iot.v1.DeviceManager", protoc_gen_elixir_version: "0.13.0"

  rpc :CreateDeviceRegistry,
      Google.Cloud.Iot.V1.CreateDeviceRegistryRequest,
      Google.Cloud.Iot.V1.DeviceRegistry

  rpc :GetDeviceRegistry,
      Google.Cloud.Iot.V1.GetDeviceRegistryRequest,
      Google.Cloud.Iot.V1.DeviceRegistry

  rpc :UpdateDeviceRegistry,
      Google.Cloud.Iot.V1.UpdateDeviceRegistryRequest,
      Google.Cloud.Iot.V1.DeviceRegistry

  rpc :DeleteDeviceRegistry,
      Google.Cloud.Iot.V1.DeleteDeviceRegistryRequest,
      Google.Protobuf.Empty

  rpc :ListDeviceRegistries,
      Google.Cloud.Iot.V1.ListDeviceRegistriesRequest,
      Google.Cloud.Iot.V1.ListDeviceRegistriesResponse

  rpc :CreateDevice, Google.Cloud.Iot.V1.CreateDeviceRequest, Google.Cloud.Iot.V1.Device

  rpc :GetDevice, Google.Cloud.Iot.V1.GetDeviceRequest, Google.Cloud.Iot.V1.Device

  rpc :UpdateDevice, Google.Cloud.Iot.V1.UpdateDeviceRequest, Google.Cloud.Iot.V1.Device

  rpc :DeleteDevice, Google.Cloud.Iot.V1.DeleteDeviceRequest, Google.Protobuf.Empty

  rpc :ListDevices,
      Google.Cloud.Iot.V1.ListDevicesRequest,
      Google.Cloud.Iot.V1.ListDevicesResponse

  rpc :ModifyCloudToDeviceConfig,
      Google.Cloud.Iot.V1.ModifyCloudToDeviceConfigRequest,
      Google.Cloud.Iot.V1.DeviceConfig

  rpc :ListDeviceConfigVersions,
      Google.Cloud.Iot.V1.ListDeviceConfigVersionsRequest,
      Google.Cloud.Iot.V1.ListDeviceConfigVersionsResponse

  rpc :ListDeviceStates,
      Google.Cloud.Iot.V1.ListDeviceStatesRequest,
      Google.Cloud.Iot.V1.ListDeviceStatesResponse

  rpc :SetIamPolicy, Google.Iam.V1.SetIamPolicyRequest, Google.Iam.V1.Policy

  rpc :GetIamPolicy, Google.Iam.V1.GetIamPolicyRequest, Google.Iam.V1.Policy

  rpc :TestIamPermissions,
      Google.Iam.V1.TestIamPermissionsRequest,
      Google.Iam.V1.TestIamPermissionsResponse

  rpc :SendCommandToDevice,
      Google.Cloud.Iot.V1.SendCommandToDeviceRequest,
      Google.Cloud.Iot.V1.SendCommandToDeviceResponse

  rpc :BindDeviceToGateway,
      Google.Cloud.Iot.V1.BindDeviceToGatewayRequest,
      Google.Cloud.Iot.V1.BindDeviceToGatewayResponse

  rpc :UnbindDeviceFromGateway,
      Google.Cloud.Iot.V1.UnbindDeviceFromGatewayRequest,
      Google.Cloud.Iot.V1.UnbindDeviceFromGatewayResponse
end

defmodule Google.Cloud.Iot.V1.DeviceManager.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Iot.V1.DeviceManager.Service
end