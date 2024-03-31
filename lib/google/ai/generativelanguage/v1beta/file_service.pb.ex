defmodule Google.Ai.Generativelanguage.V1beta.CreateFileRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :file, 1, type: Google.Ai.Generativelanguage.V1beta.File, deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1beta.CreateFileResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :file, 1, type: Google.Ai.Generativelanguage.V1beta.File
end

defmodule Google.Ai.Generativelanguage.V1beta.ListFilesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :page_size, 1, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1beta.ListFilesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :files, 1, repeated: true, type: Google.Ai.Generativelanguage.V1beta.File
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Ai.Generativelanguage.V1beta.GetFileRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1beta.DeleteFileRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1beta.FileService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.ai.generativelanguage.v1beta.FileService",
    protoc_gen_elixir_version: "0.12.0"

  rpc :CreateFile,
      Google.Ai.Generativelanguage.V1beta.CreateFileRequest,
      Google.Ai.Generativelanguage.V1beta.CreateFileResponse

  rpc :ListFiles,
      Google.Ai.Generativelanguage.V1beta.ListFilesRequest,
      Google.Ai.Generativelanguage.V1beta.ListFilesResponse

  rpc :GetFile,
      Google.Ai.Generativelanguage.V1beta.GetFileRequest,
      Google.Ai.Generativelanguage.V1beta.File

  rpc :DeleteFile, Google.Ai.Generativelanguage.V1beta.DeleteFileRequest, Google.Protobuf.Empty
end

defmodule Google.Ai.Generativelanguage.V1beta.FileService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Ai.Generativelanguage.V1beta.FileService.Service
end