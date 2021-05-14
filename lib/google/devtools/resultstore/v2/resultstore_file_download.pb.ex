defmodule Google.Devtools.Resultstore.V2.GetFileRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          uri: String.t(),
          read_offset: integer,
          read_limit: integer,
          archive_entry: String.t()
        }

  defstruct [:uri, :read_offset, :read_limit, :archive_entry]

  field :uri, 1, type: :string
  field :read_offset, 2, type: :int64
  field :read_limit, 3, type: :int64
  field :archive_entry, 4, type: :string
end

defmodule Google.Devtools.Resultstore.V2.GetFileResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          data: binary
        }

  defstruct [:data]

  field :data, 1, type: :bytes
end

defmodule Google.Devtools.Resultstore.V2.GetFileTailRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          uri: String.t(),
          read_offset: integer,
          read_limit: integer,
          archive_entry: String.t()
        }

  defstruct [:uri, :read_offset, :read_limit, :archive_entry]

  field :uri, 1, type: :string
  field :read_offset, 2, type: :int64
  field :read_limit, 3, type: :int64
  field :archive_entry, 4, type: :string
end

defmodule Google.Devtools.Resultstore.V2.GetFileTailResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          data: binary
        }

  defstruct [:data]

  field :data, 1, type: :bytes
end
