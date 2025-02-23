defmodule Google.Privacy.Dlp.V2.Likelihood do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :LIKELIHOOD_UNSPECIFIED, 0
  field :VERY_UNLIKELY, 1
  field :UNLIKELY, 2
  field :POSSIBLE, 3
  field :LIKELY, 4
  field :VERY_LIKELY, 5
end

defmodule Google.Privacy.Dlp.V2.FileType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :FILE_TYPE_UNSPECIFIED, 0
  field :BINARY_FILE, 1
  field :TEXT_FILE, 2
  field :IMAGE, 3
  field :WORD, 5
  field :PDF, 6
  field :AVRO, 7
  field :CSV, 8
  field :TSV, 9
  field :POWERPOINT, 11
  field :EXCEL, 12
end

defmodule Google.Privacy.Dlp.V2.SensitivityScore.SensitivityScoreLevel do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :SENSITIVITY_SCORE_UNSPECIFIED, 0
  field :SENSITIVITY_LOW, 10
  field :SENSITIVITY_UNKNOWN, 12
  field :SENSITIVITY_MODERATE, 20
  field :SENSITIVITY_HIGH, 30
end

defmodule Google.Privacy.Dlp.V2.CustomInfoType.ExclusionType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :EXCLUSION_TYPE_UNSPECIFIED, 0
  field :EXCLUSION_TYPE_EXCLUDE, 1
end

defmodule Google.Privacy.Dlp.V2.CloudStorageOptions.SampleMethod do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :SAMPLE_METHOD_UNSPECIFIED, 0
  field :TOP, 1
  field :RANDOM_START, 2
end

defmodule Google.Privacy.Dlp.V2.BigQueryOptions.SampleMethod do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :SAMPLE_METHOD_UNSPECIFIED, 0
  field :TOP, 1
  field :RANDOM_START, 2
end

defmodule Google.Privacy.Dlp.V2.InfoType do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string
  field :version, 2, type: :string

  field :sensitivity_score, 3,
    type: Google.Privacy.Dlp.V2.SensitivityScore,
    json_name: "sensitivityScore"
end

defmodule Google.Privacy.Dlp.V2.SensitivityScore do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :score, 1, type: Google.Privacy.Dlp.V2.SensitivityScore.SensitivityScoreLevel, enum: true
end

defmodule Google.Privacy.Dlp.V2.StoredType do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string
  field :create_time, 2, type: Google.Protobuf.Timestamp, json_name: "createTime"
end

defmodule Google.Privacy.Dlp.V2.CustomInfoType.Dictionary.WordList do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :words, 1, repeated: true, type: :string
end

defmodule Google.Privacy.Dlp.V2.CustomInfoType.Dictionary do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :source, 0

  field :word_list, 1,
    type: Google.Privacy.Dlp.V2.CustomInfoType.Dictionary.WordList,
    json_name: "wordList",
    oneof: 0

  field :cloud_storage_path, 3,
    type: Google.Privacy.Dlp.V2.CloudStoragePath,
    json_name: "cloudStoragePath",
    oneof: 0
end

defmodule Google.Privacy.Dlp.V2.CustomInfoType.Regex do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :pattern, 1, type: :string
  field :group_indexes, 2, repeated: true, type: :int32, json_name: "groupIndexes"
end

defmodule Google.Privacy.Dlp.V2.CustomInfoType.SurrogateType do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3
end

defmodule Google.Privacy.Dlp.V2.CustomInfoType.DetectionRule.Proximity do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :window_before, 1, type: :int32, json_name: "windowBefore"
  field :window_after, 2, type: :int32, json_name: "windowAfter"
end

defmodule Google.Privacy.Dlp.V2.CustomInfoType.DetectionRule.LikelihoodAdjustment do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :adjustment, 0

  field :fixed_likelihood, 1,
    type: Google.Privacy.Dlp.V2.Likelihood,
    json_name: "fixedLikelihood",
    enum: true,
    oneof: 0

  field :relative_likelihood, 2, type: :int32, json_name: "relativeLikelihood", oneof: 0
end

defmodule Google.Privacy.Dlp.V2.CustomInfoType.DetectionRule.HotwordRule do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :hotword_regex, 1,
    type: Google.Privacy.Dlp.V2.CustomInfoType.Regex,
    json_name: "hotwordRegex"

  field :proximity, 2, type: Google.Privacy.Dlp.V2.CustomInfoType.DetectionRule.Proximity

  field :likelihood_adjustment, 3,
    type: Google.Privacy.Dlp.V2.CustomInfoType.DetectionRule.LikelihoodAdjustment,
    json_name: "likelihoodAdjustment"
end

defmodule Google.Privacy.Dlp.V2.CustomInfoType.DetectionRule do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :type, 0

  field :hotword_rule, 1,
    type: Google.Privacy.Dlp.V2.CustomInfoType.DetectionRule.HotwordRule,
    json_name: "hotwordRule",
    oneof: 0
end

defmodule Google.Privacy.Dlp.V2.CustomInfoType do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

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
    json_name: "exclusionType",
    enum: true

  field :sensitivity_score, 9,
    type: Google.Privacy.Dlp.V2.SensitivityScore,
    json_name: "sensitivityScore"
end

defmodule Google.Privacy.Dlp.V2.FieldId do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string
end

defmodule Google.Privacy.Dlp.V2.PartitionId do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :project_id, 2, type: :string, json_name: "projectId"
  field :namespace_id, 4, type: :string, json_name: "namespaceId"
end

defmodule Google.Privacy.Dlp.V2.KindExpression do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string
end

defmodule Google.Privacy.Dlp.V2.DatastoreOptions do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :partition_id, 1, type: Google.Privacy.Dlp.V2.PartitionId, json_name: "partitionId"
  field :kind, 2, type: Google.Privacy.Dlp.V2.KindExpression
end

defmodule Google.Privacy.Dlp.V2.CloudStorageRegexFileSet do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :bucket_name, 1, type: :string, json_name: "bucketName"
  field :include_regex, 2, repeated: true, type: :string, json_name: "includeRegex"
  field :exclude_regex, 3, repeated: true, type: :string, json_name: "excludeRegex"
end

defmodule Google.Privacy.Dlp.V2.CloudStorageOptions.FileSet do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :url, 1, type: :string

  field :regex_file_set, 2,
    type: Google.Privacy.Dlp.V2.CloudStorageRegexFileSet,
    json_name: "regexFileSet"
end

defmodule Google.Privacy.Dlp.V2.CloudStorageOptions do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :file_set, 1,
    type: Google.Privacy.Dlp.V2.CloudStorageOptions.FileSet,
    json_name: "fileSet"

  field :bytes_limit_per_file, 4, type: :int64, json_name: "bytesLimitPerFile"
  field :bytes_limit_per_file_percent, 8, type: :int32, json_name: "bytesLimitPerFilePercent"

  field :file_types, 5,
    repeated: true,
    type: Google.Privacy.Dlp.V2.FileType,
    json_name: "fileTypes",
    enum: true

  field :sample_method, 6,
    type: Google.Privacy.Dlp.V2.CloudStorageOptions.SampleMethod,
    json_name: "sampleMethod",
    enum: true

  field :files_limit_percent, 7, type: :int32, json_name: "filesLimitPercent"
end

defmodule Google.Privacy.Dlp.V2.CloudStorageFileSet do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :url, 1, type: :string
end

defmodule Google.Privacy.Dlp.V2.CloudStoragePath do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :path, 1, type: :string
end

defmodule Google.Privacy.Dlp.V2.BigQueryOptions do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

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
    json_name: "sampleMethod",
    enum: true

  field :excluded_fields, 5,
    repeated: true,
    type: Google.Privacy.Dlp.V2.FieldId,
    json_name: "excludedFields"

  field :included_fields, 7,
    repeated: true,
    type: Google.Privacy.Dlp.V2.FieldId,
    json_name: "includedFields"
end

defmodule Google.Privacy.Dlp.V2.StorageConfig.TimespanConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :start_time, 1, type: Google.Protobuf.Timestamp, json_name: "startTime"
  field :end_time, 2, type: Google.Protobuf.Timestamp, json_name: "endTime"
  field :timestamp_field, 3, type: Google.Privacy.Dlp.V2.FieldId, json_name: "timestampField"

  field :enable_auto_population_of_timespan_config, 4,
    type: :bool,
    json_name: "enableAutoPopulationOfTimespanConfig"
end

defmodule Google.Privacy.Dlp.V2.StorageConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

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
end

defmodule Google.Privacy.Dlp.V2.HybridOptions.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Privacy.Dlp.V2.HybridOptions do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

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
end

defmodule Google.Privacy.Dlp.V2.BigQueryKey do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :table_reference, 1,
    type: Google.Privacy.Dlp.V2.BigQueryTable,
    json_name: "tableReference"

  field :row_number, 2, type: :int64, json_name: "rowNumber"
end

defmodule Google.Privacy.Dlp.V2.DatastoreKey do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :entity_key, 1, type: Google.Privacy.Dlp.V2.Key, json_name: "entityKey"
end

defmodule Google.Privacy.Dlp.V2.Key.PathElement do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :id_type, 0

  field :kind, 1, type: :string
  field :id, 2, type: :int64, oneof: 0
  field :name, 3, type: :string, oneof: 0
end

defmodule Google.Privacy.Dlp.V2.Key do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :partition_id, 1, type: Google.Privacy.Dlp.V2.PartitionId, json_name: "partitionId"
  field :path, 2, repeated: true, type: Google.Privacy.Dlp.V2.Key.PathElement
end

defmodule Google.Privacy.Dlp.V2.RecordKey do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

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
end

defmodule Google.Privacy.Dlp.V2.BigQueryTable do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :project_id, 1, type: :string, json_name: "projectId"
  field :dataset_id, 2, type: :string, json_name: "datasetId"
  field :table_id, 3, type: :string, json_name: "tableId"
end

defmodule Google.Privacy.Dlp.V2.TableReference do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :dataset_id, 1, type: :string, json_name: "datasetId"
  field :table_id, 2, type: :string, json_name: "tableId"
end

defmodule Google.Privacy.Dlp.V2.BigQueryField do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :table, 1, type: Google.Privacy.Dlp.V2.BigQueryTable
  field :field, 2, type: Google.Privacy.Dlp.V2.FieldId
end

defmodule Google.Privacy.Dlp.V2.EntityId do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :field, 1, type: Google.Privacy.Dlp.V2.FieldId
end

defmodule Google.Privacy.Dlp.V2.TableOptions do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :identifying_fields, 1,
    repeated: true,
    type: Google.Privacy.Dlp.V2.FieldId,
    json_name: "identifyingFields"
end
