defmodule Google.Home.Graph.V1.Device do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :id, 1, type: :string
  field :type, 2, type: :string
  field :traits, 3, repeated: true, type: :string
  field :name, 4, type: Google.Home.Graph.V1.DeviceNames
  field :will_report_state, 5, type: :bool, json_name: "willReportState"
  field :room_hint, 6, type: :string, json_name: "roomHint"
  field :structure_hint, 7, type: :string, json_name: "structureHint"
  field :device_info, 8, type: Google.Home.Graph.V1.DeviceInfo, json_name: "deviceInfo"
  field :attributes, 9, type: Google.Protobuf.Struct
  field :custom_data, 10, type: Google.Protobuf.Struct, json_name: "customData"

  field :other_device_ids, 11,
    repeated: true,
    type: Google.Home.Graph.V1.AgentOtherDeviceId,
    json_name: "otherDeviceIds"

  field :notification_supported_by_agent, 12,
    type: :bool,
    json_name: "notificationSupportedByAgent"
end

defmodule Google.Home.Graph.V1.DeviceNames do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string
  field :nicknames, 2, repeated: true, type: :string
  field :default_names, 3, repeated: true, type: :string, json_name: "defaultNames"
end

defmodule Google.Home.Graph.V1.DeviceInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :manufacturer, 1, type: :string
  field :model, 2, type: :string
  field :hw_version, 3, type: :string, json_name: "hwVersion"
  field :sw_version, 4, type: :string, json_name: "swVersion"
end

defmodule Google.Home.Graph.V1.AgentOtherDeviceId do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :agent_id, 1, type: :string, json_name: "agentId"
  field :device_id, 2, type: :string, json_name: "deviceId"
end
