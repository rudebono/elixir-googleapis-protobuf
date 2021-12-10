defmodule Google.Cloud.Notebooks.V1.Environment do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          image_type:
            {:vm_image, Google.Cloud.Notebooks.V1.VmImage.t() | nil}
            | {:container_image, Google.Cloud.Notebooks.V1.ContainerImage.t() | nil},
          name: String.t(),
          display_name: String.t(),
          description: String.t(),
          post_startup_script: String.t(),
          create_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct image_type: nil,
            name: "",
            display_name: "",
            description: "",
            post_startup_script: "",
            create_time: nil

  oneof :image_type, 0

  field :name, 1, type: :string, deprecated: false
  field :display_name, 2, type: :string, json_name: "displayName"
  field :description, 3, type: :string
  field :vm_image, 6, type: Google.Cloud.Notebooks.V1.VmImage, json_name: "vmImage", oneof: 0

  field :container_image, 7,
    type: Google.Cloud.Notebooks.V1.ContainerImage,
    json_name: "containerImage",
    oneof: 0

  field :post_startup_script, 8, type: :string, json_name: "postStartupScript"

  field :create_time, 9,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false
end
defmodule Google.Cloud.Notebooks.V1.VmImage do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          image: {:image_name, String.t()} | {:image_family, String.t()},
          project: String.t()
        }

  defstruct image: nil,
            project: ""

  oneof :image, 0

  field :project, 1, type: :string, deprecated: false
  field :image_name, 2, type: :string, json_name: "imageName", oneof: 0
  field :image_family, 3, type: :string, json_name: "imageFamily", oneof: 0
end
defmodule Google.Cloud.Notebooks.V1.ContainerImage do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          repository: String.t(),
          tag: String.t()
        }

  defstruct repository: "",
            tag: ""

  field :repository, 1, type: :string, deprecated: false
  field :tag, 2, type: :string
end
