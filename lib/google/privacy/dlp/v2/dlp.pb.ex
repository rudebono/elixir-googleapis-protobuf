defmodule Google.Privacy.Dlp.V2.TransformationResultStatusType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :STATE_TYPE_UNSPECIFIED, 0
  field :INVALID_TRANSFORM, 1
  field :BIGQUERY_MAX_ROW_SIZE_EXCEEDED, 2
  field :METADATA_UNRETRIEVABLE, 3
  field :SUCCESS, 4
end

defmodule Google.Privacy.Dlp.V2.TransformationContainerType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :TRANSFORM_UNKNOWN_CONTAINER, 0
  field :TRANSFORM_BODY, 1
  field :TRANSFORM_METADATA, 2
  field :TRANSFORM_TABLE, 3
end

defmodule Google.Privacy.Dlp.V2.TransformationType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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

defmodule Google.Privacy.Dlp.V2.RelationalOperator do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :MATCHING_TYPE_UNSPECIFIED, 0
  field :MATCHING_TYPE_FULL_MATCH, 1
  field :MATCHING_TYPE_PARTIAL_MATCH, 2
  field :MATCHING_TYPE_INVERSE_MATCH, 3
end

defmodule Google.Privacy.Dlp.V2.ContentOption do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :CONTENT_UNSPECIFIED, 0
  field :CONTENT_TEXT, 1
  field :CONTENT_IMAGE, 2
end

defmodule Google.Privacy.Dlp.V2.MetadataType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :METADATATYPE_UNSPECIFIED, 0
  field :STORAGE_METADATA, 2
end

defmodule Google.Privacy.Dlp.V2.InfoTypeSupportedBy do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :ENUM_TYPE_UNSPECIFIED, 0
  field :INSPECT, 1
  field :RISK_ANALYSIS, 2
end

defmodule Google.Privacy.Dlp.V2.DlpJobType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :DLP_JOB_TYPE_UNSPECIFIED, 0
  field :INSPECT_JOB, 1
  field :RISK_ANALYSIS_JOB, 2
end

defmodule Google.Privacy.Dlp.V2.StoredInfoTypeState do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :STORED_INFO_TYPE_STATE_UNSPECIFIED, 0
  field :PENDING, 1
  field :READY, 2
  field :FAILED, 3
  field :INVALID, 4
end

defmodule Google.Privacy.Dlp.V2.ResourceVisibility do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :RESOURCE_VISIBILITY_UNSPECIFIED, 0
  field :RESOURCE_VISIBILITY_PUBLIC, 10
  field :RESOURCE_VISIBILITY_RESTRICTED, 20
end

defmodule Google.Privacy.Dlp.V2.EncryptionStatus do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :ENCRYPTION_STATUS_UNSPECIFIED, 0
  field :ENCRYPTION_GOOGLE_MANAGED, 1
  field :ENCRYPTION_CUSTOMER_MANAGED, 2
end

defmodule Google.Privacy.Dlp.V2.ByteContentItem.BytesType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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
end

defmodule Google.Privacy.Dlp.V2.OutputStorageConfig.OutputSchema do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :OUTPUT_SCHEMA_UNSPECIFIED, 0
  field :BASIC_COLUMNS, 1
  field :GCS_COLUMNS, 2
  field :DATASTORE_COLUMNS, 3
  field :BIG_QUERY_COLUMNS, 4
  field :ALL_COLUMNS, 5
end

defmodule Google.Privacy.Dlp.V2.InfoTypeCategory.LocationCategory do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :LOCATION_UNSPECIFIED, 0
  field :GLOBAL, 1
  field :ARGENTINA, 2
  field :AUSTRALIA, 3
  field :BELGIUM, 4
  field :BRAZIL, 5
  field :CANADA, 6
  field :CHILE, 7
  field :CHINA, 8
  field :COLOMBIA, 9
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
  field :KOREA, 21
  field :MEXICO, 22
  field :THE_NETHERLANDS, 23
  field :NORWAY, 24
  field :PARAGUAY, 25
  field :PERU, 26
  field :POLAND, 27
  field :PORTUGAL, 28
  field :SINGAPORE, 29
  field :SOUTH_AFRICA, 30
  field :SPAIN, 31
  field :SWEDEN, 32
  field :TAIWAN, 33
  field :THAILAND, 34
  field :TURKEY, 35
  field :UNITED_KINGDOM, 36
  field :UNITED_STATES, 37
  field :URUGUAY, 38
  field :VENEZUELA, 39
  field :INTERNAL, 40
  field :NEW_ZEALAND, 41
end

defmodule Google.Privacy.Dlp.V2.InfoTypeCategory.IndustryCategory do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :INDUSTRY_UNSPECIFIED, 0
  field :FINANCE, 1
  field :HEALTH, 2
  field :TELECOMMUNICATIONS, 3
end

defmodule Google.Privacy.Dlp.V2.InfoTypeCategory.TypeCategory do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :TYPE_UNSPECIFIED, 0
  field :PII, 1
  field :SPII, 2
  field :DEMOGRAPHIC, 3
  field :CREDENTIAL, 4
  field :GOVERNMENT_ID, 5
  field :DOCUMENT, 6
  field :CONTEXTUAL_INFORMATION, 7
end

defmodule Google.Privacy.Dlp.V2.TimePartConfig.TimePart do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :COMMON_CHARS_TO_IGNORE_UNSPECIFIED, 0
  field :NUMERIC, 1
  field :ALPHA_UPPER_CASE, 2
  field :ALPHA_LOWER_CASE, 3
  field :PUNCTUATION, 4
  field :WHITESPACE, 5
end

defmodule Google.Privacy.Dlp.V2.CryptoReplaceFfxFpeConfig.FfxCommonNativeAlphabet do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :FFX_COMMON_NATIVE_ALPHABET_UNSPECIFIED, 0
  field :NUMERIC, 1
  field :HEXADECIMAL, 2
  field :UPPER_CASE_ALPHA_NUMERIC, 3
  field :ALPHA_NUMERIC, 4
end

defmodule Google.Privacy.Dlp.V2.RecordCondition.Expressions.LogicalOperator do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :LOGICAL_OPERATOR_UNSPECIFIED, 0
  field :AND, 1
end

defmodule Google.Privacy.Dlp.V2.TransformationSummary.TransformationResultCode do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :TRANSFORMATION_RESULT_CODE_UNSPECIFIED, 0
  field :SUCCESS, 1
  field :ERROR, 2
end

defmodule Google.Privacy.Dlp.V2.JobTrigger.Status do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :STATUS_UNSPECIFIED, 0
  field :HEALTHY, 1
  field :PAUSED, 2
  field :CANCELLED, 3
end

defmodule Google.Privacy.Dlp.V2.DataProfileAction.EventType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :EVENT_TYPE_UNSPECIFIED, 0
  field :NEW_PROFILE, 1
  field :CHANGED_PROFILE, 2
  field :SCORE_INCREASED, 3
  field :ERROR_CHANGED, 4
end

defmodule Google.Privacy.Dlp.V2.DataProfileAction.PubSubNotification.DetailLevel do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :DETAIL_LEVEL_UNSPECIFIED, 0
  field :TABLE_PROFILE, 1
  field :RESOURCE_NAME, 2
end

defmodule Google.Privacy.Dlp.V2.DlpJob.JobState do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :RISK_SCORE_UNSPECIFIED, 0
  field :RISK_LOW, 10
  field :RISK_MODERATE, 20
  field :RISK_HIGH, 30
end

defmodule Google.Privacy.Dlp.V2.TableDataProfile.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :RUNNING, 1
  field :DONE, 2
end

defmodule Google.Privacy.Dlp.V2.DataProfilePubSubCondition.ProfileScoreBucket do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :PROFILE_SCORE_BUCKET_UNSPECIFIED, 0
  field :HIGH, 1
  field :MEDIUM_OR_HIGH, 2
end

defmodule Google.Privacy.Dlp.V2.DataProfilePubSubCondition.PubSubExpressions.PubSubLogicalOperator do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :LOGICAL_OPERATOR_UNSPECIFIED, 0
  field :OR, 1
  field :AND, 2
end

defmodule Google.Privacy.Dlp.V2.ExcludeInfoTypes do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :info_types, 1,
    repeated: true,
    type: Google.Privacy.Dlp.V2.InfoType,
    json_name: "infoTypes"
end

defmodule Google.Privacy.Dlp.V2.ExcludeByHotword do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :hotword_regex, 1,
    type: Google.Privacy.Dlp.V2.CustomInfoType.Regex,
    json_name: "hotwordRegex"

  field :proximity, 2, type: Google.Privacy.Dlp.V2.CustomInfoType.DetectionRule.Proximity
end

defmodule Google.Privacy.Dlp.V2.ExclusionRule do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :info_types, 1,
    repeated: true,
    type: Google.Privacy.Dlp.V2.InfoType,
    json_name: "infoTypes"

  field :rules, 2, repeated: true, type: Google.Privacy.Dlp.V2.InspectionRule
end

defmodule Google.Privacy.Dlp.V2.InspectConfig.FindingLimits.InfoTypeLimit do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :info_type, 1, type: Google.Privacy.Dlp.V2.InfoType, json_name: "infoType"
  field :max_findings, 2, type: :int32, json_name: "maxFindings"
end

defmodule Google.Privacy.Dlp.V2.InspectConfig.FindingLimits do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :max_findings_per_item, 1, type: :int32, json_name: "maxFindingsPerItem"
  field :max_findings_per_request, 2, type: :int32, json_name: "maxFindingsPerRequest"

  field :max_findings_per_info_type, 3,
    repeated: true,
    type: Google.Privacy.Dlp.V2.InspectConfig.FindingLimits.InfoTypeLimit,
    json_name: "maxFindingsPerInfoType"
end

defmodule Google.Privacy.Dlp.V2.InspectConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :info_types, 1,
    repeated: true,
    type: Google.Privacy.Dlp.V2.InfoType,
    json_name: "infoTypes"

  field :min_likelihood, 2,
    type: Google.Privacy.Dlp.V2.Likelihood,
    json_name: "minLikelihood",
    enum: true

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

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :type, 1, type: Google.Privacy.Dlp.V2.ByteContentItem.BytesType, enum: true
  field :data, 2, type: :bytes
end

defmodule Google.Privacy.Dlp.V2.ContentItem do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :values, 1, repeated: true, type: Google.Privacy.Dlp.V2.Value
end

defmodule Google.Privacy.Dlp.V2.Table do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :headers, 1, repeated: true, type: Google.Privacy.Dlp.V2.FieldId
  field :rows, 2, repeated: true, type: Google.Privacy.Dlp.V2.Table.Row
end

defmodule Google.Privacy.Dlp.V2.InspectResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :findings, 1, repeated: true, type: Google.Privacy.Dlp.V2.Finding
  field :findings_truncated, 2, type: :bool, json_name: "findingsTruncated"
end

defmodule Google.Privacy.Dlp.V2.Finding.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Privacy.Dlp.V2.Finding do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :label, 0

  field :type, 1, type: Google.Privacy.Dlp.V2.MetadataType, enum: true

  field :storage_label, 3,
    type: Google.Privacy.Dlp.V2.StorageMetadataLabel,
    json_name: "storageLabel",
    oneof: 0
end

defmodule Google.Privacy.Dlp.V2.StorageMetadataLabel do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
end

defmodule Google.Privacy.Dlp.V2.DocumentLocation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :file_offset, 1, type: :int64, json_name: "fileOffset"
end

defmodule Google.Privacy.Dlp.V2.RecordLocation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :record_key, 1, type: Google.Privacy.Dlp.V2.RecordKey, json_name: "recordKey"
  field :field_id, 2, type: Google.Privacy.Dlp.V2.FieldId, json_name: "fieldId"
  field :table_location, 3, type: Google.Privacy.Dlp.V2.TableLocation, json_name: "tableLocation"
end

defmodule Google.Privacy.Dlp.V2.TableLocation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :row_index, 1, type: :int64, json_name: "rowIndex"
end

defmodule Google.Privacy.Dlp.V2.Container do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :start, 1, type: :int64
  field :end, 2, type: :int64
end

defmodule Google.Privacy.Dlp.V2.ImageLocation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :bounding_boxes, 1,
    repeated: true,
    type: Google.Privacy.Dlp.V2.BoundingBox,
    json_name: "boundingBoxes"
end

defmodule Google.Privacy.Dlp.V2.BoundingBox do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :top, 1, type: :int32
  field :left, 2, type: :int32
  field :width, 3, type: :int32
  field :height, 4, type: :int32
end

defmodule Google.Privacy.Dlp.V2.RedactImageRequest.ImageRedactionConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :target, 0

  field :info_type, 1, type: Google.Privacy.Dlp.V2.InfoType, json_name: "infoType", oneof: 0
  field :redact_all_text, 2, type: :bool, json_name: "redactAllText", oneof: 0
  field :redaction_color, 3, type: Google.Privacy.Dlp.V2.Color, json_name: "redactionColor"
end

defmodule Google.Privacy.Dlp.V2.RedactImageRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :red, 1, type: :float
  field :green, 2, type: :float
  field :blue, 3, type: :float
end

defmodule Google.Privacy.Dlp.V2.RedactImageResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :redacted_image, 1, type: :bytes, json_name: "redactedImage"
  field :extracted_text, 2, type: :string, json_name: "extractedText"
  field :inspect_result, 3, type: Google.Privacy.Dlp.V2.InspectResult, json_name: "inspectResult"
end

defmodule Google.Privacy.Dlp.V2.DeidentifyContentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :item, 1, type: Google.Privacy.Dlp.V2.ContentItem
  field :overview, 2, type: Google.Privacy.Dlp.V2.TransformationOverview
end

defmodule Google.Privacy.Dlp.V2.ReidentifyContentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :item, 1, type: Google.Privacy.Dlp.V2.ContentItem
  field :overview, 2, type: Google.Privacy.Dlp.V2.TransformationOverview
end

defmodule Google.Privacy.Dlp.V2.InspectContentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :inspect_config, 2, type: Google.Privacy.Dlp.V2.InspectConfig, json_name: "inspectConfig"
  field :item, 3, type: Google.Privacy.Dlp.V2.ContentItem
  field :inspect_template_name, 4, type: :string, json_name: "inspectTemplateName"
  field :location_id, 5, type: :string, json_name: "locationId"
end

defmodule Google.Privacy.Dlp.V2.InspectContentResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :result, 1, type: Google.Privacy.Dlp.V2.InspectResult
end

defmodule Google.Privacy.Dlp.V2.OutputStorageConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :type, 0

  field :table, 1, type: Google.Privacy.Dlp.V2.BigQueryTable, oneof: 0

  field :output_schema, 3,
    type: Google.Privacy.Dlp.V2.OutputStorageConfig.OutputSchema,
    json_name: "outputSchema",
    enum: true
end

defmodule Google.Privacy.Dlp.V2.InfoTypeStats do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :info_type, 1, type: Google.Privacy.Dlp.V2.InfoType, json_name: "infoType"
  field :count, 2, type: :int64
end

defmodule Google.Privacy.Dlp.V2.InspectDataSourceDetails.RequestedOptions do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :snapshot_inspect_template, 1,
    type: Google.Privacy.Dlp.V2.InspectTemplate,
    json_name: "snapshotInspectTemplate"

  field :job_config, 3, type: Google.Privacy.Dlp.V2.InspectJobConfig, json_name: "jobConfig"
end

defmodule Google.Privacy.Dlp.V2.InspectDataSourceDetails.Result do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :processed_bytes, 1, type: :int64, json_name: "processedBytes"
  field :total_estimated_bytes, 2, type: :int64, json_name: "totalEstimatedBytes"

  field :info_type_stats, 3,
    repeated: true,
    type: Google.Privacy.Dlp.V2.InfoTypeStats,
    json_name: "infoTypeStats"

  field :hybrid_stats, 7,
    type: Google.Privacy.Dlp.V2.HybridInspectStatistics,
    json_name: "hybridStats"
end

defmodule Google.Privacy.Dlp.V2.InspectDataSourceDetails do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :requested_options, 2,
    type: Google.Privacy.Dlp.V2.InspectDataSourceDetails.RequestedOptions,
    json_name: "requestedOptions"

  field :result, 3, type: Google.Privacy.Dlp.V2.InspectDataSourceDetails.Result
end

defmodule Google.Privacy.Dlp.V2.HybridInspectStatistics do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :processed_count, 1, type: :int64, json_name: "processedCount"
  field :aborted_count, 2, type: :int64, json_name: "abortedCount"
  field :pending_count, 3, type: :int64, json_name: "pendingCount"
end

defmodule Google.Privacy.Dlp.V2.InfoTypeDescription do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string
  field :display_name, 2, type: :string, json_name: "displayName"

  field :supported_by, 3,
    repeated: true,
    type: Google.Privacy.Dlp.V2.InfoTypeSupportedBy,
    json_name: "supportedBy",
    enum: true

  field :description, 4, type: :string
  field :versions, 9, repeated: true, type: Google.Privacy.Dlp.V2.VersionDescription
  field :categories, 10, repeated: true, type: Google.Privacy.Dlp.V2.InfoTypeCategory
end

defmodule Google.Privacy.Dlp.V2.InfoTypeCategory do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :version, 1, type: :string
  field :description, 2, type: :string
end

defmodule Google.Privacy.Dlp.V2.ListInfoTypesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 4, type: :string
  field :language_code, 1, type: :string, json_name: "languageCode"
  field :filter, 2, type: :string
  field :location_id, 3, type: :string, json_name: "locationId"
end

defmodule Google.Privacy.Dlp.V2.ListInfoTypesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :info_types, 1,
    repeated: true,
    type: Google.Privacy.Dlp.V2.InfoTypeDescription,
    json_name: "infoTypes"
end

defmodule Google.Privacy.Dlp.V2.RiskAnalysisJobConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :privacy_metric, 1, type: Google.Privacy.Dlp.V2.PrivacyMetric, json_name: "privacyMetric"
  field :source_table, 2, type: Google.Privacy.Dlp.V2.BigQueryTable, json_name: "sourceTable"
  field :actions, 3, repeated: true, type: Google.Privacy.Dlp.V2.Action
end

defmodule Google.Privacy.Dlp.V2.QuasiId do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :tag, 0

  field :field, 1, type: Google.Privacy.Dlp.V2.FieldId, deprecated: false
  field :info_type, 2, type: Google.Privacy.Dlp.V2.InfoType, json_name: "infoType", oneof: 0
  field :custom_tag, 3, type: :string, json_name: "customTag", oneof: 0
  field :inferred, 4, type: Google.Protobuf.Empty, oneof: 0
end

defmodule Google.Privacy.Dlp.V2.StatisticalTable.QuasiIdentifierField do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :field, 1, type: Google.Privacy.Dlp.V2.FieldId
  field :custom_tag, 2, type: :string, json_name: "customTag"
end

defmodule Google.Privacy.Dlp.V2.StatisticalTable do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :field, 1, type: Google.Privacy.Dlp.V2.FieldId
end

defmodule Google.Privacy.Dlp.V2.PrivacyMetric.CategoricalStatsConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :field, 1, type: Google.Privacy.Dlp.V2.FieldId
end

defmodule Google.Privacy.Dlp.V2.PrivacyMetric.KAnonymityConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :quasi_ids, 1, repeated: true, type: Google.Privacy.Dlp.V2.FieldId, json_name: "quasiIds"
  field :entity_id, 2, type: Google.Privacy.Dlp.V2.EntityId, json_name: "entityId"
end

defmodule Google.Privacy.Dlp.V2.PrivacyMetric.LDiversityConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :quasi_ids, 1, repeated: true, type: Google.Privacy.Dlp.V2.FieldId, json_name: "quasiIds"

  field :sensitive_attribute, 2,
    type: Google.Privacy.Dlp.V2.FieldId,
    json_name: "sensitiveAttribute"
end

defmodule Google.Privacy.Dlp.V2.PrivacyMetric.KMapEstimationConfig.TaggedField do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :tag, 0

  field :field, 1, type: Google.Privacy.Dlp.V2.FieldId, deprecated: false
  field :info_type, 2, type: Google.Privacy.Dlp.V2.InfoType, json_name: "infoType", oneof: 0
  field :custom_tag, 3, type: :string, json_name: "customTag", oneof: 0
  field :inferred, 4, type: Google.Protobuf.Empty, oneof: 0
end

defmodule Google.Privacy.Dlp.V2.PrivacyMetric.KMapEstimationConfig.AuxiliaryTable.QuasiIdField do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :field, 1, type: Google.Privacy.Dlp.V2.FieldId
  field :custom_tag, 2, type: :string, json_name: "customTag"
end

defmodule Google.Privacy.Dlp.V2.PrivacyMetric.KMapEstimationConfig.AuxiliaryTable do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :min_value, 1, type: Google.Privacy.Dlp.V2.Value, json_name: "minValue"
  field :max_value, 2, type: Google.Privacy.Dlp.V2.Value, json_name: "maxValue"

  field :quantile_values, 4,
    repeated: true,
    type: Google.Privacy.Dlp.V2.Value,
    json_name: "quantileValues"
end

defmodule Google.Privacy.Dlp.V2.AnalyzeDataSourceRiskDetails.CategoricalStatsResult.CategoricalStatsHistogramBucket do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :value_frequency_histogram_buckets, 5,
    repeated: true,
    type:
      Google.Privacy.Dlp.V2.AnalyzeDataSourceRiskDetails.CategoricalStatsResult.CategoricalStatsHistogramBucket,
    json_name: "valueFrequencyHistogramBuckets"
end

defmodule Google.Privacy.Dlp.V2.AnalyzeDataSourceRiskDetails.KAnonymityResult.KAnonymityEquivalenceClass do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :quasi_ids_values, 1,
    repeated: true,
    type: Google.Privacy.Dlp.V2.Value,
    json_name: "quasiIdsValues"

  field :equivalence_class_size, 2, type: :int64, json_name: "equivalenceClassSize"
end

defmodule Google.Privacy.Dlp.V2.AnalyzeDataSourceRiskDetails.KAnonymityResult.KAnonymityHistogramBucket do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :equivalence_class_histogram_buckets, 5,
    repeated: true,
    type:
      Google.Privacy.Dlp.V2.AnalyzeDataSourceRiskDetails.KAnonymityResult.KAnonymityHistogramBucket,
    json_name: "equivalenceClassHistogramBuckets"
end

defmodule Google.Privacy.Dlp.V2.AnalyzeDataSourceRiskDetails.LDiversityResult.LDiversityEquivalenceClass do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :sensitive_value_frequency_histogram_buckets, 5,
    repeated: true,
    type:
      Google.Privacy.Dlp.V2.AnalyzeDataSourceRiskDetails.LDiversityResult.LDiversityHistogramBucket,
    json_name: "sensitiveValueFrequencyHistogramBuckets"
end

defmodule Google.Privacy.Dlp.V2.AnalyzeDataSourceRiskDetails.KMapEstimationResult.KMapEstimationQuasiIdValues do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :quasi_ids_values, 1,
    repeated: true,
    type: Google.Privacy.Dlp.V2.Value,
    json_name: "quasiIdsValues"

  field :estimated_anonymity, 2, type: :int64, json_name: "estimatedAnonymity"
end

defmodule Google.Privacy.Dlp.V2.AnalyzeDataSourceRiskDetails.KMapEstimationResult.KMapEstimationHistogramBucket do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :k_map_estimation_histogram, 1,
    repeated: true,
    type:
      Google.Privacy.Dlp.V2.AnalyzeDataSourceRiskDetails.KMapEstimationResult.KMapEstimationHistogramBucket,
    json_name: "kMapEstimationHistogram"
end

defmodule Google.Privacy.Dlp.V2.AnalyzeDataSourceRiskDetails.DeltaPresenceEstimationResult.DeltaPresenceEstimationQuasiIdValues do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :quasi_ids_values, 1,
    repeated: true,
    type: Google.Privacy.Dlp.V2.Value,
    json_name: "quasiIdsValues"

  field :estimated_probability, 2, type: :double, json_name: "estimatedProbability"
end

defmodule Google.Privacy.Dlp.V2.AnalyzeDataSourceRiskDetails.DeltaPresenceEstimationResult.DeltaPresenceEstimationHistogramBucket do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :delta_presence_estimation_histogram, 1,
    repeated: true,
    type:
      Google.Privacy.Dlp.V2.AnalyzeDataSourceRiskDetails.DeltaPresenceEstimationResult.DeltaPresenceEstimationHistogramBucket,
    json_name: "deltaPresenceEstimationHistogram"
end

defmodule Google.Privacy.Dlp.V2.AnalyzeDataSourceRiskDetails.RequestedRiskAnalysisOptions do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :job_config, 1, type: Google.Privacy.Dlp.V2.RiskAnalysisJobConfig, json_name: "jobConfig"
end

defmodule Google.Privacy.Dlp.V2.AnalyzeDataSourceRiskDetails do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :value, 1, type: Google.Privacy.Dlp.V2.Value
  field :count, 2, type: :int64
end

defmodule Google.Privacy.Dlp.V2.Value do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :parsed_quote, 0

  field :date_time, 2, type: Google.Privacy.Dlp.V2.DateTime, json_name: "dateTime", oneof: 0
end

defmodule Google.Privacy.Dlp.V2.DateTime.TimeZone do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :offset_minutes, 1, type: :int32, json_name: "offsetMinutes"
end

defmodule Google.Privacy.Dlp.V2.DateTime do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :date, 1, type: Google.Type.Date
  field :day_of_week, 2, type: Google.Type.DayOfWeek, json_name: "dayOfWeek", enum: true
  field :time, 3, type: Google.Type.TimeOfDay
  field :time_zone, 4, type: Google.Privacy.Dlp.V2.DateTime.TimeZone, json_name: "timeZone"
end

defmodule Google.Privacy.Dlp.V2.DeidentifyConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :info_types, 5,
    repeated: true,
    type: Google.Privacy.Dlp.V2.InfoType,
    json_name: "infoTypes",
    deprecated: false
end

defmodule Google.Privacy.Dlp.V2.ImageTransformations.ImageTransformation.AllInfoTypes do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3
end

defmodule Google.Privacy.Dlp.V2.ImageTransformations.ImageTransformation.AllText do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3
end

defmodule Google.Privacy.Dlp.V2.ImageTransformations.ImageTransformation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :transforms, 2,
    repeated: true,
    type: Google.Privacy.Dlp.V2.ImageTransformations.ImageTransformation
end

defmodule Google.Privacy.Dlp.V2.TransformationErrorHandling.ThrowError do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3
end

defmodule Google.Privacy.Dlp.V2.TransformationErrorHandling.LeaveUntransformed do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3
end

defmodule Google.Privacy.Dlp.V2.TransformationErrorHandling do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :part_to_extract, 1,
    type: Google.Privacy.Dlp.V2.TimePartConfig.TimePart,
    json_name: "partToExtract",
    enum: true
end

defmodule Google.Privacy.Dlp.V2.CryptoHashConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :crypto_key, 1, type: Google.Privacy.Dlp.V2.CryptoKey, json_name: "cryptoKey"
end

defmodule Google.Privacy.Dlp.V2.CryptoDeterministicConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :crypto_key, 1, type: Google.Privacy.Dlp.V2.CryptoKey, json_name: "cryptoKey"

  field :surrogate_info_type, 2,
    type: Google.Privacy.Dlp.V2.InfoType,
    json_name: "surrogateInfoType"

  field :context, 3, type: Google.Privacy.Dlp.V2.FieldId
end

defmodule Google.Privacy.Dlp.V2.ReplaceValueConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :new_value, 1, type: Google.Privacy.Dlp.V2.Value, json_name: "newValue"
end

defmodule Google.Privacy.Dlp.V2.ReplaceDictionaryConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :type, 0

  field :word_list, 1,
    type: Google.Privacy.Dlp.V2.CustomInfoType.Dictionary.WordList,
    json_name: "wordList",
    oneof: 0
end

defmodule Google.Privacy.Dlp.V2.ReplaceWithInfoTypeConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3
end

defmodule Google.Privacy.Dlp.V2.RedactConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3
end

defmodule Google.Privacy.Dlp.V2.CharsToIgnore do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :min, 1, type: Google.Privacy.Dlp.V2.Value
  field :max, 2, type: Google.Privacy.Dlp.V2.Value

  field :replacement_value, 3,
    type: Google.Privacy.Dlp.V2.Value,
    json_name: "replacementValue",
    deprecated: false
end

defmodule Google.Privacy.Dlp.V2.BucketingConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :buckets, 1, repeated: true, type: Google.Privacy.Dlp.V2.BucketingConfig.Bucket
end

defmodule Google.Privacy.Dlp.V2.CryptoReplaceFfxFpeConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Privacy.Dlp.V2.UnwrappedCryptoKey do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :bytes, deprecated: false
end

defmodule Google.Privacy.Dlp.V2.KmsWrappedCryptoKey do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :wrapped_key, 1, type: :bytes, json_name: "wrappedKey", deprecated: false
  field :crypto_key_name, 2, type: :string, json_name: "cryptoKeyName", deprecated: false
end

defmodule Google.Privacy.Dlp.V2.DateShiftConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :method, 0

  field :upper_bound_days, 1, type: :int32, json_name: "upperBoundDays", deprecated: false
  field :lower_bound_days, 2, type: :int32, json_name: "lowerBoundDays", deprecated: false
  field :context, 3, type: Google.Privacy.Dlp.V2.FieldId
  field :crypto_key, 4, type: Google.Privacy.Dlp.V2.CryptoKey, json_name: "cryptoKey", oneof: 0
end

defmodule Google.Privacy.Dlp.V2.InfoTypeTransformations.InfoTypeTransformation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :transformations, 1,
    repeated: true,
    type: Google.Privacy.Dlp.V2.InfoTypeTransformations.InfoTypeTransformation,
    deprecated: false
end

defmodule Google.Privacy.Dlp.V2.FieldTransformation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :condition, 1, type: Google.Privacy.Dlp.V2.RecordCondition
end

defmodule Google.Privacy.Dlp.V2.RecordCondition.Condition do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :field, 1, type: Google.Privacy.Dlp.V2.FieldId, deprecated: false

  field :operator, 3,
    type: Google.Privacy.Dlp.V2.RelationalOperator,
    enum: true,
    deprecated: false

  field :value, 4, type: Google.Privacy.Dlp.V2.Value
end

defmodule Google.Privacy.Dlp.V2.RecordCondition.Conditions do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :conditions, 1, repeated: true, type: Google.Privacy.Dlp.V2.RecordCondition.Condition
end

defmodule Google.Privacy.Dlp.V2.RecordCondition.Expressions do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :type, 0

  field :logical_operator, 1,
    type: Google.Privacy.Dlp.V2.RecordCondition.Expressions.LogicalOperator,
    json_name: "logicalOperator",
    enum: true

  field :conditions, 3, type: Google.Privacy.Dlp.V2.RecordCondition.Conditions, oneof: 0
end

defmodule Google.Privacy.Dlp.V2.RecordCondition do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :expressions, 3, type: Google.Privacy.Dlp.V2.RecordCondition.Expressions
end

defmodule Google.Privacy.Dlp.V2.TransformationOverview do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :transformed_bytes, 2, type: :int64, json_name: "transformedBytes"

  field :transformation_summaries, 3,
    repeated: true,
    type: Google.Privacy.Dlp.V2.TransformationSummary,
    json_name: "transformationSummaries"
end

defmodule Google.Privacy.Dlp.V2.TransformationSummary.SummaryResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :count, 1, type: :int64

  field :code, 2,
    type: Google.Privacy.Dlp.V2.TransformationSummary.TransformationResultCode,
    enum: true

  field :details, 3, type: :string
end

defmodule Google.Privacy.Dlp.V2.TransformationSummary do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :type, 1, type: Google.Privacy.Dlp.V2.TransformationType, enum: true
  field :description, 2, type: :string
  field :condition, 3, type: :string
  field :info_type, 4, type: Google.Privacy.Dlp.V2.InfoType, json_name: "infoType"
end

defmodule Google.Privacy.Dlp.V2.TransformationDetails do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :field_id, 1, type: Google.Privacy.Dlp.V2.FieldId, json_name: "fieldId"
  field :container_timestamp, 2, type: Google.Protobuf.Timestamp, json_name: "containerTimestamp"
  field :container_version, 3, type: :string, json_name: "containerVersion"
end

defmodule Google.Privacy.Dlp.V2.TransformationResultStatus do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :result_status_type, 1,
    type: Google.Privacy.Dlp.V2.TransformationResultStatusType,
    json_name: "resultStatusType",
    enum: true

  field :details, 2, type: Google.Rpc.Status
end

defmodule Google.Privacy.Dlp.V2.TransformationDetailsStorageConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :type, 0

  field :table, 1, type: Google.Privacy.Dlp.V2.BigQueryTable, oneof: 0
end

defmodule Google.Privacy.Dlp.V2.Schedule do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :option, 0

  field :recurrence_period_duration, 1,
    type: Google.Protobuf.Duration,
    json_name: "recurrencePeriodDuration",
    oneof: 0
end

defmodule Google.Privacy.Dlp.V2.Manual do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3
end

defmodule Google.Privacy.Dlp.V2.InspectTemplate do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :details, 1, type: Google.Rpc.Status
  field :timestamps, 2, repeated: true, type: Google.Protobuf.Timestamp
end

defmodule Google.Privacy.Dlp.V2.JobTrigger.Trigger do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :trigger, 0

  field :schedule, 1, type: Google.Privacy.Dlp.V2.Schedule, oneof: 0
  field :manual, 2, type: Google.Privacy.Dlp.V2.Manual, oneof: 0
end

defmodule Google.Privacy.Dlp.V2.JobTrigger do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :output_config, 1,
    type: Google.Privacy.Dlp.V2.OutputStorageConfig,
    json_name: "outputConfig"
end

defmodule Google.Privacy.Dlp.V2.Action.PublishToPubSub do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :topic, 1, type: :string
end

defmodule Google.Privacy.Dlp.V2.Action.PublishSummaryToCscc do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3
end

defmodule Google.Privacy.Dlp.V2.Action.PublishFindingsToCloudDataCatalog do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3
end

defmodule Google.Privacy.Dlp.V2.Action.Deidentify do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3
end

defmodule Google.Privacy.Dlp.V2.Action.PublishToStackdriver do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3
end

defmodule Google.Privacy.Dlp.V2.Action do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :deidentify_template, 1, type: :string, json_name: "deidentifyTemplate"

  field :structured_deidentify_template, 2,
    type: :string,
    json_name: "structuredDeidentifyTemplate"

  field :image_redact_template, 4, type: :string, json_name: "imageRedactTemplate"
end

defmodule Google.Privacy.Dlp.V2.CreateInspectTemplateRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :inspect_template, 2,
    type: Google.Privacy.Dlp.V2.InspectTemplate,
    json_name: "inspectTemplate"

  field :update_mask, 3, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end

defmodule Google.Privacy.Dlp.V2.GetInspectTemplateRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Privacy.Dlp.V2.ListInspectTemplatesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_token, 2, type: :string, json_name: "pageToken"
  field :page_size, 3, type: :int32, json_name: "pageSize"
  field :order_by, 4, type: :string, json_name: "orderBy"
  field :location_id, 5, type: :string, json_name: "locationId"
end

defmodule Google.Privacy.Dlp.V2.ListInspectTemplatesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :inspect_templates, 1,
    repeated: true,
    type: Google.Privacy.Dlp.V2.InspectTemplate,
    json_name: "inspectTemplates"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Privacy.Dlp.V2.DeleteInspectTemplateRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Privacy.Dlp.V2.CreateJobTriggerRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Privacy.Dlp.V2.UpdateJobTriggerRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :job_trigger, 2, type: Google.Privacy.Dlp.V2.JobTrigger, json_name: "jobTrigger"
  field :update_mask, 3, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end

defmodule Google.Privacy.Dlp.V2.GetJobTriggerRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Privacy.Dlp.V2.CreateDlpJobRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :job_triggers, 1,
    repeated: true,
    type: Google.Privacy.Dlp.V2.JobTrigger,
    json_name: "jobTriggers"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Privacy.Dlp.V2.DeleteJobTriggerRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Privacy.Dlp.V2.InspectJobConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :storage_config, 1, type: Google.Privacy.Dlp.V2.StorageConfig, json_name: "storageConfig"
  field :inspect_config, 2, type: Google.Privacy.Dlp.V2.InspectConfig, json_name: "inspectConfig"
  field :inspect_template_name, 3, type: :string, json_name: "inspectTemplateName"
  field :actions, 4, repeated: true, type: Google.Privacy.Dlp.V2.Action
end

defmodule Google.Privacy.Dlp.V2.DataProfileAction.Export do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :profile_table, 1, type: Google.Privacy.Dlp.V2.BigQueryTable, json_name: "profileTable"
end

defmodule Google.Privacy.Dlp.V2.DataProfileAction.PubSubNotification do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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

defmodule Google.Privacy.Dlp.V2.DataProfileAction do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :action, 0

  field :export_data, 1,
    type: Google.Privacy.Dlp.V2.DataProfileAction.Export,
    json_name: "exportData",
    oneof: 0

  field :pub_sub_notification, 2,
    type: Google.Privacy.Dlp.V2.DataProfileAction.PubSubNotification,
    json_name: "pubSubNotification",
    oneof: 0
end

defmodule Google.Privacy.Dlp.V2.DataProfileJobConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :location, 1, type: Google.Privacy.Dlp.V2.DataProfileLocation
  field :project_id, 5, type: :string, json_name: "projectId"
  field :inspect_templates, 7, repeated: true, type: :string, json_name: "inspectTemplates"

  field :data_profile_actions, 6,
    repeated: true,
    type: Google.Privacy.Dlp.V2.DataProfileAction,
    json_name: "dataProfileActions"
end

defmodule Google.Privacy.Dlp.V2.DataProfileLocation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :location, 0

  field :organization_id, 1, type: :int64, json_name: "organizationId", oneof: 0
  field :folder_id, 2, type: :int64, json_name: "folderId", oneof: 0
end

defmodule Google.Privacy.Dlp.V2.DlpJob do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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
  field :job_trigger_name, 10, type: :string, json_name: "jobTriggerName"
  field :errors, 11, repeated: true, type: Google.Privacy.Dlp.V2.Error
end

defmodule Google.Privacy.Dlp.V2.GetDlpJobRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Privacy.Dlp.V2.ListDlpJobsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :jobs, 1, repeated: true, type: Google.Privacy.Dlp.V2.DlpJob
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Privacy.Dlp.V2.CancelDlpJobRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Privacy.Dlp.V2.FinishDlpJobRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Privacy.Dlp.V2.DeleteDlpJobRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Privacy.Dlp.V2.CreateDeidentifyTemplateRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :deidentify_template, 2,
    type: Google.Privacy.Dlp.V2.DeidentifyTemplate,
    json_name: "deidentifyTemplate"

  field :update_mask, 3, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end

defmodule Google.Privacy.Dlp.V2.GetDeidentifyTemplateRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Privacy.Dlp.V2.ListDeidentifyTemplatesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_token, 2, type: :string, json_name: "pageToken"
  field :page_size, 3, type: :int32, json_name: "pageSize"
  field :order_by, 4, type: :string, json_name: "orderBy"
  field :location_id, 5, type: :string, json_name: "locationId"
end

defmodule Google.Privacy.Dlp.V2.ListDeidentifyTemplatesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :deidentify_templates, 1,
    repeated: true,
    type: Google.Privacy.Dlp.V2.DeidentifyTemplate,
    json_name: "deidentifyTemplates"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Privacy.Dlp.V2.DeleteDeidentifyTemplateRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Privacy.Dlp.V2.LargeCustomDictionaryConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :approx_num_phrases, 1, type: :int64, json_name: "approxNumPhrases"
end

defmodule Google.Privacy.Dlp.V2.StoredInfoTypeConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :type, 0

  field :large_custom_dictionary, 1,
    type: Google.Privacy.Dlp.V2.LargeCustomDictionaryStats,
    json_name: "largeCustomDictionary",
    oneof: 0
end

defmodule Google.Privacy.Dlp.V2.StoredInfoTypeVersion do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :config, 1, type: Google.Privacy.Dlp.V2.StoredInfoTypeConfig
  field :create_time, 2, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :state, 3, type: Google.Privacy.Dlp.V2.StoredInfoTypeState, enum: true
  field :errors, 4, repeated: true, type: Google.Privacy.Dlp.V2.Error
  field :stats, 5, type: Google.Privacy.Dlp.V2.StoredInfoTypeStats
end

defmodule Google.Privacy.Dlp.V2.StoredInfoType do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :config, 2, type: Google.Privacy.Dlp.V2.StoredInfoTypeConfig, deprecated: false
  field :stored_info_type_id, 3, type: :string, json_name: "storedInfoTypeId"
  field :location_id, 4, type: :string, json_name: "locationId"
end

defmodule Google.Privacy.Dlp.V2.UpdateStoredInfoTypeRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :config, 2, type: Google.Privacy.Dlp.V2.StoredInfoTypeConfig
  field :update_mask, 3, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end

defmodule Google.Privacy.Dlp.V2.GetStoredInfoTypeRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Privacy.Dlp.V2.ListStoredInfoTypesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_token, 2, type: :string, json_name: "pageToken"
  field :page_size, 3, type: :int32, json_name: "pageSize"
  field :order_by, 4, type: :string, json_name: "orderBy"
  field :location_id, 5, type: :string, json_name: "locationId"
end

defmodule Google.Privacy.Dlp.V2.ListStoredInfoTypesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :stored_info_types, 1,
    repeated: true,
    type: Google.Privacy.Dlp.V2.StoredInfoType,
    json_name: "storedInfoTypes"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Privacy.Dlp.V2.DeleteStoredInfoTypeRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Privacy.Dlp.V2.HybridInspectJobTriggerRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :hybrid_item, 3, type: Google.Privacy.Dlp.V2.HybridContentItem, json_name: "hybridItem"
end

defmodule Google.Privacy.Dlp.V2.HybridInspectDlpJobRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :hybrid_item, 3, type: Google.Privacy.Dlp.V2.HybridContentItem, json_name: "hybridItem"
end

defmodule Google.Privacy.Dlp.V2.HybridContentItem do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :item, 1, type: Google.Privacy.Dlp.V2.ContentItem

  field :finding_details, 2,
    type: Google.Privacy.Dlp.V2.HybridFindingDetails,
    json_name: "findingDetails"
end

defmodule Google.Privacy.Dlp.V2.HybridFindingDetails.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Privacy.Dlp.V2.HybridFindingDetails do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3
end

defmodule Google.Privacy.Dlp.V2.DataRiskLevel do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :score, 1, type: Google.Privacy.Dlp.V2.DataRiskLevel.DataRiskLevelScore, enum: true
end

defmodule Google.Privacy.Dlp.V2.DataProfileConfigSnapshot do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :inspect_config, 2, type: Google.Privacy.Dlp.V2.InspectConfig, json_name: "inspectConfig"

  field :data_profile_job, 3,
    type: Google.Privacy.Dlp.V2.DataProfileJobConfig,
    json_name: "dataProfileJob"
end

defmodule Google.Privacy.Dlp.V2.TableDataProfile.ResourceLabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Privacy.Dlp.V2.TableDataProfile do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string
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
end

defmodule Google.Privacy.Dlp.V2.ProfileStatus do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :status, 1, type: Google.Rpc.Status
  field :timestamp, 3, type: Google.Protobuf.Timestamp
end

defmodule Google.Privacy.Dlp.V2.InfoTypeSummary do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :info_type, 1, type: Google.Privacy.Dlp.V2.InfoType, json_name: "infoType"
  field :estimated_prevalence, 2, type: :int32, json_name: "estimatedPrevalence", deprecated: true
end

defmodule Google.Privacy.Dlp.V2.OtherInfoTypeSummary do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :info_type, 1, type: Google.Privacy.Dlp.V2.InfoType, json_name: "infoType"
  field :estimated_prevalence, 2, type: :int32, json_name: "estimatedPrevalence"
end

defmodule Google.Privacy.Dlp.V2.DataProfilePubSubCondition.PubSubCondition do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :expressions, 1, type: Google.Privacy.Dlp.V2.DataProfilePubSubCondition.PubSubExpressions
end

defmodule Google.Privacy.Dlp.V2.DataProfilePubSubMessage do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :profile, 1, type: Google.Privacy.Dlp.V2.TableDataProfile
  field :event, 2, type: Google.Privacy.Dlp.V2.DataProfileAction.EventType, enum: true
end

defmodule Google.Privacy.Dlp.V2.DlpService.Service do
  @moduledoc false

  use GRPC.Service, name: "google.privacy.dlp.v2.DlpService", protoc_gen_elixir_version: "0.12.0"

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

  rpc :HybridInspectDlpJob,
      Google.Privacy.Dlp.V2.HybridInspectDlpJobRequest,
      Google.Privacy.Dlp.V2.HybridInspectResponse

  rpc :FinishDlpJob, Google.Privacy.Dlp.V2.FinishDlpJobRequest, Google.Protobuf.Empty
end

defmodule Google.Privacy.Dlp.V2.DlpService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Privacy.Dlp.V2.DlpService.Service
end