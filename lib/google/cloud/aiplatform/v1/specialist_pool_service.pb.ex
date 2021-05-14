defmodule Google.Cloud.Aiplatform.V1.CreateSpecialistPoolRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          specialist_pool: Google.Cloud.Aiplatform.V1.SpecialistPool.t() | nil
        }

  defstruct [:parent, :specialist_pool]

  field :parent, 1, type: :string
  field :specialist_pool, 2, type: Google.Cloud.Aiplatform.V1.SpecialistPool
end

defmodule Google.Cloud.Aiplatform.V1.CreateSpecialistPoolOperationMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          generic_metadata: Google.Cloud.Aiplatform.V1.GenericOperationMetadata.t() | nil
        }

  defstruct [:generic_metadata]

  field :generic_metadata, 1, type: Google.Cloud.Aiplatform.V1.GenericOperationMetadata
end

defmodule Google.Cloud.Aiplatform.V1.GetSpecialistPoolRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Aiplatform.V1.ListSpecialistPoolsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t(),
          read_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:parent, :page_size, :page_token, :read_mask]

  field :parent, 1, type: :string
  field :page_size, 2, type: :int32
  field :page_token, 3, type: :string
  field :read_mask, 4, type: Google.Protobuf.FieldMask
end

defmodule Google.Cloud.Aiplatform.V1.ListSpecialistPoolsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          specialist_pools: [Google.Cloud.Aiplatform.V1.SpecialistPool.t()],
          next_page_token: String.t()
        }

  defstruct [:specialist_pools, :next_page_token]

  field :specialist_pools, 1, repeated: true, type: Google.Cloud.Aiplatform.V1.SpecialistPool
  field :next_page_token, 2, type: :string
end

defmodule Google.Cloud.Aiplatform.V1.DeleteSpecialistPoolRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          force: boolean
        }

  defstruct [:name, :force]

  field :name, 1, type: :string
  field :force, 2, type: :bool
end

defmodule Google.Cloud.Aiplatform.V1.UpdateSpecialistPoolRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          specialist_pool: Google.Cloud.Aiplatform.V1.SpecialistPool.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:specialist_pool, :update_mask]

  field :specialist_pool, 1, type: Google.Cloud.Aiplatform.V1.SpecialistPool
  field :update_mask, 2, type: Google.Protobuf.FieldMask
end

defmodule Google.Cloud.Aiplatform.V1.UpdateSpecialistPoolOperationMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          specialist_pool: String.t(),
          generic_metadata: Google.Cloud.Aiplatform.V1.GenericOperationMetadata.t() | nil
        }

  defstruct [:specialist_pool, :generic_metadata]

  field :specialist_pool, 1, type: :string
  field :generic_metadata, 2, type: Google.Cloud.Aiplatform.V1.GenericOperationMetadata
end
