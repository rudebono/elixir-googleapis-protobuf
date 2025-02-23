defmodule Google.Cloud.Bigquery.Migration.V2alpha.TranslateQueryRequest.SqlTranslationSourceDialect do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :SQL_TRANSLATION_SOURCE_DIALECT_UNSPECIFIED, 0
  field :TERADATA, 1
end

defmodule Google.Cloud.Bigquery.Migration.V2alpha.SqlTranslationError.SqlTranslationErrorType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :SQL_TRANSLATION_ERROR_TYPE_UNSPECIFIED, 0
  field :SQL_PARSE_ERROR, 1
  field :UNSUPPORTED_SQL_FUNCTION, 2
end

defmodule Google.Cloud.Bigquery.Migration.V2alpha.TranslateQueryRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :translation_job, 4, type: :string, json_name: "translationJob", deprecated: false
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

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :row, 1, type: :int64
  field :column, 2, type: :int64
  field :message, 3, type: :string
end

defmodule Google.Cloud.Bigquery.Migration.V2alpha.SqlTranslationError do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :warning_detail, 1,
    type: Google.Cloud.Bigquery.Migration.V2alpha.SqlTranslationErrorDetail,
    json_name: "warningDetail"
end

defmodule Google.Cloud.Bigquery.Migration.V2alpha.SqlTranslationService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.bigquery.migration.v2alpha.SqlTranslationService",
    protoc_gen_elixir_version: "0.14.1"

  rpc :TranslateQuery,
      Google.Cloud.Bigquery.Migration.V2alpha.TranslateQueryRequest,
      Google.Cloud.Bigquery.Migration.V2alpha.TranslateQueryResponse
end

defmodule Google.Cloud.Bigquery.Migration.V2alpha.SqlTranslationService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Bigquery.Migration.V2alpha.SqlTranslationService.Service
end
