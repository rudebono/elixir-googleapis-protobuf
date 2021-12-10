defmodule Google.Cloud.Securitycenter.V1p1beta1.Folder do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_folder: String.t(),
          resource_folder_display_name: String.t()
        }

  defstruct resource_folder: "",
            resource_folder_display_name: ""

  field :resource_folder, 1, type: :string, json_name: "resourceFolder"
  field :resource_folder_display_name, 2, type: :string, json_name: "resourceFolderDisplayName"
end
