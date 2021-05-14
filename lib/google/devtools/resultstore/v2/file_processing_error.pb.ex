defmodule Google.Devtools.Resultstore.V2.FileProcessingErrorType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :FILE_PROCESSING_ERROR_TYPE_UNSPECIFIED
          | :GENERIC_READ_ERROR
          | :GENERIC_PARSE_ERROR
          | :FILE_TOO_LARGE
          | :OUTPUT_TOO_LARGE
          | :ACCESS_DENIED
          | :DEADLINE_EXCEEDED
          | :NOT_FOUND
          | :FILE_EMPTY

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          file_uid: String.t(),
          file_processing_errors: [Google.Devtools.Resultstore.V2.FileProcessingError.t()]
        }

  defstruct [:file_uid, :file_processing_errors]

  field :file_uid, 1, type: :string

  field :file_processing_errors, 3,
    repeated: true,
    type: Google.Devtools.Resultstore.V2.FileProcessingError
end

defmodule Google.Devtools.Resultstore.V2.FileProcessingError do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          type: Google.Devtools.Resultstore.V2.FileProcessingErrorType.t(),
          message: String.t()
        }

  defstruct [:type, :message]

  field :type, 1, type: Google.Devtools.Resultstore.V2.FileProcessingErrorType, enum: true
  field :message, 2, type: :string
end
