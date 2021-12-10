defmodule Google.Home.Graph.V1.Device do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          id: String.t(),
          type: String.t(),
          traits: [String.t()],
          name: Google.Home.Graph.V1.DeviceNames.t() | nil,
          will_report_state: boolean,
          room_hint: String.t(),
          structure_hint: String.t(),
          device_info: Google.Home.Graph.V1.DeviceInfo.t() | nil,
          attributes: Google.Protobuf.Struct.t() | nil,
          custom_data: Google.Protobuf.Struct.t() | nil,
          other_device_ids: [Google.Home.Graph.V1.AgentOtherDeviceId.t()],
          notification_supported_by_agent: boolean
        }

  defstruct id: "",
            type: "",
            traits: [],
            name: nil,
            will_report_state: false,
            room_hint: "",
            structure_hint: "",
            device_info: nil,
            attributes: nil,
            custom_data: nil,
            other_device_ids: [],
            notification_supported_by_agent: false

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          nicknames: [String.t()],
          default_names: [String.t()]
        }

  defstruct name: "",
            nicknames: [],
            default_names: []

  field :name, 1, type: :string
  field :nicknames, 2, repeated: true, type: :string
  field :default_names, 3, repeated: true, type: :string, json_name: "defaultNames"
end
defmodule Google.Home.Graph.V1.DeviceInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          manufacturer: String.t(),
          model: String.t(),
          hw_version: String.t(),
          sw_version: String.t()
        }

  defstruct manufacturer: "",
            model: "",
            hw_version: "",
            sw_version: ""

  field :manufacturer, 1, type: :string
  field :model, 2, type: :string
  field :hw_version, 3, type: :string, json_name: "hwVersion"
  field :sw_version, 4, type: :string, json_name: "swVersion"
end
defmodule Google.Home.Graph.V1.AgentOtherDeviceId do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          agent_id: String.t(),
          device_id: String.t()
        }

  defstruct agent_id: "",
            device_id: ""

  field :agent_id, 1, type: :string, json_name: "agentId"
  field :device_id, 2, type: :string, json_name: "deviceId"
end
