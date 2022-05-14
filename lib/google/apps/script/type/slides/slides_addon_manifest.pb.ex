defmodule Google.Apps.Script.Type.Slides.SlidesAddOnManifest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :homepage_trigger, 1,
    type: Google.Apps.Script.Type.HomepageExtensionPoint,
    json_name: "homepageTrigger"

  field :on_file_scope_granted_trigger, 2,
    type: Google.Apps.Script.Type.Slides.SlidesExtensionPoint,
    json_name: "onFileScopeGrantedTrigger"
end
defmodule Google.Apps.Script.Type.Slides.SlidesExtensionPoint do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :run_function, 1, type: :string, json_name: "runFunction", deprecated: false
end
