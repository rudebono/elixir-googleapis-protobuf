defmodule Google.Devtools.Resultstore.V2.FileProcessingErrorType do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :FILE_PROCESSING_ERROR_TYPE_UNSPECIFIED, 0
  field :GENERIC_READ_ERROR, 1
  field :GENERIC_PARSE_ERROR, 2
  field :FILE_TOO_LARGE, 3
  field :OUTPUT_TOO_LARGE, 4
  field :ACCESS_DENIED, 5
  field :DEADLINE_EXCEEDED, 6
  field :NOT_FOUND, 7
  field :FILE_EMPTY, 8
end
defmodule Google.Devtools.Resultstore.V2.FileProcessingErrors do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :file_uid, 1, type: :string, json_name: "fileUid"

  field :file_processing_errors, 3,
    repeated: true,
    type: Google.Devtools.Resultstore.V2.FileProcessingError,
    json_name: "fileProcessingErrors"
end
defmodule Google.Devtools.Resultstore.V2.FileProcessingError do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :type, 1, type: Google.Devtools.Resultstore.V2.FileProcessingErrorType, enum: true
  field :message, 2, type: :string
end
