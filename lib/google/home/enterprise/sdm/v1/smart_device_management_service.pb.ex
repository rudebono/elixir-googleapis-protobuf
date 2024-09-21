defmodule Google.Home.Enterprise.Sdm.V1.GetDeviceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string
end

defmodule Google.Home.Enterprise.Sdm.V1.ListDevicesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
end

defmodule Google.Home.Enterprise.Sdm.V1.ListDevicesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :devices, 1, repeated: true, type: Google.Home.Enterprise.Sdm.V1.Device
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Home.Enterprise.Sdm.V1.ExecuteDeviceCommandRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string
  field :command, 2, type: :string
  field :params, 3, type: Google.Protobuf.Struct
end

defmodule Google.Home.Enterprise.Sdm.V1.ExecuteDeviceCommandResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :results, 1, type: Google.Protobuf.Struct
end

defmodule Google.Home.Enterprise.Sdm.V1.GetStructureRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string
end

defmodule Google.Home.Enterprise.Sdm.V1.ListStructuresRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
end

defmodule Google.Home.Enterprise.Sdm.V1.ListStructuresResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :structures, 1, repeated: true, type: Google.Home.Enterprise.Sdm.V1.Structure
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Home.Enterprise.Sdm.V1.GetRoomRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string
end

defmodule Google.Home.Enterprise.Sdm.V1.ListRoomsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Home.Enterprise.Sdm.V1.ListRoomsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :rooms, 1, repeated: true, type: Google.Home.Enterprise.Sdm.V1.Room
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Home.Enterprise.Sdm.V1.SmartDeviceManagementService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.home.enterprise.sdm.v1.SmartDeviceManagementService",
    protoc_gen_elixir_version: "0.13.0"

  rpc :GetDevice,
      Google.Home.Enterprise.Sdm.V1.GetDeviceRequest,
      Google.Home.Enterprise.Sdm.V1.Device

  rpc :ListDevices,
      Google.Home.Enterprise.Sdm.V1.ListDevicesRequest,
      Google.Home.Enterprise.Sdm.V1.ListDevicesResponse

  rpc :ExecuteDeviceCommand,
      Google.Home.Enterprise.Sdm.V1.ExecuteDeviceCommandRequest,
      Google.Home.Enterprise.Sdm.V1.ExecuteDeviceCommandResponse

  rpc :GetStructure,
      Google.Home.Enterprise.Sdm.V1.GetStructureRequest,
      Google.Home.Enterprise.Sdm.V1.Structure

  rpc :ListStructures,
      Google.Home.Enterprise.Sdm.V1.ListStructuresRequest,
      Google.Home.Enterprise.Sdm.V1.ListStructuresResponse

  rpc :GetRoom, Google.Home.Enterprise.Sdm.V1.GetRoomRequest, Google.Home.Enterprise.Sdm.V1.Room

  rpc :ListRooms,
      Google.Home.Enterprise.Sdm.V1.ListRoomsRequest,
      Google.Home.Enterprise.Sdm.V1.ListRoomsResponse
end

defmodule Google.Home.Enterprise.Sdm.V1.SmartDeviceManagementService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Home.Enterprise.Sdm.V1.SmartDeviceManagementService.Service
end