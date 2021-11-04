defmodule Google.Cloud.Iot.V1.CreateDeviceRegistryRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          device_registry: Google.Cloud.Iot.V1.DeviceRegistry.t() | nil
        }

  defstruct [:parent, :device_registry]

  field :parent, 1, type: :string
  field :device_registry, 2, type: Google.Cloud.Iot.V1.DeviceRegistry, json_name: "deviceRegistry"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Iot.V1.GetDeviceRegistryRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Iot.V1.DeleteDeviceRegistryRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Iot.V1.UpdateDeviceRegistryRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          device_registry: Google.Cloud.Iot.V1.DeviceRegistry.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:device_registry, :update_mask]

  field :device_registry, 1, type: Google.Cloud.Iot.V1.DeviceRegistry, json_name: "deviceRegistry"
  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Iot.V1.ListDeviceRegistriesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct [:parent, :page_size, :page_token]

  field :parent, 1, type: :string
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Iot.V1.ListDeviceRegistriesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          device_registries: [Google.Cloud.Iot.V1.DeviceRegistry.t()],
          next_page_token: String.t()
        }

  defstruct [:device_registries, :next_page_token]

  field :device_registries, 1,
    repeated: true,
    type: Google.Cloud.Iot.V1.DeviceRegistry,
    json_name: "deviceRegistries"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Iot.V1.CreateDeviceRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          device: Google.Cloud.Iot.V1.Device.t() | nil
        }

  defstruct [:parent, :device]

  field :parent, 1, type: :string
  field :device, 2, type: Google.Cloud.Iot.V1.Device

  def transform_module(), do: nil
end

defmodule Google.Cloud.Iot.V1.GetDeviceRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          field_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:name, :field_mask]

  field :name, 1, type: :string
  field :field_mask, 2, type: Google.Protobuf.FieldMask, json_name: "fieldMask"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Iot.V1.UpdateDeviceRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          device: Google.Cloud.Iot.V1.Device.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:device, :update_mask]

  field :device, 2, type: Google.Cloud.Iot.V1.Device
  field :update_mask, 3, type: Google.Protobuf.FieldMask, json_name: "updateMask"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Iot.V1.DeleteDeviceRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Iot.V1.ListDevicesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          device_num_ids: [non_neg_integer],
          device_ids: [String.t()],
          field_mask: Google.Protobuf.FieldMask.t() | nil,
          gateway_list_options: Google.Cloud.Iot.V1.GatewayListOptions.t() | nil,
          page_size: integer,
          page_token: String.t()
        }

  defstruct [
    :parent,
    :device_num_ids,
    :device_ids,
    :field_mask,
    :gateway_list_options,
    :page_size,
    :page_token
  ]

  field :parent, 1, type: :string
  field :device_num_ids, 2, repeated: true, type: :uint64, json_name: "deviceNumIds"
  field :device_ids, 3, repeated: true, type: :string, json_name: "deviceIds"
  field :field_mask, 4, type: Google.Protobuf.FieldMask, json_name: "fieldMask"

  field :gateway_list_options, 6,
    type: Google.Cloud.Iot.V1.GatewayListOptions,
    json_name: "gatewayListOptions"

  field :page_size, 100, type: :int32, json_name: "pageSize"
  field :page_token, 101, type: :string, json_name: "pageToken"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Iot.V1.GatewayListOptions do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          filter:
            {:gateway_type, Google.Cloud.Iot.V1.GatewayType.t()}
            | {:associations_gateway_id, String.t()}
            | {:associations_device_id, String.t()}
        }

  defstruct [:filter]

  oneof :filter, 0

  field :gateway_type, 1,
    type: Google.Cloud.Iot.V1.GatewayType,
    enum: true,
    json_name: "gatewayType",
    oneof: 0

  field :associations_gateway_id, 2, type: :string, json_name: "associationsGatewayId", oneof: 0
  field :associations_device_id, 3, type: :string, json_name: "associationsDeviceId", oneof: 0

  def transform_module(), do: nil
end

defmodule Google.Cloud.Iot.V1.ListDevicesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          devices: [Google.Cloud.Iot.V1.Device.t()],
          next_page_token: String.t()
        }

  defstruct [:devices, :next_page_token]

  field :devices, 1, repeated: true, type: Google.Cloud.Iot.V1.Device
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Iot.V1.ModifyCloudToDeviceConfigRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          version_to_update: integer,
          binary_data: binary
        }

  defstruct [:name, :version_to_update, :binary_data]

  field :name, 1, type: :string
  field :version_to_update, 2, type: :int64, json_name: "versionToUpdate"
  field :binary_data, 3, type: :bytes, json_name: "binaryData"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Iot.V1.ListDeviceConfigVersionsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          num_versions: integer
        }

  defstruct [:name, :num_versions]

  field :name, 1, type: :string
  field :num_versions, 2, type: :int32, json_name: "numVersions"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Iot.V1.ListDeviceConfigVersionsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          device_configs: [Google.Cloud.Iot.V1.DeviceConfig.t()]
        }

  defstruct [:device_configs]

  field :device_configs, 1,
    repeated: true,
    type: Google.Cloud.Iot.V1.DeviceConfig,
    json_name: "deviceConfigs"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Iot.V1.ListDeviceStatesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          num_states: integer
        }

  defstruct [:name, :num_states]

  field :name, 1, type: :string
  field :num_states, 2, type: :int32, json_name: "numStates"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Iot.V1.ListDeviceStatesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          device_states: [Google.Cloud.Iot.V1.DeviceState.t()]
        }

  defstruct [:device_states]

  field :device_states, 1,
    repeated: true,
    type: Google.Cloud.Iot.V1.DeviceState,
    json_name: "deviceStates"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Iot.V1.SendCommandToDeviceRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          binary_data: binary,
          subfolder: String.t()
        }

  defstruct [:name, :binary_data, :subfolder]

  field :name, 1, type: :string
  field :binary_data, 2, type: :bytes, json_name: "binaryData"
  field :subfolder, 3, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Iot.V1.SendCommandToDeviceResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []

  def transform_module(), do: nil
end

defmodule Google.Cloud.Iot.V1.BindDeviceToGatewayRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          gateway_id: String.t(),
          device_id: String.t()
        }

  defstruct [:parent, :gateway_id, :device_id]

  field :parent, 1, type: :string
  field :gateway_id, 2, type: :string, json_name: "gatewayId"
  field :device_id, 3, type: :string, json_name: "deviceId"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Iot.V1.BindDeviceToGatewayResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []

  def transform_module(), do: nil
end

defmodule Google.Cloud.Iot.V1.UnbindDeviceFromGatewayRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          gateway_id: String.t(),
          device_id: String.t()
        }

  defstruct [:parent, :gateway_id, :device_id]

  field :parent, 1, type: :string
  field :gateway_id, 2, type: :string, json_name: "gatewayId"
  field :device_id, 3, type: :string, json_name: "deviceId"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Iot.V1.UnbindDeviceFromGatewayResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []

  def transform_module(), do: nil
end

defmodule Google.Cloud.Iot.V1.DeviceManager.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.iot.v1.DeviceManager"

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
