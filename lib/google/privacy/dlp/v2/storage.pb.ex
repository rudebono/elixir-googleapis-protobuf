defmodule Google.Privacy.Dlp.V2.Likelihood do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :LIKELIHOOD_UNSPECIFIED
          | :VERY_UNLIKELY
          | :UNLIKELY
          | :POSSIBLE
          | :LIKELY
          | :VERY_LIKELY

  field :LIKELIHOOD_UNSPECIFIED, 0
  field :VERY_UNLIKELY, 1
  field :UNLIKELY, 2
  field :POSSIBLE, 3
  field :LIKELY, 4
  field :VERY_LIKELY, 5
end

defmodule Google.Privacy.Dlp.V2.FileType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :FILE_TYPE_UNSPECIFIED
          | :BINARY_FILE
          | :TEXT_FILE
          | :IMAGE
          | :WORD
          | :PDF
          | :AVRO
          | :CSV
          | :TSV

  field :FILE_TYPE_UNSPECIFIED, 0
  field :BINARY_FILE, 1
  field :TEXT_FILE, 2
  field :IMAGE, 3
  field :WORD, 5
  field :PDF, 6
  field :AVRO, 7
  field :CSV, 8
  field :TSV, 9
end

defmodule Google.Privacy.Dlp.V2.CustomInfoType.ExclusionType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :EXCLUSION_TYPE_UNSPECIFIED | :EXCLUSION_TYPE_EXCLUDE

  field :EXCLUSION_TYPE_UNSPECIFIED, 0
  field :EXCLUSION_TYPE_EXCLUDE, 1
end

defmodule Google.Privacy.Dlp.V2.CloudStorageOptions.SampleMethod do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :SAMPLE_METHOD_UNSPECIFIED | :TOP | :RANDOM_START

  field :SAMPLE_METHOD_UNSPECIFIED, 0
  field :TOP, 1
  field :RANDOM_START, 2
end

defmodule Google.Privacy.Dlp.V2.BigQueryOptions.SampleMethod do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :SAMPLE_METHOD_UNSPECIFIED | :TOP | :RANDOM_START

  field :SAMPLE_METHOD_UNSPECIFIED, 0
  field :TOP, 1
  field :RANDOM_START, 2
end

defmodule Google.Privacy.Dlp.V2.InfoType do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          version: String.t()
        }

  defstruct [:name, :version]

  field :name, 1, type: :string
  field :version, 2, type: :string

  def transform_module(), do: nil
end

defmodule Google.Privacy.Dlp.V2.StoredType do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          create_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct [:name, :create_time]

  field :name, 1, type: :string
  field :create_time, 2, type: Google.Protobuf.Timestamp, json_name: "createTime"

  def transform_module(), do: nil
end

defmodule Google.Privacy.Dlp.V2.CustomInfoType.Dictionary.WordList do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          words: [String.t()]
        }

  defstruct [:words]

  field :words, 1, repeated: true, type: :string

  def transform_module(), do: nil
end

defmodule Google.Privacy.Dlp.V2.CustomInfoType.Dictionary do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          source:
            {:word_list, Google.Privacy.Dlp.V2.CustomInfoType.Dictionary.WordList.t() | nil}
            | {:cloud_storage_path, Google.Privacy.Dlp.V2.CloudStoragePath.t() | nil}
        }

  defstruct [:source]

  oneof :source, 0

  field :word_list, 1,
    type: Google.Privacy.Dlp.V2.CustomInfoType.Dictionary.WordList,
    json_name: "wordList",
    oneof: 0

  field :cloud_storage_path, 3,
    type: Google.Privacy.Dlp.V2.CloudStoragePath,
    json_name: "cloudStoragePath",
    oneof: 0

  def transform_module(), do: nil
end

defmodule Google.Privacy.Dlp.V2.CustomInfoType.Regex do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          pattern: String.t(),
          group_indexes: [integer]
        }

  defstruct [:pattern, :group_indexes]

  field :pattern, 1, type: :string
  field :group_indexes, 2, repeated: true, type: :int32, json_name: "groupIndexes"

  def transform_module(), do: nil
end

defmodule Google.Privacy.Dlp.V2.CustomInfoType.SurrogateType do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []

  def transform_module(), do: nil
end

defmodule Google.Privacy.Dlp.V2.CustomInfoType.DetectionRule.Proximity do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          window_before: integer,
          window_after: integer
        }

  defstruct [:window_before, :window_after]

  field :window_before, 1, type: :int32, json_name: "windowBefore"
  field :window_after, 2, type: :int32, json_name: "windowAfter"

  def transform_module(), do: nil
end

defmodule Google.Privacy.Dlp.V2.CustomInfoType.DetectionRule.LikelihoodAdjustment do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          adjustment:
            {:fixed_likelihood, Google.Privacy.Dlp.V2.Likelihood.t()}
            | {:relative_likelihood, integer}
        }

  defstruct [:adjustment]

  oneof :adjustment, 0

  field :fixed_likelihood, 1,
    type: Google.Privacy.Dlp.V2.Likelihood,
    enum: true,
    json_name: "fixedLikelihood",
    oneof: 0

  field :relative_likelihood, 2, type: :int32, json_name: "relativeLikelihood", oneof: 0

  def transform_module(), do: nil
end

defmodule Google.Privacy.Dlp.V2.CustomInfoType.DetectionRule.HotwordRule do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          hotword_regex: Google.Privacy.Dlp.V2.CustomInfoType.Regex.t() | nil,
          proximity: Google.Privacy.Dlp.V2.CustomInfoType.DetectionRule.Proximity.t() | nil,
          likelihood_adjustment:
            Google.Privacy.Dlp.V2.CustomInfoType.DetectionRule.LikelihoodAdjustment.t() | nil
        }

  defstruct [:hotword_regex, :proximity, :likelihood_adjustment]

  field :hotword_regex, 1,
    type: Google.Privacy.Dlp.V2.CustomInfoType.Regex,
    json_name: "hotwordRegex"

  field :proximity, 2, type: Google.Privacy.Dlp.V2.CustomInfoType.DetectionRule.Proximity

  field :likelihood_adjustment, 3,
    type: Google.Privacy.Dlp.V2.CustomInfoType.DetectionRule.LikelihoodAdjustment,
    json_name: "likelihoodAdjustment"

  def transform_module(), do: nil
end

defmodule Google.Privacy.Dlp.V2.CustomInfoType.DetectionRule do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          type:
            {:hotword_rule,
             Google.Privacy.Dlp.V2.CustomInfoType.DetectionRule.HotwordRule.t() | nil}
        }

  defstruct [:type]

  oneof :type, 0

  field :hotword_rule, 1,
    type: Google.Privacy.Dlp.V2.CustomInfoType.DetectionRule.HotwordRule,
    json_name: "hotwordRule",
    oneof: 0

  def transform_module(), do: nil
end

defmodule Google.Privacy.Dlp.V2.CustomInfoType do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          type:
            {:dictionary, Google.Privacy.Dlp.V2.CustomInfoType.Dictionary.t() | nil}
            | {:regex, Google.Privacy.Dlp.V2.CustomInfoType.Regex.t() | nil}
            | {:surrogate_type, Google.Privacy.Dlp.V2.CustomInfoType.SurrogateType.t() | nil}
            | {:stored_type, Google.Privacy.Dlp.V2.StoredType.t() | nil},
          info_type: Google.Privacy.Dlp.V2.InfoType.t() | nil,
          likelihood: Google.Privacy.Dlp.V2.Likelihood.t(),
          detection_rules: [Google.Privacy.Dlp.V2.CustomInfoType.DetectionRule.t()],
          exclusion_type: Google.Privacy.Dlp.V2.CustomInfoType.ExclusionType.t()
        }

  defstruct [:type, :info_type, :likelihood, :detection_rules, :exclusion_type]

  oneof :type, 0

  field :info_type, 1, type: Google.Privacy.Dlp.V2.InfoType, json_name: "infoType"
  field :likelihood, 6, type: Google.Privacy.Dlp.V2.Likelihood, enum: true
  field :dictionary, 2, type: Google.Privacy.Dlp.V2.CustomInfoType.Dictionary, oneof: 0
  field :regex, 3, type: Google.Privacy.Dlp.V2.CustomInfoType.Regex, oneof: 0

  field :surrogate_type, 4,
    type: Google.Privacy.Dlp.V2.CustomInfoType.SurrogateType,
    json_name: "surrogateType",
    oneof: 0

  field :stored_type, 5, type: Google.Privacy.Dlp.V2.StoredType, json_name: "storedType", oneof: 0

  field :detection_rules, 7,
    repeated: true,
    type: Google.Privacy.Dlp.V2.CustomInfoType.DetectionRule,
    json_name: "detectionRules"

  field :exclusion_type, 8,
    type: Google.Privacy.Dlp.V2.CustomInfoType.ExclusionType,
    enum: true,
    json_name: "exclusionType"

  def transform_module(), do: nil
end

defmodule Google.Privacy.Dlp.V2.FieldId do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Privacy.Dlp.V2.PartitionId do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          project_id: String.t(),
          namespace_id: String.t()
        }

  defstruct [:project_id, :namespace_id]

  field :project_id, 2, type: :string, json_name: "projectId"
  field :namespace_id, 4, type: :string, json_name: "namespaceId"

  def transform_module(), do: nil
end

defmodule Google.Privacy.Dlp.V2.KindExpression do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Privacy.Dlp.V2.DatastoreOptions do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          partition_id: Google.Privacy.Dlp.V2.PartitionId.t() | nil,
          kind: Google.Privacy.Dlp.V2.KindExpression.t() | nil
        }

  defstruct [:partition_id, :kind]

  field :partition_id, 1, type: Google.Privacy.Dlp.V2.PartitionId, json_name: "partitionId"
  field :kind, 2, type: Google.Privacy.Dlp.V2.KindExpression

  def transform_module(), do: nil
end

defmodule Google.Privacy.Dlp.V2.CloudStorageRegexFileSet do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          bucket_name: String.t(),
          include_regex: [String.t()],
          exclude_regex: [String.t()]
        }

  defstruct [:bucket_name, :include_regex, :exclude_regex]

  field :bucket_name, 1, type: :string, json_name: "bucketName"
  field :include_regex, 2, repeated: true, type: :string, json_name: "includeRegex"
  field :exclude_regex, 3, repeated: true, type: :string, json_name: "excludeRegex"

  def transform_module(), do: nil
end

defmodule Google.Privacy.Dlp.V2.CloudStorageOptions.FileSet do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          url: String.t(),
          regex_file_set: Google.Privacy.Dlp.V2.CloudStorageRegexFileSet.t() | nil
        }

  defstruct [:url, :regex_file_set]

  field :url, 1, type: :string

  field :regex_file_set, 2,
    type: Google.Privacy.Dlp.V2.CloudStorageRegexFileSet,
    json_name: "regexFileSet"

  def transform_module(), do: nil
end

defmodule Google.Privacy.Dlp.V2.CloudStorageOptions do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          file_set: Google.Privacy.Dlp.V2.CloudStorageOptions.FileSet.t() | nil,
          bytes_limit_per_file: integer,
          bytes_limit_per_file_percent: integer,
          file_types: [Google.Privacy.Dlp.V2.FileType.t()],
          sample_method: Google.Privacy.Dlp.V2.CloudStorageOptions.SampleMethod.t(),
          files_limit_percent: integer
        }

  defstruct [
    :file_set,
    :bytes_limit_per_file,
    :bytes_limit_per_file_percent,
    :file_types,
    :sample_method,
    :files_limit_percent
  ]

  field :file_set, 1,
    type: Google.Privacy.Dlp.V2.CloudStorageOptions.FileSet,
    json_name: "fileSet"

  field :bytes_limit_per_file, 4, type: :int64, json_name: "bytesLimitPerFile"
  field :bytes_limit_per_file_percent, 8, type: :int32, json_name: "bytesLimitPerFilePercent"

  field :file_types, 5,
    repeated: true,
    type: Google.Privacy.Dlp.V2.FileType,
    enum: true,
    json_name: "fileTypes"

  field :sample_method, 6,
    type: Google.Privacy.Dlp.V2.CloudStorageOptions.SampleMethod,
    enum: true,
    json_name: "sampleMethod"

  field :files_limit_percent, 7, type: :int32, json_name: "filesLimitPercent"

  def transform_module(), do: nil
end

defmodule Google.Privacy.Dlp.V2.CloudStorageFileSet do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          url: String.t()
        }

  defstruct [:url]

  field :url, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Privacy.Dlp.V2.CloudStoragePath do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          path: String.t()
        }

  defstruct [:path]

  field :path, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Privacy.Dlp.V2.BigQueryOptions do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          table_reference: Google.Privacy.Dlp.V2.BigQueryTable.t() | nil,
          identifying_fields: [Google.Privacy.Dlp.V2.FieldId.t()],
          rows_limit: integer,
          rows_limit_percent: integer,
          sample_method: Google.Privacy.Dlp.V2.BigQueryOptions.SampleMethod.t(),
          excluded_fields: [Google.Privacy.Dlp.V2.FieldId.t()],
          included_fields: [Google.Privacy.Dlp.V2.FieldId.t()]
        }

  defstruct [
    :table_reference,
    :identifying_fields,
    :rows_limit,
    :rows_limit_percent,
    :sample_method,
    :excluded_fields,
    :included_fields
  ]

  field :table_reference, 1,
    type: Google.Privacy.Dlp.V2.BigQueryTable,
    json_name: "tableReference"

  field :identifying_fields, 2,
    repeated: true,
    type: Google.Privacy.Dlp.V2.FieldId,
    json_name: "identifyingFields"

  field :rows_limit, 3, type: :int64, json_name: "rowsLimit"
  field :rows_limit_percent, 6, type: :int32, json_name: "rowsLimitPercent"

  field :sample_method, 4,
    type: Google.Privacy.Dlp.V2.BigQueryOptions.SampleMethod,
    enum: true,
    json_name: "sampleMethod"

  field :excluded_fields, 5,
    repeated: true,
    type: Google.Privacy.Dlp.V2.FieldId,
    json_name: "excludedFields"

  field :included_fields, 7,
    repeated: true,
    type: Google.Privacy.Dlp.V2.FieldId,
    json_name: "includedFields"

  def transform_module(), do: nil
end

defmodule Google.Privacy.Dlp.V2.StorageConfig.TimespanConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          start_time: Google.Protobuf.Timestamp.t() | nil,
          end_time: Google.Protobuf.Timestamp.t() | nil,
          timestamp_field: Google.Privacy.Dlp.V2.FieldId.t() | nil,
          enable_auto_population_of_timespan_config: boolean
        }

  defstruct [:start_time, :end_time, :timestamp_field, :enable_auto_population_of_timespan_config]

  field :start_time, 1, type: Google.Protobuf.Timestamp, json_name: "startTime"
  field :end_time, 2, type: Google.Protobuf.Timestamp, json_name: "endTime"
  field :timestamp_field, 3, type: Google.Privacy.Dlp.V2.FieldId, json_name: "timestampField"

  field :enable_auto_population_of_timespan_config, 4,
    type: :bool,
    json_name: "enableAutoPopulationOfTimespanConfig"

  def transform_module(), do: nil
end

defmodule Google.Privacy.Dlp.V2.StorageConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          type:
            {:datastore_options, Google.Privacy.Dlp.V2.DatastoreOptions.t() | nil}
            | {:cloud_storage_options, Google.Privacy.Dlp.V2.CloudStorageOptions.t() | nil}
            | {:big_query_options, Google.Privacy.Dlp.V2.BigQueryOptions.t() | nil}
            | {:hybrid_options, Google.Privacy.Dlp.V2.HybridOptions.t() | nil},
          timespan_config: Google.Privacy.Dlp.V2.StorageConfig.TimespanConfig.t() | nil
        }

  defstruct [:type, :timespan_config]

  oneof :type, 0

  field :datastore_options, 2,
    type: Google.Privacy.Dlp.V2.DatastoreOptions,
    json_name: "datastoreOptions",
    oneof: 0

  field :cloud_storage_options, 3,
    type: Google.Privacy.Dlp.V2.CloudStorageOptions,
    json_name: "cloudStorageOptions",
    oneof: 0

  field :big_query_options, 4,
    type: Google.Privacy.Dlp.V2.BigQueryOptions,
    json_name: "bigQueryOptions",
    oneof: 0

  field :hybrid_options, 9,
    type: Google.Privacy.Dlp.V2.HybridOptions,
    json_name: "hybridOptions",
    oneof: 0

  field :timespan_config, 6,
    type: Google.Privacy.Dlp.V2.StorageConfig.TimespanConfig,
    json_name: "timespanConfig"

  def transform_module(), do: nil
end

defmodule Google.Privacy.Dlp.V2.HybridOptions.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: :string

  def transform_module(), do: nil
end

defmodule Google.Privacy.Dlp.V2.HybridOptions do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          description: String.t(),
          required_finding_label_keys: [String.t()],
          labels: %{String.t() => String.t()},
          table_options: Google.Privacy.Dlp.V2.TableOptions.t() | nil
        }

  defstruct [:description, :required_finding_label_keys, :labels, :table_options]

  field :description, 1, type: :string

  field :required_finding_label_keys, 2,
    repeated: true,
    type: :string,
    json_name: "requiredFindingLabelKeys"

  field :labels, 3,
    repeated: true,
    type: Google.Privacy.Dlp.V2.HybridOptions.LabelsEntry,
    map: true

  field :table_options, 4, type: Google.Privacy.Dlp.V2.TableOptions, json_name: "tableOptions"

  def transform_module(), do: nil
end

defmodule Google.Privacy.Dlp.V2.BigQueryKey do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          table_reference: Google.Privacy.Dlp.V2.BigQueryTable.t() | nil,
          row_number: integer
        }

  defstruct [:table_reference, :row_number]

  field :table_reference, 1,
    type: Google.Privacy.Dlp.V2.BigQueryTable,
    json_name: "tableReference"

  field :row_number, 2, type: :int64, json_name: "rowNumber"

  def transform_module(), do: nil
end

defmodule Google.Privacy.Dlp.V2.DatastoreKey do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          entity_key: Google.Privacy.Dlp.V2.Key.t() | nil
        }

  defstruct [:entity_key]

  field :entity_key, 1, type: Google.Privacy.Dlp.V2.Key, json_name: "entityKey"

  def transform_module(), do: nil
end

defmodule Google.Privacy.Dlp.V2.Key.PathElement do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          id_type: {:id, integer} | {:name, String.t()},
          kind: String.t()
        }

  defstruct [:id_type, :kind]

  oneof :id_type, 0

  field :kind, 1, type: :string
  field :id, 2, type: :int64, oneof: 0
  field :name, 3, type: :string, oneof: 0

  def transform_module(), do: nil
end

defmodule Google.Privacy.Dlp.V2.Key do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          partition_id: Google.Privacy.Dlp.V2.PartitionId.t() | nil,
          path: [Google.Privacy.Dlp.V2.Key.PathElement.t()]
        }

  defstruct [:partition_id, :path]

  field :partition_id, 1, type: Google.Privacy.Dlp.V2.PartitionId, json_name: "partitionId"
  field :path, 2, repeated: true, type: Google.Privacy.Dlp.V2.Key.PathElement

  def transform_module(), do: nil
end

defmodule Google.Privacy.Dlp.V2.RecordKey do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          type:
            {:datastore_key, Google.Privacy.Dlp.V2.DatastoreKey.t() | nil}
            | {:big_query_key, Google.Privacy.Dlp.V2.BigQueryKey.t() | nil},
          id_values: [String.t()]
        }

  defstruct [:type, :id_values]

  oneof :type, 0

  field :datastore_key, 2,
    type: Google.Privacy.Dlp.V2.DatastoreKey,
    json_name: "datastoreKey",
    oneof: 0

  field :big_query_key, 3,
    type: Google.Privacy.Dlp.V2.BigQueryKey,
    json_name: "bigQueryKey",
    oneof: 0

  field :id_values, 5, repeated: true, type: :string, json_name: "idValues"

  def transform_module(), do: nil
end

defmodule Google.Privacy.Dlp.V2.BigQueryTable do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          project_id: String.t(),
          dataset_id: String.t(),
          table_id: String.t()
        }

  defstruct [:project_id, :dataset_id, :table_id]

  field :project_id, 1, type: :string, json_name: "projectId"
  field :dataset_id, 2, type: :string, json_name: "datasetId"
  field :table_id, 3, type: :string, json_name: "tableId"

  def transform_module(), do: nil
end

defmodule Google.Privacy.Dlp.V2.BigQueryField do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          table: Google.Privacy.Dlp.V2.BigQueryTable.t() | nil,
          field: Google.Privacy.Dlp.V2.FieldId.t() | nil
        }

  defstruct [:table, :field]

  field :table, 1, type: Google.Privacy.Dlp.V2.BigQueryTable
  field :field, 2, type: Google.Privacy.Dlp.V2.FieldId

  def transform_module(), do: nil
end

defmodule Google.Privacy.Dlp.V2.EntityId do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          field: Google.Privacy.Dlp.V2.FieldId.t() | nil
        }

  defstruct [:field]

  field :field, 1, type: Google.Privacy.Dlp.V2.FieldId

  def transform_module(), do: nil
end

defmodule Google.Privacy.Dlp.V2.TableOptions do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          identifying_fields: [Google.Privacy.Dlp.V2.FieldId.t()]
        }

  defstruct [:identifying_fields]

  field :identifying_fields, 1,
    repeated: true,
    type: Google.Privacy.Dlp.V2.FieldId,
    json_name: "identifyingFields"

  def transform_module(), do: nil
end
