defmodule Google.Cloud.Notebooks.V1beta1.Environment do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  oneof :image_type, 0

  field :name, 1, type: :string, deprecated: false
  field :display_name, 2, type: :string, json_name: "displayName"
  field :description, 3, type: :string
  field :vm_image, 6, type: Google.Cloud.Notebooks.V1beta1.VmImage, json_name: "vmImage", oneof: 0

  field :container_image, 7,
    type: Google.Cloud.Notebooks.V1beta1.ContainerImage,
    json_name: "containerImage",
    oneof: 0

  field :post_startup_script, 8, type: :string, json_name: "postStartupScript"

  field :create_time, 9,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false
end

defmodule Google.Cloud.Notebooks.V1beta1.VmImage do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  oneof :image, 0

  field :project, 1, type: :string, deprecated: false
  field :image_name, 2, type: :string, json_name: "imageName", oneof: 0
  field :image_family, 3, type: :string, json_name: "imageFamily", oneof: 0
end

defmodule Google.Cloud.Notebooks.V1beta1.ContainerImage do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :repository, 1, type: :string, deprecated: false
  field :tag, 2, type: :string
end
