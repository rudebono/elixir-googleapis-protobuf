defmodule Google.Cloud.Bigquery.Migration.Tasks.Translation.V2alpha.TranslationTaskDetails.FileEncoding do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :FILE_ENCODING_UNSPECIFIED
          | :UTF_8
          | :ISO_8859_1
          | :US_ASCII
          | :UTF_16
          | :UTF_16LE
          | :UTF_16BE

  field :FILE_ENCODING_UNSPECIFIED, 0

  field :UTF_8, 1

  field :ISO_8859_1, 2

  field :US_ASCII, 3

  field :UTF_16, 4

  field :UTF_16LE, 5

  field :UTF_16BE, 6
end

defmodule Google.Cloud.Bigquery.Migration.Tasks.Translation.V2alpha.TranslationTaskDetails.TokenType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :TOKEN_TYPE_UNSPECIFIED
          | :STRING
          | :INT64
          | :NUMERIC
          | :BOOL
          | :FLOAT64
          | :DATE
          | :TIMESTAMP

  field :TOKEN_TYPE_UNSPECIFIED, 0

  field :STRING, 1

  field :INT64, 2

  field :NUMERIC, 3

  field :BOOL, 4

  field :FLOAT64, 5

  field :DATE, 6

  field :TIMESTAMP, 7
end

defmodule Google.Cloud.Bigquery.Migration.Tasks.Translation.V2alpha.IdentifierSettings.IdentifierCase do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :IDENTIFIER_CASE_UNSPECIFIED | :ORIGINAL | :UPPER | :LOWER

  field :IDENTIFIER_CASE_UNSPECIFIED, 0

  field :ORIGINAL, 1

  field :UPPER, 2

  field :LOWER, 3
end

defmodule Google.Cloud.Bigquery.Migration.Tasks.Translation.V2alpha.IdentifierSettings.IdentifierRewriteMode do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :IDENTIFIER_REWRITE_MODE_UNSPECIFIED | :NONE | :REWRITE_ALL

  field :IDENTIFIER_REWRITE_MODE_UNSPECIFIED, 0

  field :NONE, 1

  field :REWRITE_ALL, 2
end

defmodule Google.Cloud.Bigquery.Migration.Tasks.Translation.V2alpha.TranslationFileMapping do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          input_path: String.t(),
          output_path: String.t()
        }

  defstruct [:input_path, :output_path]

  field :input_path, 1, type: :string
  field :output_path, 2, type: :string
end

defmodule Google.Cloud.Bigquery.Migration.Tasks.Translation.V2alpha.TranslationTaskDetails.SpecialTokenMapEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value:
            Google.Cloud.Bigquery.Migration.Tasks.Translation.V2alpha.TranslationTaskDetails.TokenType.t()
        }

  defstruct [:key, :value]

  field :key, 1, type: :string

  field :value, 2,
    type:
      Google.Cloud.Bigquery.Migration.Tasks.Translation.V2alpha.TranslationTaskDetails.TokenType,
    enum: true
end

defmodule Google.Cloud.Bigquery.Migration.Tasks.Translation.V2alpha.TranslationTaskDetails do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          language_options: {atom, any},
          input_path: String.t(),
          output_path: String.t(),
          file_paths: [
            Google.Cloud.Bigquery.Migration.Tasks.Translation.V2alpha.TranslationFileMapping.t()
          ],
          schema_path: String.t(),
          file_encoding:
            Google.Cloud.Bigquery.Migration.Tasks.Translation.V2alpha.TranslationTaskDetails.FileEncoding.t(),
          identifier_settings:
            Google.Cloud.Bigquery.Migration.Tasks.Translation.V2alpha.IdentifierSettings.t() | nil,
          special_token_map: %{
            String.t() =>
              Google.Cloud.Bigquery.Migration.Tasks.Translation.V2alpha.TranslationTaskDetails.TokenType.t()
          },
          filter: Google.Cloud.Bigquery.Migration.Tasks.Translation.V2alpha.Filter.t() | nil,
          translation_exception_table: String.t()
        }

  defstruct [
    :language_options,
    :input_path,
    :output_path,
    :file_paths,
    :schema_path,
    :file_encoding,
    :identifier_settings,
    :special_token_map,
    :filter,
    :translation_exception_table
  ]

  oneof :language_options, 0
  field :input_path, 1, type: :string
  field :output_path, 2, type: :string

  field :file_paths, 12,
    repeated: true,
    type: Google.Cloud.Bigquery.Migration.Tasks.Translation.V2alpha.TranslationFileMapping

  field :schema_path, 3, type: :string

  field :file_encoding, 4,
    type:
      Google.Cloud.Bigquery.Migration.Tasks.Translation.V2alpha.TranslationTaskDetails.FileEncoding,
    enum: true

  field :identifier_settings, 5,
    type: Google.Cloud.Bigquery.Migration.Tasks.Translation.V2alpha.IdentifierSettings

  field :special_token_map, 6,
    repeated: true,
    type:
      Google.Cloud.Bigquery.Migration.Tasks.Translation.V2alpha.TranslationTaskDetails.SpecialTokenMapEntry,
    map: true

  field :filter, 7, type: Google.Cloud.Bigquery.Migration.Tasks.Translation.V2alpha.Filter

  field :teradata_options, 10,
    type: Google.Cloud.Bigquery.Migration.Tasks.Translation.V2alpha.TeradataOptions,
    oneof: 0

  field :bteq_options, 11,
    type: Google.Cloud.Bigquery.Migration.Tasks.Translation.V2alpha.BteqOptions,
    oneof: 0

  field :translation_exception_table, 13, type: :string
end

defmodule Google.Cloud.Bigquery.Migration.Tasks.Translation.V2alpha.Filter do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          input_file_exclusion_prefixes: [String.t()]
        }

  defstruct [:input_file_exclusion_prefixes]

  field :input_file_exclusion_prefixes, 1, repeated: true, type: :string
end

defmodule Google.Cloud.Bigquery.Migration.Tasks.Translation.V2alpha.IdentifierSettings do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          output_identifier_case:
            Google.Cloud.Bigquery.Migration.Tasks.Translation.V2alpha.IdentifierSettings.IdentifierCase.t(),
          identifier_rewrite_mode:
            Google.Cloud.Bigquery.Migration.Tasks.Translation.V2alpha.IdentifierSettings.IdentifierRewriteMode.t()
        }

  defstruct [:output_identifier_case, :identifier_rewrite_mode]

  field :output_identifier_case, 1,
    type:
      Google.Cloud.Bigquery.Migration.Tasks.Translation.V2alpha.IdentifierSettings.IdentifierCase,
    enum: true

  field :identifier_rewrite_mode, 2,
    type:
      Google.Cloud.Bigquery.Migration.Tasks.Translation.V2alpha.IdentifierSettings.IdentifierRewriteMode,
    enum: true
end

defmodule Google.Cloud.Bigquery.Migration.Tasks.Translation.V2alpha.TeradataOptions do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []
end

defmodule Google.Cloud.Bigquery.Migration.Tasks.Translation.V2alpha.BteqOptions.FileReplacementMapEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Bigquery.Migration.Tasks.Translation.V2alpha.BteqOptions do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          project_dataset:
            Google.Cloud.Bigquery.Migration.Tasks.Translation.V2alpha.DatasetReference.t() | nil,
          default_path_uri: String.t(),
          file_replacement_map: %{String.t() => String.t()}
        }

  defstruct [:project_dataset, :default_path_uri, :file_replacement_map]

  field :project_dataset, 1,
    type: Google.Cloud.Bigquery.Migration.Tasks.Translation.V2alpha.DatasetReference

  field :default_path_uri, 2, type: :string

  field :file_replacement_map, 3,
    repeated: true,
    type:
      Google.Cloud.Bigquery.Migration.Tasks.Translation.V2alpha.BteqOptions.FileReplacementMapEntry,
    map: true
end
