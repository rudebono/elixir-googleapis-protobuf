defmodule Google.Cloud.Bigquery.Migration.V2alpha.TranslateQueryRequest.SqlTranslationSourceDialect do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :SQL_TRANSLATION_SOURCE_DIALECT_UNSPECIFIED | :TERADATA

  field :SQL_TRANSLATION_SOURCE_DIALECT_UNSPECIFIED, 0
  field :TERADATA, 1
end
defmodule Google.Cloud.Bigquery.Migration.V2alpha.SqlTranslationError.SqlTranslationErrorType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :SQL_TRANSLATION_ERROR_TYPE_UNSPECIFIED
          | :SQL_PARSE_ERROR
          | :UNSUPPORTED_SQL_FUNCTION

  field :SQL_TRANSLATION_ERROR_TYPE_UNSPECIFIED, 0
  field :SQL_PARSE_ERROR, 1
  field :UNSUPPORTED_SQL_FUNCTION, 2
end
defmodule Google.Cloud.Bigquery.Migration.V2alpha.TranslateQueryRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          source_dialect:
            Google.Cloud.Bigquery.Migration.V2alpha.TranslateQueryRequest.SqlTranslationSourceDialect.t(),
          query: String.t()
        }

  defstruct parent: "",
            source_dialect: :SQL_TRANSLATION_SOURCE_DIALECT_UNSPECIFIED,
            query: ""

  field :parent, 1, type: :string, deprecated: false

  field :source_dialect, 2,
    type:
      Google.Cloud.Bigquery.Migration.V2alpha.TranslateQueryRequest.SqlTranslationSourceDialect,
    json_name: "sourceDialect",
    enum: true,
    deprecated: false

  field :query, 3, type: :string, deprecated: false
end
defmodule Google.Cloud.Bigquery.Migration.V2alpha.TranslateQueryResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          translated_query: String.t(),
          errors: [Google.Cloud.Bigquery.Migration.V2alpha.SqlTranslationError.t()],
          warnings: [Google.Cloud.Bigquery.Migration.V2alpha.SqlTranslationWarning.t()]
        }

  defstruct translated_query: "",
            errors: [],
            warnings: []

  field :translated_query, 1, type: :string, json_name: "translatedQuery"

  field :errors, 2,
    repeated: true,
    type: Google.Cloud.Bigquery.Migration.V2alpha.SqlTranslationError

  field :warnings, 3,
    repeated: true,
    type: Google.Cloud.Bigquery.Migration.V2alpha.SqlTranslationWarning
end
defmodule Google.Cloud.Bigquery.Migration.V2alpha.SqlTranslationErrorDetail do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          row: integer,
          column: integer,
          message: String.t()
        }

  defstruct row: 0,
            column: 0,
            message: ""

  field :row, 1, type: :int64
  field :column, 2, type: :int64
  field :message, 3, type: :string
end
defmodule Google.Cloud.Bigquery.Migration.V2alpha.SqlTranslationError do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          error_type:
            Google.Cloud.Bigquery.Migration.V2alpha.SqlTranslationError.SqlTranslationErrorType.t(),
          error_detail:
            Google.Cloud.Bigquery.Migration.V2alpha.SqlTranslationErrorDetail.t() | nil
        }

  defstruct error_type: :SQL_TRANSLATION_ERROR_TYPE_UNSPECIFIED,
            error_detail: nil

  field :error_type, 1,
    type: Google.Cloud.Bigquery.Migration.V2alpha.SqlTranslationError.SqlTranslationErrorType,
    json_name: "errorType",
    enum: true

  field :error_detail, 2,
    type: Google.Cloud.Bigquery.Migration.V2alpha.SqlTranslationErrorDetail,
    json_name: "errorDetail"
end
defmodule Google.Cloud.Bigquery.Migration.V2alpha.SqlTranslationWarning do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          warning_detail:
            Google.Cloud.Bigquery.Migration.V2alpha.SqlTranslationErrorDetail.t() | nil
        }

  defstruct warning_detail: nil

  field :warning_detail, 1,
    type: Google.Cloud.Bigquery.Migration.V2alpha.SqlTranslationErrorDetail,
    json_name: "warningDetail"
end
defmodule Google.Cloud.Bigquery.Migration.V2alpha.SqlTranslationService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.bigquery.migration.v2alpha.SqlTranslationService"

  rpc :TranslateQuery,
      Google.Cloud.Bigquery.Migration.V2alpha.TranslateQueryRequest,
      Google.Cloud.Bigquery.Migration.V2alpha.TranslateQueryResponse
end

defmodule Google.Cloud.Bigquery.Migration.V2alpha.SqlTranslationService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Bigquery.Migration.V2alpha.SqlTranslationService.Service
end
