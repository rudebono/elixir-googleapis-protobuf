defmodule Google.Devtools.Resultstore.V2.GetFileRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          uri: String.t(),
          read_offset: integer,
          read_limit: integer,
          archive_entry: String.t()
        }

  defstruct uri: "",
            read_offset: 0,
            read_limit: 0,
            archive_entry: ""

  field :uri, 1, type: :string
  field :read_offset, 2, type: :int64, json_name: "readOffset"
  field :read_limit, 3, type: :int64, json_name: "readLimit"
  field :archive_entry, 4, type: :string, json_name: "archiveEntry"
end
defmodule Google.Devtools.Resultstore.V2.GetFileResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          data: binary
        }

  defstruct data: ""

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

  defstruct uri: "",
            read_offset: 0,
            read_limit: 0,
            archive_entry: ""

  field :uri, 1, type: :string
  field :read_offset, 2, type: :int64, json_name: "readOffset"
  field :read_limit, 3, type: :int64, json_name: "readLimit"
  field :archive_entry, 4, type: :string, json_name: "archiveEntry"
end
defmodule Google.Devtools.Resultstore.V2.GetFileTailResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          data: binary
        }

  defstruct data: ""

  field :data, 1, type: :bytes
end
defmodule Google.Devtools.Resultstore.V2.ResultStoreFileDownload.Service do
  @moduledoc false
  use GRPC.Service, name: "google.devtools.resultstore.v2.ResultStoreFileDownload"

  rpc :GetFile,
      Google.Devtools.Resultstore.V2.GetFileRequest,
      stream(Google.Devtools.Resultstore.V2.GetFileResponse)

  rpc :GetFileTail,
      Google.Devtools.Resultstore.V2.GetFileTailRequest,
      Google.Devtools.Resultstore.V2.GetFileTailResponse
end

defmodule Google.Devtools.Resultstore.V2.ResultStoreFileDownload.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Devtools.Resultstore.V2.ResultStoreFileDownload.Service
end
