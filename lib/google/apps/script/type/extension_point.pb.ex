defmodule Google.Apps.Script.Type.MenuItemExtensionPoint do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          run_function: String.t(),
          label: String.t(),
          logo_url: String.t()
        }

  defstruct [:run_function, :label, :logo_url]

  field :run_function, 1, type: :string
  field :label, 2, type: :string
  field :logo_url, 3, type: :string
end

defmodule Google.Apps.Script.Type.HomepageExtensionPoint do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          run_function: String.t(),
          enabled: Google.Protobuf.BoolValue.t() | nil
        }

  defstruct [:run_function, :enabled]

  field :run_function, 1, type: :string
  field :enabled, 2, type: Google.Protobuf.BoolValue
end

defmodule Google.Apps.Script.Type.UniversalActionExtensionPoint do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          action_type: {atom, any},
          label: String.t()
        }

  defstruct [:action_type, :label]

  oneof :action_type, 0
  field :label, 1, type: :string
  field :open_link, 2, type: :string, oneof: 0
  field :run_function, 3, type: :string, oneof: 0
end
