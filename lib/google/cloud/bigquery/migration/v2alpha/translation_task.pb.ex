defmodule Google.Cloud.Bigquery.Migration.V2alpha.TranslationTaskDetails.FileEncoding do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :FILE_ENCODING_UNSPECIFIED, 0
  field :UTF_8, 1
  field :ISO_8859_1, 2
  field :US_ASCII, 3
  field :UTF_16, 4
  field :UTF_16LE, 5
  field :UTF_16BE, 6
end

defmodule Google.Cloud.Bigquery.Migration.V2alpha.TranslationTaskDetails.TokenType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :TOKEN_TYPE_UNSPECIFIED, 0
  field :STRING, 1
  field :INT64, 2
  field :NUMERIC, 3
  field :BOOL, 4
  field :FLOAT64, 5
  field :DATE, 6
  field :TIMESTAMP, 7
end

defmodule Google.Cloud.Bigquery.Migration.V2alpha.IdentifierSettings.IdentifierCase do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :IDENTIFIER_CASE_UNSPECIFIED, 0
  field :ORIGINAL, 1
  field :UPPER, 2
  field :LOWER, 3
end

defmodule Google.Cloud.Bigquery.Migration.V2alpha.IdentifierSettings.IdentifierRewriteMode do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :IDENTIFIER_REWRITE_MODE_UNSPECIFIED, 0
  field :NONE, 1
  field :REWRITE_ALL, 2
end

defmodule Google.Cloud.Bigquery.Migration.V2alpha.TranslationFileMapping do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :input_path, 1, type: :string, json_name: "inputPath"
  field :output_path, 2, type: :string, json_name: "outputPath"
end

defmodule Google.Cloud.Bigquery.Migration.V2alpha.TranslationTaskDetails.SpecialTokenMapEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :key, 1, type: :string

  field :value, 2,
    type: Google.Cloud.Bigquery.Migration.V2alpha.TranslationTaskDetails.TokenType,
    enum: true
end

defmodule Google.Cloud.Bigquery.Migration.V2alpha.TranslationTaskDetails do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  oneof :language_options, 0

  field :teradata_options, 10,
    type: Google.Cloud.Bigquery.Migration.V2alpha.TeradataOptions,
    json_name: "teradataOptions",
    oneof: 0

  field :bteq_options, 11,
    type: Google.Cloud.Bigquery.Migration.V2alpha.BteqOptions,
    json_name: "bteqOptions",
    oneof: 0

  field :input_path, 1, type: :string, json_name: "inputPath"
  field :output_path, 2, type: :string, json_name: "outputPath"

  field :file_paths, 12,
    repeated: true,
    type: Google.Cloud.Bigquery.Migration.V2alpha.TranslationFileMapping,
    json_name: "filePaths"

  field :schema_path, 3, type: :string, json_name: "schemaPath"

  field :file_encoding, 4,
    type: Google.Cloud.Bigquery.Migration.V2alpha.TranslationTaskDetails.FileEncoding,
    json_name: "fileEncoding",
    enum: true

  field :identifier_settings, 5,
    type: Google.Cloud.Bigquery.Migration.V2alpha.IdentifierSettings,
    json_name: "identifierSettings"

  field :special_token_map, 6,
    repeated: true,
    type: Google.Cloud.Bigquery.Migration.V2alpha.TranslationTaskDetails.SpecialTokenMapEntry,
    json_name: "specialTokenMap",
    map: true

  field :filter, 7, type: Google.Cloud.Bigquery.Migration.V2alpha.Filter
  field :translation_exception_table, 13, type: :string, json_name: "translationExceptionTable"
end

defmodule Google.Cloud.Bigquery.Migration.V2alpha.Filter do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :input_file_exclusion_prefixes, 1,
    repeated: true,
    type: :string,
    json_name: "inputFileExclusionPrefixes"
end

defmodule Google.Cloud.Bigquery.Migration.V2alpha.IdentifierSettings do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :output_identifier_case, 1,
    type: Google.Cloud.Bigquery.Migration.V2alpha.IdentifierSettings.IdentifierCase,
    json_name: "outputIdentifierCase",
    enum: true

  field :identifier_rewrite_mode, 2,
    type: Google.Cloud.Bigquery.Migration.V2alpha.IdentifierSettings.IdentifierRewriteMode,
    json_name: "identifierRewriteMode",
    enum: true
end

defmodule Google.Cloud.Bigquery.Migration.V2alpha.TeradataOptions do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3
end

defmodule Google.Cloud.Bigquery.Migration.V2alpha.BteqOptions.FileReplacementMapEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Bigquery.Migration.V2alpha.BteqOptions do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :project_dataset, 1,
    type: Google.Cloud.Bigquery.Migration.V2alpha.DatasetReference,
    json_name: "projectDataset"

  field :default_path_uri, 2, type: :string, json_name: "defaultPathUri"

  field :file_replacement_map, 3,
    repeated: true,
    type: Google.Cloud.Bigquery.Migration.V2alpha.BteqOptions.FileReplacementMapEntry,
    json_name: "fileReplacementMap",
    map: true
end

defmodule Google.Cloud.Bigquery.Migration.V2alpha.DatasetReference do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :dataset_id, 1, type: :string, json_name: "datasetId"
  field :project_id, 2, type: :string, json_name: "projectId"
end