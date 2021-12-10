defmodule Google.Apps.Script.Type.Slides.SlidesAddOnManifest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          homepage_trigger: Google.Apps.Script.Type.HomepageExtensionPoint.t() | nil,
          on_file_scope_granted_trigger:
            Google.Apps.Script.Type.Slides.SlidesExtensionPoint.t() | nil
        }

  defstruct homepage_trigger: nil,
            on_file_scope_granted_trigger: nil

  field :homepage_trigger, 1,
    type: Google.Apps.Script.Type.HomepageExtensionPoint,
    json_name: "homepageTrigger"

  field :on_file_scope_granted_trigger, 2,
    type: Google.Apps.Script.Type.Slides.SlidesExtensionPoint,
    json_name: "onFileScopeGrantedTrigger"
end
defmodule Google.Apps.Script.Type.Slides.SlidesExtensionPoint do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          run_function: String.t()
        }

  defstruct run_function: ""

  field :run_function, 1, type: :string, json_name: "runFunction", deprecated: false
end
