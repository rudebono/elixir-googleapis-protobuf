defmodule Google.Apps.Script.Type.Drive.DriveAddOnManifest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :homepage_trigger, 1,
    type: Google.Apps.Script.Type.HomepageExtensionPoint,
    json_name: "homepageTrigger"

  field :on_items_selected_trigger, 2,
    type: Google.Apps.Script.Type.Drive.DriveExtensionPoint,
    json_name: "onItemsSelectedTrigger"
end

defmodule Google.Apps.Script.Type.Drive.DriveExtensionPoint do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :run_function, 1, type: :string, json_name: "runFunction"
end
