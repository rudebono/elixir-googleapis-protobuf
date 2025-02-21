defmodule Google.Apps.Script.Type.Sheets.SheetsAddOnManifest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :homepage_trigger, 3,
    type: Google.Apps.Script.Type.HomepageExtensionPoint,
    json_name: "homepageTrigger"

  field :on_file_scope_granted_trigger, 5,
    type: Google.Apps.Script.Type.Sheets.SheetsExtensionPoint,
    json_name: "onFileScopeGrantedTrigger"
end

defmodule Google.Apps.Script.Type.Sheets.SheetsExtensionPoint do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :run_function, 1, type: :string, json_name: "runFunction", deprecated: false
end
