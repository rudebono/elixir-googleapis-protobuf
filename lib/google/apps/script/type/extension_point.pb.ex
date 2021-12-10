defmodule Google.Apps.Script.Type.MenuItemExtensionPoint do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          run_function: String.t(),
          label: String.t(),
          logo_url: String.t()
        }

  defstruct run_function: "",
            label: "",
            logo_url: ""

  field :run_function, 1, type: :string, json_name: "runFunction"
  field :label, 2, type: :string
  field :logo_url, 3, type: :string, json_name: "logoUrl"
end
defmodule Google.Apps.Script.Type.HomepageExtensionPoint do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          run_function: String.t(),
          enabled: Google.Protobuf.BoolValue.t() | nil
        }

  defstruct run_function: "",
            enabled: nil

  field :run_function, 1, type: :string, json_name: "runFunction"
  field :enabled, 2, type: Google.Protobuf.BoolValue
end
defmodule Google.Apps.Script.Type.UniversalActionExtensionPoint do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          action_type: {:open_link, String.t()} | {:run_function, String.t()},
          label: String.t()
        }

  defstruct action_type: nil,
            label: ""

  oneof :action_type, 0

  field :label, 1, type: :string
  field :open_link, 2, type: :string, json_name: "openLink", oneof: 0
  field :run_function, 3, type: :string, json_name: "runFunction", oneof: 0
end
