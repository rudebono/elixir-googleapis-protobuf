defmodule Google.Apps.Script.Type.Docs.DocsAddOnManifest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :homepage_trigger, 1,
    type: Google.Apps.Script.Type.HomepageExtensionPoint,
    json_name: "homepageTrigger"

  field :on_file_scope_granted_trigger, 2,
    type: Google.Apps.Script.Type.Docs.DocsExtensionPoint,
    json_name: "onFileScopeGrantedTrigger"
end

defmodule Google.Apps.Script.Type.Docs.DocsExtensionPoint do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :run_function, 1, type: :string, json_name: "runFunction", deprecated: false
end