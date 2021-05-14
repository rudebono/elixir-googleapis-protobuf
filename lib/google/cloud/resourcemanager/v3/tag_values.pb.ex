defmodule Google.Cloud.Resourcemanager.V3.TagValue do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          parent: String.t(),
          short_name: String.t(),
          namespaced_name: String.t(),
          description: String.t(),
          create_time: Google.Protobuf.Timestamp.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil,
          etag: String.t()
        }

  defstruct [
    :name,
    :parent,
    :short_name,
    :namespaced_name,
    :description,
    :create_time,
    :update_time,
    :etag
  ]

  field :name, 1, type: :string
  field :parent, 2, type: :string
  field :short_name, 3, type: :string
  field :namespaced_name, 4, type: :string
  field :description, 5, type: :string
  field :create_time, 6, type: Google.Protobuf.Timestamp
  field :update_time, 7, type: Google.Protobuf.Timestamp
  field :etag, 8, type: :string
end

defmodule Google.Cloud.Resourcemanager.V3.ListTagValuesRequest do
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

defmodule Google.Cloud.Resourcemanager.V3.ListTagValuesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          tag_values: [Google.Cloud.Resourcemanager.V3.TagValue.t()],
          next_page_token: String.t()
        }

  defstruct [:tag_values, :next_page_token]

  field :tag_values, 1, repeated: true, type: Google.Cloud.Resourcemanager.V3.TagValue
  field :next_page_token, 2, type: :string
end

defmodule Google.Cloud.Resourcemanager.V3.GetTagValueRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Resourcemanager.V3.CreateTagValueRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          tag_value: Google.Cloud.Resourcemanager.V3.TagValue.t() | nil,
          validate_only: boolean
        }

  defstruct [:tag_value, :validate_only]

  field :tag_value, 1, type: Google.Cloud.Resourcemanager.V3.TagValue
  field :validate_only, 2, type: :bool
end

defmodule Google.Cloud.Resourcemanager.V3.CreateTagValueMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []
end

defmodule Google.Cloud.Resourcemanager.V3.UpdateTagValueRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          tag_value: Google.Cloud.Resourcemanager.V3.TagValue.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil,
          validate_only: boolean
        }

  defstruct [:tag_value, :update_mask, :validate_only]

  field :tag_value, 1, type: Google.Cloud.Resourcemanager.V3.TagValue
  field :update_mask, 2, type: Google.Protobuf.FieldMask
  field :validate_only, 3, type: :bool
end

defmodule Google.Cloud.Resourcemanager.V3.UpdateTagValueMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []
end

defmodule Google.Cloud.Resourcemanager.V3.DeleteTagValueRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          validate_only: boolean,
          etag: String.t()
        }

  defstruct [:name, :validate_only, :etag]

  field :name, 1, type: :string
  field :validate_only, 2, type: :bool
  field :etag, 3, type: :string
end

defmodule Google.Cloud.Resourcemanager.V3.DeleteTagValueMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []
end
