defmodule Google.Apps.Script.Type.Drive.DriveAddOnManifest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          homepage_trigger: Google.Apps.Script.Type.HomepageExtensionPoint.t() | nil,
          on_items_selected_trigger: Google.Apps.Script.Type.Drive.DriveExtensionPoint.t() | nil
        }

  defstruct [:homepage_trigger, :on_items_selected_trigger]

  field :homepage_trigger, 1,
    type: Google.Apps.Script.Type.HomepageExtensionPoint,
    json_name: "homepageTrigger"

  field :on_items_selected_trigger, 2,
    type: Google.Apps.Script.Type.Drive.DriveExtensionPoint,
    json_name: "onItemsSelectedTrigger"

  def transform_module(), do: nil
end

defmodule Google.Apps.Script.Type.Drive.DriveExtensionPoint do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          run_function: String.t()
        }

  defstruct [:run_function]

  field :run_function, 1, type: :string, json_name: "runFunction"

  def transform_module(), do: nil
end
