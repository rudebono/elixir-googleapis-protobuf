defmodule Google.Cloud.Securitycenter.V1p1beta1.Resource do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string
  field :project, 2, type: :string
  field :project_display_name, 3, type: :string, json_name: "projectDisplayName"
  field :parent, 4, type: :string
  field :parent_display_name, 5, type: :string, json_name: "parentDisplayName"

  field :folders, 7,
    repeated: true,
    type: Google.Cloud.Securitycenter.V1p1beta1.Folder,
    deprecated: false
end