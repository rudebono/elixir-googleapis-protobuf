defmodule Google.Apps.Script.Type.Sheets.SheetsAddOnManifest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          homepage_trigger: Google.Apps.Script.Type.HomepageExtensionPoint.t() | nil,
          on_file_scope_granted_trigger:
            Google.Apps.Script.Type.Sheets.SheetsExtensionPoint.t() | nil
        }

  defstruct [:homepage_trigger, :on_file_scope_granted_trigger]

  field :homepage_trigger, 3, type: Google.Apps.Script.Type.HomepageExtensionPoint

  field :on_file_scope_granted_trigger, 5,
    type: Google.Apps.Script.Type.Sheets.SheetsExtensionPoint
end

defmodule Google.Apps.Script.Type.Sheets.SheetsExtensionPoint do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          run_function: String.t()
        }

  defstruct [:run_function]

  field :run_function, 1, type: :string
end
