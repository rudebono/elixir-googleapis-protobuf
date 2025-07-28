defmodule Google.Privacy.Dlp.V2.TransformationResultStatusType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :STATE_TYPE_UNSPECIFIED, 0
  field :INVALID_TRANSFORM, 1
  field :BIGQUERY_MAX_ROW_SIZE_EXCEEDED, 2
  field :METADATA_UNRETRIEVABLE, 3
  field :SUCCESS, 4
end

defmodule Google.Privacy.Dlp.V2.TransformationContainerType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :TRANSFORM_UNKNOWN_CONTAINER, 0
  field :TRANSFORM_BODY, 1
  field :TRANSFORM_METADATA, 2
  field :TRANSFORM_TABLE, 3
end

defmodule Google.Privacy.Dlp.V2.TransformationType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :TRANSFORMATION_TYPE_UNSPECIFIED, 0
  field :RECORD_SUPPRESSION, 1
  field :REPLACE_VALUE, 2
  field :REPLACE_DICTIONARY, 15
  field :REDACT, 3
  field :CHARACTER_MASK, 4
  field :CRYPTO_REPLACE_FFX_FPE, 5
  field :FIXED_SIZE_BUCKETING, 6
  field :BUCKETING, 7
  field :REPLACE_WITH_INFO_TYPE, 8
  field :TIME_PART, 9
  field :CRYPTO_HASH, 10
  field :DATE_SHIFT, 12
  field :CRYPTO_DETERMINISTIC_CONFIG, 13
  field :REDACT_IMAGE, 14
end

defmodule Google.Privacy.Dlp.V2.ProfileGeneration do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :PROFILE_GENERATION_UNSPECIFIED, 0
  field :PROFILE_GENERATION_NEW, 1
  field :PROFILE_GENERATION_UPDATE, 2
end

defmodule Google.Privacy.Dlp.V2.BigQueryTableTypeCollection do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :BIG_QUERY_COLLECTION_UNSPECIFIED, 0
  field :BIG_QUERY_COLLECTION_ALL_TYPES, 1
  field :BIG_QUERY_COLLECTION_ONLY_SUPPORTED_TYPES, 2
end

defmodule Google.Privacy.Dlp.V2.BigQueryTableType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :BIG_QUERY_TABLE_TYPE_UNSPECIFIED, 0
  field :BIG_QUERY_TABLE_TYPE_TABLE, 1
  field :BIG_QUERY_TABLE_TYPE_EXTERNAL_BIG_LAKE, 2
  field :BIG_QUERY_TABLE_TYPE_SNAPSHOT, 3
end

defmodule Google.Privacy.Dlp.V2.DataProfileUpdateFrequency do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :UPDATE_FREQUENCY_UNSPECIFIED, 0
  field :UPDATE_FREQUENCY_NEVER, 1
  field :UPDATE_FREQUENCY_DAILY, 2
  field :UPDATE_FREQUENCY_MONTHLY, 4
end

defmodule Google.Privacy.Dlp.V2.BigQueryTableModification do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :TABLE_MODIFICATION_UNSPECIFIED, 0
  field :TABLE_MODIFIED_TIMESTAMP, 1
end

defmodule Google.Privacy.Dlp.V2.BigQuerySchemaModification do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :SCHEMA_MODIFICATION_UNSPECIFIED, 0
  field :SCHEMA_NEW_COLUMNS, 1
  field :SCHEMA_REMOVED_COLUMNS, 2
end

defmodule Google.Privacy.Dlp.V2.RelationalOperator do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :RELATIONAL_OPERATOR_UNSPECIFIED, 0
  field :EQUAL_TO, 1
  field :NOT_EQUAL_TO, 2
  field :GREATER_THAN, 3
  field :LESS_THAN, 4
  field :GREATER_THAN_OR_EQUALS, 5
  field :LESS_THAN_OR_EQUALS, 6
  field :EXISTS, 7
end

defmodule Google.Privacy.Dlp.V2.MatchingType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :MATCHING_TYPE_UNSPECIFIED, 0
  field :MATCHING_TYPE_FULL_MATCH, 1
  field :MATCHING_TYPE_PARTIAL_MATCH, 2
  field :MATCHING_TYPE_INVERSE_MATCH, 3
end

defmodule Google.Privacy.Dlp.V2.ContentOption do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :CONTENT_UNSPECIFIED, 0
  field :CONTENT_TEXT, 1
  field :CONTENT_IMAGE, 2
end

defmodule Google.Privacy.Dlp.V2.MetadataType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :METADATATYPE_UNSPECIFIED, 0
  field :STORAGE_METADATA, 2
end

defmodule Google.Privacy.Dlp.V2.InfoTypeSupportedBy do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :ENUM_TYPE_UNSPECIFIED, 0
  field :INSPECT, 1
  field :RISK_ANALYSIS, 2
end

defmodule Google.Privacy.Dlp.V2.DlpJobType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :DLP_JOB_TYPE_UNSPECIFIED, 0
  field :INSPECT_JOB, 1
  field :RISK_ANALYSIS_JOB, 2
end

defmodule Google.Privacy.Dlp.V2.StoredInfoTypeState do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :STORED_INFO_TYPE_STATE_UNSPECIFIED, 0
  field :PENDING, 1
  field :READY, 2
  field :FAILED, 3
  field :INVALID, 4
end

defmodule Google.Privacy.Dlp.V2.ResourceVisibility do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :RESOURCE_VISIBILITY_UNSPECIFIED, 0
  field :RESOURCE_VISIBILITY_PUBLIC, 10
  field :RESOURCE_VISIBILITY_INCONCLUSIVE, 15
  field :RESOURCE_VISIBILITY_RESTRICTED, 20
end

defmodule Google.Privacy.Dlp.V2.EncryptionStatus do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :ENCRYPTION_STATUS_UNSPECIFIED, 0
  field :ENCRYPTION_GOOGLE_MANAGED, 1
  field :ENCRYPTION_CUSTOMER_MANAGED, 2
end

defmodule Google.Privacy.Dlp.V2.NullPercentageLevel do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :NULL_PERCENTAGE_LEVEL_UNSPECIFIED, 0
  field :NULL_PERCENTAGE_VERY_LOW, 1
  field :NULL_PERCENTAGE_LOW, 2
  field :NULL_PERCENTAGE_MEDIUM, 3
  field :NULL_PERCENTAGE_HIGH, 4
end

defmodule Google.Privacy.Dlp.V2.UniquenessScoreLevel do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :UNIQUENESS_SCORE_LEVEL_UNSPECIFIED, 0
  field :UNIQUENESS_SCORE_LOW, 1
  field :UNIQUENESS_SCORE_MEDIUM, 2
  field :UNIQUENESS_SCORE_HIGH, 3
end

defmodule Google.Privacy.Dlp.V2.ConnectionState do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :CONNECTION_STATE_UNSPECIFIED, 0
  field :MISSING_CREDENTIALS, 1
  field :AVAILABLE, 2
  field :ERROR, 3
end

defmodule Google.Privacy.Dlp.V2.ByteContentItem.BytesType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :BYTES_TYPE_UNSPECIFIED, 0
  field :IMAGE, 6
  field :IMAGE_JPEG, 1
  field :IMAGE_BMP, 2
  field :IMAGE_PNG, 3
  field :IMAGE_SVG, 4
  field :TEXT_UTF8, 5
  field :WORD_DOCUMENT, 7
  field :PDF, 8
  field :POWERPOINT_DOCUMENT, 9
  field :EXCEL_DOCUMENT, 10
  field :AVRO, 11
  field :CSV, 12
  field :TSV, 13
  field :AUDIO, 15
  field :VIDEO, 16
  field :EXECUTABLE, 17
  field :AI_MODEL, 18
end

defmodule Google.Privacy.Dlp.V2.OutputStorageConfig.OutputSchema do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :OUTPUT_SCHEMA_UNSPECIFIED, 0
  field :BASIC_COLUMNS, 1
  field :GCS_COLUMNS, 2
  field :DATASTORE_COLUMNS, 3
  field :BIG_QUERY_COLUMNS, 4
  field :ALL_COLUMNS, 5
end

defmodule Google.Privacy.Dlp.V2.InfoTypeCategory.LocationCategory do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :LOCATION_UNSPECIFIED, 0
  field :GLOBAL, 1
  field :ARGENTINA, 2
  field :ARMENIA, 51
  field :AUSTRALIA, 3
  field :AZERBAIJAN, 48
  field :BELARUS, 50
  field :BELGIUM, 4
  field :BRAZIL, 5
  field :CANADA, 6
  field :CHILE, 7
  field :CHINA, 8
  field :COLOMBIA, 9
  field :CROATIA, 42
  field :CZECHIA, 52
  field :DENMARK, 10
  field :FRANCE, 11
  field :FINLAND, 12
  field :GERMANY, 13
  field :HONG_KONG, 14
  field :INDIA, 15
  field :INDONESIA, 16
  field :IRELAND, 17
  field :ISRAEL, 18
  field :ITALY, 19
  field :JAPAN, 20
  field :KAZAKHSTAN, 47
  field :KOREA, 21
  field :MEXICO, 22
  field :THE_NETHERLANDS, 23
  field :NEW_ZEALAND, 41
  field :NORWAY, 24
  field :PARAGUAY, 25
  field :PERU, 26
  field :POLAND, 27
  field :PORTUGAL, 28
  field :RUSSIA, 44
  field :SINGAPORE, 29
  field :SOUTH_AFRICA, 30
  field :SPAIN, 31
  field :SWEDEN, 32
  field :SWITZERLAND, 43
  field :TAIWAN, 33
  field :THAILAND, 34
  field :TURKEY, 35
  field :UKRAINE, 45
  field :UNITED_KINGDOM, 36
  field :UNITED_STATES, 37
  field :URUGUAY, 38
  field :UZBEKISTAN, 46
  field :VENEZUELA, 39
  field :INTERNAL, 40
end

defmodule Google.Privacy.Dlp.V2.InfoTypeCategory.IndustryCategory do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :INDUSTRY_UNSPECIFIED, 0
  field :FINANCE, 1
  field :HEALTH, 2
  field :TELECOMMUNICATIONS, 3
end

defmodule Google.Privacy.Dlp.V2.InfoTypeCategory.TypeCategory do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :TYPE_UNSPECIFIED, 0
  field :PII, 1
  field :SPII, 2
  field :DEMOGRAPHIC, 3
  field :CREDENTIAL, 4
  field :GOVERNMENT_ID, 5
  field :DOCUMENT, 6
  field :CONTEXTUAL_INFORMATION, 7
  field :CUSTOM, 8
end

defmodule Google.Privacy.Dlp.V2.TimePartConfig.TimePart do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :TIME_PART_UNSPECIFIED, 0
  field :YEAR, 1
  field :MONTH, 2
  field :DAY_OF_MONTH, 3
  field :DAY_OF_WEEK, 4
  field :WEEK_OF_YEAR, 5
  field :HOUR_OF_DAY, 6
end

defmodule Google.Privacy.Dlp.V2.CharsToIgnore.CommonCharsToIgnore do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :COMMON_CHARS_TO_IGNORE_UNSPECIFIED, 0
  field :NUMERIC, 1
  field :ALPHA_UPPER_CASE, 2
  field :ALPHA_LOWER_CASE, 3
  field :PUNCTUATION, 4
  field :WHITESPACE, 5
end

defmodule Google.Privacy.Dlp.V2.CryptoReplaceFfxFpeConfig.FfxCommonNativeAlphabet do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :FFX_COMMON_NATIVE_ALPHABET_UNSPECIFIED, 0
  field :NUMERIC, 1
  field :HEXADECIMAL, 2
  field :UPPER_CASE_ALPHA_NUMERIC, 3
  field :ALPHA_NUMERIC, 4
end

defmodule Google.Privacy.Dlp.V2.RecordCondition.Expressions.LogicalOperator do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :LOGICAL_OPERATOR_UNSPECIFIED, 0
  field :AND, 1
end

defmodule Google.Privacy.Dlp.V2.TransformationSummary.TransformationResultCode do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :TRANSFORMATION_RESULT_CODE_UNSPECIFIED, 0
  field :SUCCESS, 1
  field :ERROR, 2
end

defmodule Google.Privacy.Dlp.V2.Error.ErrorExtraInfo do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :ERROR_INFO_UNSPECIFIED, 0
  field :IMAGE_SCAN_UNAVAILABLE_IN_REGION, 1
  field :FILE_STORE_CLUSTER_UNSUPPORTED, 2
end

defmodule Google.Privacy.Dlp.V2.JobTrigger.Status do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :STATUS_UNSPECIFIED, 0
  field :HEALTHY, 1
  field :PAUSED, 2
  field :CANCELLED, 3
end

defmodule Google.Privacy.Dlp.V2.DataProfileAction.EventType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :EVENT_TYPE_UNSPECIFIED, 0
  field :NEW_PROFILE, 1
  field :CHANGED_PROFILE, 2
  field :SCORE_INCREASED, 3
  field :ERROR_CHANGED, 4
end

defmodule Google.Privacy.Dlp.V2.DataProfileAction.PubSubNotification.DetailLevel do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :DETAIL_LEVEL_UNSPECIFIED, 0
  field :TABLE_PROFILE, 1
  field :RESOURCE_NAME, 2
  field :FILE_STORE_PROFILE, 3
end

defmodule Google.Privacy.Dlp.V2.DiscoveryConfig.Status do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :STATUS_UNSPECIFIED, 0
  field :RUNNING, 1
  field :PAUSED, 2
end

defmodule Google.Privacy.Dlp.V2.DiscoveryCloudSqlConditions.DatabaseEngine do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :DATABASE_ENGINE_UNSPECIFIED, 0
  field :ALL_SUPPORTED_DATABASE_ENGINES, 1
  field :MYSQL, 2
  field :POSTGRES, 3
end

defmodule Google.Privacy.Dlp.V2.DiscoveryCloudSqlConditions.DatabaseResourceType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :DATABASE_RESOURCE_TYPE_UNSPECIFIED, 0
  field :DATABASE_RESOURCE_TYPE_ALL_SUPPORTED_TYPES, 1
  field :DATABASE_RESOURCE_TYPE_TABLE, 2
end

defmodule Google.Privacy.Dlp.V2.DiscoveryCloudSqlGenerationCadence.SchemaModifiedCadence.CloudSqlSchemaModification do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :SQL_SCHEMA_MODIFICATION_UNSPECIFIED, 0
  field :NEW_COLUMNS, 1
  field :REMOVED_COLUMNS, 2
end

defmodule Google.Privacy.Dlp.V2.DiscoveryCloudStorageConditions.CloudStorageObjectAttribute do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :CLOUD_STORAGE_OBJECT_ATTRIBUTE_UNSPECIFIED, 0
  field :ALL_SUPPORTED_OBJECTS, 1
  field :STANDARD, 2
  field :NEARLINE, 3
  field :COLDLINE, 4
  field :ARCHIVE, 5
  field :REGIONAL, 6
  field :MULTI_REGIONAL, 7
  field :DURABLE_REDUCED_AVAILABILITY, 8
end

defmodule Google.Privacy.Dlp.V2.DiscoveryCloudStorageConditions.CloudStorageBucketAttribute do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :CLOUD_STORAGE_BUCKET_ATTRIBUTE_UNSPECIFIED, 0
  field :ALL_SUPPORTED_BUCKETS, 1
  field :AUTOCLASS_DISABLED, 2
  field :AUTOCLASS_ENABLED, 3
end

defmodule Google.Privacy.Dlp.V2.AmazonS3BucketConditions.BucketType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :TYPE_UNSPECIFIED, 0
  field :TYPE_ALL_SUPPORTED, 1
  field :TYPE_GENERAL_PURPOSE, 2
end

defmodule Google.Privacy.Dlp.V2.AmazonS3BucketConditions.ObjectStorageClass do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :UNSPECIFIED, 0
  field :ALL_SUPPORTED_CLASSES, 1
  field :STANDARD, 2
  field :STANDARD_INFREQUENT_ACCESS, 4
  field :GLACIER_INSTANT_RETRIEVAL, 6
  field :INTELLIGENT_TIERING, 7
end

defmodule Google.Privacy.Dlp.V2.DlpJob.JobState do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :JOB_STATE_UNSPECIFIED, 0
  field :PENDING, 1
  field :RUNNING, 2
  field :DONE, 3
  field :CANCELED, 4
  field :FAILED, 5
  field :ACTIVE, 6
end

defmodule Google.Privacy.Dlp.V2.DataRiskLevel.DataRiskLevelScore do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :RISK_SCORE_UNSPECIFIED, 0
  field :RISK_LOW, 10
  field :RISK_UNKNOWN, 12
  field :RISK_MODERATE, 20
  field :RISK_HIGH, 30
end

defmodule Google.Privacy.Dlp.V2.TableDataProfile.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :RUNNING, 1
  field :DONE, 2
end

defmodule Google.Privacy.Dlp.V2.ColumnDataProfile.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :RUNNING, 1
  field :DONE, 2
end

defmodule Google.Privacy.Dlp.V2.ColumnDataProfile.ColumnDataType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :COLUMN_DATA_TYPE_UNSPECIFIED, 0
  field :TYPE_INT64, 1
  field :TYPE_BOOL, 2
  field :TYPE_FLOAT64, 3
  field :TYPE_STRING, 4
  field :TYPE_BYTES, 5
  field :TYPE_TIMESTAMP, 6
  field :TYPE_DATE, 7
  field :TYPE_TIME, 8
  field :TYPE_DATETIME, 9
  field :TYPE_GEOGRAPHY, 10
  field :TYPE_NUMERIC, 11
  field :TYPE_RECORD, 12
  field :TYPE_BIGNUMERIC, 13
  field :TYPE_JSON, 14
  field :TYPE_INTERVAL, 15
  field :TYPE_RANGE_DATE, 16
  field :TYPE_RANGE_DATETIME, 17
  field :TYPE_RANGE_TIMESTAMP, 18
end

defmodule Google.Privacy.Dlp.V2.ColumnDataProfile.ColumnPolicyState do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :COLUMN_POLICY_STATE_UNSPECIFIED, 0
  field :COLUMN_POLICY_TAGGED, 1
end

defmodule Google.Privacy.Dlp.V2.FileStoreDataProfile.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :RUNNING, 1
  field :DONE, 2
end

defmodule Google.Privacy.Dlp.V2.DataProfilePubSubCondition.ProfileScoreBucket do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :PROFILE_SCORE_BUCKET_UNSPECIFIED, 0
  field :HIGH, 1
  field :MEDIUM_OR_HIGH, 2
end

defmodule Google.Privacy.Dlp.V2.DataProfilePubSubCondition.PubSubExpressions.PubSubLogicalOperator do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :LOGICAL_OPERATOR_UNSPECIFIED, 0
  field :OR, 1
  field :AND, 2
end

defmodule Google.Privacy.Dlp.V2.CloudSqlProperties.DatabaseEngine do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :DATABASE_ENGINE_UNKNOWN, 0
  field :DATABASE_ENGINE_MYSQL, 1
  field :DATABASE_ENGINE_POSTGRES, 2
end

defmodule Google.Privacy.Dlp.V2.FileClusterType.Cluster do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :CLUSTER_UNSPECIFIED, 0
  field :CLUSTER_UNKNOWN, 1
  field :CLUSTER_TEXT, 2
  field :CLUSTER_STRUCTURED_DATA, 3
  field :CLUSTER_SOURCE_CODE, 4
  field :CLUSTER_RICH_DOCUMENT, 5
  field :CLUSTER_IMAGE, 6
  field :CLUSTER_ARCHIVE, 7
  field :CLUSTER_MULTIMEDIA, 8
  field :CLUSTER_EXECUTABLE, 9
  field :CLUSTER_AI_MODEL, 10
end

defmodule Google.Privacy.Dlp.V2.ExcludeInfoTypes do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :info_types, 1,
    repeated: true,
    type: Google.Privacy.Dlp.V2.InfoType,
    json_name: "infoTypes"
end

defmodule Google.Privacy.Dlp.V2.ExcludeByHotword do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :hotword_regex, 1,
    type: Google.Privacy.Dlp.V2.CustomInfoType.Regex,
    json_name: "hotwordRegex"

  field :proximity, 2, type: Google.Privacy.Dlp.V2.CustomInfoType.DetectionRule.Proximity
end

defmodule Google.Privacy.Dlp.V2.ExclusionRule do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :type, 0

  field :dictionary, 1, type: Google.Privacy.Dlp.V2.CustomInfoType.Dictionary, oneof: 0
  field :regex, 2, type: Google.Privacy.Dlp.V2.CustomInfoType.Regex, oneof: 0

  field :exclude_info_types, 3,
    type: Google.Privacy.Dlp.V2.ExcludeInfoTypes,
    json_name: "excludeInfoTypes",
    oneof: 0

  field :exclude_by_hotword, 5,
    type: Google.Privacy.Dlp.V2.ExcludeByHotword,
    json_name: "excludeByHotword",
    oneof: 0

  field :matching_type, 4,
    type: Google.Privacy.Dlp.V2.MatchingType,
    json_name: "matchingType",
    enum: true
end

defmodule Google.Privacy.Dlp.V2.InspectionRule do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :type, 0

  field :hotword_rule, 1,
    type: Google.Privacy.Dlp.V2.CustomInfoType.DetectionRule.HotwordRule,
    json_name: "hotwordRule",
    oneof: 0

  field :exclusion_rule, 2,
    type: Google.Privacy.Dlp.V2.ExclusionRule,
    json_name: "exclusionRule",
    oneof: 0
end

defmodule Google.Privacy.Dlp.V2.InspectionRuleSet do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :info_types, 1,
    repeated: true,
    type: Google.Privacy.Dlp.V2.InfoType,
    json_name: "infoTypes"

  field :rules, 2, repeated: true, type: Google.Privacy.Dlp.V2.InspectionRule
end

defmodule Google.Privacy.Dlp.V2.InspectConfig.InfoTypeLikelihood do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :info_type, 1, type: Google.Privacy.Dlp.V2.InfoType, json_name: "infoType"

  field :min_likelihood, 2,
    type: Google.Privacy.Dlp.V2.Likelihood,
    json_name: "minLikelihood",
    enum: true
end

defmodule Google.Privacy.Dlp.V2.InspectConfig.FindingLimits.InfoTypeLimit do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :info_type, 1, type: Google.Privacy.Dlp.V2.InfoType, json_name: "infoType"
  field :max_findings, 2, type: :int32, json_name: "maxFindings"
end

defmodule Google.Privacy.Dlp.V2.InspectConfig.FindingLimits do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :max_findings_per_item, 1, type: :int32, json_name: "maxFindingsPerItem"
  field :max_findings_per_request, 2, type: :int32, json_name: "maxFindingsPerRequest"

  field :max_findings_per_info_type, 3,
    repeated: true,
    type: Google.Privacy.Dlp.V2.InspectConfig.FindingLimits.InfoTypeLimit,
    json_name: "maxFindingsPerInfoType"
end

defmodule Google.Privacy.Dlp.V2.InspectConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :info_types, 1,
    repeated: true,
    type: Google.Privacy.Dlp.V2.InfoType,
    json_name: "infoTypes"

  field :min_likelihood, 2,
    type: Google.Privacy.Dlp.V2.Likelihood,
    json_name: "minLikelihood",
    enum: true

  field :min_likelihood_per_info_type, 11,
    repeated: true,
    type: Google.Privacy.Dlp.V2.InspectConfig.InfoTypeLikelihood,
    json_name: "minLikelihoodPerInfoType"

  field :limits, 3, type: Google.Privacy.Dlp.V2.InspectConfig.FindingLimits
  field :include_quote, 4, type: :bool, json_name: "includeQuote"
  field :exclude_info_types, 5, type: :bool, json_name: "excludeInfoTypes"

  field :custom_info_types, 6,
    repeated: true,
    type: Google.Privacy.Dlp.V2.CustomInfoType,
    json_name: "customInfoTypes"

  field :content_options, 8,
    repeated: true,
    type: Google.Privacy.Dlp.V2.ContentOption,
    json_name: "contentOptions",
    enum: true

  field :rule_set, 10,
    repeated: true,
    type: Google.Privacy.Dlp.V2.InspectionRuleSet,
    json_name: "ruleSet"
end

defmodule Google.Privacy.Dlp.V2.ByteContentItem do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :type, 1, type: Google.Privacy.Dlp.V2.ByteContentItem.BytesType, enum: true
  field :data, 2, type: :bytes
end

defmodule Google.Privacy.Dlp.V2.ContentItem do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :data_item, 0

  field :value, 3, type: :string, oneof: 0
  field :table, 4, type: Google.Privacy.Dlp.V2.Table, oneof: 0

  field :byte_item, 5,
    type: Google.Privacy.Dlp.V2.ByteContentItem,
    json_name: "byteItem",
    oneof: 0
end

defmodule Google.Privacy.Dlp.V2.Table.Row do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :values, 1, repeated: true, type: Google.Privacy.Dlp.V2.Value
end

defmodule Google.Privacy.Dlp.V2.Table do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :headers, 1, repeated: true, type: Google.Privacy.Dlp.V2.FieldId
  field :rows, 2, repeated: true, type: Google.Privacy.Dlp.V2.Table.Row
end

defmodule Google.Privacy.Dlp.V2.InspectResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :findings, 1, repeated: true, type: Google.Privacy.Dlp.V2.Finding
  field :findings_truncated, 2, type: :bool, json_name: "findingsTruncated"
end

defmodule Google.Privacy.Dlp.V2.Finding.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Privacy.Dlp.V2.Finding do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 14, type: :string
  field :quote, 1, type: :string
  field :info_type, 2, type: Google.Privacy.Dlp.V2.InfoType, json_name: "infoType"
  field :likelihood, 3, type: Google.Privacy.Dlp.V2.Likelihood, enum: true
  field :location, 4, type: Google.Privacy.Dlp.V2.Location
  field :create_time, 6, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :quote_info, 7, type: Google.Privacy.Dlp.V2.QuoteInfo, json_name: "quoteInfo"
  field :resource_name, 8, type: :string, json_name: "resourceName", deprecated: false
  field :trigger_name, 9, type: :string, json_name: "triggerName", deprecated: false
  field :labels, 10, repeated: true, type: Google.Privacy.Dlp.V2.Finding.LabelsEntry, map: true
  field :job_create_time, 11, type: Google.Protobuf.Timestamp, json_name: "jobCreateTime"
  field :job_name, 13, type: :string, json_name: "jobName", deprecated: false
  field :finding_id, 15, type: :string, json_name: "findingId"
end

defmodule Google.Privacy.Dlp.V2.Location do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :byte_range, 1, type: Google.Privacy.Dlp.V2.Range, json_name: "byteRange"
  field :codepoint_range, 2, type: Google.Privacy.Dlp.V2.Range, json_name: "codepointRange"

  field :content_locations, 7,
    repeated: true,
    type: Google.Privacy.Dlp.V2.ContentLocation,
    json_name: "contentLocations"

  field :container, 8, type: Google.Privacy.Dlp.V2.Container
end

defmodule Google.Privacy.Dlp.V2.ContentLocation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :location, 0

  field :container_name, 1, type: :string, json_name: "containerName"

  field :record_location, 2,
    type: Google.Privacy.Dlp.V2.RecordLocation,
    json_name: "recordLocation",
    oneof: 0

  field :image_location, 3,
    type: Google.Privacy.Dlp.V2.ImageLocation,
    json_name: "imageLocation",
    oneof: 0

  field :document_location, 5,
    type: Google.Privacy.Dlp.V2.DocumentLocation,
    json_name: "documentLocation",
    oneof: 0

  field :metadata_location, 8,
    type: Google.Privacy.Dlp.V2.MetadataLocation,
    json_name: "metadataLocation",
    oneof: 0

  field :container_timestamp, 6, type: Google.Protobuf.Timestamp, json_name: "containerTimestamp"
  field :container_version, 7, type: :string, json_name: "containerVersion"
end

defmodule Google.Privacy.Dlp.V2.MetadataLocation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :label, 0

  field :type, 1, type: Google.Privacy.Dlp.V2.MetadataType, enum: true

  field :storage_label, 3,
    type: Google.Privacy.Dlp.V2.StorageMetadataLabel,
    json_name: "storageLabel",
    oneof: 0
end

defmodule Google.Privacy.Dlp.V2.StorageMetadataLabel do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
end

defmodule Google.Privacy.Dlp.V2.DocumentLocation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :file_offset, 1, type: :int64, json_name: "fileOffset"
end

defmodule Google.Privacy.Dlp.V2.RecordLocation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :record_key, 1, type: Google.Privacy.Dlp.V2.RecordKey, json_name: "recordKey"
  field :field_id, 2, type: Google.Privacy.Dlp.V2.FieldId, json_name: "fieldId"
  field :table_location, 3, type: Google.Privacy.Dlp.V2.TableLocation, json_name: "tableLocation"
end

defmodule Google.Privacy.Dlp.V2.TableLocation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :row_index, 1, type: :int64, json_name: "rowIndex"
end

defmodule Google.Privacy.Dlp.V2.Container do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :type, 1, type: :string
  field :project_id, 2, type: :string, json_name: "projectId"
  field :full_path, 3, type: :string, json_name: "fullPath"
  field :root_path, 4, type: :string, json_name: "rootPath"
  field :relative_path, 5, type: :string, json_name: "relativePath"
  field :update_time, 6, type: Google.Protobuf.Timestamp, json_name: "updateTime"
  field :version, 7, type: :string
end

defmodule Google.Privacy.Dlp.V2.Range do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :start, 1, type: :int64
  field :end, 2, type: :int64
end

defmodule Google.Privacy.Dlp.V2.ImageLocation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :bounding_boxes, 1,
    repeated: true,
    type: Google.Privacy.Dlp.V2.BoundingBox,
    json_name: "boundingBoxes"
end

defmodule Google.Privacy.Dlp.V2.BoundingBox do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :top, 1, type: :int32
  field :left, 2, type: :int32
  field :width, 3, type: :int32
  field :height, 4, type: :int32
end

defmodule Google.Privacy.Dlp.V2.RedactImageRequest.ImageRedactionConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :target, 0

  field :info_type, 1, type: Google.Privacy.Dlp.V2.InfoType, json_name: "infoType", oneof: 0
  field :redact_all_text, 2, type: :bool, json_name: "redactAllText", oneof: 0
  field :redaction_color, 3, type: Google.Privacy.Dlp.V2.Color, json_name: "redactionColor"
end

defmodule Google.Privacy.Dlp.V2.RedactImageRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :location_id, 8, type: :string, json_name: "locationId"
  field :inspect_config, 2, type: Google.Privacy.Dlp.V2.InspectConfig, json_name: "inspectConfig"

  field :image_redaction_configs, 5,
    repeated: true,
    type: Google.Privacy.Dlp.V2.RedactImageRequest.ImageRedactionConfig,
    json_name: "imageRedactionConfigs"

  field :include_findings, 6, type: :bool, json_name: "includeFindings"
  field :byte_item, 7, type: Google.Privacy.Dlp.V2.ByteContentItem, json_name: "byteItem"
end

defmodule Google.Privacy.Dlp.V2.Color do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :red, 1, type: :float
  field :green, 2, type: :float
  field :blue, 3, type: :float
end

defmodule Google.Privacy.Dlp.V2.RedactImageResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :redacted_image, 1, type: :bytes, json_name: "redactedImage"
  field :extracted_text, 2, type: :string, json_name: "extractedText"
  field :inspect_result, 3, type: Google.Privacy.Dlp.V2.InspectResult, json_name: "inspectResult"
end

defmodule Google.Privacy.Dlp.V2.DeidentifyContentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :deidentify_config, 2,
    type: Google.Privacy.Dlp.V2.DeidentifyConfig,
    json_name: "deidentifyConfig"

  field :inspect_config, 3, type: Google.Privacy.Dlp.V2.InspectConfig, json_name: "inspectConfig"
  field :item, 4, type: Google.Privacy.Dlp.V2.ContentItem
  field :inspect_template_name, 5, type: :string, json_name: "inspectTemplateName"
  field :deidentify_template_name, 6, type: :string, json_name: "deidentifyTemplateName"
  field :location_id, 7, type: :string, json_name: "locationId"
end

defmodule Google.Privacy.Dlp.V2.DeidentifyContentResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :item, 1, type: Google.Privacy.Dlp.V2.ContentItem
  field :overview, 2, type: Google.Privacy.Dlp.V2.TransformationOverview
end

defmodule Google.Privacy.Dlp.V2.ReidentifyContentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :reidentify_config, 2,
    type: Google.Privacy.Dlp.V2.DeidentifyConfig,
    json_name: "reidentifyConfig"

  field :inspect_config, 3, type: Google.Privacy.Dlp.V2.InspectConfig, json_name: "inspectConfig"
  field :item, 4, type: Google.Privacy.Dlp.V2.ContentItem
  field :inspect_template_name, 5, type: :string, json_name: "inspectTemplateName"
  field :reidentify_template_name, 6, type: :string, json_name: "reidentifyTemplateName"
  field :location_id, 7, type: :string, json_name: "locationId"
end

defmodule Google.Privacy.Dlp.V2.ReidentifyContentResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :item, 1, type: Google.Privacy.Dlp.V2.ContentItem
  field :overview, 2, type: Google.Privacy.Dlp.V2.TransformationOverview
end

defmodule Google.Privacy.Dlp.V2.InspectContentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :inspect_config, 2, type: Google.Privacy.Dlp.V2.InspectConfig, json_name: "inspectConfig"
  field :item, 3, type: Google.Privacy.Dlp.V2.ContentItem
  field :inspect_template_name, 4, type: :string, json_name: "inspectTemplateName"
  field :location_id, 5, type: :string, json_name: "locationId"
end

defmodule Google.Privacy.Dlp.V2.InspectContentResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :result, 1, type: Google.Privacy.Dlp.V2.InspectResult
end

defmodule Google.Privacy.Dlp.V2.OutputStorageConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :type, 0

  field :table, 1, type: Google.Privacy.Dlp.V2.BigQueryTable, oneof: 0

  field :output_schema, 3,
    type: Google.Privacy.Dlp.V2.OutputStorageConfig.OutputSchema,
    json_name: "outputSchema",
    enum: true
end

defmodule Google.Privacy.Dlp.V2.InfoTypeStats do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :info_type, 1, type: Google.Privacy.Dlp.V2.InfoType, json_name: "infoType"
  field :count, 2, type: :int64
end

defmodule Google.Privacy.Dlp.V2.InspectDataSourceDetails.RequestedOptions do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :snapshot_inspect_template, 1,
    type: Google.Privacy.Dlp.V2.InspectTemplate,
    json_name: "snapshotInspectTemplate"

  field :job_config, 3, type: Google.Privacy.Dlp.V2.InspectJobConfig, json_name: "jobConfig"
end

defmodule Google.Privacy.Dlp.V2.InspectDataSourceDetails.Result do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :processed_bytes, 1, type: :int64, json_name: "processedBytes"
  field :total_estimated_bytes, 2, type: :int64, json_name: "totalEstimatedBytes"

  field :info_type_stats, 3,
    repeated: true,
    type: Google.Privacy.Dlp.V2.InfoTypeStats,
    json_name: "infoTypeStats"

  field :num_rows_processed, 5, type: :int64, json_name: "numRowsProcessed"

  field :hybrid_stats, 7,
    type: Google.Privacy.Dlp.V2.HybridInspectStatistics,
    json_name: "hybridStats"
end

defmodule Google.Privacy.Dlp.V2.InspectDataSourceDetails do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :requested_options, 2,
    type: Google.Privacy.Dlp.V2.InspectDataSourceDetails.RequestedOptions,
    json_name: "requestedOptions"

  field :result, 3, type: Google.Privacy.Dlp.V2.InspectDataSourceDetails.Result
end

defmodule Google.Privacy.Dlp.V2.DataProfileBigQueryRowSchema do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :data_profile, 0

  field :table_profile, 1,
    type: Google.Privacy.Dlp.V2.TableDataProfile,
    json_name: "tableProfile",
    oneof: 0

  field :column_profile, 2,
    type: Google.Privacy.Dlp.V2.ColumnDataProfile,
    json_name: "columnProfile",
    oneof: 0

  field :file_store_profile, 3,
    type: Google.Privacy.Dlp.V2.FileStoreDataProfile,
    json_name: "fileStoreProfile",
    oneof: 0
end

defmodule Google.Privacy.Dlp.V2.HybridInspectStatistics do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :processed_count, 1, type: :int64, json_name: "processedCount"
  field :aborted_count, 2, type: :int64, json_name: "abortedCount"
  field :pending_count, 3, type: :int64, json_name: "pendingCount"
end

defmodule Google.Privacy.Dlp.V2.ActionDetails do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :details, 0

  field :deidentify_details, 1,
    type: Google.Privacy.Dlp.V2.DeidentifyDataSourceDetails,
    json_name: "deidentifyDetails",
    oneof: 0
end

defmodule Google.Privacy.Dlp.V2.DeidentifyDataSourceStats do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :transformed_bytes, 1, type: :int64, json_name: "transformedBytes"
  field :transformation_count, 2, type: :int64, json_name: "transformationCount"
  field :transformation_error_count, 3, type: :int64, json_name: "transformationErrorCount"
end

defmodule Google.Privacy.Dlp.V2.DeidentifyDataSourceDetails.RequestedDeidentifyOptions do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :snapshot_deidentify_template, 1,
    type: Google.Privacy.Dlp.V2.DeidentifyTemplate,
    json_name: "snapshotDeidentifyTemplate"

  field :snapshot_structured_deidentify_template, 2,
    type: Google.Privacy.Dlp.V2.DeidentifyTemplate,
    json_name: "snapshotStructuredDeidentifyTemplate"

  field :snapshot_image_redact_template, 3,
    type: Google.Privacy.Dlp.V2.DeidentifyTemplate,
    json_name: "snapshotImageRedactTemplate"
end

defmodule Google.Privacy.Dlp.V2.DeidentifyDataSourceDetails do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :requested_options, 1,
    type: Google.Privacy.Dlp.V2.DeidentifyDataSourceDetails.RequestedDeidentifyOptions,
    json_name: "requestedOptions"

  field :deidentify_stats, 2,
    type: Google.Privacy.Dlp.V2.DeidentifyDataSourceStats,
    json_name: "deidentifyStats"
end

defmodule Google.Privacy.Dlp.V2.InfoTypeDescription do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string
  field :display_name, 2, type: :string, json_name: "displayName"

  field :supported_by, 3,
    repeated: true,
    type: Google.Privacy.Dlp.V2.InfoTypeSupportedBy,
    json_name: "supportedBy",
    enum: true

  field :description, 4, type: :string
  field :example, 8, type: :string
  field :versions, 9, repeated: true, type: Google.Privacy.Dlp.V2.VersionDescription
  field :categories, 10, repeated: true, type: Google.Privacy.Dlp.V2.InfoTypeCategory

  field :sensitivity_score, 11,
    type: Google.Privacy.Dlp.V2.SensitivityScore,
    json_name: "sensitivityScore"

  field :specific_info_types, 12, repeated: true, type: :string, json_name: "specificInfoTypes"
end

defmodule Google.Privacy.Dlp.V2.InfoTypeCategory do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :category, 0

  field :location_category, 1,
    type: Google.Privacy.Dlp.V2.InfoTypeCategory.LocationCategory,
    json_name: "locationCategory",
    enum: true,
    oneof: 0

  field :industry_category, 2,
    type: Google.Privacy.Dlp.V2.InfoTypeCategory.IndustryCategory,
    json_name: "industryCategory",
    enum: true,
    oneof: 0

  field :type_category, 3,
    type: Google.Privacy.Dlp.V2.InfoTypeCategory.TypeCategory,
    json_name: "typeCategory",
    enum: true,
    oneof: 0
end

defmodule Google.Privacy.Dlp.V2.VersionDescription do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :version, 1, type: :string
  field :description, 2, type: :string
end

defmodule Google.Privacy.Dlp.V2.ListInfoTypesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 4, type: :string
  field :language_code, 1, type: :string, json_name: "languageCode"
  field :filter, 2, type: :string
  field :location_id, 3, type: :string, json_name: "locationId"
end

defmodule Google.Privacy.Dlp.V2.ListInfoTypesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :info_types, 1,
    repeated: true,
    type: Google.Privacy.Dlp.V2.InfoTypeDescription,
    json_name: "infoTypes"
end

defmodule Google.Privacy.Dlp.V2.RiskAnalysisJobConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :privacy_metric, 1, type: Google.Privacy.Dlp.V2.PrivacyMetric, json_name: "privacyMetric"
  field :source_table, 2, type: Google.Privacy.Dlp.V2.BigQueryTable, json_name: "sourceTable"
  field :actions, 3, repeated: true, type: Google.Privacy.Dlp.V2.Action
end

defmodule Google.Privacy.Dlp.V2.QuasiId do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :tag, 0

  field :field, 1, type: Google.Privacy.Dlp.V2.FieldId, deprecated: false
  field :info_type, 2, type: Google.Privacy.Dlp.V2.InfoType, json_name: "infoType", oneof: 0
  field :custom_tag, 3, type: :string, json_name: "customTag", oneof: 0
  field :inferred, 4, type: Google.Protobuf.Empty, oneof: 0
end

defmodule Google.Privacy.Dlp.V2.StatisticalTable.QuasiIdentifierField do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :field, 1, type: Google.Privacy.Dlp.V2.FieldId
  field :custom_tag, 2, type: :string, json_name: "customTag"
end

defmodule Google.Privacy.Dlp.V2.StatisticalTable do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :table, 3, type: Google.Privacy.Dlp.V2.BigQueryTable, deprecated: false

  field :quasi_ids, 1,
    repeated: true,
    type: Google.Privacy.Dlp.V2.StatisticalTable.QuasiIdentifierField,
    json_name: "quasiIds",
    deprecated: false

  field :relative_frequency, 2,
    type: Google.Privacy.Dlp.V2.FieldId,
    json_name: "relativeFrequency",
    deprecated: false
end

defmodule Google.Privacy.Dlp.V2.PrivacyMetric.NumericalStatsConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :field, 1, type: Google.Privacy.Dlp.V2.FieldId
end

defmodule Google.Privacy.Dlp.V2.PrivacyMetric.CategoricalStatsConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :field, 1, type: Google.Privacy.Dlp.V2.FieldId
end

defmodule Google.Privacy.Dlp.V2.PrivacyMetric.KAnonymityConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :quasi_ids, 1, repeated: true, type: Google.Privacy.Dlp.V2.FieldId, json_name: "quasiIds"
  field :entity_id, 2, type: Google.Privacy.Dlp.V2.EntityId, json_name: "entityId"
end

defmodule Google.Privacy.Dlp.V2.PrivacyMetric.LDiversityConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :quasi_ids, 1, repeated: true, type: Google.Privacy.Dlp.V2.FieldId, json_name: "quasiIds"

  field :sensitive_attribute, 2,
    type: Google.Privacy.Dlp.V2.FieldId,
    json_name: "sensitiveAttribute"
end

defmodule Google.Privacy.Dlp.V2.PrivacyMetric.KMapEstimationConfig.TaggedField do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :tag, 0

  field :field, 1, type: Google.Privacy.Dlp.V2.FieldId, deprecated: false
  field :info_type, 2, type: Google.Privacy.Dlp.V2.InfoType, json_name: "infoType", oneof: 0
  field :custom_tag, 3, type: :string, json_name: "customTag", oneof: 0
  field :inferred, 4, type: Google.Protobuf.Empty, oneof: 0
end

defmodule Google.Privacy.Dlp.V2.PrivacyMetric.KMapEstimationConfig.AuxiliaryTable.QuasiIdField do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :field, 1, type: Google.Privacy.Dlp.V2.FieldId
  field :custom_tag, 2, type: :string, json_name: "customTag"
end

defmodule Google.Privacy.Dlp.V2.PrivacyMetric.KMapEstimationConfig.AuxiliaryTable do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :table, 3, type: Google.Privacy.Dlp.V2.BigQueryTable, deprecated: false

  field :quasi_ids, 1,
    repeated: true,
    type: Google.Privacy.Dlp.V2.PrivacyMetric.KMapEstimationConfig.AuxiliaryTable.QuasiIdField,
    json_name: "quasiIds",
    deprecated: false

  field :relative_frequency, 2,
    type: Google.Privacy.Dlp.V2.FieldId,
    json_name: "relativeFrequency",
    deprecated: false
end

defmodule Google.Privacy.Dlp.V2.PrivacyMetric.KMapEstimationConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :quasi_ids, 1,
    repeated: true,
    type: Google.Privacy.Dlp.V2.PrivacyMetric.KMapEstimationConfig.TaggedField,
    json_name: "quasiIds",
    deprecated: false

  field :region_code, 2, type: :string, json_name: "regionCode"

  field :auxiliary_tables, 3,
    repeated: true,
    type: Google.Privacy.Dlp.V2.PrivacyMetric.KMapEstimationConfig.AuxiliaryTable,
    json_name: "auxiliaryTables"
end

defmodule Google.Privacy.Dlp.V2.PrivacyMetric.DeltaPresenceEstimationConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :quasi_ids, 1,
    repeated: true,
    type: Google.Privacy.Dlp.V2.QuasiId,
    json_name: "quasiIds",
    deprecated: false

  field :region_code, 2, type: :string, json_name: "regionCode"

  field :auxiliary_tables, 3,
    repeated: true,
    type: Google.Privacy.Dlp.V2.StatisticalTable,
    json_name: "auxiliaryTables"
end

defmodule Google.Privacy.Dlp.V2.PrivacyMetric do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :type, 0

  field :numerical_stats_config, 1,
    type: Google.Privacy.Dlp.V2.PrivacyMetric.NumericalStatsConfig,
    json_name: "numericalStatsConfig",
    oneof: 0

  field :categorical_stats_config, 2,
    type: Google.Privacy.Dlp.V2.PrivacyMetric.CategoricalStatsConfig,
    json_name: "categoricalStatsConfig",
    oneof: 0

  field :k_anonymity_config, 3,
    type: Google.Privacy.Dlp.V2.PrivacyMetric.KAnonymityConfig,
    json_name: "kAnonymityConfig",
    oneof: 0

  field :l_diversity_config, 4,
    type: Google.Privacy.Dlp.V2.PrivacyMetric.LDiversityConfig,
    json_name: "lDiversityConfig",
    oneof: 0

  field :k_map_estimation_config, 5,
    type: Google.Privacy.Dlp.V2.PrivacyMetric.KMapEstimationConfig,
    json_name: "kMapEstimationConfig",
    oneof: 0

  field :delta_presence_estimation_config, 6,
    type: Google.Privacy.Dlp.V2.PrivacyMetric.DeltaPresenceEstimationConfig,
    json_name: "deltaPresenceEstimationConfig",
    oneof: 0
end

defmodule Google.Privacy.Dlp.V2.AnalyzeDataSourceRiskDetails.NumericalStatsResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :min_value, 1, type: Google.Privacy.Dlp.V2.Value, json_name: "minValue"
  field :max_value, 2, type: Google.Privacy.Dlp.V2.Value, json_name: "maxValue"

  field :quantile_values, 4,
    repeated: true,
    type: Google.Privacy.Dlp.V2.Value,
    json_name: "quantileValues"
end

defmodule Google.Privacy.Dlp.V2.AnalyzeDataSourceRiskDetails.CategoricalStatsResult.CategoricalStatsHistogramBucket do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :value_frequency_lower_bound, 1, type: :int64, json_name: "valueFrequencyLowerBound"
  field :value_frequency_upper_bound, 2, type: :int64, json_name: "valueFrequencyUpperBound"
  field :bucket_size, 3, type: :int64, json_name: "bucketSize"

  field :bucket_values, 4,
    repeated: true,
    type: Google.Privacy.Dlp.V2.ValueFrequency,
    json_name: "bucketValues"

  field :bucket_value_count, 5, type: :int64, json_name: "bucketValueCount"
end

defmodule Google.Privacy.Dlp.V2.AnalyzeDataSourceRiskDetails.CategoricalStatsResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :value_frequency_histogram_buckets, 5,
    repeated: true,
    type:
      Google.Privacy.Dlp.V2.AnalyzeDataSourceRiskDetails.CategoricalStatsResult.CategoricalStatsHistogramBucket,
    json_name: "valueFrequencyHistogramBuckets"
end

defmodule Google.Privacy.Dlp.V2.AnalyzeDataSourceRiskDetails.KAnonymityResult.KAnonymityEquivalenceClass do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :quasi_ids_values, 1,
    repeated: true,
    type: Google.Privacy.Dlp.V2.Value,
    json_name: "quasiIdsValues"

  field :equivalence_class_size, 2, type: :int64, json_name: "equivalenceClassSize"
end

defmodule Google.Privacy.Dlp.V2.AnalyzeDataSourceRiskDetails.KAnonymityResult.KAnonymityHistogramBucket do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :equivalence_class_size_lower_bound, 1,
    type: :int64,
    json_name: "equivalenceClassSizeLowerBound"

  field :equivalence_class_size_upper_bound, 2,
    type: :int64,
    json_name: "equivalenceClassSizeUpperBound"

  field :bucket_size, 3, type: :int64, json_name: "bucketSize"

  field :bucket_values, 4,
    repeated: true,
    type:
      Google.Privacy.Dlp.V2.AnalyzeDataSourceRiskDetails.KAnonymityResult.KAnonymityEquivalenceClass,
    json_name: "bucketValues"

  field :bucket_value_count, 5, type: :int64, json_name: "bucketValueCount"
end

defmodule Google.Privacy.Dlp.V2.AnalyzeDataSourceRiskDetails.KAnonymityResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :equivalence_class_histogram_buckets, 5,
    repeated: true,
    type:
      Google.Privacy.Dlp.V2.AnalyzeDataSourceRiskDetails.KAnonymityResult.KAnonymityHistogramBucket,
    json_name: "equivalenceClassHistogramBuckets"
end

defmodule Google.Privacy.Dlp.V2.AnalyzeDataSourceRiskDetails.LDiversityResult.LDiversityEquivalenceClass do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :quasi_ids_values, 1,
    repeated: true,
    type: Google.Privacy.Dlp.V2.Value,
    json_name: "quasiIdsValues"

  field :equivalence_class_size, 2, type: :int64, json_name: "equivalenceClassSize"
  field :num_distinct_sensitive_values, 3, type: :int64, json_name: "numDistinctSensitiveValues"

  field :top_sensitive_values, 4,
    repeated: true,
    type: Google.Privacy.Dlp.V2.ValueFrequency,
    json_name: "topSensitiveValues"
end

defmodule Google.Privacy.Dlp.V2.AnalyzeDataSourceRiskDetails.LDiversityResult.LDiversityHistogramBucket do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :sensitive_value_frequency_lower_bound, 1,
    type: :int64,
    json_name: "sensitiveValueFrequencyLowerBound"

  field :sensitive_value_frequency_upper_bound, 2,
    type: :int64,
    json_name: "sensitiveValueFrequencyUpperBound"

  field :bucket_size, 3, type: :int64, json_name: "bucketSize"

  field :bucket_values, 4,
    repeated: true,
    type:
      Google.Privacy.Dlp.V2.AnalyzeDataSourceRiskDetails.LDiversityResult.LDiversityEquivalenceClass,
    json_name: "bucketValues"

  field :bucket_value_count, 5, type: :int64, json_name: "bucketValueCount"
end

defmodule Google.Privacy.Dlp.V2.AnalyzeDataSourceRiskDetails.LDiversityResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :sensitive_value_frequency_histogram_buckets, 5,
    repeated: true,
    type:
      Google.Privacy.Dlp.V2.AnalyzeDataSourceRiskDetails.LDiversityResult.LDiversityHistogramBucket,
    json_name: "sensitiveValueFrequencyHistogramBuckets"
end

defmodule Google.Privacy.Dlp.V2.AnalyzeDataSourceRiskDetails.KMapEstimationResult.KMapEstimationQuasiIdValues do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :quasi_ids_values, 1,
    repeated: true,
    type: Google.Privacy.Dlp.V2.Value,
    json_name: "quasiIdsValues"

  field :estimated_anonymity, 2, type: :int64, json_name: "estimatedAnonymity"
end

defmodule Google.Privacy.Dlp.V2.AnalyzeDataSourceRiskDetails.KMapEstimationResult.KMapEstimationHistogramBucket do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :min_anonymity, 1, type: :int64, json_name: "minAnonymity"
  field :max_anonymity, 2, type: :int64, json_name: "maxAnonymity"
  field :bucket_size, 5, type: :int64, json_name: "bucketSize"

  field :bucket_values, 6,
    repeated: true,
    type:
      Google.Privacy.Dlp.V2.AnalyzeDataSourceRiskDetails.KMapEstimationResult.KMapEstimationQuasiIdValues,
    json_name: "bucketValues"

  field :bucket_value_count, 7, type: :int64, json_name: "bucketValueCount"
end

defmodule Google.Privacy.Dlp.V2.AnalyzeDataSourceRiskDetails.KMapEstimationResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :k_map_estimation_histogram, 1,
    repeated: true,
    type:
      Google.Privacy.Dlp.V2.AnalyzeDataSourceRiskDetails.KMapEstimationResult.KMapEstimationHistogramBucket,
    json_name: "kMapEstimationHistogram"
end

defmodule Google.Privacy.Dlp.V2.AnalyzeDataSourceRiskDetails.DeltaPresenceEstimationResult.DeltaPresenceEstimationQuasiIdValues do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :quasi_ids_values, 1,
    repeated: true,
    type: Google.Privacy.Dlp.V2.Value,
    json_name: "quasiIdsValues"

  field :estimated_probability, 2, type: :double, json_name: "estimatedProbability"
end

defmodule Google.Privacy.Dlp.V2.AnalyzeDataSourceRiskDetails.DeltaPresenceEstimationResult.DeltaPresenceEstimationHistogramBucket do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :min_probability, 1, type: :double, json_name: "minProbability"
  field :max_probability, 2, type: :double, json_name: "maxProbability"
  field :bucket_size, 5, type: :int64, json_name: "bucketSize"

  field :bucket_values, 6,
    repeated: true,
    type:
      Google.Privacy.Dlp.V2.AnalyzeDataSourceRiskDetails.DeltaPresenceEstimationResult.DeltaPresenceEstimationQuasiIdValues,
    json_name: "bucketValues"

  field :bucket_value_count, 7, type: :int64, json_name: "bucketValueCount"
end

defmodule Google.Privacy.Dlp.V2.AnalyzeDataSourceRiskDetails.DeltaPresenceEstimationResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :delta_presence_estimation_histogram, 1,
    repeated: true,
    type:
      Google.Privacy.Dlp.V2.AnalyzeDataSourceRiskDetails.DeltaPresenceEstimationResult.DeltaPresenceEstimationHistogramBucket,
    json_name: "deltaPresenceEstimationHistogram"
end

defmodule Google.Privacy.Dlp.V2.AnalyzeDataSourceRiskDetails.RequestedRiskAnalysisOptions do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :job_config, 1, type: Google.Privacy.Dlp.V2.RiskAnalysisJobConfig, json_name: "jobConfig"
end

defmodule Google.Privacy.Dlp.V2.AnalyzeDataSourceRiskDetails do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :result, 0

  field :requested_privacy_metric, 1,
    type: Google.Privacy.Dlp.V2.PrivacyMetric,
    json_name: "requestedPrivacyMetric"

  field :requested_source_table, 2,
    type: Google.Privacy.Dlp.V2.BigQueryTable,
    json_name: "requestedSourceTable"

  field :numerical_stats_result, 3,
    type: Google.Privacy.Dlp.V2.AnalyzeDataSourceRiskDetails.NumericalStatsResult,
    json_name: "numericalStatsResult",
    oneof: 0

  field :categorical_stats_result, 4,
    type: Google.Privacy.Dlp.V2.AnalyzeDataSourceRiskDetails.CategoricalStatsResult,
    json_name: "categoricalStatsResult",
    oneof: 0

  field :k_anonymity_result, 5,
    type: Google.Privacy.Dlp.V2.AnalyzeDataSourceRiskDetails.KAnonymityResult,
    json_name: "kAnonymityResult",
    oneof: 0

  field :l_diversity_result, 6,
    type: Google.Privacy.Dlp.V2.AnalyzeDataSourceRiskDetails.LDiversityResult,
    json_name: "lDiversityResult",
    oneof: 0

  field :k_map_estimation_result, 7,
    type: Google.Privacy.Dlp.V2.AnalyzeDataSourceRiskDetails.KMapEstimationResult,
    json_name: "kMapEstimationResult",
    oneof: 0

  field :delta_presence_estimation_result, 9,
    type: Google.Privacy.Dlp.V2.AnalyzeDataSourceRiskDetails.DeltaPresenceEstimationResult,
    json_name: "deltaPresenceEstimationResult",
    oneof: 0

  field :requested_options, 10,
    type: Google.Privacy.Dlp.V2.AnalyzeDataSourceRiskDetails.RequestedRiskAnalysisOptions,
    json_name: "requestedOptions"
end

defmodule Google.Privacy.Dlp.V2.ValueFrequency do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :value, 1, type: Google.Privacy.Dlp.V2.Value
  field :count, 2, type: :int64
end

defmodule Google.Privacy.Dlp.V2.Value do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :type, 0

  field :integer_value, 1, type: :int64, json_name: "integerValue", oneof: 0
  field :float_value, 2, type: :double, json_name: "floatValue", oneof: 0
  field :string_value, 3, type: :string, json_name: "stringValue", oneof: 0
  field :boolean_value, 4, type: :bool, json_name: "booleanValue", oneof: 0

  field :timestamp_value, 5,
    type: Google.Protobuf.Timestamp,
    json_name: "timestampValue",
    oneof: 0

  field :time_value, 6, type: Google.Type.TimeOfDay, json_name: "timeValue", oneof: 0
  field :date_value, 7, type: Google.Type.Date, json_name: "dateValue", oneof: 0

  field :day_of_week_value, 8,
    type: Google.Type.DayOfWeek,
    json_name: "dayOfWeekValue",
    enum: true,
    oneof: 0
end

defmodule Google.Privacy.Dlp.V2.QuoteInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :parsed_quote, 0

  field :date_time, 2, type: Google.Privacy.Dlp.V2.DateTime, json_name: "dateTime", oneof: 0
end

defmodule Google.Privacy.Dlp.V2.DateTime.TimeZone do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :offset_minutes, 1, type: :int32, json_name: "offsetMinutes"
end

defmodule Google.Privacy.Dlp.V2.DateTime do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :date, 1, type: Google.Type.Date
  field :day_of_week, 2, type: Google.Type.DayOfWeek, json_name: "dayOfWeek", enum: true
  field :time, 3, type: Google.Type.TimeOfDay
  field :time_zone, 4, type: Google.Privacy.Dlp.V2.DateTime.TimeZone, json_name: "timeZone"
end

defmodule Google.Privacy.Dlp.V2.DeidentifyConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :transformation, 0

  field :info_type_transformations, 1,
    type: Google.Privacy.Dlp.V2.InfoTypeTransformations,
    json_name: "infoTypeTransformations",
    oneof: 0

  field :record_transformations, 2,
    type: Google.Privacy.Dlp.V2.RecordTransformations,
    json_name: "recordTransformations",
    oneof: 0

  field :image_transformations, 4,
    type: Google.Privacy.Dlp.V2.ImageTransformations,
    json_name: "imageTransformations",
    oneof: 0

  field :transformation_error_handling, 3,
    type: Google.Privacy.Dlp.V2.TransformationErrorHandling,
    json_name: "transformationErrorHandling"
end

defmodule Google.Privacy.Dlp.V2.ImageTransformations.ImageTransformation.SelectedInfoTypes do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :info_types, 5,
    repeated: true,
    type: Google.Privacy.Dlp.V2.InfoType,
    json_name: "infoTypes",
    deprecated: false
end

defmodule Google.Privacy.Dlp.V2.ImageTransformations.ImageTransformation.AllInfoTypes do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Privacy.Dlp.V2.ImageTransformations.ImageTransformation.AllText do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Privacy.Dlp.V2.ImageTransformations.ImageTransformation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :target, 0

  field :selected_info_types, 4,
    type: Google.Privacy.Dlp.V2.ImageTransformations.ImageTransformation.SelectedInfoTypes,
    json_name: "selectedInfoTypes",
    oneof: 0

  field :all_info_types, 5,
    type: Google.Privacy.Dlp.V2.ImageTransformations.ImageTransformation.AllInfoTypes,
    json_name: "allInfoTypes",
    oneof: 0

  field :all_text, 6,
    type: Google.Privacy.Dlp.V2.ImageTransformations.ImageTransformation.AllText,
    json_name: "allText",
    oneof: 0

  field :redaction_color, 3, type: Google.Privacy.Dlp.V2.Color, json_name: "redactionColor"
end

defmodule Google.Privacy.Dlp.V2.ImageTransformations do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :transforms, 2,
    repeated: true,
    type: Google.Privacy.Dlp.V2.ImageTransformations.ImageTransformation
end

defmodule Google.Privacy.Dlp.V2.TransformationErrorHandling.ThrowError do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Privacy.Dlp.V2.TransformationErrorHandling.LeaveUntransformed do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Privacy.Dlp.V2.TransformationErrorHandling do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :mode, 0

  field :throw_error, 1,
    type: Google.Privacy.Dlp.V2.TransformationErrorHandling.ThrowError,
    json_name: "throwError",
    oneof: 0

  field :leave_untransformed, 2,
    type: Google.Privacy.Dlp.V2.TransformationErrorHandling.LeaveUntransformed,
    json_name: "leaveUntransformed",
    oneof: 0
end

defmodule Google.Privacy.Dlp.V2.PrimitiveTransformation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :transformation, 0

  field :replace_config, 1,
    type: Google.Privacy.Dlp.V2.ReplaceValueConfig,
    json_name: "replaceConfig",
    oneof: 0

  field :redact_config, 2,
    type: Google.Privacy.Dlp.V2.RedactConfig,
    json_name: "redactConfig",
    oneof: 0

  field :character_mask_config, 3,
    type: Google.Privacy.Dlp.V2.CharacterMaskConfig,
    json_name: "characterMaskConfig",
    oneof: 0

  field :crypto_replace_ffx_fpe_config, 4,
    type: Google.Privacy.Dlp.V2.CryptoReplaceFfxFpeConfig,
    json_name: "cryptoReplaceFfxFpeConfig",
    oneof: 0

  field :fixed_size_bucketing_config, 5,
    type: Google.Privacy.Dlp.V2.FixedSizeBucketingConfig,
    json_name: "fixedSizeBucketingConfig",
    oneof: 0

  field :bucketing_config, 6,
    type: Google.Privacy.Dlp.V2.BucketingConfig,
    json_name: "bucketingConfig",
    oneof: 0

  field :replace_with_info_type_config, 7,
    type: Google.Privacy.Dlp.V2.ReplaceWithInfoTypeConfig,
    json_name: "replaceWithInfoTypeConfig",
    oneof: 0

  field :time_part_config, 8,
    type: Google.Privacy.Dlp.V2.TimePartConfig,
    json_name: "timePartConfig",
    oneof: 0

  field :crypto_hash_config, 9,
    type: Google.Privacy.Dlp.V2.CryptoHashConfig,
    json_name: "cryptoHashConfig",
    oneof: 0

  field :date_shift_config, 11,
    type: Google.Privacy.Dlp.V2.DateShiftConfig,
    json_name: "dateShiftConfig",
    oneof: 0

  field :crypto_deterministic_config, 12,
    type: Google.Privacy.Dlp.V2.CryptoDeterministicConfig,
    json_name: "cryptoDeterministicConfig",
    oneof: 0

  field :replace_dictionary_config, 13,
    type: Google.Privacy.Dlp.V2.ReplaceDictionaryConfig,
    json_name: "replaceDictionaryConfig",
    oneof: 0
end

defmodule Google.Privacy.Dlp.V2.TimePartConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :part_to_extract, 1,
    type: Google.Privacy.Dlp.V2.TimePartConfig.TimePart,
    json_name: "partToExtract",
    enum: true
end

defmodule Google.Privacy.Dlp.V2.CryptoHashConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :crypto_key, 1, type: Google.Privacy.Dlp.V2.CryptoKey, json_name: "cryptoKey"
end

defmodule Google.Privacy.Dlp.V2.CryptoDeterministicConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :crypto_key, 1, type: Google.Privacy.Dlp.V2.CryptoKey, json_name: "cryptoKey"

  field :surrogate_info_type, 2,
    type: Google.Privacy.Dlp.V2.InfoType,
    json_name: "surrogateInfoType"

  field :context, 3, type: Google.Privacy.Dlp.V2.FieldId
end

defmodule Google.Privacy.Dlp.V2.ReplaceValueConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :new_value, 1, type: Google.Privacy.Dlp.V2.Value, json_name: "newValue"
end

defmodule Google.Privacy.Dlp.V2.ReplaceDictionaryConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :type, 0

  field :word_list, 1,
    type: Google.Privacy.Dlp.V2.CustomInfoType.Dictionary.WordList,
    json_name: "wordList",
    oneof: 0
end

defmodule Google.Privacy.Dlp.V2.ReplaceWithInfoTypeConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Privacy.Dlp.V2.RedactConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Privacy.Dlp.V2.CharsToIgnore do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :characters, 0

  field :characters_to_skip, 1, type: :string, json_name: "charactersToSkip", oneof: 0

  field :common_characters_to_ignore, 2,
    type: Google.Privacy.Dlp.V2.CharsToIgnore.CommonCharsToIgnore,
    json_name: "commonCharactersToIgnore",
    enum: true,
    oneof: 0
end

defmodule Google.Privacy.Dlp.V2.CharacterMaskConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :masking_character, 1, type: :string, json_name: "maskingCharacter"
  field :number_to_mask, 2, type: :int32, json_name: "numberToMask"
  field :reverse_order, 3, type: :bool, json_name: "reverseOrder"

  field :characters_to_ignore, 4,
    repeated: true,
    type: Google.Privacy.Dlp.V2.CharsToIgnore,
    json_name: "charactersToIgnore"
end

defmodule Google.Privacy.Dlp.V2.FixedSizeBucketingConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :lower_bound, 1,
    type: Google.Privacy.Dlp.V2.Value,
    json_name: "lowerBound",
    deprecated: false

  field :upper_bound, 2,
    type: Google.Privacy.Dlp.V2.Value,
    json_name: "upperBound",
    deprecated: false

  field :bucket_size, 3, type: :double, json_name: "bucketSize", deprecated: false
end

defmodule Google.Privacy.Dlp.V2.BucketingConfig.Bucket do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :min, 1, type: Google.Privacy.Dlp.V2.Value
  field :max, 2, type: Google.Privacy.Dlp.V2.Value

  field :replacement_value, 3,
    type: Google.Privacy.Dlp.V2.Value,
    json_name: "replacementValue",
    deprecated: false
end

defmodule Google.Privacy.Dlp.V2.BucketingConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :buckets, 1, repeated: true, type: Google.Privacy.Dlp.V2.BucketingConfig.Bucket
end

defmodule Google.Privacy.Dlp.V2.CryptoReplaceFfxFpeConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :alphabet, 0

  field :crypto_key, 1,
    type: Google.Privacy.Dlp.V2.CryptoKey,
    json_name: "cryptoKey",
    deprecated: false

  field :context, 2, type: Google.Privacy.Dlp.V2.FieldId

  field :common_alphabet, 4,
    type: Google.Privacy.Dlp.V2.CryptoReplaceFfxFpeConfig.FfxCommonNativeAlphabet,
    json_name: "commonAlphabet",
    enum: true,
    oneof: 0

  field :custom_alphabet, 5, type: :string, json_name: "customAlphabet", oneof: 0
  field :radix, 6, type: :int32, oneof: 0

  field :surrogate_info_type, 8,
    type: Google.Privacy.Dlp.V2.InfoType,
    json_name: "surrogateInfoType"
end

defmodule Google.Privacy.Dlp.V2.CryptoKey do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :source, 0

  field :transient, 1, type: Google.Privacy.Dlp.V2.TransientCryptoKey, oneof: 0
  field :unwrapped, 2, type: Google.Privacy.Dlp.V2.UnwrappedCryptoKey, oneof: 0

  field :kms_wrapped, 3,
    type: Google.Privacy.Dlp.V2.KmsWrappedCryptoKey,
    json_name: "kmsWrapped",
    oneof: 0
end

defmodule Google.Privacy.Dlp.V2.TransientCryptoKey do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Privacy.Dlp.V2.UnwrappedCryptoKey do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :bytes, deprecated: false
end

defmodule Google.Privacy.Dlp.V2.KmsWrappedCryptoKey do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :wrapped_key, 1, type: :bytes, json_name: "wrappedKey", deprecated: false
  field :crypto_key_name, 2, type: :string, json_name: "cryptoKeyName", deprecated: false
end

defmodule Google.Privacy.Dlp.V2.DateShiftConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :method, 0

  field :upper_bound_days, 1, type: :int32, json_name: "upperBoundDays", deprecated: false
  field :lower_bound_days, 2, type: :int32, json_name: "lowerBoundDays", deprecated: false
  field :context, 3, type: Google.Privacy.Dlp.V2.FieldId
  field :crypto_key, 4, type: Google.Privacy.Dlp.V2.CryptoKey, json_name: "cryptoKey", oneof: 0
end

defmodule Google.Privacy.Dlp.V2.InfoTypeTransformations.InfoTypeTransformation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :info_types, 1,
    repeated: true,
    type: Google.Privacy.Dlp.V2.InfoType,
    json_name: "infoTypes"

  field :primitive_transformation, 2,
    type: Google.Privacy.Dlp.V2.PrimitiveTransformation,
    json_name: "primitiveTransformation",
    deprecated: false
end

defmodule Google.Privacy.Dlp.V2.InfoTypeTransformations do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :transformations, 1,
    repeated: true,
    type: Google.Privacy.Dlp.V2.InfoTypeTransformations.InfoTypeTransformation,
    deprecated: false
end

defmodule Google.Privacy.Dlp.V2.FieldTransformation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :transformation, 0

  field :fields, 1, repeated: true, type: Google.Privacy.Dlp.V2.FieldId, deprecated: false
  field :condition, 3, type: Google.Privacy.Dlp.V2.RecordCondition

  field :primitive_transformation, 4,
    type: Google.Privacy.Dlp.V2.PrimitiveTransformation,
    json_name: "primitiveTransformation",
    oneof: 0

  field :info_type_transformations, 5,
    type: Google.Privacy.Dlp.V2.InfoTypeTransformations,
    json_name: "infoTypeTransformations",
    oneof: 0
end

defmodule Google.Privacy.Dlp.V2.RecordTransformations do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :field_transformations, 1,
    repeated: true,
    type: Google.Privacy.Dlp.V2.FieldTransformation,
    json_name: "fieldTransformations"

  field :record_suppressions, 2,
    repeated: true,
    type: Google.Privacy.Dlp.V2.RecordSuppression,
    json_name: "recordSuppressions"
end

defmodule Google.Privacy.Dlp.V2.RecordSuppression do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :condition, 1, type: Google.Privacy.Dlp.V2.RecordCondition
end

defmodule Google.Privacy.Dlp.V2.RecordCondition.Condition do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :field, 1, type: Google.Privacy.Dlp.V2.FieldId, deprecated: false

  field :operator, 3,
    type: Google.Privacy.Dlp.V2.RelationalOperator,
    enum: true,
    deprecated: false

  field :value, 4, type: Google.Privacy.Dlp.V2.Value
end

defmodule Google.Privacy.Dlp.V2.RecordCondition.Conditions do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :conditions, 1, repeated: true, type: Google.Privacy.Dlp.V2.RecordCondition.Condition
end

defmodule Google.Privacy.Dlp.V2.RecordCondition.Expressions do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :type, 0

  field :logical_operator, 1,
    type: Google.Privacy.Dlp.V2.RecordCondition.Expressions.LogicalOperator,
    json_name: "logicalOperator",
    enum: true

  field :conditions, 3, type: Google.Privacy.Dlp.V2.RecordCondition.Conditions, oneof: 0
end

defmodule Google.Privacy.Dlp.V2.RecordCondition do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :expressions, 3, type: Google.Privacy.Dlp.V2.RecordCondition.Expressions
end

defmodule Google.Privacy.Dlp.V2.TransformationOverview do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :transformed_bytes, 2, type: :int64, json_name: "transformedBytes"

  field :transformation_summaries, 3,
    repeated: true,
    type: Google.Privacy.Dlp.V2.TransformationSummary,
    json_name: "transformationSummaries"
end

defmodule Google.Privacy.Dlp.V2.TransformationSummary.SummaryResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :count, 1, type: :int64

  field :code, 2,
    type: Google.Privacy.Dlp.V2.TransformationSummary.TransformationResultCode,
    enum: true

  field :details, 3, type: :string
end

defmodule Google.Privacy.Dlp.V2.TransformationSummary do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :info_type, 1, type: Google.Privacy.Dlp.V2.InfoType, json_name: "infoType"
  field :field, 2, type: Google.Privacy.Dlp.V2.FieldId
  field :transformation, 3, type: Google.Privacy.Dlp.V2.PrimitiveTransformation

  field :field_transformations, 5,
    repeated: true,
    type: Google.Privacy.Dlp.V2.FieldTransformation,
    json_name: "fieldTransformations"

  field :record_suppress, 6,
    type: Google.Privacy.Dlp.V2.RecordSuppression,
    json_name: "recordSuppress"

  field :results, 4,
    repeated: true,
    type: Google.Privacy.Dlp.V2.TransformationSummary.SummaryResult

  field :transformed_bytes, 7, type: :int64, json_name: "transformedBytes"
end

defmodule Google.Privacy.Dlp.V2.TransformationDescription do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :type, 1, type: Google.Privacy.Dlp.V2.TransformationType, enum: true
  field :description, 2, type: :string
  field :condition, 3, type: :string
  field :info_type, 4, type: Google.Privacy.Dlp.V2.InfoType, json_name: "infoType"
end

defmodule Google.Privacy.Dlp.V2.TransformationDetails do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName"
  field :container_name, 2, type: :string, json_name: "containerName"
  field :transformation, 3, repeated: true, type: Google.Privacy.Dlp.V2.TransformationDescription

  field :status_details, 4,
    type: Google.Privacy.Dlp.V2.TransformationResultStatus,
    json_name: "statusDetails"

  field :transformed_bytes, 5, type: :int64, json_name: "transformedBytes"

  field :transformation_location, 6,
    type: Google.Privacy.Dlp.V2.TransformationLocation,
    json_name: "transformationLocation"
end

defmodule Google.Privacy.Dlp.V2.TransformationLocation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :location_type, 0

  field :finding_id, 1, type: :string, json_name: "findingId", oneof: 0

  field :record_transformation, 2,
    type: Google.Privacy.Dlp.V2.RecordTransformation,
    json_name: "recordTransformation",
    oneof: 0

  field :container_type, 3,
    type: Google.Privacy.Dlp.V2.TransformationContainerType,
    json_name: "containerType",
    enum: true
end

defmodule Google.Privacy.Dlp.V2.RecordTransformation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :field_id, 1, type: Google.Privacy.Dlp.V2.FieldId, json_name: "fieldId"
  field :container_timestamp, 2, type: Google.Protobuf.Timestamp, json_name: "containerTimestamp"
  field :container_version, 3, type: :string, json_name: "containerVersion"
end

defmodule Google.Privacy.Dlp.V2.TransformationResultStatus do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :result_status_type, 1,
    type: Google.Privacy.Dlp.V2.TransformationResultStatusType,
    json_name: "resultStatusType",
    enum: true

  field :details, 2, type: Google.Rpc.Status
end

defmodule Google.Privacy.Dlp.V2.TransformationDetailsStorageConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :type, 0

  field :table, 1, type: Google.Privacy.Dlp.V2.BigQueryTable, oneof: 0
end

defmodule Google.Privacy.Dlp.V2.Schedule do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :option, 0

  field :recurrence_period_duration, 1,
    type: Google.Protobuf.Duration,
    json_name: "recurrencePeriodDuration",
    oneof: 0
end

defmodule Google.Privacy.Dlp.V2.Manual do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Privacy.Dlp.V2.InspectTemplate do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :display_name, 2, type: :string, json_name: "displayName"
  field :description, 3, type: :string

  field :create_time, 4,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 5,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :inspect_config, 6, type: Google.Privacy.Dlp.V2.InspectConfig, json_name: "inspectConfig"
end

defmodule Google.Privacy.Dlp.V2.DeidentifyTemplate do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :display_name, 2, type: :string, json_name: "displayName"
  field :description, 3, type: :string

  field :create_time, 4,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 5,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :deidentify_config, 6,
    type: Google.Privacy.Dlp.V2.DeidentifyConfig,
    json_name: "deidentifyConfig"
end

defmodule Google.Privacy.Dlp.V2.Error do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :details, 1, type: Google.Rpc.Status
  field :timestamps, 2, repeated: true, type: Google.Protobuf.Timestamp

  field :extra_info, 4,
    type: Google.Privacy.Dlp.V2.Error.ErrorExtraInfo,
    json_name: "extraInfo",
    enum: true
end

defmodule Google.Privacy.Dlp.V2.JobTrigger.Trigger do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :trigger, 0

  field :schedule, 1, type: Google.Privacy.Dlp.V2.Schedule, oneof: 0
  field :manual, 2, type: Google.Privacy.Dlp.V2.Manual, oneof: 0
end

defmodule Google.Privacy.Dlp.V2.JobTrigger do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :job, 0

  field :name, 1, type: :string
  field :display_name, 2, type: :string, json_name: "displayName"
  field :description, 3, type: :string

  field :inspect_job, 4,
    type: Google.Privacy.Dlp.V2.InspectJobConfig,
    json_name: "inspectJob",
    oneof: 0

  field :triggers, 5, repeated: true, type: Google.Privacy.Dlp.V2.JobTrigger.Trigger
  field :errors, 6, repeated: true, type: Google.Privacy.Dlp.V2.Error, deprecated: false

  field :create_time, 7,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 8,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :last_run_time, 9,
    type: Google.Protobuf.Timestamp,
    json_name: "lastRunTime",
    deprecated: false

  field :status, 10, type: Google.Privacy.Dlp.V2.JobTrigger.Status, enum: true, deprecated: false
end

defmodule Google.Privacy.Dlp.V2.Action.SaveFindings do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :output_config, 1,
    type: Google.Privacy.Dlp.V2.OutputStorageConfig,
    json_name: "outputConfig"
end

defmodule Google.Privacy.Dlp.V2.Action.PublishToPubSub do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :topic, 1, type: :string
end

defmodule Google.Privacy.Dlp.V2.Action.PublishSummaryToCscc do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Privacy.Dlp.V2.Action.PublishFindingsToCloudDataCatalog do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Privacy.Dlp.V2.Action.Deidentify do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :output, 0

  field :transformation_config, 7,
    type: Google.Privacy.Dlp.V2.TransformationConfig,
    json_name: "transformationConfig"

  field :transformation_details_storage_config, 3,
    type: Google.Privacy.Dlp.V2.TransformationDetailsStorageConfig,
    json_name: "transformationDetailsStorageConfig"

  field :cloud_storage_output, 9,
    type: :string,
    json_name: "cloudStorageOutput",
    oneof: 0,
    deprecated: false

  field :file_types_to_transform, 8,
    repeated: true,
    type: Google.Privacy.Dlp.V2.FileType,
    json_name: "fileTypesToTransform",
    enum: true
end

defmodule Google.Privacy.Dlp.V2.Action.JobNotificationEmails do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Privacy.Dlp.V2.Action.PublishToStackdriver do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Privacy.Dlp.V2.Action do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :action, 0

  field :save_findings, 1,
    type: Google.Privacy.Dlp.V2.Action.SaveFindings,
    json_name: "saveFindings",
    oneof: 0

  field :pub_sub, 2,
    type: Google.Privacy.Dlp.V2.Action.PublishToPubSub,
    json_name: "pubSub",
    oneof: 0

  field :publish_summary_to_cscc, 3,
    type: Google.Privacy.Dlp.V2.Action.PublishSummaryToCscc,
    json_name: "publishSummaryToCscc",
    oneof: 0

  field :publish_findings_to_cloud_data_catalog, 5,
    type: Google.Privacy.Dlp.V2.Action.PublishFindingsToCloudDataCatalog,
    json_name: "publishFindingsToCloudDataCatalog",
    oneof: 0

  field :deidentify, 7, type: Google.Privacy.Dlp.V2.Action.Deidentify, oneof: 0

  field :job_notification_emails, 8,
    type: Google.Privacy.Dlp.V2.Action.JobNotificationEmails,
    json_name: "jobNotificationEmails",
    oneof: 0

  field :publish_to_stackdriver, 9,
    type: Google.Privacy.Dlp.V2.Action.PublishToStackdriver,
    json_name: "publishToStackdriver",
    oneof: 0
end

defmodule Google.Privacy.Dlp.V2.TransformationConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :deidentify_template, 1, type: :string, json_name: "deidentifyTemplate"

  field :structured_deidentify_template, 2,
    type: :string,
    json_name: "structuredDeidentifyTemplate"

  field :image_redact_template, 4, type: :string, json_name: "imageRedactTemplate"
end

defmodule Google.Privacy.Dlp.V2.CreateInspectTemplateRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :inspect_template, 2,
    type: Google.Privacy.Dlp.V2.InspectTemplate,
    json_name: "inspectTemplate",
    deprecated: false

  field :template_id, 3, type: :string, json_name: "templateId"
  field :location_id, 4, type: :string, json_name: "locationId"
end

defmodule Google.Privacy.Dlp.V2.UpdateInspectTemplateRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :inspect_template, 2,
    type: Google.Privacy.Dlp.V2.InspectTemplate,
    json_name: "inspectTemplate"

  field :update_mask, 3, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end

defmodule Google.Privacy.Dlp.V2.GetInspectTemplateRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Privacy.Dlp.V2.ListInspectTemplatesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_token, 2, type: :string, json_name: "pageToken"
  field :page_size, 3, type: :int32, json_name: "pageSize"
  field :order_by, 4, type: :string, json_name: "orderBy"
  field :location_id, 5, type: :string, json_name: "locationId"
end

defmodule Google.Privacy.Dlp.V2.ListInspectTemplatesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :inspect_templates, 1,
    repeated: true,
    type: Google.Privacy.Dlp.V2.InspectTemplate,
    json_name: "inspectTemplates"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Privacy.Dlp.V2.DeleteInspectTemplateRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Privacy.Dlp.V2.CreateJobTriggerRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :job_trigger, 2,
    type: Google.Privacy.Dlp.V2.JobTrigger,
    json_name: "jobTrigger",
    deprecated: false

  field :trigger_id, 3, type: :string, json_name: "triggerId"
  field :location_id, 4, type: :string, json_name: "locationId"
end

defmodule Google.Privacy.Dlp.V2.ActivateJobTriggerRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Privacy.Dlp.V2.UpdateJobTriggerRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :job_trigger, 2, type: Google.Privacy.Dlp.V2.JobTrigger, json_name: "jobTrigger"
  field :update_mask, 3, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end

defmodule Google.Privacy.Dlp.V2.GetJobTriggerRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Privacy.Dlp.V2.CreateDiscoveryConfigRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :discovery_config, 2,
    type: Google.Privacy.Dlp.V2.DiscoveryConfig,
    json_name: "discoveryConfig",
    deprecated: false

  field :config_id, 3, type: :string, json_name: "configId"
end

defmodule Google.Privacy.Dlp.V2.UpdateDiscoveryConfigRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :discovery_config, 2,
    type: Google.Privacy.Dlp.V2.DiscoveryConfig,
    json_name: "discoveryConfig",
    deprecated: false

  field :update_mask, 3, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end

defmodule Google.Privacy.Dlp.V2.GetDiscoveryConfigRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Privacy.Dlp.V2.ListDiscoveryConfigsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_token, 2, type: :string, json_name: "pageToken"
  field :page_size, 3, type: :int32, json_name: "pageSize"
  field :order_by, 4, type: :string, json_name: "orderBy"
end

defmodule Google.Privacy.Dlp.V2.ListDiscoveryConfigsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :discovery_configs, 1,
    repeated: true,
    type: Google.Privacy.Dlp.V2.DiscoveryConfig,
    json_name: "discoveryConfigs"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Privacy.Dlp.V2.DeleteDiscoveryConfigRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Privacy.Dlp.V2.CreateDlpJobRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :job, 0

  field :parent, 1, type: :string, deprecated: false

  field :inspect_job, 2,
    type: Google.Privacy.Dlp.V2.InspectJobConfig,
    json_name: "inspectJob",
    oneof: 0

  field :risk_job, 3,
    type: Google.Privacy.Dlp.V2.RiskAnalysisJobConfig,
    json_name: "riskJob",
    oneof: 0

  field :job_id, 4, type: :string, json_name: "jobId"
  field :location_id, 5, type: :string, json_name: "locationId"
end

defmodule Google.Privacy.Dlp.V2.ListJobTriggersRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_token, 2, type: :string, json_name: "pageToken"
  field :page_size, 3, type: :int32, json_name: "pageSize"
  field :order_by, 4, type: :string, json_name: "orderBy"
  field :filter, 5, type: :string
  field :type, 6, type: Google.Privacy.Dlp.V2.DlpJobType, enum: true
  field :location_id, 7, type: :string, json_name: "locationId"
end

defmodule Google.Privacy.Dlp.V2.ListJobTriggersResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :job_triggers, 1,
    repeated: true,
    type: Google.Privacy.Dlp.V2.JobTrigger,
    json_name: "jobTriggers"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Privacy.Dlp.V2.DeleteJobTriggerRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Privacy.Dlp.V2.InspectJobConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :storage_config, 1, type: Google.Privacy.Dlp.V2.StorageConfig, json_name: "storageConfig"
  field :inspect_config, 2, type: Google.Privacy.Dlp.V2.InspectConfig, json_name: "inspectConfig"
  field :inspect_template_name, 3, type: :string, json_name: "inspectTemplateName"
  field :actions, 4, repeated: true, type: Google.Privacy.Dlp.V2.Action
end

defmodule Google.Privacy.Dlp.V2.DataProfileAction.Export do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :profile_table, 1, type: Google.Privacy.Dlp.V2.BigQueryTable, json_name: "profileTable"

  field :sample_findings_table, 2,
    type: Google.Privacy.Dlp.V2.BigQueryTable,
    json_name: "sampleFindingsTable"
end

defmodule Google.Privacy.Dlp.V2.DataProfileAction.PubSubNotification do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :topic, 1, type: :string
  field :event, 2, type: Google.Privacy.Dlp.V2.DataProfileAction.EventType, enum: true

  field :pubsub_condition, 3,
    type: Google.Privacy.Dlp.V2.DataProfilePubSubCondition,
    json_name: "pubsubCondition"

  field :detail_of_message, 4,
    type: Google.Privacy.Dlp.V2.DataProfileAction.PubSubNotification.DetailLevel,
    json_name: "detailOfMessage",
    enum: true
end

defmodule Google.Privacy.Dlp.V2.DataProfileAction.PublishToChronicle do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Privacy.Dlp.V2.DataProfileAction.PublishToSecurityCommandCenter do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Privacy.Dlp.V2.DataProfileAction.PublishToDataplexCatalog do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :lower_data_risk_to_low, 1, type: :bool, json_name: "lowerDataRiskToLow"
end

defmodule Google.Privacy.Dlp.V2.DataProfileAction.TagResources.TagCondition do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :type, 0

  field :tag, 1, type: Google.Privacy.Dlp.V2.DataProfileAction.TagResources.TagValue

  field :sensitivity_score, 2,
    type: Google.Privacy.Dlp.V2.SensitivityScore,
    json_name: "sensitivityScore",
    oneof: 0
end

defmodule Google.Privacy.Dlp.V2.DataProfileAction.TagResources.TagValue do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :format, 0

  field :namespaced_value, 1, type: :string, json_name: "namespacedValue", oneof: 0
end

defmodule Google.Privacy.Dlp.V2.DataProfileAction.TagResources do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :tag_conditions, 1,
    repeated: true,
    type: Google.Privacy.Dlp.V2.DataProfileAction.TagResources.TagCondition,
    json_name: "tagConditions"

  field :profile_generations_to_tag, 2,
    repeated: true,
    type: Google.Privacy.Dlp.V2.ProfileGeneration,
    json_name: "profileGenerationsToTag",
    enum: true

  field :lower_data_risk_to_low, 3, type: :bool, json_name: "lowerDataRiskToLow"
end

defmodule Google.Privacy.Dlp.V2.DataProfileAction do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :action, 0

  field :export_data, 1,
    type: Google.Privacy.Dlp.V2.DataProfileAction.Export,
    json_name: "exportData",
    oneof: 0

  field :pub_sub_notification, 2,
    type: Google.Privacy.Dlp.V2.DataProfileAction.PubSubNotification,
    json_name: "pubSubNotification",
    oneof: 0

  field :publish_to_chronicle, 3,
    type: Google.Privacy.Dlp.V2.DataProfileAction.PublishToChronicle,
    json_name: "publishToChronicle",
    oneof: 0

  field :publish_to_scc, 4,
    type: Google.Privacy.Dlp.V2.DataProfileAction.PublishToSecurityCommandCenter,
    json_name: "publishToScc",
    oneof: 0

  field :tag_resources, 8,
    type: Google.Privacy.Dlp.V2.DataProfileAction.TagResources,
    json_name: "tagResources",
    oneof: 0

  field :publish_to_dataplex_catalog, 9,
    type: Google.Privacy.Dlp.V2.DataProfileAction.PublishToDataplexCatalog,
    json_name: "publishToDataplexCatalog",
    oneof: 0
end

defmodule Google.Privacy.Dlp.V2.DataProfileFinding do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :quote, 1, type: :string
  field :infotype, 2, type: Google.Privacy.Dlp.V2.InfoType
  field :quote_info, 3, type: Google.Privacy.Dlp.V2.QuoteInfo, json_name: "quoteInfo"
  field :data_profile_resource_name, 4, type: :string, json_name: "dataProfileResourceName"
  field :finding_id, 5, type: :string, json_name: "findingId"
  field :timestamp, 6, type: Google.Protobuf.Timestamp
  field :location, 7, type: Google.Privacy.Dlp.V2.DataProfileFindingLocation

  field :resource_visibility, 8,
    type: Google.Privacy.Dlp.V2.ResourceVisibility,
    json_name: "resourceVisibility",
    enum: true

  field :full_resource_name, 9, type: :string, json_name: "fullResourceName"

  field :data_source_type, 10,
    type: Google.Privacy.Dlp.V2.DataSourceType,
    json_name: "dataSourceType"
end

defmodule Google.Privacy.Dlp.V2.DataProfileFindingLocation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :location_extra_details, 0

  field :container_name, 1, type: :string, json_name: "containerName"

  field :data_profile_finding_record_location, 2,
    type: Google.Privacy.Dlp.V2.DataProfileFindingRecordLocation,
    json_name: "dataProfileFindingRecordLocation",
    oneof: 0
end

defmodule Google.Privacy.Dlp.V2.DataProfileFindingRecordLocation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :field, 1, type: Google.Privacy.Dlp.V2.FieldId
end

defmodule Google.Privacy.Dlp.V2.DataProfileJobConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :location, 1, type: Google.Privacy.Dlp.V2.DataProfileLocation
  field :project_id, 5, type: :string, json_name: "projectId"

  field :other_cloud_starting_location, 8,
    type: Google.Privacy.Dlp.V2.OtherCloudDiscoveryStartingLocation,
    json_name: "otherCloudStartingLocation"

  field :inspect_templates, 7, repeated: true, type: :string, json_name: "inspectTemplates"

  field :data_profile_actions, 6,
    repeated: true,
    type: Google.Privacy.Dlp.V2.DataProfileAction,
    json_name: "dataProfileActions"
end

defmodule Google.Privacy.Dlp.V2.BigQueryRegex do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :project_id_regex, 1, type: :string, json_name: "projectIdRegex"
  field :dataset_id_regex, 2, type: :string, json_name: "datasetIdRegex"
  field :table_id_regex, 3, type: :string, json_name: "tableIdRegex"
end

defmodule Google.Privacy.Dlp.V2.BigQueryRegexes do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :patterns, 1, repeated: true, type: Google.Privacy.Dlp.V2.BigQueryRegex
end

defmodule Google.Privacy.Dlp.V2.BigQueryTableTypes do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :types, 1, repeated: true, type: Google.Privacy.Dlp.V2.BigQueryTableType, enum: true
end

defmodule Google.Privacy.Dlp.V2.Disabled do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Privacy.Dlp.V2.DataProfileLocation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :location, 0

  field :organization_id, 1, type: :int64, json_name: "organizationId", oneof: 0
  field :folder_id, 2, type: :int64, json_name: "folderId", oneof: 0
end

defmodule Google.Privacy.Dlp.V2.DiscoveryConfig.OrgConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :location, 1, type: Google.Privacy.Dlp.V2.DiscoveryStartingLocation
  field :project_id, 2, type: :string, json_name: "projectId"
end

defmodule Google.Privacy.Dlp.V2.DiscoveryConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string
  field :display_name, 11, type: :string, json_name: "displayName"

  field :org_config, 2,
    type: Google.Privacy.Dlp.V2.DiscoveryConfig.OrgConfig,
    json_name: "orgConfig"

  field :other_cloud_starting_location, 12,
    type: Google.Privacy.Dlp.V2.OtherCloudDiscoveryStartingLocation,
    json_name: "otherCloudStartingLocation"

  field :inspect_templates, 3, repeated: true, type: :string, json_name: "inspectTemplates"
  field :actions, 4, repeated: true, type: Google.Privacy.Dlp.V2.DataProfileAction
  field :targets, 5, repeated: true, type: Google.Privacy.Dlp.V2.DiscoveryTarget
  field :errors, 6, repeated: true, type: Google.Privacy.Dlp.V2.Error, deprecated: false

  field :create_time, 7,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 8,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :last_run_time, 9,
    type: Google.Protobuf.Timestamp,
    json_name: "lastRunTime",
    deprecated: false

  field :status, 10,
    type: Google.Privacy.Dlp.V2.DiscoveryConfig.Status,
    enum: true,
    deprecated: false

  field :processing_location, 13,
    type: Google.Privacy.Dlp.V2.ProcessingLocation,
    json_name: "processingLocation",
    deprecated: false
end

defmodule Google.Privacy.Dlp.V2.DiscoveryTarget do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :target, 0

  field :big_query_target, 1,
    type: Google.Privacy.Dlp.V2.BigQueryDiscoveryTarget,
    json_name: "bigQueryTarget",
    oneof: 0

  field :cloud_sql_target, 2,
    type: Google.Privacy.Dlp.V2.CloudSqlDiscoveryTarget,
    json_name: "cloudSqlTarget",
    oneof: 0

  field :secrets_target, 3,
    type: Google.Privacy.Dlp.V2.SecretsDiscoveryTarget,
    json_name: "secretsTarget",
    oneof: 0

  field :cloud_storage_target, 4,
    type: Google.Privacy.Dlp.V2.CloudStorageDiscoveryTarget,
    json_name: "cloudStorageTarget",
    oneof: 0

  field :other_cloud_target, 5,
    type: Google.Privacy.Dlp.V2.OtherCloudDiscoveryTarget,
    json_name: "otherCloudTarget",
    oneof: 0

  field :vertex_dataset_target, 7,
    type: Google.Privacy.Dlp.V2.VertexDatasetDiscoveryTarget,
    json_name: "vertexDatasetTarget",
    oneof: 0
end

defmodule Google.Privacy.Dlp.V2.BigQueryDiscoveryTarget do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :frequency, 0

  field :filter, 1, type: Google.Privacy.Dlp.V2.DiscoveryBigQueryFilter, deprecated: false
  field :conditions, 2, type: Google.Privacy.Dlp.V2.DiscoveryBigQueryConditions
  field :cadence, 3, type: Google.Privacy.Dlp.V2.DiscoveryGenerationCadence, oneof: 0
  field :disabled, 4, type: Google.Privacy.Dlp.V2.Disabled, oneof: 0
end

defmodule Google.Privacy.Dlp.V2.DiscoveryBigQueryFilter.AllOtherBigQueryTables do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Privacy.Dlp.V2.DiscoveryBigQueryFilter do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :filter, 0

  field :tables, 1, type: Google.Privacy.Dlp.V2.BigQueryTableCollection, oneof: 0

  field :other_tables, 2,
    type: Google.Privacy.Dlp.V2.DiscoveryBigQueryFilter.AllOtherBigQueryTables,
    json_name: "otherTables",
    oneof: 0

  field :table_reference, 3,
    type: Google.Privacy.Dlp.V2.TableReference,
    json_name: "tableReference",
    oneof: 0
end

defmodule Google.Privacy.Dlp.V2.BigQueryTableCollection do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :pattern, 0

  field :include_regexes, 1,
    type: Google.Privacy.Dlp.V2.BigQueryRegexes,
    json_name: "includeRegexes",
    oneof: 0
end

defmodule Google.Privacy.Dlp.V2.DiscoveryBigQueryConditions.OrConditions do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :min_row_count, 1, type: :int32, json_name: "minRowCount"
  field :min_age, 2, type: Google.Protobuf.Duration, json_name: "minAge"
end

defmodule Google.Privacy.Dlp.V2.DiscoveryBigQueryConditions do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :included_types, 0

  field :created_after, 1, type: Google.Protobuf.Timestamp, json_name: "createdAfter"
  field :types, 2, type: Google.Privacy.Dlp.V2.BigQueryTableTypes, oneof: 0

  field :type_collection, 3,
    type: Google.Privacy.Dlp.V2.BigQueryTableTypeCollection,
    json_name: "typeCollection",
    enum: true,
    oneof: 0

  field :or_conditions, 4,
    type: Google.Privacy.Dlp.V2.DiscoveryBigQueryConditions.OrConditions,
    json_name: "orConditions"
end

defmodule Google.Privacy.Dlp.V2.DiscoveryGenerationCadence do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :schema_modified_cadence, 1,
    type: Google.Privacy.Dlp.V2.DiscoverySchemaModifiedCadence,
    json_name: "schemaModifiedCadence"

  field :table_modified_cadence, 2,
    type: Google.Privacy.Dlp.V2.DiscoveryTableModifiedCadence,
    json_name: "tableModifiedCadence"

  field :inspect_template_modified_cadence, 3,
    type: Google.Privacy.Dlp.V2.DiscoveryInspectTemplateModifiedCadence,
    json_name: "inspectTemplateModifiedCadence"

  field :refresh_frequency, 4,
    type: Google.Privacy.Dlp.V2.DataProfileUpdateFrequency,
    json_name: "refreshFrequency",
    enum: true
end

defmodule Google.Privacy.Dlp.V2.DiscoveryTableModifiedCadence do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :types, 1,
    repeated: true,
    type: Google.Privacy.Dlp.V2.BigQueryTableModification,
    enum: true

  field :frequency, 2, type: Google.Privacy.Dlp.V2.DataProfileUpdateFrequency, enum: true
end

defmodule Google.Privacy.Dlp.V2.DiscoverySchemaModifiedCadence do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :types, 1,
    repeated: true,
    type: Google.Privacy.Dlp.V2.BigQuerySchemaModification,
    enum: true

  field :frequency, 2, type: Google.Privacy.Dlp.V2.DataProfileUpdateFrequency, enum: true
end

defmodule Google.Privacy.Dlp.V2.DiscoveryInspectTemplateModifiedCadence do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :frequency, 1, type: Google.Privacy.Dlp.V2.DataProfileUpdateFrequency, enum: true
end

defmodule Google.Privacy.Dlp.V2.CloudSqlDiscoveryTarget do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :cadence, 0

  field :filter, 1, type: Google.Privacy.Dlp.V2.DiscoveryCloudSqlFilter, deprecated: false
  field :conditions, 2, type: Google.Privacy.Dlp.V2.DiscoveryCloudSqlConditions

  field :generation_cadence, 3,
    type: Google.Privacy.Dlp.V2.DiscoveryCloudSqlGenerationCadence,
    json_name: "generationCadence",
    oneof: 0

  field :disabled, 4, type: Google.Privacy.Dlp.V2.Disabled, oneof: 0
end

defmodule Google.Privacy.Dlp.V2.DiscoveryCloudSqlFilter do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :filter, 0

  field :collection, 1, type: Google.Privacy.Dlp.V2.DatabaseResourceCollection, oneof: 0
  field :others, 2, type: Google.Privacy.Dlp.V2.AllOtherDatabaseResources, oneof: 0

  field :database_resource_reference, 3,
    type: Google.Privacy.Dlp.V2.DatabaseResourceReference,
    json_name: "databaseResourceReference",
    oneof: 0
end

defmodule Google.Privacy.Dlp.V2.DatabaseResourceCollection do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :pattern, 0

  field :include_regexes, 1,
    type: Google.Privacy.Dlp.V2.DatabaseResourceRegexes,
    json_name: "includeRegexes",
    oneof: 0
end

defmodule Google.Privacy.Dlp.V2.DatabaseResourceRegexes do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :patterns, 1, repeated: true, type: Google.Privacy.Dlp.V2.DatabaseResourceRegex
end

defmodule Google.Privacy.Dlp.V2.DatabaseResourceRegex do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :project_id_regex, 1, type: :string, json_name: "projectIdRegex"
  field :instance_regex, 2, type: :string, json_name: "instanceRegex"
  field :database_regex, 3, type: :string, json_name: "databaseRegex"
  field :database_resource_name_regex, 4, type: :string, json_name: "databaseResourceNameRegex"
end

defmodule Google.Privacy.Dlp.V2.AllOtherDatabaseResources do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Privacy.Dlp.V2.DatabaseResourceReference do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :project_id, 1, type: :string, json_name: "projectId", deprecated: false
  field :instance, 2, type: :string, deprecated: false
  field :database, 3, type: :string, deprecated: false
  field :database_resource, 4, type: :string, json_name: "databaseResource", deprecated: false
end

defmodule Google.Privacy.Dlp.V2.DiscoveryCloudSqlConditions do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :database_engines, 1,
    repeated: true,
    type: Google.Privacy.Dlp.V2.DiscoveryCloudSqlConditions.DatabaseEngine,
    json_name: "databaseEngines",
    enum: true,
    deprecated: false

  field :types, 3,
    repeated: true,
    type: Google.Privacy.Dlp.V2.DiscoveryCloudSqlConditions.DatabaseResourceType,
    enum: true
end

defmodule Google.Privacy.Dlp.V2.DiscoveryCloudSqlGenerationCadence.SchemaModifiedCadence do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :types, 1,
    repeated: true,
    type:
      Google.Privacy.Dlp.V2.DiscoveryCloudSqlGenerationCadence.SchemaModifiedCadence.CloudSqlSchemaModification,
    enum: true

  field :frequency, 2, type: Google.Privacy.Dlp.V2.DataProfileUpdateFrequency, enum: true
end

defmodule Google.Privacy.Dlp.V2.DiscoveryCloudSqlGenerationCadence do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :schema_modified_cadence, 1,
    type: Google.Privacy.Dlp.V2.DiscoveryCloudSqlGenerationCadence.SchemaModifiedCadence,
    json_name: "schemaModifiedCadence"

  field :refresh_frequency, 2,
    type: Google.Privacy.Dlp.V2.DataProfileUpdateFrequency,
    json_name: "refreshFrequency",
    enum: true

  field :inspect_template_modified_cadence, 3,
    type: Google.Privacy.Dlp.V2.DiscoveryInspectTemplateModifiedCadence,
    json_name: "inspectTemplateModifiedCadence"
end

defmodule Google.Privacy.Dlp.V2.SecretsDiscoveryTarget do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Privacy.Dlp.V2.CloudStorageDiscoveryTarget do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :cadence, 0

  field :filter, 1, type: Google.Privacy.Dlp.V2.DiscoveryCloudStorageFilter, deprecated: false

  field :conditions, 4,
    type: Google.Privacy.Dlp.V2.DiscoveryFileStoreConditions,
    deprecated: false

  field :generation_cadence, 2,
    type: Google.Privacy.Dlp.V2.DiscoveryCloudStorageGenerationCadence,
    json_name: "generationCadence",
    oneof: 0,
    deprecated: false

  field :disabled, 3, type: Google.Privacy.Dlp.V2.Disabled, oneof: 0, deprecated: false
end

defmodule Google.Privacy.Dlp.V2.DiscoveryCloudStorageFilter do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :filter, 0

  field :collection, 1,
    type: Google.Privacy.Dlp.V2.FileStoreCollection,
    oneof: 0,
    deprecated: false

  field :cloud_storage_resource_reference, 2,
    type: Google.Privacy.Dlp.V2.CloudStorageResourceReference,
    json_name: "cloudStorageResourceReference",
    oneof: 0,
    deprecated: false

  field :others, 100, type: Google.Privacy.Dlp.V2.AllOtherResources, oneof: 0, deprecated: false
end

defmodule Google.Privacy.Dlp.V2.FileStoreCollection do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :pattern, 0

  field :include_regexes, 1,
    type: Google.Privacy.Dlp.V2.FileStoreRegexes,
    json_name: "includeRegexes",
    oneof: 0,
    deprecated: false
end

defmodule Google.Privacy.Dlp.V2.FileStoreRegexes do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :patterns, 1,
    repeated: true,
    type: Google.Privacy.Dlp.V2.FileStoreRegex,
    deprecated: false
end

defmodule Google.Privacy.Dlp.V2.FileStoreRegex do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :resource_regex, 0

  field :cloud_storage_regex, 1,
    type: Google.Privacy.Dlp.V2.CloudStorageRegex,
    json_name: "cloudStorageRegex",
    oneof: 0,
    deprecated: false
end

defmodule Google.Privacy.Dlp.V2.CloudStorageRegex do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :project_id_regex, 1, type: :string, json_name: "projectIdRegex", deprecated: false
  field :bucket_name_regex, 2, type: :string, json_name: "bucketNameRegex", deprecated: false
end

defmodule Google.Privacy.Dlp.V2.CloudStorageResourceReference do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :bucket_name, 1, type: :string, json_name: "bucketName", deprecated: false
  field :project_id, 2, type: :string, json_name: "projectId", deprecated: false
end

defmodule Google.Privacy.Dlp.V2.DiscoveryCloudStorageGenerationCadence do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :refresh_frequency, 1,
    type: Google.Privacy.Dlp.V2.DataProfileUpdateFrequency,
    json_name: "refreshFrequency",
    enum: true,
    deprecated: false

  field :inspect_template_modified_cadence, 2,
    type: Google.Privacy.Dlp.V2.DiscoveryInspectTemplateModifiedCadence,
    json_name: "inspectTemplateModifiedCadence",
    deprecated: false
end

defmodule Google.Privacy.Dlp.V2.DiscoveryCloudStorageConditions do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :included_object_attributes, 1,
    repeated: true,
    type: Google.Privacy.Dlp.V2.DiscoveryCloudStorageConditions.CloudStorageObjectAttribute,
    json_name: "includedObjectAttributes",
    enum: true,
    deprecated: false

  field :included_bucket_attributes, 2,
    repeated: true,
    type: Google.Privacy.Dlp.V2.DiscoveryCloudStorageConditions.CloudStorageBucketAttribute,
    json_name: "includedBucketAttributes",
    enum: true,
    deprecated: false
end

defmodule Google.Privacy.Dlp.V2.DiscoveryFileStoreConditions do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :conditions, 0

  field :created_after, 1,
    type: Google.Protobuf.Timestamp,
    json_name: "createdAfter",
    deprecated: false

  field :min_age, 2, type: Google.Protobuf.Duration, json_name: "minAge", deprecated: false

  field :cloud_storage_conditions, 3,
    type: Google.Privacy.Dlp.V2.DiscoveryCloudStorageConditions,
    json_name: "cloudStorageConditions",
    oneof: 0,
    deprecated: false
end

defmodule Google.Privacy.Dlp.V2.OtherCloudDiscoveryTarget do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :cadence, 0

  field :data_source_type, 1,
    type: Google.Privacy.Dlp.V2.DataSourceType,
    json_name: "dataSourceType",
    deprecated: false

  field :filter, 2, type: Google.Privacy.Dlp.V2.DiscoveryOtherCloudFilter, deprecated: false

  field :conditions, 3,
    type: Google.Privacy.Dlp.V2.DiscoveryOtherCloudConditions,
    deprecated: false

  field :generation_cadence, 4,
    type: Google.Privacy.Dlp.V2.DiscoveryOtherCloudGenerationCadence,
    json_name: "generationCadence",
    oneof: 0

  field :disabled, 5, type: Google.Privacy.Dlp.V2.Disabled, oneof: 0
end

defmodule Google.Privacy.Dlp.V2.DiscoveryOtherCloudFilter do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :filter, 0

  field :collection, 1, type: Google.Privacy.Dlp.V2.OtherCloudResourceCollection, oneof: 0

  field :single_resource, 2,
    type: Google.Privacy.Dlp.V2.OtherCloudSingleResourceReference,
    json_name: "singleResource",
    oneof: 0

  field :others, 100, type: Google.Privacy.Dlp.V2.AllOtherResources, oneof: 0, deprecated: false
end

defmodule Google.Privacy.Dlp.V2.OtherCloudResourceCollection do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :pattern, 0

  field :include_regexes, 1,
    type: Google.Privacy.Dlp.V2.OtherCloudResourceRegexes,
    json_name: "includeRegexes",
    oneof: 0
end

defmodule Google.Privacy.Dlp.V2.OtherCloudResourceRegexes do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :patterns, 1, repeated: true, type: Google.Privacy.Dlp.V2.OtherCloudResourceRegex
end

defmodule Google.Privacy.Dlp.V2.OtherCloudResourceRegex do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :resource_regex, 0

  field :amazon_s3_bucket_regex, 1,
    type: Google.Privacy.Dlp.V2.AmazonS3BucketRegex,
    json_name: "amazonS3BucketRegex",
    oneof: 0
end

defmodule Google.Privacy.Dlp.V2.AwsAccountRegex do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :account_id_regex, 1, type: :string, json_name: "accountIdRegex", deprecated: false
end

defmodule Google.Privacy.Dlp.V2.AmazonS3BucketRegex do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :aws_account_regex, 1,
    type: Google.Privacy.Dlp.V2.AwsAccountRegex,
    json_name: "awsAccountRegex"

  field :bucket_name_regex, 2, type: :string, json_name: "bucketNameRegex", deprecated: false
end

defmodule Google.Privacy.Dlp.V2.OtherCloudSingleResourceReference do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :resource, 0

  field :amazon_s3_bucket, 1,
    type: Google.Privacy.Dlp.V2.AmazonS3Bucket,
    json_name: "amazonS3Bucket",
    oneof: 0
end

defmodule Google.Privacy.Dlp.V2.AwsAccount do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :account_id, 1, type: :string, json_name: "accountId", deprecated: false
end

defmodule Google.Privacy.Dlp.V2.AmazonS3Bucket do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :aws_account, 1, type: Google.Privacy.Dlp.V2.AwsAccount, json_name: "awsAccount"
  field :bucket_name, 2, type: :string, json_name: "bucketName", deprecated: false
end

defmodule Google.Privacy.Dlp.V2.DiscoveryOtherCloudConditions do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :conditions, 0

  field :min_age, 1, type: Google.Protobuf.Duration, json_name: "minAge"

  field :amazon_s3_bucket_conditions, 2,
    type: Google.Privacy.Dlp.V2.AmazonS3BucketConditions,
    json_name: "amazonS3BucketConditions",
    oneof: 0
end

defmodule Google.Privacy.Dlp.V2.AmazonS3BucketConditions do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :bucket_types, 1,
    repeated: true,
    type: Google.Privacy.Dlp.V2.AmazonS3BucketConditions.BucketType,
    json_name: "bucketTypes",
    enum: true,
    deprecated: false

  field :object_storage_classes, 2,
    repeated: true,
    type: Google.Privacy.Dlp.V2.AmazonS3BucketConditions.ObjectStorageClass,
    json_name: "objectStorageClasses",
    enum: true,
    deprecated: false
end

defmodule Google.Privacy.Dlp.V2.DiscoveryOtherCloudGenerationCadence do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :refresh_frequency, 1,
    type: Google.Privacy.Dlp.V2.DataProfileUpdateFrequency,
    json_name: "refreshFrequency",
    enum: true,
    deprecated: false

  field :inspect_template_modified_cadence, 2,
    type: Google.Privacy.Dlp.V2.DiscoveryInspectTemplateModifiedCadence,
    json_name: "inspectTemplateModifiedCadence",
    deprecated: false
end

defmodule Google.Privacy.Dlp.V2.DiscoveryStartingLocation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :location, 0

  field :organization_id, 1, type: :int64, json_name: "organizationId", oneof: 0
  field :folder_id, 2, type: :int64, json_name: "folderId", oneof: 0
end

defmodule Google.Privacy.Dlp.V2.OtherCloudDiscoveryStartingLocation.AwsDiscoveryStartingLocation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :scope, 0

  field :account_id, 2, type: :string, json_name: "accountId", oneof: 0

  field :all_asset_inventory_assets, 3,
    type: :bool,
    json_name: "allAssetInventoryAssets",
    oneof: 0
end

defmodule Google.Privacy.Dlp.V2.OtherCloudDiscoveryStartingLocation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :location, 0

  field :aws_location, 1,
    type: Google.Privacy.Dlp.V2.OtherCloudDiscoveryStartingLocation.AwsDiscoveryStartingLocation,
    json_name: "awsLocation",
    oneof: 0
end

defmodule Google.Privacy.Dlp.V2.AllOtherResources do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Privacy.Dlp.V2.VertexDatasetDiscoveryTarget do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :cadence, 0

  field :filter, 1, type: Google.Privacy.Dlp.V2.DiscoveryVertexDatasetFilter, deprecated: false
  field :conditions, 2, type: Google.Privacy.Dlp.V2.DiscoveryVertexDatasetConditions

  field :generation_cadence, 3,
    type: Google.Privacy.Dlp.V2.DiscoveryVertexDatasetGenerationCadence,
    json_name: "generationCadence",
    oneof: 0

  field :disabled, 4, type: Google.Privacy.Dlp.V2.Disabled, oneof: 0
end

defmodule Google.Privacy.Dlp.V2.DiscoveryVertexDatasetFilter do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :filter, 0

  field :collection, 1, type: Google.Privacy.Dlp.V2.VertexDatasetCollection, oneof: 0

  field :vertex_dataset_resource_reference, 2,
    type: Google.Privacy.Dlp.V2.VertexDatasetResourceReference,
    json_name: "vertexDatasetResourceReference",
    oneof: 0

  field :others, 100, type: Google.Privacy.Dlp.V2.AllOtherResources, oneof: 0
end

defmodule Google.Privacy.Dlp.V2.VertexDatasetCollection do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :pattern, 0

  field :vertex_dataset_regexes, 1,
    type: Google.Privacy.Dlp.V2.VertexDatasetRegexes,
    json_name: "vertexDatasetRegexes",
    oneof: 0
end

defmodule Google.Privacy.Dlp.V2.VertexDatasetRegexes do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :patterns, 1,
    repeated: true,
    type: Google.Privacy.Dlp.V2.VertexDatasetRegex,
    deprecated: false
end

defmodule Google.Privacy.Dlp.V2.VertexDatasetRegex do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :project_id_regex, 1, type: :string, json_name: "projectIdRegex"
end

defmodule Google.Privacy.Dlp.V2.VertexDatasetResourceReference do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :dataset_resource_name, 1,
    type: :string,
    json_name: "datasetResourceName",
    deprecated: false
end

defmodule Google.Privacy.Dlp.V2.DiscoveryVertexDatasetConditions do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :created_after, 1, type: Google.Protobuf.Timestamp, json_name: "createdAfter"
  field :min_age, 2, type: Google.Protobuf.Duration, json_name: "minAge"
end

defmodule Google.Privacy.Dlp.V2.DiscoveryVertexDatasetGenerationCadence do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :refresh_frequency, 1,
    type: Google.Privacy.Dlp.V2.DataProfileUpdateFrequency,
    json_name: "refreshFrequency",
    enum: true

  field :inspect_template_modified_cadence, 2,
    type: Google.Privacy.Dlp.V2.DiscoveryInspectTemplateModifiedCadence,
    json_name: "inspectTemplateModifiedCadence"
end

defmodule Google.Privacy.Dlp.V2.DlpJob do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :details, 0

  field :name, 1, type: :string
  field :type, 2, type: Google.Privacy.Dlp.V2.DlpJobType, enum: true
  field :state, 3, type: Google.Privacy.Dlp.V2.DlpJob.JobState, enum: true

  field :risk_details, 4,
    type: Google.Privacy.Dlp.V2.AnalyzeDataSourceRiskDetails,
    json_name: "riskDetails",
    oneof: 0

  field :inspect_details, 5,
    type: Google.Privacy.Dlp.V2.InspectDataSourceDetails,
    json_name: "inspectDetails",
    oneof: 0

  field :create_time, 6, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :start_time, 7, type: Google.Protobuf.Timestamp, json_name: "startTime"
  field :end_time, 8, type: Google.Protobuf.Timestamp, json_name: "endTime"
  field :last_modified, 15, type: Google.Protobuf.Timestamp, json_name: "lastModified"
  field :job_trigger_name, 10, type: :string, json_name: "jobTriggerName"
  field :errors, 11, repeated: true, type: Google.Privacy.Dlp.V2.Error

  field :action_details, 12,
    repeated: true,
    type: Google.Privacy.Dlp.V2.ActionDetails,
    json_name: "actionDetails"
end

defmodule Google.Privacy.Dlp.V2.GetDlpJobRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Privacy.Dlp.V2.ListDlpJobsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 4, type: :string, deprecated: false
  field :filter, 1, type: :string
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :type, 5, type: Google.Privacy.Dlp.V2.DlpJobType, enum: true
  field :order_by, 6, type: :string, json_name: "orderBy"
  field :location_id, 7, type: :string, json_name: "locationId"
end

defmodule Google.Privacy.Dlp.V2.ListDlpJobsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :jobs, 1, repeated: true, type: Google.Privacy.Dlp.V2.DlpJob
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Privacy.Dlp.V2.CancelDlpJobRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Privacy.Dlp.V2.FinishDlpJobRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Privacy.Dlp.V2.DeleteDlpJobRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Privacy.Dlp.V2.CreateDeidentifyTemplateRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :deidentify_template, 2,
    type: Google.Privacy.Dlp.V2.DeidentifyTemplate,
    json_name: "deidentifyTemplate",
    deprecated: false

  field :template_id, 3, type: :string, json_name: "templateId"
  field :location_id, 4, type: :string, json_name: "locationId"
end

defmodule Google.Privacy.Dlp.V2.UpdateDeidentifyTemplateRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :deidentify_template, 2,
    type: Google.Privacy.Dlp.V2.DeidentifyTemplate,
    json_name: "deidentifyTemplate"

  field :update_mask, 3, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end

defmodule Google.Privacy.Dlp.V2.GetDeidentifyTemplateRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Privacy.Dlp.V2.ListDeidentifyTemplatesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_token, 2, type: :string, json_name: "pageToken"
  field :page_size, 3, type: :int32, json_name: "pageSize"
  field :order_by, 4, type: :string, json_name: "orderBy"
  field :location_id, 5, type: :string, json_name: "locationId"
end

defmodule Google.Privacy.Dlp.V2.ListDeidentifyTemplatesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :deidentify_templates, 1,
    repeated: true,
    type: Google.Privacy.Dlp.V2.DeidentifyTemplate,
    json_name: "deidentifyTemplates"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Privacy.Dlp.V2.DeleteDeidentifyTemplateRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Privacy.Dlp.V2.LargeCustomDictionaryConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :source, 0

  field :output_path, 1, type: Google.Privacy.Dlp.V2.CloudStoragePath, json_name: "outputPath"

  field :cloud_storage_file_set, 2,
    type: Google.Privacy.Dlp.V2.CloudStorageFileSet,
    json_name: "cloudStorageFileSet",
    oneof: 0

  field :big_query_field, 3,
    type: Google.Privacy.Dlp.V2.BigQueryField,
    json_name: "bigQueryField",
    oneof: 0
end

defmodule Google.Privacy.Dlp.V2.LargeCustomDictionaryStats do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :approx_num_phrases, 1, type: :int64, json_name: "approxNumPhrases"
end

defmodule Google.Privacy.Dlp.V2.StoredInfoTypeConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :type, 0

  field :display_name, 1, type: :string, json_name: "displayName"
  field :description, 2, type: :string

  field :large_custom_dictionary, 3,
    type: Google.Privacy.Dlp.V2.LargeCustomDictionaryConfig,
    json_name: "largeCustomDictionary",
    oneof: 0

  field :dictionary, 4, type: Google.Privacy.Dlp.V2.CustomInfoType.Dictionary, oneof: 0
  field :regex, 5, type: Google.Privacy.Dlp.V2.CustomInfoType.Regex, oneof: 0
end

defmodule Google.Privacy.Dlp.V2.StoredInfoTypeStats do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :type, 0

  field :large_custom_dictionary, 1,
    type: Google.Privacy.Dlp.V2.LargeCustomDictionaryStats,
    json_name: "largeCustomDictionary",
    oneof: 0
end

defmodule Google.Privacy.Dlp.V2.StoredInfoTypeVersion do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :config, 1, type: Google.Privacy.Dlp.V2.StoredInfoTypeConfig
  field :create_time, 2, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :state, 3, type: Google.Privacy.Dlp.V2.StoredInfoTypeState, enum: true
  field :errors, 4, repeated: true, type: Google.Privacy.Dlp.V2.Error
  field :stats, 5, type: Google.Privacy.Dlp.V2.StoredInfoTypeStats
end

defmodule Google.Privacy.Dlp.V2.StoredInfoType do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string

  field :current_version, 2,
    type: Google.Privacy.Dlp.V2.StoredInfoTypeVersion,
    json_name: "currentVersion"

  field :pending_versions, 3,
    repeated: true,
    type: Google.Privacy.Dlp.V2.StoredInfoTypeVersion,
    json_name: "pendingVersions"
end

defmodule Google.Privacy.Dlp.V2.CreateStoredInfoTypeRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :config, 2, type: Google.Privacy.Dlp.V2.StoredInfoTypeConfig, deprecated: false
  field :stored_info_type_id, 3, type: :string, json_name: "storedInfoTypeId"
  field :location_id, 4, type: :string, json_name: "locationId"
end

defmodule Google.Privacy.Dlp.V2.UpdateStoredInfoTypeRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :config, 2, type: Google.Privacy.Dlp.V2.StoredInfoTypeConfig
  field :update_mask, 3, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end

defmodule Google.Privacy.Dlp.V2.GetStoredInfoTypeRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Privacy.Dlp.V2.ListStoredInfoTypesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_token, 2, type: :string, json_name: "pageToken"
  field :page_size, 3, type: :int32, json_name: "pageSize"
  field :order_by, 4, type: :string, json_name: "orderBy"
  field :location_id, 5, type: :string, json_name: "locationId"
end

defmodule Google.Privacy.Dlp.V2.ListStoredInfoTypesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :stored_info_types, 1,
    repeated: true,
    type: Google.Privacy.Dlp.V2.StoredInfoType,
    json_name: "storedInfoTypes"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Privacy.Dlp.V2.DeleteStoredInfoTypeRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Privacy.Dlp.V2.HybridInspectJobTriggerRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :hybrid_item, 3, type: Google.Privacy.Dlp.V2.HybridContentItem, json_name: "hybridItem"
end

defmodule Google.Privacy.Dlp.V2.HybridInspectDlpJobRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :hybrid_item, 3, type: Google.Privacy.Dlp.V2.HybridContentItem, json_name: "hybridItem"
end

defmodule Google.Privacy.Dlp.V2.HybridContentItem do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :item, 1, type: Google.Privacy.Dlp.V2.ContentItem

  field :finding_details, 2,
    type: Google.Privacy.Dlp.V2.HybridFindingDetails,
    json_name: "findingDetails"
end

defmodule Google.Privacy.Dlp.V2.HybridFindingDetails.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Privacy.Dlp.V2.HybridFindingDetails do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :container_details, 1,
    type: Google.Privacy.Dlp.V2.Container,
    json_name: "containerDetails"

  field :file_offset, 2, type: :int64, json_name: "fileOffset"
  field :row_offset, 3, type: :int64, json_name: "rowOffset"
  field :table_options, 4, type: Google.Privacy.Dlp.V2.TableOptions, json_name: "tableOptions"

  field :labels, 5,
    repeated: true,
    type: Google.Privacy.Dlp.V2.HybridFindingDetails.LabelsEntry,
    map: true
end

defmodule Google.Privacy.Dlp.V2.HybridInspectResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Privacy.Dlp.V2.ListProjectDataProfilesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_token, 2, type: :string, json_name: "pageToken"
  field :page_size, 3, type: :int32, json_name: "pageSize"
  field :order_by, 4, type: :string, json_name: "orderBy"
  field :filter, 5, type: :string
end

defmodule Google.Privacy.Dlp.V2.ListProjectDataProfilesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :project_data_profiles, 1,
    repeated: true,
    type: Google.Privacy.Dlp.V2.ProjectDataProfile,
    json_name: "projectDataProfiles"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Privacy.Dlp.V2.ListTableDataProfilesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_token, 2, type: :string, json_name: "pageToken"
  field :page_size, 3, type: :int32, json_name: "pageSize"
  field :order_by, 4, type: :string, json_name: "orderBy"
  field :filter, 5, type: :string
end

defmodule Google.Privacy.Dlp.V2.ListTableDataProfilesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :table_data_profiles, 1,
    repeated: true,
    type: Google.Privacy.Dlp.V2.TableDataProfile,
    json_name: "tableDataProfiles"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Privacy.Dlp.V2.ListColumnDataProfilesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_token, 2, type: :string, json_name: "pageToken"
  field :page_size, 3, type: :int32, json_name: "pageSize"
  field :order_by, 4, type: :string, json_name: "orderBy"
  field :filter, 5, type: :string
end

defmodule Google.Privacy.Dlp.V2.ListColumnDataProfilesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :column_data_profiles, 1,
    repeated: true,
    type: Google.Privacy.Dlp.V2.ColumnDataProfile,
    json_name: "columnDataProfiles"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Privacy.Dlp.V2.DataRiskLevel do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :score, 1, type: Google.Privacy.Dlp.V2.DataRiskLevel.DataRiskLevelScore, enum: true
end

defmodule Google.Privacy.Dlp.V2.ProjectDataProfile do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string
  field :project_id, 2, type: :string, json_name: "projectId"

  field :profile_last_generated, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "profileLastGenerated"

  field :sensitivity_score, 4,
    type: Google.Privacy.Dlp.V2.SensitivityScore,
    json_name: "sensitivityScore"

  field :data_risk_level, 5, type: Google.Privacy.Dlp.V2.DataRiskLevel, json_name: "dataRiskLevel"
  field :profile_status, 7, type: Google.Privacy.Dlp.V2.ProfileStatus, json_name: "profileStatus"
  field :table_data_profile_count, 9, type: :int64, json_name: "tableDataProfileCount"
  field :file_store_data_profile_count, 10, type: :int64, json_name: "fileStoreDataProfileCount"
end

defmodule Google.Privacy.Dlp.V2.DataProfileConfigSnapshot do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :inspect_config, 2, type: Google.Privacy.Dlp.V2.InspectConfig, json_name: "inspectConfig"

  field :data_profile_job, 3,
    type: Google.Privacy.Dlp.V2.DataProfileJobConfig,
    json_name: "dataProfileJob",
    deprecated: true

  field :discovery_config, 4,
    type: Google.Privacy.Dlp.V2.DiscoveryConfig,
    json_name: "discoveryConfig"

  field :inspect_template_name, 5, type: :string, json_name: "inspectTemplateName"

  field :inspect_template_modified_time, 6,
    type: Google.Protobuf.Timestamp,
    json_name: "inspectTemplateModifiedTime"
end

defmodule Google.Privacy.Dlp.V2.TableDataProfile.ResourceLabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Privacy.Dlp.V2.TableDataProfile do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string

  field :data_source_type, 36,
    type: Google.Privacy.Dlp.V2.DataSourceType,
    json_name: "dataSourceType"

  field :project_data_profile, 2, type: :string, json_name: "projectDataProfile"
  field :dataset_project_id, 24, type: :string, json_name: "datasetProjectId"
  field :dataset_location, 29, type: :string, json_name: "datasetLocation"
  field :dataset_id, 25, type: :string, json_name: "datasetId"
  field :table_id, 26, type: :string, json_name: "tableId"
  field :full_resource, 3, type: :string, json_name: "fullResource"
  field :profile_status, 21, type: Google.Privacy.Dlp.V2.ProfileStatus, json_name: "profileStatus"
  field :state, 22, type: Google.Privacy.Dlp.V2.TableDataProfile.State, enum: true

  field :sensitivity_score, 5,
    type: Google.Privacy.Dlp.V2.SensitivityScore,
    json_name: "sensitivityScore"

  field :data_risk_level, 6, type: Google.Privacy.Dlp.V2.DataRiskLevel, json_name: "dataRiskLevel"

  field :predicted_info_types, 27,
    repeated: true,
    type: Google.Privacy.Dlp.V2.InfoTypeSummary,
    json_name: "predictedInfoTypes"

  field :other_info_types, 28,
    repeated: true,
    type: Google.Privacy.Dlp.V2.OtherInfoTypeSummary,
    json_name: "otherInfoTypes"

  field :config_snapshot, 7,
    type: Google.Privacy.Dlp.V2.DataProfileConfigSnapshot,
    json_name: "configSnapshot"

  field :last_modified_time, 8, type: Google.Protobuf.Timestamp, json_name: "lastModifiedTime"
  field :expiration_time, 9, type: Google.Protobuf.Timestamp, json_name: "expirationTime"
  field :scanned_column_count, 10, type: :int64, json_name: "scannedColumnCount"
  field :failed_column_count, 11, type: :int64, json_name: "failedColumnCount"
  field :table_size_bytes, 12, type: :int64, json_name: "tableSizeBytes"
  field :row_count, 13, type: :int64, json_name: "rowCount"

  field :encryption_status, 14,
    type: Google.Privacy.Dlp.V2.EncryptionStatus,
    json_name: "encryptionStatus",
    enum: true

  field :resource_visibility, 15,
    type: Google.Privacy.Dlp.V2.ResourceVisibility,
    json_name: "resourceVisibility",
    enum: true

  field :profile_last_generated, 16,
    type: Google.Protobuf.Timestamp,
    json_name: "profileLastGenerated"

  field :resource_labels, 17,
    repeated: true,
    type: Google.Privacy.Dlp.V2.TableDataProfile.ResourceLabelsEntry,
    json_name: "resourceLabels",
    map: true

  field :create_time, 23, type: Google.Protobuf.Timestamp, json_name: "createTime"

  field :sample_findings_table, 37,
    type: Google.Privacy.Dlp.V2.BigQueryTable,
    json_name: "sampleFindingsTable"

  field :tags, 39, repeated: true, type: Google.Privacy.Dlp.V2.Tag

  field :related_resources, 41,
    repeated: true,
    type: Google.Privacy.Dlp.V2.RelatedResource,
    json_name: "relatedResources"
end

defmodule Google.Privacy.Dlp.V2.ProfileStatus do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :status, 1, type: Google.Rpc.Status
  field :timestamp, 3, type: Google.Protobuf.Timestamp
end

defmodule Google.Privacy.Dlp.V2.InfoTypeSummary do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :info_type, 1, type: Google.Privacy.Dlp.V2.InfoType, json_name: "infoType"
  field :estimated_prevalence, 2, type: :int32, json_name: "estimatedPrevalence", deprecated: true
end

defmodule Google.Privacy.Dlp.V2.OtherInfoTypeSummary do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :info_type, 1, type: Google.Privacy.Dlp.V2.InfoType, json_name: "infoType"
  field :estimated_prevalence, 2, type: :int32, json_name: "estimatedPrevalence"
  field :excluded_from_analysis, 3, type: :bool, json_name: "excludedFromAnalysis"
end

defmodule Google.Privacy.Dlp.V2.ColumnDataProfile do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string
  field :profile_status, 17, type: Google.Privacy.Dlp.V2.ProfileStatus, json_name: "profileStatus"
  field :state, 18, type: Google.Privacy.Dlp.V2.ColumnDataProfile.State, enum: true

  field :profile_last_generated, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "profileLastGenerated"

  field :table_data_profile, 4, type: :string, json_name: "tableDataProfile"
  field :table_full_resource, 5, type: :string, json_name: "tableFullResource"
  field :dataset_project_id, 19, type: :string, json_name: "datasetProjectId"
  field :dataset_location, 20, type: :string, json_name: "datasetLocation"
  field :dataset_id, 21, type: :string, json_name: "datasetId"
  field :table_id, 22, type: :string, json_name: "tableId"
  field :column, 6, type: :string

  field :sensitivity_score, 7,
    type: Google.Privacy.Dlp.V2.SensitivityScore,
    json_name: "sensitivityScore"

  field :data_risk_level, 8, type: Google.Privacy.Dlp.V2.DataRiskLevel, json_name: "dataRiskLevel"

  field :column_info_type, 9,
    type: Google.Privacy.Dlp.V2.InfoTypeSummary,
    json_name: "columnInfoType"

  field :other_matches, 10,
    repeated: true,
    type: Google.Privacy.Dlp.V2.OtherInfoTypeSummary,
    json_name: "otherMatches"

  field :estimated_null_percentage, 23,
    type: Google.Privacy.Dlp.V2.NullPercentageLevel,
    json_name: "estimatedNullPercentage",
    enum: true

  field :estimated_uniqueness_score, 24,
    type: Google.Privacy.Dlp.V2.UniquenessScoreLevel,
    json_name: "estimatedUniquenessScore",
    enum: true

  field :free_text_score, 13, type: :double, json_name: "freeTextScore"

  field :column_type, 14,
    type: Google.Privacy.Dlp.V2.ColumnDataProfile.ColumnDataType,
    json_name: "columnType",
    enum: true

  field :policy_state, 15,
    type: Google.Privacy.Dlp.V2.ColumnDataProfile.ColumnPolicyState,
    json_name: "policyState",
    enum: true
end

defmodule Google.Privacy.Dlp.V2.FileStoreDataProfile.ResourceAttributesEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Privacy.Dlp.V2.Value
end

defmodule Google.Privacy.Dlp.V2.FileStoreDataProfile.ResourceLabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Privacy.Dlp.V2.FileStoreDataProfile do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string

  field :data_source_type, 2,
    type: Google.Privacy.Dlp.V2.DataSourceType,
    json_name: "dataSourceType"

  field :project_data_profile, 3, type: :string, json_name: "projectDataProfile"
  field :project_id, 4, type: :string, json_name: "projectId"
  field :file_store_location, 5, type: :string, json_name: "fileStoreLocation"

  field :data_storage_locations, 19,
    repeated: true,
    type: :string,
    json_name: "dataStorageLocations"

  field :location_type, 20, type: :string, json_name: "locationType"
  field :file_store_path, 6, type: :string, json_name: "fileStorePath"
  field :full_resource, 24, type: :string, json_name: "fullResource"

  field :config_snapshot, 7,
    type: Google.Privacy.Dlp.V2.DataProfileConfigSnapshot,
    json_name: "configSnapshot"

  field :profile_status, 8, type: Google.Privacy.Dlp.V2.ProfileStatus, json_name: "profileStatus"
  field :state, 9, type: Google.Privacy.Dlp.V2.FileStoreDataProfile.State, enum: true

  field :profile_last_generated, 10,
    type: Google.Protobuf.Timestamp,
    json_name: "profileLastGenerated"

  field :resource_visibility, 11,
    type: Google.Privacy.Dlp.V2.ResourceVisibility,
    json_name: "resourceVisibility",
    enum: true

  field :sensitivity_score, 12,
    type: Google.Privacy.Dlp.V2.SensitivityScore,
    json_name: "sensitivityScore"

  field :data_risk_level, 13,
    type: Google.Privacy.Dlp.V2.DataRiskLevel,
    json_name: "dataRiskLevel"

  field :create_time, 14, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :last_modified_time, 15, type: Google.Protobuf.Timestamp, json_name: "lastModifiedTime"

  field :file_cluster_summaries, 16,
    repeated: true,
    type: Google.Privacy.Dlp.V2.FileClusterSummary,
    json_name: "fileClusterSummaries"

  field :resource_attributes, 17,
    repeated: true,
    type: Google.Privacy.Dlp.V2.FileStoreDataProfile.ResourceAttributesEntry,
    json_name: "resourceAttributes",
    map: true

  field :resource_labels, 18,
    repeated: true,
    type: Google.Privacy.Dlp.V2.FileStoreDataProfile.ResourceLabelsEntry,
    json_name: "resourceLabels",
    map: true

  field :file_store_info_type_summaries, 21,
    repeated: true,
    type: Google.Privacy.Dlp.V2.FileStoreInfoTypeSummary,
    json_name: "fileStoreInfoTypeSummaries"

  field :sample_findings_table, 22,
    type: Google.Privacy.Dlp.V2.BigQueryTable,
    json_name: "sampleFindingsTable"

  field :file_store_is_empty, 23, type: :bool, json_name: "fileStoreIsEmpty"
  field :tags, 25, repeated: true, type: Google.Privacy.Dlp.V2.Tag

  field :related_resources, 26,
    repeated: true,
    type: Google.Privacy.Dlp.V2.RelatedResource,
    json_name: "relatedResources"
end

defmodule Google.Privacy.Dlp.V2.Tag do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :namespaced_tag_value, 1, type: :string, json_name: "namespacedTagValue"
  field :key, 2, type: :string
  field :value, 3, type: :string
end

defmodule Google.Privacy.Dlp.V2.RelatedResource do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :full_resource, 1, type: :string, json_name: "fullResource"
end

defmodule Google.Privacy.Dlp.V2.FileStoreInfoTypeSummary do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :info_type, 1, type: Google.Privacy.Dlp.V2.InfoType, json_name: "infoType"
end

defmodule Google.Privacy.Dlp.V2.FileExtensionInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :file_extension, 1, type: :string, json_name: "fileExtension"
end

defmodule Google.Privacy.Dlp.V2.FileClusterSummary do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :file_cluster_type, 1,
    type: Google.Privacy.Dlp.V2.FileClusterType,
    json_name: "fileClusterType"

  field :file_store_info_type_summaries, 2,
    repeated: true,
    type: Google.Privacy.Dlp.V2.FileStoreInfoTypeSummary,
    json_name: "fileStoreInfoTypeSummaries"

  field :sensitivity_score, 3,
    type: Google.Privacy.Dlp.V2.SensitivityScore,
    json_name: "sensitivityScore"

  field :data_risk_level, 4, type: Google.Privacy.Dlp.V2.DataRiskLevel, json_name: "dataRiskLevel"
  field :errors, 6, repeated: true, type: Google.Privacy.Dlp.V2.Error

  field :file_extensions_scanned, 7,
    repeated: true,
    type: Google.Privacy.Dlp.V2.FileExtensionInfo,
    json_name: "fileExtensionsScanned"

  field :file_extensions_seen, 8,
    repeated: true,
    type: Google.Privacy.Dlp.V2.FileExtensionInfo,
    json_name: "fileExtensionsSeen"

  field :no_files_exist, 9, type: :bool, json_name: "noFilesExist"
end

defmodule Google.Privacy.Dlp.V2.GetProjectDataProfileRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Privacy.Dlp.V2.GetFileStoreDataProfileRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Privacy.Dlp.V2.ListFileStoreDataProfilesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_token, 2, type: :string, json_name: "pageToken", deprecated: false
  field :page_size, 3, type: :int32, json_name: "pageSize", deprecated: false
  field :order_by, 4, type: :string, json_name: "orderBy", deprecated: false
  field :filter, 5, type: :string, deprecated: false
end

defmodule Google.Privacy.Dlp.V2.ListFileStoreDataProfilesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :file_store_data_profiles, 1,
    repeated: true,
    type: Google.Privacy.Dlp.V2.FileStoreDataProfile,
    json_name: "fileStoreDataProfiles"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Privacy.Dlp.V2.DeleteFileStoreDataProfileRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Privacy.Dlp.V2.GetTableDataProfileRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Privacy.Dlp.V2.GetColumnDataProfileRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Privacy.Dlp.V2.DataProfilePubSubCondition.PubSubCondition do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :value, 0

  field :minimum_risk_score, 1,
    type: Google.Privacy.Dlp.V2.DataProfilePubSubCondition.ProfileScoreBucket,
    json_name: "minimumRiskScore",
    enum: true,
    oneof: 0

  field :minimum_sensitivity_score, 2,
    type: Google.Privacy.Dlp.V2.DataProfilePubSubCondition.ProfileScoreBucket,
    json_name: "minimumSensitivityScore",
    enum: true,
    oneof: 0
end

defmodule Google.Privacy.Dlp.V2.DataProfilePubSubCondition.PubSubExpressions do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :logical_operator, 1,
    type:
      Google.Privacy.Dlp.V2.DataProfilePubSubCondition.PubSubExpressions.PubSubLogicalOperator,
    json_name: "logicalOperator",
    enum: true

  field :conditions, 2,
    repeated: true,
    type: Google.Privacy.Dlp.V2.DataProfilePubSubCondition.PubSubCondition
end

defmodule Google.Privacy.Dlp.V2.DataProfilePubSubCondition do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :expressions, 1, type: Google.Privacy.Dlp.V2.DataProfilePubSubCondition.PubSubExpressions
end

defmodule Google.Privacy.Dlp.V2.DataProfilePubSubMessage do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :profile, 1, type: Google.Privacy.Dlp.V2.TableDataProfile

  field :file_store_profile, 3,
    type: Google.Privacy.Dlp.V2.FileStoreDataProfile,
    json_name: "fileStoreProfile"

  field :event, 2, type: Google.Privacy.Dlp.V2.DataProfileAction.EventType, enum: true
end

defmodule Google.Privacy.Dlp.V2.CreateConnectionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :connection, 2, type: Google.Privacy.Dlp.V2.Connection, deprecated: false
end

defmodule Google.Privacy.Dlp.V2.GetConnectionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Privacy.Dlp.V2.ListConnectionsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
end

defmodule Google.Privacy.Dlp.V2.SearchConnectionsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
end

defmodule Google.Privacy.Dlp.V2.ListConnectionsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :connections, 1, repeated: true, type: Google.Privacy.Dlp.V2.Connection
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Privacy.Dlp.V2.SearchConnectionsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :connections, 1, repeated: true, type: Google.Privacy.Dlp.V2.Connection
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Privacy.Dlp.V2.UpdateConnectionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :connection, 2, type: Google.Privacy.Dlp.V2.Connection, deprecated: false

  field :update_mask, 3,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Privacy.Dlp.V2.DeleteConnectionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Privacy.Dlp.V2.Connection do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :properties, 0

  field :name, 1, type: :string, deprecated: false
  field :state, 2, type: Google.Privacy.Dlp.V2.ConnectionState, enum: true, deprecated: false
  field :errors, 3, repeated: true, type: Google.Privacy.Dlp.V2.Error, deprecated: false

  field :cloud_sql, 4,
    type: Google.Privacy.Dlp.V2.CloudSqlProperties,
    json_name: "cloudSql",
    oneof: 0
end

defmodule Google.Privacy.Dlp.V2.SecretManagerCredential do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :username, 1, type: :string, deprecated: false

  field :password_secret_version_name, 2,
    type: :string,
    json_name: "passwordSecretVersionName",
    deprecated: false
end

defmodule Google.Privacy.Dlp.V2.CloudSqlIamCredential do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Privacy.Dlp.V2.CloudSqlProperties do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :credential, 0

  field :connection_name, 1, type: :string, json_name: "connectionName", deprecated: false

  field :username_password, 2,
    type: Google.Privacy.Dlp.V2.SecretManagerCredential,
    json_name: "usernamePassword",
    oneof: 0

  field :cloud_sql_iam, 3,
    type: Google.Privacy.Dlp.V2.CloudSqlIamCredential,
    json_name: "cloudSqlIam",
    oneof: 0

  field :max_connections, 4, type: :int32, json_name: "maxConnections", deprecated: false

  field :database_engine, 7,
    type: Google.Privacy.Dlp.V2.CloudSqlProperties.DatabaseEngine,
    json_name: "databaseEngine",
    enum: true,
    deprecated: false
end

defmodule Google.Privacy.Dlp.V2.DeleteTableDataProfileRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Privacy.Dlp.V2.DataSourceType do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :data_source, 1, type: :string, json_name: "dataSource", deprecated: false
end

defmodule Google.Privacy.Dlp.V2.FileClusterType do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :file_cluster_type, 0

  field :cluster, 1, type: Google.Privacy.Dlp.V2.FileClusterType.Cluster, enum: true, oneof: 0
end

defmodule Google.Privacy.Dlp.V2.ProcessingLocation.MultiRegionProcessing do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Privacy.Dlp.V2.ProcessingLocation.GlobalProcessing do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Privacy.Dlp.V2.ProcessingLocation.ImageFallbackLocation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :multi_region_processing, 100,
    type: Google.Privacy.Dlp.V2.ProcessingLocation.MultiRegionProcessing,
    json_name: "multiRegionProcessing"

  field :global_processing, 200,
    type: Google.Privacy.Dlp.V2.ProcessingLocation.GlobalProcessing,
    json_name: "globalProcessing"
end

defmodule Google.Privacy.Dlp.V2.ProcessingLocation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :image_fallback_location, 1,
    type: Google.Privacy.Dlp.V2.ProcessingLocation.ImageFallbackLocation,
    json_name: "imageFallbackLocation"
end

defmodule Google.Privacy.Dlp.V2.SaveToGcsFindingsOutput do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :findings, 1, repeated: true, type: Google.Privacy.Dlp.V2.Finding
end

defmodule Google.Privacy.Dlp.V2.DlpService.Service do
  @moduledoc false

  use GRPC.Service, name: "google.privacy.dlp.v2.DlpService", protoc_gen_elixir_version: "0.15.0"

  rpc :InspectContent,
      Google.Privacy.Dlp.V2.InspectContentRequest,
      Google.Privacy.Dlp.V2.InspectContentResponse

  rpc :RedactImage,
      Google.Privacy.Dlp.V2.RedactImageRequest,
      Google.Privacy.Dlp.V2.RedactImageResponse

  rpc :DeidentifyContent,
      Google.Privacy.Dlp.V2.DeidentifyContentRequest,
      Google.Privacy.Dlp.V2.DeidentifyContentResponse

  rpc :ReidentifyContent,
      Google.Privacy.Dlp.V2.ReidentifyContentRequest,
      Google.Privacy.Dlp.V2.ReidentifyContentResponse

  rpc :ListInfoTypes,
      Google.Privacy.Dlp.V2.ListInfoTypesRequest,
      Google.Privacy.Dlp.V2.ListInfoTypesResponse

  rpc :CreateInspectTemplate,
      Google.Privacy.Dlp.V2.CreateInspectTemplateRequest,
      Google.Privacy.Dlp.V2.InspectTemplate

  rpc :UpdateInspectTemplate,
      Google.Privacy.Dlp.V2.UpdateInspectTemplateRequest,
      Google.Privacy.Dlp.V2.InspectTemplate

  rpc :GetInspectTemplate,
      Google.Privacy.Dlp.V2.GetInspectTemplateRequest,
      Google.Privacy.Dlp.V2.InspectTemplate

  rpc :ListInspectTemplates,
      Google.Privacy.Dlp.V2.ListInspectTemplatesRequest,
      Google.Privacy.Dlp.V2.ListInspectTemplatesResponse

  rpc :DeleteInspectTemplate,
      Google.Privacy.Dlp.V2.DeleteInspectTemplateRequest,
      Google.Protobuf.Empty

  rpc :CreateDeidentifyTemplate,
      Google.Privacy.Dlp.V2.CreateDeidentifyTemplateRequest,
      Google.Privacy.Dlp.V2.DeidentifyTemplate

  rpc :UpdateDeidentifyTemplate,
      Google.Privacy.Dlp.V2.UpdateDeidentifyTemplateRequest,
      Google.Privacy.Dlp.V2.DeidentifyTemplate

  rpc :GetDeidentifyTemplate,
      Google.Privacy.Dlp.V2.GetDeidentifyTemplateRequest,
      Google.Privacy.Dlp.V2.DeidentifyTemplate

  rpc :ListDeidentifyTemplates,
      Google.Privacy.Dlp.V2.ListDeidentifyTemplatesRequest,
      Google.Privacy.Dlp.V2.ListDeidentifyTemplatesResponse

  rpc :DeleteDeidentifyTemplate,
      Google.Privacy.Dlp.V2.DeleteDeidentifyTemplateRequest,
      Google.Protobuf.Empty

  rpc :CreateJobTrigger,
      Google.Privacy.Dlp.V2.CreateJobTriggerRequest,
      Google.Privacy.Dlp.V2.JobTrigger

  rpc :UpdateJobTrigger,
      Google.Privacy.Dlp.V2.UpdateJobTriggerRequest,
      Google.Privacy.Dlp.V2.JobTrigger

  rpc :HybridInspectJobTrigger,
      Google.Privacy.Dlp.V2.HybridInspectJobTriggerRequest,
      Google.Privacy.Dlp.V2.HybridInspectResponse

  rpc :GetJobTrigger, Google.Privacy.Dlp.V2.GetJobTriggerRequest, Google.Privacy.Dlp.V2.JobTrigger

  rpc :ListJobTriggers,
      Google.Privacy.Dlp.V2.ListJobTriggersRequest,
      Google.Privacy.Dlp.V2.ListJobTriggersResponse

  rpc :DeleteJobTrigger, Google.Privacy.Dlp.V2.DeleteJobTriggerRequest, Google.Protobuf.Empty

  rpc :ActivateJobTrigger,
      Google.Privacy.Dlp.V2.ActivateJobTriggerRequest,
      Google.Privacy.Dlp.V2.DlpJob

  rpc :CreateDiscoveryConfig,
      Google.Privacy.Dlp.V2.CreateDiscoveryConfigRequest,
      Google.Privacy.Dlp.V2.DiscoveryConfig

  rpc :UpdateDiscoveryConfig,
      Google.Privacy.Dlp.V2.UpdateDiscoveryConfigRequest,
      Google.Privacy.Dlp.V2.DiscoveryConfig

  rpc :GetDiscoveryConfig,
      Google.Privacy.Dlp.V2.GetDiscoveryConfigRequest,
      Google.Privacy.Dlp.V2.DiscoveryConfig

  rpc :ListDiscoveryConfigs,
      Google.Privacy.Dlp.V2.ListDiscoveryConfigsRequest,
      Google.Privacy.Dlp.V2.ListDiscoveryConfigsResponse

  rpc :DeleteDiscoveryConfig,
      Google.Privacy.Dlp.V2.DeleteDiscoveryConfigRequest,
      Google.Protobuf.Empty

  rpc :CreateDlpJob, Google.Privacy.Dlp.V2.CreateDlpJobRequest, Google.Privacy.Dlp.V2.DlpJob

  rpc :ListDlpJobs,
      Google.Privacy.Dlp.V2.ListDlpJobsRequest,
      Google.Privacy.Dlp.V2.ListDlpJobsResponse

  rpc :GetDlpJob, Google.Privacy.Dlp.V2.GetDlpJobRequest, Google.Privacy.Dlp.V2.DlpJob

  rpc :DeleteDlpJob, Google.Privacy.Dlp.V2.DeleteDlpJobRequest, Google.Protobuf.Empty

  rpc :CancelDlpJob, Google.Privacy.Dlp.V2.CancelDlpJobRequest, Google.Protobuf.Empty

  rpc :CreateStoredInfoType,
      Google.Privacy.Dlp.V2.CreateStoredInfoTypeRequest,
      Google.Privacy.Dlp.V2.StoredInfoType

  rpc :UpdateStoredInfoType,
      Google.Privacy.Dlp.V2.UpdateStoredInfoTypeRequest,
      Google.Privacy.Dlp.V2.StoredInfoType

  rpc :GetStoredInfoType,
      Google.Privacy.Dlp.V2.GetStoredInfoTypeRequest,
      Google.Privacy.Dlp.V2.StoredInfoType

  rpc :ListStoredInfoTypes,
      Google.Privacy.Dlp.V2.ListStoredInfoTypesRequest,
      Google.Privacy.Dlp.V2.ListStoredInfoTypesResponse

  rpc :DeleteStoredInfoType,
      Google.Privacy.Dlp.V2.DeleteStoredInfoTypeRequest,
      Google.Protobuf.Empty

  rpc :ListProjectDataProfiles,
      Google.Privacy.Dlp.V2.ListProjectDataProfilesRequest,
      Google.Privacy.Dlp.V2.ListProjectDataProfilesResponse

  rpc :ListTableDataProfiles,
      Google.Privacy.Dlp.V2.ListTableDataProfilesRequest,
      Google.Privacy.Dlp.V2.ListTableDataProfilesResponse

  rpc :ListColumnDataProfiles,
      Google.Privacy.Dlp.V2.ListColumnDataProfilesRequest,
      Google.Privacy.Dlp.V2.ListColumnDataProfilesResponse

  rpc :GetProjectDataProfile,
      Google.Privacy.Dlp.V2.GetProjectDataProfileRequest,
      Google.Privacy.Dlp.V2.ProjectDataProfile

  rpc :ListFileStoreDataProfiles,
      Google.Privacy.Dlp.V2.ListFileStoreDataProfilesRequest,
      Google.Privacy.Dlp.V2.ListFileStoreDataProfilesResponse

  rpc :GetFileStoreDataProfile,
      Google.Privacy.Dlp.V2.GetFileStoreDataProfileRequest,
      Google.Privacy.Dlp.V2.FileStoreDataProfile

  rpc :DeleteFileStoreDataProfile,
      Google.Privacy.Dlp.V2.DeleteFileStoreDataProfileRequest,
      Google.Protobuf.Empty

  rpc :GetTableDataProfile,
      Google.Privacy.Dlp.V2.GetTableDataProfileRequest,
      Google.Privacy.Dlp.V2.TableDataProfile

  rpc :GetColumnDataProfile,
      Google.Privacy.Dlp.V2.GetColumnDataProfileRequest,
      Google.Privacy.Dlp.V2.ColumnDataProfile

  rpc :DeleteTableDataProfile,
      Google.Privacy.Dlp.V2.DeleteTableDataProfileRequest,
      Google.Protobuf.Empty

  rpc :HybridInspectDlpJob,
      Google.Privacy.Dlp.V2.HybridInspectDlpJobRequest,
      Google.Privacy.Dlp.V2.HybridInspectResponse

  rpc :FinishDlpJob, Google.Privacy.Dlp.V2.FinishDlpJobRequest, Google.Protobuf.Empty

  rpc :CreateConnection,
      Google.Privacy.Dlp.V2.CreateConnectionRequest,
      Google.Privacy.Dlp.V2.Connection

  rpc :GetConnection, Google.Privacy.Dlp.V2.GetConnectionRequest, Google.Privacy.Dlp.V2.Connection

  rpc :ListConnections,
      Google.Privacy.Dlp.V2.ListConnectionsRequest,
      Google.Privacy.Dlp.V2.ListConnectionsResponse

  rpc :SearchConnections,
      Google.Privacy.Dlp.V2.SearchConnectionsRequest,
      Google.Privacy.Dlp.V2.SearchConnectionsResponse

  rpc :DeleteConnection, Google.Privacy.Dlp.V2.DeleteConnectionRequest, Google.Protobuf.Empty

  rpc :UpdateConnection,
      Google.Privacy.Dlp.V2.UpdateConnectionRequest,
      Google.Privacy.Dlp.V2.Connection
end

defmodule Google.Privacy.Dlp.V2.DlpService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Privacy.Dlp.V2.DlpService.Service
end
