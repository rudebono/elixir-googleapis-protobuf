defmodule Google.Cloud.Aiplatform.V1beta1.CreateRagCorpusRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :rag_corpus, 2,
    type: Google.Cloud.Aiplatform.V1beta1.RagCorpus,
    json_name: "ragCorpus",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.GetRagCorpusRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.ListRagCorporaRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.ListRagCorporaResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :rag_corpora, 1,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.RagCorpus,
    json_name: "ragCorpora"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Aiplatform.V1beta1.DeleteRagCorpusRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :force, 2, type: :bool, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.UploadRagFileRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :rag_file, 2,
    type: Google.Cloud.Aiplatform.V1beta1.RagFile,
    json_name: "ragFile",
    deprecated: false

  field :upload_rag_file_config, 5,
    type: Google.Cloud.Aiplatform.V1beta1.UploadRagFileConfig,
    json_name: "uploadRagFileConfig",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.UploadRagFileResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :result, 0

  field :rag_file, 1,
    type: Google.Cloud.Aiplatform.V1beta1.RagFile,
    json_name: "ragFile",
    oneof: 0

  field :error, 4, type: Google.Rpc.Status, oneof: 0
end

defmodule Google.Cloud.Aiplatform.V1beta1.ImportRagFilesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :import_rag_files_config, 2,
    type: Google.Cloud.Aiplatform.V1beta1.ImportRagFilesConfig,
    json_name: "importRagFilesConfig",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.ImportRagFilesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :imported_rag_files_count, 1, type: :int64, json_name: "importedRagFilesCount"
  field :failed_rag_files_count, 2, type: :int64, json_name: "failedRagFilesCount"
  field :skipped_rag_files_count, 3, type: :int64, json_name: "skippedRagFilesCount"
end

defmodule Google.Cloud.Aiplatform.V1beta1.GetRagFileRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.ListRagFilesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.ListRagFilesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :rag_files, 1,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.RagFile,
    json_name: "ragFiles"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Aiplatform.V1beta1.DeleteRagFileRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.CreateRagCorpusOperationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :generic_metadata, 1,
    type: Google.Cloud.Aiplatform.V1beta1.GenericOperationMetadata,
    json_name: "genericMetadata"
end

defmodule Google.Cloud.Aiplatform.V1beta1.ImportRagFilesOperationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :generic_metadata, 1,
    type: Google.Cloud.Aiplatform.V1beta1.GenericOperationMetadata,
    json_name: "genericMetadata"

  field :rag_corpus_id, 2, type: :int64, json_name: "ragCorpusId"

  field :import_rag_files_config, 3,
    type: Google.Cloud.Aiplatform.V1beta1.ImportRagFilesConfig,
    json_name: "importRagFilesConfig",
    deprecated: false

  field :progress_percentage, 4, type: :int32, json_name: "progressPercentage"
end

defmodule Google.Cloud.Aiplatform.V1beta1.VertexRagDataService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.aiplatform.v1beta1.VertexRagDataService",
    protoc_gen_elixir_version: "0.12.0"

  rpc :CreateRagCorpus,
      Google.Cloud.Aiplatform.V1beta1.CreateRagCorpusRequest,
      Google.Longrunning.Operation

  rpc :GetRagCorpus,
      Google.Cloud.Aiplatform.V1beta1.GetRagCorpusRequest,
      Google.Cloud.Aiplatform.V1beta1.RagCorpus

  rpc :ListRagCorpora,
      Google.Cloud.Aiplatform.V1beta1.ListRagCorporaRequest,
      Google.Cloud.Aiplatform.V1beta1.ListRagCorporaResponse

  rpc :DeleteRagCorpus,
      Google.Cloud.Aiplatform.V1beta1.DeleteRagCorpusRequest,
      Google.Longrunning.Operation

  rpc :UploadRagFile,
      Google.Cloud.Aiplatform.V1beta1.UploadRagFileRequest,
      Google.Cloud.Aiplatform.V1beta1.UploadRagFileResponse

  rpc :ImportRagFiles,
      Google.Cloud.Aiplatform.V1beta1.ImportRagFilesRequest,
      Google.Longrunning.Operation

  rpc :GetRagFile,
      Google.Cloud.Aiplatform.V1beta1.GetRagFileRequest,
      Google.Cloud.Aiplatform.V1beta1.RagFile

  rpc :ListRagFiles,
      Google.Cloud.Aiplatform.V1beta1.ListRagFilesRequest,
      Google.Cloud.Aiplatform.V1beta1.ListRagFilesResponse

  rpc :DeleteRagFile,
      Google.Cloud.Aiplatform.V1beta1.DeleteRagFileRequest,
      Google.Longrunning.Operation
end

defmodule Google.Cloud.Aiplatform.V1beta1.VertexRagDataService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Aiplatform.V1beta1.VertexRagDataService.Service
end