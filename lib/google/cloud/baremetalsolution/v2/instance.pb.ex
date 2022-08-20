defmodule Google.Cloud.Baremetalsolution.V2.Instance.State do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :PROVISIONING, 1
  field :RUNNING, 2
  field :DELETED, 3
end

defmodule Google.Cloud.Baremetalsolution.V2.ServerNetworkTemplate.LogicalInterface.InterfaceType do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :INTERFACE_TYPE_UNSPECIFIED, 0
  field :BOND, 1
  field :NIC, 2
end

defmodule Google.Cloud.Baremetalsolution.V2.Instance.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Baremetalsolution.V2.Instance do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :id, 11, type: :string

  field :create_time, 2,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :machine_type, 4, type: :string, json_name: "machineType"
  field :state, 5, type: Google.Cloud.Baremetalsolution.V2.Instance.State, enum: true
  field :hyperthreading_enabled, 6, type: :bool, json_name: "hyperthreadingEnabled"

  field :labels, 7,
    repeated: true,
    type: Google.Cloud.Baremetalsolution.V2.Instance.LabelsEntry,
    map: true

  field :luns, 8, repeated: true, type: Google.Cloud.Baremetalsolution.V2.Lun
  field :networks, 9, repeated: true, type: Google.Cloud.Baremetalsolution.V2.Network

  field :interactive_serial_console_enabled, 10,
    type: :bool,
    json_name: "interactiveSerialConsoleEnabled"

  field :os_image, 12, type: :string, json_name: "osImage"
  field :pod, 13, type: :string, deprecated: false
  field :network_template, 14, type: :string, json_name: "networkTemplate", deprecated: false

  field :logical_interfaces, 15,
    repeated: true,
    type: Google.Cloud.Baremetalsolution.V2.LogicalInterface,
    json_name: "logicalInterfaces"
end

defmodule Google.Cloud.Baremetalsolution.V2.GetInstanceRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Baremetalsolution.V2.ListInstancesRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
end

defmodule Google.Cloud.Baremetalsolution.V2.ListInstancesResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :instances, 1, repeated: true, type: Google.Cloud.Baremetalsolution.V2.Instance
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Baremetalsolution.V2.UpdateInstanceRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :instance, 1, type: Google.Cloud.Baremetalsolution.V2.Instance, deprecated: false
  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end

defmodule Google.Cloud.Baremetalsolution.V2.ResetInstanceRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Baremetalsolution.V2.StartInstanceRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Baremetalsolution.V2.StopInstanceRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Baremetalsolution.V2.DetachLunRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :instance, 1, type: :string, deprecated: false
  field :lun, 2, type: :string, deprecated: false
end

defmodule Google.Cloud.Baremetalsolution.V2.ServerNetworkTemplate.LogicalInterface do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string

  field :type, 2,
    type: Google.Cloud.Baremetalsolution.V2.ServerNetworkTemplate.LogicalInterface.InterfaceType,
    enum: true

  field :required, 3, type: :bool
end

defmodule Google.Cloud.Baremetalsolution.V2.ServerNetworkTemplate do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :applicable_instance_types, 2,
    repeated: true,
    type: :string,
    json_name: "applicableInstanceTypes"

  field :logical_interfaces, 3,
    repeated: true,
    type: Google.Cloud.Baremetalsolution.V2.ServerNetworkTemplate.LogicalInterface,
    json_name: "logicalInterfaces"
end

defmodule Google.Cloud.Baremetalsolution.V2.StartInstanceResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3
end

defmodule Google.Cloud.Baremetalsolution.V2.StopInstanceResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3
end