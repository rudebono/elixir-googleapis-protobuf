defmodule Google.Gapic.Metadata.GapicMetadata.ServicesEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: Google.Gapic.Metadata.GapicMetadata.ServiceForTransport.t() | nil
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: Google.Gapic.Metadata.GapicMetadata.ServiceForTransport

  def transform_module(), do: nil
end

defmodule Google.Gapic.Metadata.GapicMetadata.ServiceForTransport.ClientsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: Google.Gapic.Metadata.GapicMetadata.ServiceAsClient.t() | nil
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: Google.Gapic.Metadata.GapicMetadata.ServiceAsClient

  def transform_module(), do: nil
end

defmodule Google.Gapic.Metadata.GapicMetadata.ServiceForTransport do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          clients: %{String.t() => Google.Gapic.Metadata.GapicMetadata.ServiceAsClient.t() | nil}
        }

  defstruct [:clients]

  field :clients, 1,
    repeated: true,
    type: Google.Gapic.Metadata.GapicMetadata.ServiceForTransport.ClientsEntry,
    map: true

  def transform_module(), do: nil
end

defmodule Google.Gapic.Metadata.GapicMetadata.ServiceAsClient.RpcsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: Google.Gapic.Metadata.GapicMetadata.MethodList.t() | nil
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: Google.Gapic.Metadata.GapicMetadata.MethodList

  def transform_module(), do: nil
end

defmodule Google.Gapic.Metadata.GapicMetadata.ServiceAsClient do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          library_client: String.t(),
          rpcs: %{String.t() => Google.Gapic.Metadata.GapicMetadata.MethodList.t() | nil}
        }

  defstruct [:library_client, :rpcs]

  field :library_client, 1, type: :string, json_name: "libraryClient"

  field :rpcs, 2,
    repeated: true,
    type: Google.Gapic.Metadata.GapicMetadata.ServiceAsClient.RpcsEntry,
    map: true

  def transform_module(), do: nil
end

defmodule Google.Gapic.Metadata.GapicMetadata.MethodList do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          methods: [String.t()]
        }

  defstruct [:methods]

  field :methods, 1, repeated: true, type: :string

  def transform_module(), do: nil
end

defmodule Google.Gapic.Metadata.GapicMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          schema: String.t(),
          comment: String.t(),
          language: String.t(),
          proto_package: String.t(),
          library_package: String.t(),
          services: %{
            String.t() => Google.Gapic.Metadata.GapicMetadata.ServiceForTransport.t() | nil
          }
        }

  defstruct [:schema, :comment, :language, :proto_package, :library_package, :services]

  field :schema, 1, type: :string
  field :comment, 2, type: :string
  field :language, 3, type: :string
  field :proto_package, 4, type: :string, json_name: "protoPackage"
  field :library_package, 5, type: :string, json_name: "libraryPackage"

  field :services, 6,
    repeated: true,
    type: Google.Gapic.Metadata.GapicMetadata.ServicesEntry,
    map: true

  def transform_module(), do: nil
end
