defmodule Google.Cloud.Securitycenter.V1.Resource do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          project: String.t(),
          project_display_name: String.t(),
          parent: String.t(),
          parent_display_name: String.t(),
          type: String.t(),
          folders: [Google.Cloud.Securitycenter.V1.Folder.t()],
          display_name: String.t()
        }

  defstruct name: "",
            project: "",
            project_display_name: "",
            parent: "",
            parent_display_name: "",
            type: "",
            folders: [],
            display_name: ""

  field :name, 1, type: :string
  field :project, 2, type: :string
  field :project_display_name, 3, type: :string, json_name: "projectDisplayName"
  field :parent, 4, type: :string
  field :parent_display_name, 5, type: :string, json_name: "parentDisplayName"
  field :type, 6, type: :string

  field :folders, 7,
    repeated: true,
    type: Google.Cloud.Securitycenter.V1.Folder,
    deprecated: false

  field :display_name, 8, type: :string, json_name: "displayName"
end
