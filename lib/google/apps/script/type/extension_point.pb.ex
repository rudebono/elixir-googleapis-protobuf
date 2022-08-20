defmodule Google.Apps.Script.Type.MenuItemExtensionPoint do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :run_function, 1, type: :string, json_name: "runFunction"
  field :label, 2, type: :string
  field :logo_url, 3, type: :string, json_name: "logoUrl"
end

defmodule Google.Apps.Script.Type.HomepageExtensionPoint do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :run_function, 1, type: :string, json_name: "runFunction"
  field :enabled, 2, type: Google.Protobuf.BoolValue
end

defmodule Google.Apps.Script.Type.UniversalActionExtensionPoint do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :action_type, 0

  field :label, 1, type: :string
  field :open_link, 2, type: :string, json_name: "openLink", oneof: 0
  field :run_function, 3, type: :string, json_name: "runFunction", oneof: 0
end