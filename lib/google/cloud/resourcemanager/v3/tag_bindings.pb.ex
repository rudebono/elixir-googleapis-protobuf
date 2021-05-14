defmodule Google.Cloud.Resourcemanager.V3.TagBinding do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          parent: String.t(),
          tag_value: String.t()
        }

  defstruct [:name, :parent, :tag_value]

  field :name, 1, type: :string
  field :parent, 2, type: :string
  field :tag_value, 3, type: :string
end

defmodule Google.Cloud.Resourcemanager.V3.CreateTagBindingMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []
end

defmodule Google.Cloud.Resourcemanager.V3.CreateTagBindingRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          tag_binding: Google.Cloud.Resourcemanager.V3.TagBinding.t() | nil,
          validate_only: boolean
        }

  defstruct [:tag_binding, :validate_only]

  field :tag_binding, 1, type: Google.Cloud.Resourcemanager.V3.TagBinding
  field :validate_only, 2, type: :bool
end

defmodule Google.Cloud.Resourcemanager.V3.DeleteTagBindingMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []
end

defmodule Google.Cloud.Resourcemanager.V3.DeleteTagBindingRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Resourcemanager.V3.ListTagBindingsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct [:parent, :page_size, :page_token]

  field :parent, 1, type: :string
  field :page_size, 2, type: :int32
  field :page_token, 3, type: :string
end

defmodule Google.Cloud.Resourcemanager.V3.ListTagBindingsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          tag_bindings: [Google.Cloud.Resourcemanager.V3.TagBinding.t()],
          next_page_token: String.t()
        }

  defstruct [:tag_bindings, :next_page_token]

  field :tag_bindings, 1, repeated: true, type: Google.Cloud.Resourcemanager.V3.TagBinding
  field :next_page_token, 2, type: :string
end

defmodule Google.Cloud.Resourcemanager.V3.TagBindings.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.resourcemanager.v3.TagBindings"

  rpc :ListTagBindings,
      Google.Cloud.Resourcemanager.V3.ListTagBindingsRequest,
      Google.Cloud.Resourcemanager.V3.ListTagBindingsResponse

  rpc :CreateTagBinding,
      Google.Cloud.Resourcemanager.V3.CreateTagBindingRequest,
      Google.Longrunning.Operation

  rpc :DeleteTagBinding,
      Google.Cloud.Resourcemanager.V3.DeleteTagBindingRequest,
      Google.Longrunning.Operation
end

defmodule Google.Cloud.Resourcemanager.V3.TagBindings.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Resourcemanager.V3.TagBindings.Service
end
