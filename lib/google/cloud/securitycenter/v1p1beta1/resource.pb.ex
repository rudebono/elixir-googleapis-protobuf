defmodule Google.Cloud.Securitycenter.V1p1beta1.Resource do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          project: String.t(),
          project_display_name: String.t(),
          parent: String.t(),
          parent_display_name: String.t(),
          folders: [Google.Cloud.Securitycenter.V1p1beta1.Folder.t()]
        }

  defstruct [:name, :project, :project_display_name, :parent, :parent_display_name, :folders]

  field :name, 1, type: :string
  field :project, 2, type: :string
  field :project_display_name, 3, type: :string, json_name: "projectDisplayName"
  field :parent, 4, type: :string
  field :parent_display_name, 5, type: :string, json_name: "parentDisplayName"
  field :folders, 7, repeated: true, type: Google.Cloud.Securitycenter.V1p1beta1.Folder

  def transform_module(), do: nil
end
