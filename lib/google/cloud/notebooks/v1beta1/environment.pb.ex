defmodule Google.Cloud.Notebooks.V1beta1.Environment do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          image_type: {atom, any},
          name: String.t(),
          display_name: String.t(),
          description: String.t(),
          post_startup_script: String.t(),
          create_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct [:image_type, :name, :display_name, :description, :post_startup_script, :create_time]

  oneof :image_type, 0
  field :name, 1, type: :string
  field :display_name, 2, type: :string
  field :description, 3, type: :string
  field :vm_image, 6, type: Google.Cloud.Notebooks.V1beta1.VmImage, oneof: 0
  field :container_image, 7, type: Google.Cloud.Notebooks.V1beta1.ContainerImage, oneof: 0
  field :post_startup_script, 8, type: :string
  field :create_time, 9, type: Google.Protobuf.Timestamp
end

defmodule Google.Cloud.Notebooks.V1beta1.VmImage do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          image: {atom, any},
          project: String.t()
        }

  defstruct [:image, :project]

  oneof :image, 0
  field :project, 1, type: :string
  field :image_name, 2, type: :string, oneof: 0
  field :image_family, 3, type: :string, oneof: 0
end

defmodule Google.Cloud.Notebooks.V1beta1.ContainerImage do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          repository: String.t(),
          tag: String.t()
        }

  defstruct [:repository, :tag]

  field :repository, 1, type: :string
  field :tag, 2, type: :string
end
