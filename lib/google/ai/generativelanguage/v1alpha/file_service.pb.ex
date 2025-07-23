defmodule Google.Ai.Generativelanguage.V1alpha.CreateFileRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :file, 1, type: Google.Ai.Generativelanguage.V1alpha.File, deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1alpha.CreateFileResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :file, 1, type: Google.Ai.Generativelanguage.V1alpha.File
end

defmodule Google.Ai.Generativelanguage.V1alpha.ListFilesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :page_size, 1, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1alpha.ListFilesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :files, 1, repeated: true, type: Google.Ai.Generativelanguage.V1alpha.File
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Ai.Generativelanguage.V1alpha.GetFileRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1alpha.DeleteFileRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1alpha.FileService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.ai.generativelanguage.v1alpha.FileService",
    protoc_gen_elixir_version: "0.15.0"

  rpc :CreateFile,
      Google.Ai.Generativelanguage.V1alpha.CreateFileRequest,
      Google.Ai.Generativelanguage.V1alpha.CreateFileResponse

  rpc :ListFiles,
      Google.Ai.Generativelanguage.V1alpha.ListFilesRequest,
      Google.Ai.Generativelanguage.V1alpha.ListFilesResponse

  rpc :GetFile,
      Google.Ai.Generativelanguage.V1alpha.GetFileRequest,
      Google.Ai.Generativelanguage.V1alpha.File

  rpc :DeleteFile, Google.Ai.Generativelanguage.V1alpha.DeleteFileRequest, Google.Protobuf.Empty
end

defmodule Google.Ai.Generativelanguage.V1alpha.FileService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Ai.Generativelanguage.V1alpha.FileService.Service
end
