defmodule Google.Cloud.Securitycenter.V2.Folder do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :resource_folder, 1, type: :string, json_name: "resourceFolder"
  field :resource_folder_display_name, 2, type: :string, json_name: "resourceFolderDisplayName"
end