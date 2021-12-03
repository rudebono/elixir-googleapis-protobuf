defmodule Google.Privacy.Dlp.V2.RelationalOperator do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :RELATIONAL_OPERATOR_UNSPECIFIED
          | :EQUAL_TO
          | :NOT_EQUAL_TO
          | :GREATER_THAN
          | :LESS_THAN
          | :GREATER_THAN_OR_EQUALS
          | :LESS_THAN_OR_EQUALS
          | :EXISTS

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
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :MATCHING_TYPE_UNSPECIFIED
          | :MATCHING_TYPE_FULL_MATCH
          | :MATCHING_TYPE_PARTIAL_MATCH
          | :MATCHING_TYPE_INVERSE_MATCH

  field :MATCHING_TYPE_UNSPECIFIED, 0
  field :MATCHING_TYPE_FULL_MATCH, 1
  field :MATCHING_TYPE_PARTIAL_MATCH, 2
  field :MATCHING_TYPE_INVERSE_MATCH, 3
end

defmodule Google.Privacy.Dlp.V2.ContentOption do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :CONTENT_UNSPECIFIED | :CONTENT_TEXT | :CONTENT_IMAGE

  field :CONTENT_UNSPECIFIED, 0
  field :CONTENT_TEXT, 1
  field :CONTENT_IMAGE, 2
end

defmodule Google.Privacy.Dlp.V2.MetadataType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :METADATATYPE_UNSPECIFIED | :STORAGE_METADATA

  field :METADATATYPE_UNSPECIFIED, 0
  field :STORAGE_METADATA, 2
end

defmodule Google.Privacy.Dlp.V2.InfoTypeSupportedBy do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :ENUM_TYPE_UNSPECIFIED | :INSPECT | :RISK_ANALYSIS

  field :ENUM_TYPE_UNSPECIFIED, 0
  field :INSPECT, 1
  field :RISK_ANALYSIS, 2
end

defmodule Google.Privacy.Dlp.V2.DlpJobType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :DLP_JOB_TYPE_UNSPECIFIED | :INSPECT_JOB | :RISK_ANALYSIS_JOB

  field :DLP_JOB_TYPE_UNSPECIFIED, 0
  field :INSPECT_JOB, 1
  field :RISK_ANALYSIS_JOB, 2
end

defmodule Google.Privacy.Dlp.V2.StoredInfoTypeState do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer | :STORED_INFO_TYPE_STATE_UNSPECIFIED | :PENDING | :READY | :FAILED | :INVALID

  field :STORED_INFO_TYPE_STATE_UNSPECIFIED, 0
  field :PENDING, 1
  field :READY, 2
  field :FAILED, 3
  field :INVALID, 4
end

defmodule Google.Privacy.Dlp.V2.ByteContentItem.BytesType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :BYTES_TYPE_UNSPECIFIED
          | :IMAGE
          | :IMAGE_JPEG
          | :IMAGE_BMP
          | :IMAGE_PNG
          | :IMAGE_SVG
          | :TEXT_UTF8
          | :WORD_DOCUMENT
          | :PDF
          | :AVRO
          | :CSV
          | :TSV

  field :BYTES_TYPE_UNSPECIFIED, 0
  field :IMAGE, 6
  field :IMAGE_JPEG, 1
  field :IMAGE_BMP, 2
  field :IMAGE_PNG, 3
  field :IMAGE_SVG, 4
  field :TEXT_UTF8, 5
  field :WORD_DOCUMENT, 7
  field :PDF, 8
  field :AVRO, 11
  field :CSV, 12
  field :TSV, 13
end

defmodule Google.Privacy.Dlp.V2.OutputStorageConfig.OutputSchema do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :OUTPUT_SCHEMA_UNSPECIFIED
          | :BASIC_COLUMNS
          | :GCS_COLUMNS
          | :DATASTORE_COLUMNS
          | :BIG_QUERY_COLUMNS
          | :ALL_COLUMNS

  field :OUTPUT_SCHEMA_UNSPECIFIED, 0
  field :BASIC_COLUMNS, 1
  field :GCS_COLUMNS, 2
  field :DATASTORE_COLUMNS, 3
  field :BIG_QUERY_COLUMNS, 4
  field :ALL_COLUMNS, 5
end

defmodule Google.Privacy.Dlp.V2.TimePartConfig.TimePart do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :TIME_PART_UNSPECIFIED
          | :YEAR
          | :MONTH
          | :DAY_OF_MONTH
          | :DAY_OF_WEEK
          | :WEEK_OF_YEAR
          | :HOUR_OF_DAY

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
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :COMMON_CHARS_TO_IGNORE_UNSPECIFIED
          | :NUMERIC
          | :ALPHA_UPPER_CASE
          | :ALPHA_LOWER_CASE
          | :PUNCTUATION
          | :WHITESPACE

  field :COMMON_CHARS_TO_IGNORE_UNSPECIFIED, 0
  field :NUMERIC, 1
  field :ALPHA_UPPER_CASE, 2
  field :ALPHA_LOWER_CASE, 3
  field :PUNCTUATION, 4
  field :WHITESPACE, 5
end

defmodule Google.Privacy.Dlp.V2.CryptoReplaceFfxFpeConfig.FfxCommonNativeAlphabet do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :FFX_COMMON_NATIVE_ALPHABET_UNSPECIFIED
          | :NUMERIC
          | :HEXADECIMAL
          | :UPPER_CASE_ALPHA_NUMERIC
          | :ALPHA_NUMERIC

  field :FFX_COMMON_NATIVE_ALPHABET_UNSPECIFIED, 0
  field :NUMERIC, 1
  field :HEXADECIMAL, 2
  field :UPPER_CASE_ALPHA_NUMERIC, 3
  field :ALPHA_NUMERIC, 4
end

defmodule Google.Privacy.Dlp.V2.RecordCondition.Expressions.LogicalOperator do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :LOGICAL_OPERATOR_UNSPECIFIED | :AND

  field :LOGICAL_OPERATOR_UNSPECIFIED, 0
  field :AND, 1
end

defmodule Google.Privacy.Dlp.V2.TransformationSummary.TransformationResultCode do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :TRANSFORMATION_RESULT_CODE_UNSPECIFIED | :SUCCESS | :ERROR

  field :TRANSFORMATION_RESULT_CODE_UNSPECIFIED, 0
  field :SUCCESS, 1
  field :ERROR, 2
end

defmodule Google.Privacy.Dlp.V2.JobTrigger.Status do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :STATUS_UNSPECIFIED | :HEALTHY | :PAUSED | :CANCELLED

  field :STATUS_UNSPECIFIED, 0
  field :HEALTHY, 1
  field :PAUSED, 2
  field :CANCELLED, 3
end

defmodule Google.Privacy.Dlp.V2.DlpJob.JobState do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :JOB_STATE_UNSPECIFIED
          | :PENDING
          | :RUNNING
          | :DONE
          | :CANCELED
          | :FAILED
          | :ACTIVE

  field :JOB_STATE_UNSPECIFIED, 0
  field :PENDING, 1
  field :RUNNING, 2
  field :DONE, 3
  field :CANCELED, 4
  field :FAILED, 5
  field :ACTIVE, 6
end

defmodule Google.Privacy.Dlp.V2.ExcludeInfoTypes do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          info_types: [Google.Privacy.Dlp.V2.InfoType.t()]
        }

  defstruct [:info_types]

  field :info_types, 1,
    repeated: true,
    type: Google.Privacy.Dlp.V2.InfoType,
    json_name: "infoTypes"

  def transform_module(), do: nil
end

defmodule Google.Privacy.Dlp.V2.ExclusionRule do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          type:
            {:dictionary, Google.Privacy.Dlp.V2.CustomInfoType.Dictionary.t() | nil}
            | {:regex, Google.Privacy.Dlp.V2.CustomInfoType.Regex.t() | nil}
            | {:exclude_info_types, Google.Privacy.Dlp.V2.ExcludeInfoTypes.t() | nil},
          matching_type: Google.Privacy.Dlp.V2.MatchingType.t()
        }

  defstruct [:type, :matching_type]

  oneof :type, 0

  field :dictionary, 1, type: Google.Privacy.Dlp.V2.CustomInfoType.Dictionary, oneof: 0
  field :regex, 2, type: Google.Privacy.Dlp.V2.CustomInfoType.Regex, oneof: 0

  field :exclude_info_types, 3,
    type: Google.Privacy.Dlp.V2.ExcludeInfoTypes,
    json_name: "excludeInfoTypes",
    oneof: 0

  field :matching_type, 4,
    type: Google.Privacy.Dlp.V2.MatchingType,
    enum: true,
    json_name: "matchingType"

  def transform_module(), do: nil
end

defmodule Google.Privacy.Dlp.V2.InspectionRule do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          type:
            {:hotword_rule,
             Google.Privacy.Dlp.V2.CustomInfoType.DetectionRule.HotwordRule.t() | nil}
            | {:exclusion_rule, Google.Privacy.Dlp.V2.ExclusionRule.t() | nil}
        }

  defstruct [:type]

  oneof :type, 0

  field :hotword_rule, 1,
    type: Google.Privacy.Dlp.V2.CustomInfoType.DetectionRule.HotwordRule,
    json_name: "hotwordRule",
    oneof: 0

  field :exclusion_rule, 2,
    type: Google.Privacy.Dlp.V2.ExclusionRule,
    json_name: "exclusionRule",
    oneof: 0

  def transform_module(), do: nil
end

defmodule Google.Privacy.Dlp.V2.InspectionRuleSet do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          info_types: [Google.Privacy.Dlp.V2.InfoType.t()],
          rules: [Google.Privacy.Dlp.V2.InspectionRule.t()]
        }

  defstruct [:info_types, :rules]

  field :info_types, 1,
    repeated: true,
    type: Google.Privacy.Dlp.V2.InfoType,
    json_name: "infoTypes"

  field :rules, 2, repeated: true, type: Google.Privacy.Dlp.V2.InspectionRule

  def transform_module(), do: nil
end

defmodule Google.Privacy.Dlp.V2.InspectConfig.FindingLimits.InfoTypeLimit do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          info_type: Google.Privacy.Dlp.V2.InfoType.t() | nil,
          max_findings: integer
        }

  defstruct [:info_type, :max_findings]

  field :info_type, 1, type: Google.Privacy.Dlp.V2.InfoType, json_name: "infoType"
  field :max_findings, 2, type: :int32, json_name: "maxFindings"

  def transform_module(), do: nil
end

defmodule Google.Privacy.Dlp.V2.InspectConfig.FindingLimits do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          max_findings_per_item: integer,
          max_findings_per_request: integer,
          max_findings_per_info_type: [
            Google.Privacy.Dlp.V2.InspectConfig.FindingLimits.InfoTypeLimit.t()
          ]
        }

  defstruct [:max_findings_per_item, :max_findings_per_request, :max_findings_per_info_type]

  field :max_findings_per_item, 1, type: :int32, json_name: "maxFindingsPerItem"
  field :max_findings_per_request, 2, type: :int32, json_name: "maxFindingsPerRequest"

  field :max_findings_per_info_type, 3,
    repeated: true,
    type: Google.Privacy.Dlp.V2.InspectConfig.FindingLimits.InfoTypeLimit,
    json_name: "maxFindingsPerInfoType"

  def transform_module(), do: nil
end

defmodule Google.Privacy.Dlp.V2.InspectConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          info_types: [Google.Privacy.Dlp.V2.InfoType.t()],
          min_likelihood: Google.Privacy.Dlp.V2.Likelihood.t(),
          limits: Google.Privacy.Dlp.V2.InspectConfig.FindingLimits.t() | nil,
          include_quote: boolean,
          exclude_info_types: boolean,
          custom_info_types: [Google.Privacy.Dlp.V2.CustomInfoType.t()],
          content_options: [Google.Privacy.Dlp.V2.ContentOption.t()],
          rule_set: [Google.Privacy.Dlp.V2.InspectionRuleSet.t()]
        }

  defstruct [
    :info_types,
    :min_likelihood,
    :limits,
    :include_quote,
    :exclude_info_types,
    :custom_info_types,
    :content_options,
    :rule_set
  ]

  field :info_types, 1,
    repeated: true,
    type: Google.Privacy.Dlp.V2.InfoType,
    json_name: "infoTypes"

  field :min_likelihood, 2,
    type: Google.Privacy.Dlp.V2.Likelihood,
    enum: true,
    json_name: "minLikelihood"

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
    enum: true,
    json_name: "contentOptions"

  field :rule_set, 10,
    repeated: true,
    type: Google.Privacy.Dlp.V2.InspectionRuleSet,
    json_name: "ruleSet"

  def transform_module(), do: nil
end

defmodule Google.Privacy.Dlp.V2.ByteContentItem do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          type: Google.Privacy.Dlp.V2.ByteContentItem.BytesType.t(),
          data: binary
        }

  defstruct [:type, :data]

  field :type, 1, type: Google.Privacy.Dlp.V2.ByteContentItem.BytesType, enum: true
  field :data, 2, type: :bytes

  def transform_module(), do: nil
end

defmodule Google.Privacy.Dlp.V2.ContentItem do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          data_item:
            {:value, String.t()}
            | {:table, Google.Privacy.Dlp.V2.Table.t() | nil}
            | {:byte_item, Google.Privacy.Dlp.V2.ByteContentItem.t() | nil}
        }

  defstruct [:data_item]

  oneof :data_item, 0

  field :value, 3, type: :string, oneof: 0
  field :table, 4, type: Google.Privacy.Dlp.V2.Table, oneof: 0

  field :byte_item, 5,
    type: Google.Privacy.Dlp.V2.ByteContentItem,
    json_name: "byteItem",
    oneof: 0

  def transform_module(), do: nil
end

defmodule Google.Privacy.Dlp.V2.Table.Row do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          values: [Google.Privacy.Dlp.V2.Value.t()]
        }

  defstruct [:values]

  field :values, 1, repeated: true, type: Google.Privacy.Dlp.V2.Value

  def transform_module(), do: nil
end

defmodule Google.Privacy.Dlp.V2.Table do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          headers: [Google.Privacy.Dlp.V2.FieldId.t()],
          rows: [Google.Privacy.Dlp.V2.Table.Row.t()]
        }

  defstruct [:headers, :rows]

  field :headers, 1, repeated: true, type: Google.Privacy.Dlp.V2.FieldId
  field :rows, 2, repeated: true, type: Google.Privacy.Dlp.V2.Table.Row

  def transform_module(), do: nil
end

defmodule Google.Privacy.Dlp.V2.InspectResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          findings: [Google.Privacy.Dlp.V2.Finding.t()],
          findings_truncated: boolean
        }

  defstruct [:findings, :findings_truncated]

  field :findings, 1, repeated: true, type: Google.Privacy.Dlp.V2.Finding
  field :findings_truncated, 2, type: :bool, json_name: "findingsTruncated"

  def transform_module(), do: nil
end

defmodule Google.Privacy.Dlp.V2.Finding.LabelsEntry do
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

defmodule Google.Privacy.Dlp.V2.Finding do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          quote: String.t(),
          info_type: Google.Privacy.Dlp.V2.InfoType.t() | nil,
          likelihood: Google.Privacy.Dlp.V2.Likelihood.t(),
          location: Google.Privacy.Dlp.V2.Location.t() | nil,
          create_time: Google.Protobuf.Timestamp.t() | nil,
          quote_info: Google.Privacy.Dlp.V2.QuoteInfo.t() | nil,
          resource_name: String.t(),
          trigger_name: String.t(),
          labels: %{String.t() => String.t()},
          job_create_time: Google.Protobuf.Timestamp.t() | nil,
          job_name: String.t(),
          finding_id: String.t()
        }

  defstruct [
    :name,
    :quote,
    :info_type,
    :likelihood,
    :location,
    :create_time,
    :quote_info,
    :resource_name,
    :trigger_name,
    :labels,
    :job_create_time,
    :job_name,
    :finding_id
  ]

  field :name, 14, type: :string
  field :quote, 1, type: :string
  field :info_type, 2, type: Google.Privacy.Dlp.V2.InfoType, json_name: "infoType"
  field :likelihood, 3, type: Google.Privacy.Dlp.V2.Likelihood, enum: true
  field :location, 4, type: Google.Privacy.Dlp.V2.Location
  field :create_time, 6, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :quote_info, 7, type: Google.Privacy.Dlp.V2.QuoteInfo, json_name: "quoteInfo"
  field :resource_name, 8, type: :string, json_name: "resourceName"
  field :trigger_name, 9, type: :string, json_name: "triggerName"
  field :labels, 10, repeated: true, type: Google.Privacy.Dlp.V2.Finding.LabelsEntry, map: true
  field :job_create_time, 11, type: Google.Protobuf.Timestamp, json_name: "jobCreateTime"
  field :job_name, 13, type: :string, json_name: "jobName"
  field :finding_id, 15, type: :string, json_name: "findingId"

  def transform_module(), do: nil
end

defmodule Google.Privacy.Dlp.V2.Location do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          byte_range: Google.Privacy.Dlp.V2.Range.t() | nil,
          codepoint_range: Google.Privacy.Dlp.V2.Range.t() | nil,
          content_locations: [Google.Privacy.Dlp.V2.ContentLocation.t()],
          container: Google.Privacy.Dlp.V2.Container.t() | nil
        }

  defstruct [:byte_range, :codepoint_range, :content_locations, :container]

  field :byte_range, 1, type: Google.Privacy.Dlp.V2.Range, json_name: "byteRange"
  field :codepoint_range, 2, type: Google.Privacy.Dlp.V2.Range, json_name: "codepointRange"

  field :content_locations, 7,
    repeated: true,
    type: Google.Privacy.Dlp.V2.ContentLocation,
    json_name: "contentLocations"

  field :container, 8, type: Google.Privacy.Dlp.V2.Container

  def transform_module(), do: nil
end

defmodule Google.Privacy.Dlp.V2.ContentLocation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          location:
            {:record_location, Google.Privacy.Dlp.V2.RecordLocation.t() | nil}
            | {:image_location, Google.Privacy.Dlp.V2.ImageLocation.t() | nil}
            | {:document_location, Google.Privacy.Dlp.V2.DocumentLocation.t() | nil}
            | {:metadata_location, Google.Privacy.Dlp.V2.MetadataLocation.t() | nil},
          container_name: String.t(),
          container_timestamp: Google.Protobuf.Timestamp.t() | nil,
          container_version: String.t()
        }

  defstruct [:location, :container_name, :container_timestamp, :container_version]

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

  def transform_module(), do: nil
end

defmodule Google.Privacy.Dlp.V2.MetadataLocation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          label: {:storage_label, Google.Privacy.Dlp.V2.StorageMetadataLabel.t() | nil},
          type: Google.Privacy.Dlp.V2.MetadataType.t()
        }

  defstruct [:label, :type]

  oneof :label, 0

  field :type, 1, type: Google.Privacy.Dlp.V2.MetadataType, enum: true

  field :storage_label, 3,
    type: Google.Privacy.Dlp.V2.StorageMetadataLabel,
    json_name: "storageLabel",
    oneof: 0

  def transform_module(), do: nil
end

defmodule Google.Privacy.Dlp.V2.StorageMetadataLabel do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t()
        }

  defstruct [:key]

  field :key, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Privacy.Dlp.V2.DocumentLocation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          file_offset: integer
        }

  defstruct [:file_offset]

  field :file_offset, 1, type: :int64, json_name: "fileOffset"

  def transform_module(), do: nil
end

defmodule Google.Privacy.Dlp.V2.RecordLocation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          record_key: Google.Privacy.Dlp.V2.RecordKey.t() | nil,
          field_id: Google.Privacy.Dlp.V2.FieldId.t() | nil,
          table_location: Google.Privacy.Dlp.V2.TableLocation.t() | nil
        }

  defstruct [:record_key, :field_id, :table_location]

  field :record_key, 1, type: Google.Privacy.Dlp.V2.RecordKey, json_name: "recordKey"
  field :field_id, 2, type: Google.Privacy.Dlp.V2.FieldId, json_name: "fieldId"
  field :table_location, 3, type: Google.Privacy.Dlp.V2.TableLocation, json_name: "tableLocation"

  def transform_module(), do: nil
end

defmodule Google.Privacy.Dlp.V2.TableLocation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          row_index: integer
        }

  defstruct [:row_index]

  field :row_index, 1, type: :int64, json_name: "rowIndex"

  def transform_module(), do: nil
end

defmodule Google.Privacy.Dlp.V2.Container do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          type: String.t(),
          project_id: String.t(),
          full_path: String.t(),
          root_path: String.t(),
          relative_path: String.t(),
          update_time: Google.Protobuf.Timestamp.t() | nil,
          version: String.t()
        }

  defstruct [:type, :project_id, :full_path, :root_path, :relative_path, :update_time, :version]

  field :type, 1, type: :string
  field :project_id, 2, type: :string, json_name: "projectId"
  field :full_path, 3, type: :string, json_name: "fullPath"
  field :root_path, 4, type: :string, json_name: "rootPath"
  field :relative_path, 5, type: :string, json_name: "relativePath"
  field :update_time, 6, type: Google.Protobuf.Timestamp, json_name: "updateTime"
  field :version, 7, type: :string

  def transform_module(), do: nil
end

defmodule Google.Privacy.Dlp.V2.Range do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          start: integer,
          end: integer
        }

  defstruct [:start, :end]

  field :start, 1, type: :int64
  field :end, 2, type: :int64

  def transform_module(), do: nil
end

defmodule Google.Privacy.Dlp.V2.ImageLocation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          bounding_boxes: [Google.Privacy.Dlp.V2.BoundingBox.t()]
        }

  defstruct [:bounding_boxes]

  field :bounding_boxes, 1,
    repeated: true,
    type: Google.Privacy.Dlp.V2.BoundingBox,
    json_name: "boundingBoxes"

  def transform_module(), do: nil
end

defmodule Google.Privacy.Dlp.V2.BoundingBox do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          top: integer,
          left: integer,
          width: integer,
          height: integer
        }

  defstruct [:top, :left, :width, :height]

  field :top, 1, type: :int32
  field :left, 2, type: :int32
  field :width, 3, type: :int32
  field :height, 4, type: :int32

  def transform_module(), do: nil
end

defmodule Google.Privacy.Dlp.V2.RedactImageRequest.ImageRedactionConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          target:
            {:info_type, Google.Privacy.Dlp.V2.InfoType.t() | nil} | {:redact_all_text, boolean},
          redaction_color: Google.Privacy.Dlp.V2.Color.t() | nil
        }

  defstruct [:target, :redaction_color]

  oneof :target, 0

  field :info_type, 1, type: Google.Privacy.Dlp.V2.InfoType, json_name: "infoType", oneof: 0
  field :redact_all_text, 2, type: :bool, json_name: "redactAllText", oneof: 0
  field :redaction_color, 3, type: Google.Privacy.Dlp.V2.Color, json_name: "redactionColor"

  def transform_module(), do: nil
end

defmodule Google.Privacy.Dlp.V2.RedactImageRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          location_id: String.t(),
          inspect_config: Google.Privacy.Dlp.V2.InspectConfig.t() | nil,
          image_redaction_configs: [
            Google.Privacy.Dlp.V2.RedactImageRequest.ImageRedactionConfig.t()
          ],
          include_findings: boolean,
          byte_item: Google.Privacy.Dlp.V2.ByteContentItem.t() | nil
        }

  defstruct [
    :parent,
    :location_id,
    :inspect_config,
    :image_redaction_configs,
    :include_findings,
    :byte_item
  ]

  field :parent, 1, type: :string
  field :location_id, 8, type: :string, json_name: "locationId"
  field :inspect_config, 2, type: Google.Privacy.Dlp.V2.InspectConfig, json_name: "inspectConfig"

  field :image_redaction_configs, 5,
    repeated: true,
    type: Google.Privacy.Dlp.V2.RedactImageRequest.ImageRedactionConfig,
    json_name: "imageRedactionConfigs"

  field :include_findings, 6, type: :bool, json_name: "includeFindings"
  field :byte_item, 7, type: Google.Privacy.Dlp.V2.ByteContentItem, json_name: "byteItem"

  def transform_module(), do: nil
end

defmodule Google.Privacy.Dlp.V2.Color do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          red: float | :infinity | :negative_infinity | :nan,
          green: float | :infinity | :negative_infinity | :nan,
          blue: float | :infinity | :negative_infinity | :nan
        }

  defstruct [:red, :green, :blue]

  field :red, 1, type: :float
  field :green, 2, type: :float
  field :blue, 3, type: :float

  def transform_module(), do: nil
end

defmodule Google.Privacy.Dlp.V2.RedactImageResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          redacted_image: binary,
          extracted_text: String.t(),
          inspect_result: Google.Privacy.Dlp.V2.InspectResult.t() | nil
        }

  defstruct [:redacted_image, :extracted_text, :inspect_result]

  field :redacted_image, 1, type: :bytes, json_name: "redactedImage"
  field :extracted_text, 2, type: :string, json_name: "extractedText"
  field :inspect_result, 3, type: Google.Privacy.Dlp.V2.InspectResult, json_name: "inspectResult"

  def transform_module(), do: nil
end

defmodule Google.Privacy.Dlp.V2.DeidentifyContentRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          deidentify_config: Google.Privacy.Dlp.V2.DeidentifyConfig.t() | nil,
          inspect_config: Google.Privacy.Dlp.V2.InspectConfig.t() | nil,
          item: Google.Privacy.Dlp.V2.ContentItem.t() | nil,
          inspect_template_name: String.t(),
          deidentify_template_name: String.t(),
          location_id: String.t()
        }

  defstruct [
    :parent,
    :deidentify_config,
    :inspect_config,
    :item,
    :inspect_template_name,
    :deidentify_template_name,
    :location_id
  ]

  field :parent, 1, type: :string

  field :deidentify_config, 2,
    type: Google.Privacy.Dlp.V2.DeidentifyConfig,
    json_name: "deidentifyConfig"

  field :inspect_config, 3, type: Google.Privacy.Dlp.V2.InspectConfig, json_name: "inspectConfig"
  field :item, 4, type: Google.Privacy.Dlp.V2.ContentItem
  field :inspect_template_name, 5, type: :string, json_name: "inspectTemplateName"
  field :deidentify_template_name, 6, type: :string, json_name: "deidentifyTemplateName"
  field :location_id, 7, type: :string, json_name: "locationId"

  def transform_module(), do: nil
end

defmodule Google.Privacy.Dlp.V2.DeidentifyContentResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          item: Google.Privacy.Dlp.V2.ContentItem.t() | nil,
          overview: Google.Privacy.Dlp.V2.TransformationOverview.t() | nil
        }

  defstruct [:item, :overview]

  field :item, 1, type: Google.Privacy.Dlp.V2.ContentItem
  field :overview, 2, type: Google.Privacy.Dlp.V2.TransformationOverview

  def transform_module(), do: nil
end

defmodule Google.Privacy.Dlp.V2.ReidentifyContentRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          reidentify_config: Google.Privacy.Dlp.V2.DeidentifyConfig.t() | nil,
          inspect_config: Google.Privacy.Dlp.V2.InspectConfig.t() | nil,
          item: Google.Privacy.Dlp.V2.ContentItem.t() | nil,
          inspect_template_name: String.t(),
          reidentify_template_name: String.t(),
          location_id: String.t()
        }

  defstruct [
    :parent,
    :reidentify_config,
    :inspect_config,
    :item,
    :inspect_template_name,
    :reidentify_template_name,
    :location_id
  ]

  field :parent, 1, type: :string

  field :reidentify_config, 2,
    type: Google.Privacy.Dlp.V2.DeidentifyConfig,
    json_name: "reidentifyConfig"

  field :inspect_config, 3, type: Google.Privacy.Dlp.V2.InspectConfig, json_name: "inspectConfig"
  field :item, 4, type: Google.Privacy.Dlp.V2.ContentItem
  field :inspect_template_name, 5, type: :string, json_name: "inspectTemplateName"
  field :reidentify_template_name, 6, type: :string, json_name: "reidentifyTemplateName"
  field :location_id, 7, type: :string, json_name: "locationId"

  def transform_module(), do: nil
end

defmodule Google.Privacy.Dlp.V2.ReidentifyContentResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          item: Google.Privacy.Dlp.V2.ContentItem.t() | nil,
          overview: Google.Privacy.Dlp.V2.TransformationOverview.t() | nil
        }

  defstruct [:item, :overview]

  field :item, 1, type: Google.Privacy.Dlp.V2.ContentItem
  field :overview, 2, type: Google.Privacy.Dlp.V2.TransformationOverview

  def transform_module(), do: nil
end

defmodule Google.Privacy.Dlp.V2.InspectContentRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          inspect_config: Google.Privacy.Dlp.V2.InspectConfig.t() | nil,
          item: Google.Privacy.Dlp.V2.ContentItem.t() | nil,
          inspect_template_name: String.t(),
          location_id: String.t()
        }

  defstruct [:parent, :inspect_config, :item, :inspect_template_name, :location_id]

  field :parent, 1, type: :string
  field :inspect_config, 2, type: Google.Privacy.Dlp.V2.InspectConfig, json_name: "inspectConfig"
  field :item, 3, type: Google.Privacy.Dlp.V2.ContentItem
  field :inspect_template_name, 4, type: :string, json_name: "inspectTemplateName"
  field :location_id, 5, type: :string, json_name: "locationId"

  def transform_module(), do: nil
end

defmodule Google.Privacy.Dlp.V2.InspectContentResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          result: Google.Privacy.Dlp.V2.InspectResult.t() | nil
        }

  defstruct [:result]

  field :result, 1, type: Google.Privacy.Dlp.V2.InspectResult

  def transform_module(), do: nil
end

defmodule Google.Privacy.Dlp.V2.OutputStorageConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          type: {:table, Google.Privacy.Dlp.V2.BigQueryTable.t() | nil},
          output_schema: Google.Privacy.Dlp.V2.OutputStorageConfig.OutputSchema.t()
        }

  defstruct [:type, :output_schema]

  oneof :type, 0

  field :table, 1, type: Google.Privacy.Dlp.V2.BigQueryTable, oneof: 0

  field :output_schema, 3,
    type: Google.Privacy.Dlp.V2.OutputStorageConfig.OutputSchema,
    enum: true,
    json_name: "outputSchema"

  def transform_module(), do: nil
end

defmodule Google.Privacy.Dlp.V2.InfoTypeStats do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          info_type: Google.Privacy.Dlp.V2.InfoType.t() | nil,
          count: integer
        }

  defstruct [:info_type, :count]

  field :info_type, 1, type: Google.Privacy.Dlp.V2.InfoType, json_name: "infoType"
  field :count, 2, type: :int64

  def transform_module(), do: nil
end

defmodule Google.Privacy.Dlp.V2.InspectDataSourceDetails.RequestedOptions do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          snapshot_inspect_template: Google.Privacy.Dlp.V2.InspectTemplate.t() | nil,
          job_config: Google.Privacy.Dlp.V2.InspectJobConfig.t() | nil
        }

  defstruct [:snapshot_inspect_template, :job_config]

  field :snapshot_inspect_template, 1,
    type: Google.Privacy.Dlp.V2.InspectTemplate,
    json_name: "snapshotInspectTemplate"

  field :job_config, 3, type: Google.Privacy.Dlp.V2.InspectJobConfig, json_name: "jobConfig"

  def transform_module(), do: nil
end

defmodule Google.Privacy.Dlp.V2.InspectDataSourceDetails.Result do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          processed_bytes: integer,
          total_estimated_bytes: integer,
          info_type_stats: [Google.Privacy.Dlp.V2.InfoTypeStats.t()],
          hybrid_stats: Google.Privacy.Dlp.V2.HybridInspectStatistics.t() | nil
        }

  defstruct [:processed_bytes, :total_estimated_bytes, :info_type_stats, :hybrid_stats]

  field :processed_bytes, 1, type: :int64, json_name: "processedBytes"
  field :total_estimated_bytes, 2, type: :int64, json_name: "totalEstimatedBytes"

  field :info_type_stats, 3,
    repeated: true,
    type: Google.Privacy.Dlp.V2.InfoTypeStats,
    json_name: "infoTypeStats"

  field :hybrid_stats, 7,
    type: Google.Privacy.Dlp.V2.HybridInspectStatistics,
    json_name: "hybridStats"

  def transform_module(), do: nil
end

defmodule Google.Privacy.Dlp.V2.InspectDataSourceDetails do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          requested_options:
            Google.Privacy.Dlp.V2.InspectDataSourceDetails.RequestedOptions.t() | nil,
          result: Google.Privacy.Dlp.V2.InspectDataSourceDetails.Result.t() | nil
        }

  defstruct [:requested_options, :result]

  field :requested_options, 2,
    type: Google.Privacy.Dlp.V2.InspectDataSourceDetails.RequestedOptions,
    json_name: "requestedOptions"

  field :result, 3, type: Google.Privacy.Dlp.V2.InspectDataSourceDetails.Result

  def transform_module(), do: nil
end

defmodule Google.Privacy.Dlp.V2.HybridInspectStatistics do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          processed_count: integer,
          aborted_count: integer,
          pending_count: integer
        }

  defstruct [:processed_count, :aborted_count, :pending_count]

  field :processed_count, 1, type: :int64, json_name: "processedCount"
  field :aborted_count, 2, type: :int64, json_name: "abortedCount"
  field :pending_count, 3, type: :int64, json_name: "pendingCount"

  def transform_module(), do: nil
end

defmodule Google.Privacy.Dlp.V2.InfoTypeDescription do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          display_name: String.t(),
          supported_by: [Google.Privacy.Dlp.V2.InfoTypeSupportedBy.t()],
          description: String.t()
        }

  defstruct [:name, :display_name, :supported_by, :description]

  field :name, 1, type: :string
  field :display_name, 2, type: :string, json_name: "displayName"

  field :supported_by, 3,
    repeated: true,
    type: Google.Privacy.Dlp.V2.InfoTypeSupportedBy,
    enum: true,
    json_name: "supportedBy"

  field :description, 4, type: :string

  def transform_module(), do: nil
end

defmodule Google.Privacy.Dlp.V2.ListInfoTypesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          language_code: String.t(),
          filter: String.t(),
          location_id: String.t()
        }

  defstruct [:parent, :language_code, :filter, :location_id]

  field :parent, 4, type: :string
  field :language_code, 1, type: :string, json_name: "languageCode"
  field :filter, 2, type: :string
  field :location_id, 3, type: :string, json_name: "locationId"

  def transform_module(), do: nil
end

defmodule Google.Privacy.Dlp.V2.ListInfoTypesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          info_types: [Google.Privacy.Dlp.V2.InfoTypeDescription.t()]
        }

  defstruct [:info_types]

  field :info_types, 1,
    repeated: true,
    type: Google.Privacy.Dlp.V2.InfoTypeDescription,
    json_name: "infoTypes"

  def transform_module(), do: nil
end

defmodule Google.Privacy.Dlp.V2.RiskAnalysisJobConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          privacy_metric: Google.Privacy.Dlp.V2.PrivacyMetric.t() | nil,
          source_table: Google.Privacy.Dlp.V2.BigQueryTable.t() | nil,
          actions: [Google.Privacy.Dlp.V2.Action.t()]
        }

  defstruct [:privacy_metric, :source_table, :actions]

  field :privacy_metric, 1, type: Google.Privacy.Dlp.V2.PrivacyMetric, json_name: "privacyMetric"
  field :source_table, 2, type: Google.Privacy.Dlp.V2.BigQueryTable, json_name: "sourceTable"
  field :actions, 3, repeated: true, type: Google.Privacy.Dlp.V2.Action

  def transform_module(), do: nil
end

defmodule Google.Privacy.Dlp.V2.QuasiId do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          tag:
            {:info_type, Google.Privacy.Dlp.V2.InfoType.t() | nil}
            | {:custom_tag, String.t()}
            | {:inferred, Google.Protobuf.Empty.t() | nil},
          field: Google.Privacy.Dlp.V2.FieldId.t() | nil
        }

  defstruct [:tag, :field]

  oneof :tag, 0

  field :field, 1, type: Google.Privacy.Dlp.V2.FieldId
  field :info_type, 2, type: Google.Privacy.Dlp.V2.InfoType, json_name: "infoType", oneof: 0
  field :custom_tag, 3, type: :string, json_name: "customTag", oneof: 0
  field :inferred, 4, type: Google.Protobuf.Empty, oneof: 0

  def transform_module(), do: nil
end

defmodule Google.Privacy.Dlp.V2.StatisticalTable.QuasiIdentifierField do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          field: Google.Privacy.Dlp.V2.FieldId.t() | nil,
          custom_tag: String.t()
        }

  defstruct [:field, :custom_tag]

  field :field, 1, type: Google.Privacy.Dlp.V2.FieldId
  field :custom_tag, 2, type: :string, json_name: "customTag"

  def transform_module(), do: nil
end

defmodule Google.Privacy.Dlp.V2.StatisticalTable do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          table: Google.Privacy.Dlp.V2.BigQueryTable.t() | nil,
          quasi_ids: [Google.Privacy.Dlp.V2.StatisticalTable.QuasiIdentifierField.t()],
          relative_frequency: Google.Privacy.Dlp.V2.FieldId.t() | nil
        }

  defstruct [:table, :quasi_ids, :relative_frequency]

  field :table, 3, type: Google.Privacy.Dlp.V2.BigQueryTable

  field :quasi_ids, 1,
    repeated: true,
    type: Google.Privacy.Dlp.V2.StatisticalTable.QuasiIdentifierField,
    json_name: "quasiIds"

  field :relative_frequency, 2,
    type: Google.Privacy.Dlp.V2.FieldId,
    json_name: "relativeFrequency"

  def transform_module(), do: nil
end

defmodule Google.Privacy.Dlp.V2.PrivacyMetric.NumericalStatsConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          field: Google.Privacy.Dlp.V2.FieldId.t() | nil
        }

  defstruct [:field]

  field :field, 1, type: Google.Privacy.Dlp.V2.FieldId

  def transform_module(), do: nil
end

defmodule Google.Privacy.Dlp.V2.PrivacyMetric.CategoricalStatsConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          field: Google.Privacy.Dlp.V2.FieldId.t() | nil
        }

  defstruct [:field]

  field :field, 1, type: Google.Privacy.Dlp.V2.FieldId

  def transform_module(), do: nil
end

defmodule Google.Privacy.Dlp.V2.PrivacyMetric.KAnonymityConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          quasi_ids: [Google.Privacy.Dlp.V2.FieldId.t()],
          entity_id: Google.Privacy.Dlp.V2.EntityId.t() | nil
        }

  defstruct [:quasi_ids, :entity_id]

  field :quasi_ids, 1, repeated: true, type: Google.Privacy.Dlp.V2.FieldId, json_name: "quasiIds"
  field :entity_id, 2, type: Google.Privacy.Dlp.V2.EntityId, json_name: "entityId"

  def transform_module(), do: nil
end

defmodule Google.Privacy.Dlp.V2.PrivacyMetric.LDiversityConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          quasi_ids: [Google.Privacy.Dlp.V2.FieldId.t()],
          sensitive_attribute: Google.Privacy.Dlp.V2.FieldId.t() | nil
        }

  defstruct [:quasi_ids, :sensitive_attribute]

  field :quasi_ids, 1, repeated: true, type: Google.Privacy.Dlp.V2.FieldId, json_name: "quasiIds"

  field :sensitive_attribute, 2,
    type: Google.Privacy.Dlp.V2.FieldId,
    json_name: "sensitiveAttribute"

  def transform_module(), do: nil
end

defmodule Google.Privacy.Dlp.V2.PrivacyMetric.KMapEstimationConfig.TaggedField do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          tag:
            {:info_type, Google.Privacy.Dlp.V2.InfoType.t() | nil}
            | {:custom_tag, String.t()}
            | {:inferred, Google.Protobuf.Empty.t() | nil},
          field: Google.Privacy.Dlp.V2.FieldId.t() | nil
        }

  defstruct [:tag, :field]

  oneof :tag, 0

  field :field, 1, type: Google.Privacy.Dlp.V2.FieldId
  field :info_type, 2, type: Google.Privacy.Dlp.V2.InfoType, json_name: "infoType", oneof: 0
  field :custom_tag, 3, type: :string, json_name: "customTag", oneof: 0
  field :inferred, 4, type: Google.Protobuf.Empty, oneof: 0

  def transform_module(), do: nil
end

defmodule Google.Privacy.Dlp.V2.PrivacyMetric.KMapEstimationConfig.AuxiliaryTable.QuasiIdField do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          field: Google.Privacy.Dlp.V2.FieldId.t() | nil,
          custom_tag: String.t()
        }

  defstruct [:field, :custom_tag]

  field :field, 1, type: Google.Privacy.Dlp.V2.FieldId
  field :custom_tag, 2, type: :string, json_name: "customTag"

  def transform_module(), do: nil
end

defmodule Google.Privacy.Dlp.V2.PrivacyMetric.KMapEstimationConfig.AuxiliaryTable do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          table: Google.Privacy.Dlp.V2.BigQueryTable.t() | nil,
          quasi_ids: [
            Google.Privacy.Dlp.V2.PrivacyMetric.KMapEstimationConfig.AuxiliaryTable.QuasiIdField.t()
          ],
          relative_frequency: Google.Privacy.Dlp.V2.FieldId.t() | nil
        }

  defstruct [:table, :quasi_ids, :relative_frequency]

  field :table, 3, type: Google.Privacy.Dlp.V2.BigQueryTable

  field :quasi_ids, 1,
    repeated: true,
    type: Google.Privacy.Dlp.V2.PrivacyMetric.KMapEstimationConfig.AuxiliaryTable.QuasiIdField,
    json_name: "quasiIds"

  field :relative_frequency, 2,
    type: Google.Privacy.Dlp.V2.FieldId,
    json_name: "relativeFrequency"

  def transform_module(), do: nil
end

defmodule Google.Privacy.Dlp.V2.PrivacyMetric.KMapEstimationConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          quasi_ids: [Google.Privacy.Dlp.V2.PrivacyMetric.KMapEstimationConfig.TaggedField.t()],
          region_code: String.t(),
          auxiliary_tables: [
            Google.Privacy.Dlp.V2.PrivacyMetric.KMapEstimationConfig.AuxiliaryTable.t()
          ]
        }

  defstruct [:quasi_ids, :region_code, :auxiliary_tables]

  field :quasi_ids, 1,
    repeated: true,
    type: Google.Privacy.Dlp.V2.PrivacyMetric.KMapEstimationConfig.TaggedField,
    json_name: "quasiIds"

  field :region_code, 2, type: :string, json_name: "regionCode"

  field :auxiliary_tables, 3,
    repeated: true,
    type: Google.Privacy.Dlp.V2.PrivacyMetric.KMapEstimationConfig.AuxiliaryTable,
    json_name: "auxiliaryTables"

  def transform_module(), do: nil
end

defmodule Google.Privacy.Dlp.V2.PrivacyMetric.DeltaPresenceEstimationConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          quasi_ids: [Google.Privacy.Dlp.V2.QuasiId.t()],
          region_code: String.t(),
          auxiliary_tables: [Google.Privacy.Dlp.V2.StatisticalTable.t()]
        }

  defstruct [:quasi_ids, :region_code, :auxiliary_tables]

  field :quasi_ids, 1, repeated: true, type: Google.Privacy.Dlp.V2.QuasiId, json_name: "quasiIds"
  field :region_code, 2, type: :string, json_name: "regionCode"

  field :auxiliary_tables, 3,
    repeated: true,
    type: Google.Privacy.Dlp.V2.StatisticalTable,
    json_name: "auxiliaryTables"

  def transform_module(), do: nil
end

defmodule Google.Privacy.Dlp.V2.PrivacyMetric do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          type:
            {:numerical_stats_config,
             Google.Privacy.Dlp.V2.PrivacyMetric.NumericalStatsConfig.t() | nil}
            | {:categorical_stats_config,
               Google.Privacy.Dlp.V2.PrivacyMetric.CategoricalStatsConfig.t() | nil}
            | {:k_anonymity_config,
               Google.Privacy.Dlp.V2.PrivacyMetric.KAnonymityConfig.t() | nil}
            | {:l_diversity_config,
               Google.Privacy.Dlp.V2.PrivacyMetric.LDiversityConfig.t() | nil}
            | {:k_map_estimation_config,
               Google.Privacy.Dlp.V2.PrivacyMetric.KMapEstimationConfig.t() | nil}
            | {:delta_presence_estimation_config,
               Google.Privacy.Dlp.V2.PrivacyMetric.DeltaPresenceEstimationConfig.t() | nil}
        }

  defstruct [:type]

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

  def transform_module(), do: nil
end

defmodule Google.Privacy.Dlp.V2.AnalyzeDataSourceRiskDetails.NumericalStatsResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          min_value: Google.Privacy.Dlp.V2.Value.t() | nil,
          max_value: Google.Privacy.Dlp.V2.Value.t() | nil,
          quantile_values: [Google.Privacy.Dlp.V2.Value.t()]
        }

  defstruct [:min_value, :max_value, :quantile_values]

  field :min_value, 1, type: Google.Privacy.Dlp.V2.Value, json_name: "minValue"
  field :max_value, 2, type: Google.Privacy.Dlp.V2.Value, json_name: "maxValue"

  field :quantile_values, 4,
    repeated: true,
    type: Google.Privacy.Dlp.V2.Value,
    json_name: "quantileValues"

  def transform_module(), do: nil
end

defmodule Google.Privacy.Dlp.V2.AnalyzeDataSourceRiskDetails.CategoricalStatsResult.CategoricalStatsHistogramBucket do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          value_frequency_lower_bound: integer,
          value_frequency_upper_bound: integer,
          bucket_size: integer,
          bucket_values: [Google.Privacy.Dlp.V2.ValueFrequency.t()],
          bucket_value_count: integer
        }

  defstruct [
    :value_frequency_lower_bound,
    :value_frequency_upper_bound,
    :bucket_size,
    :bucket_values,
    :bucket_value_count
  ]

  field :value_frequency_lower_bound, 1, type: :int64, json_name: "valueFrequencyLowerBound"
  field :value_frequency_upper_bound, 2, type: :int64, json_name: "valueFrequencyUpperBound"
  field :bucket_size, 3, type: :int64, json_name: "bucketSize"

  field :bucket_values, 4,
    repeated: true,
    type: Google.Privacy.Dlp.V2.ValueFrequency,
    json_name: "bucketValues"

  field :bucket_value_count, 5, type: :int64, json_name: "bucketValueCount"

  def transform_module(), do: nil
end

defmodule Google.Privacy.Dlp.V2.AnalyzeDataSourceRiskDetails.CategoricalStatsResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          value_frequency_histogram_buckets: [
            Google.Privacy.Dlp.V2.AnalyzeDataSourceRiskDetails.CategoricalStatsResult.CategoricalStatsHistogramBucket.t()
          ]
        }

  defstruct [:value_frequency_histogram_buckets]

  field :value_frequency_histogram_buckets, 5,
    repeated: true,
    type:
      Google.Privacy.Dlp.V2.AnalyzeDataSourceRiskDetails.CategoricalStatsResult.CategoricalStatsHistogramBucket,
    json_name: "valueFrequencyHistogramBuckets"

  def transform_module(), do: nil
end

defmodule Google.Privacy.Dlp.V2.AnalyzeDataSourceRiskDetails.KAnonymityResult.KAnonymityEquivalenceClass do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          quasi_ids_values: [Google.Privacy.Dlp.V2.Value.t()],
          equivalence_class_size: integer
        }

  defstruct [:quasi_ids_values, :equivalence_class_size]

  field :quasi_ids_values, 1,
    repeated: true,
    type: Google.Privacy.Dlp.V2.Value,
    json_name: "quasiIdsValues"

  field :equivalence_class_size, 2, type: :int64, json_name: "equivalenceClassSize"

  def transform_module(), do: nil
end

defmodule Google.Privacy.Dlp.V2.AnalyzeDataSourceRiskDetails.KAnonymityResult.KAnonymityHistogramBucket do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          equivalence_class_size_lower_bound: integer,
          equivalence_class_size_upper_bound: integer,
          bucket_size: integer,
          bucket_values: [
            Google.Privacy.Dlp.V2.AnalyzeDataSourceRiskDetails.KAnonymityResult.KAnonymityEquivalenceClass.t()
          ],
          bucket_value_count: integer
        }

  defstruct [
    :equivalence_class_size_lower_bound,
    :equivalence_class_size_upper_bound,
    :bucket_size,
    :bucket_values,
    :bucket_value_count
  ]

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

  def transform_module(), do: nil
end

defmodule Google.Privacy.Dlp.V2.AnalyzeDataSourceRiskDetails.KAnonymityResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          equivalence_class_histogram_buckets: [
            Google.Privacy.Dlp.V2.AnalyzeDataSourceRiskDetails.KAnonymityResult.KAnonymityHistogramBucket.t()
          ]
        }

  defstruct [:equivalence_class_histogram_buckets]

  field :equivalence_class_histogram_buckets, 5,
    repeated: true,
    type:
      Google.Privacy.Dlp.V2.AnalyzeDataSourceRiskDetails.KAnonymityResult.KAnonymityHistogramBucket,
    json_name: "equivalenceClassHistogramBuckets"

  def transform_module(), do: nil
end

defmodule Google.Privacy.Dlp.V2.AnalyzeDataSourceRiskDetails.LDiversityResult.LDiversityEquivalenceClass do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          quasi_ids_values: [Google.Privacy.Dlp.V2.Value.t()],
          equivalence_class_size: integer,
          num_distinct_sensitive_values: integer,
          top_sensitive_values: [Google.Privacy.Dlp.V2.ValueFrequency.t()]
        }

  defstruct [
    :quasi_ids_values,
    :equivalence_class_size,
    :num_distinct_sensitive_values,
    :top_sensitive_values
  ]

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

  def transform_module(), do: nil
end

defmodule Google.Privacy.Dlp.V2.AnalyzeDataSourceRiskDetails.LDiversityResult.LDiversityHistogramBucket do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          sensitive_value_frequency_lower_bound: integer,
          sensitive_value_frequency_upper_bound: integer,
          bucket_size: integer,
          bucket_values: [
            Google.Privacy.Dlp.V2.AnalyzeDataSourceRiskDetails.LDiversityResult.LDiversityEquivalenceClass.t()
          ],
          bucket_value_count: integer
        }

  defstruct [
    :sensitive_value_frequency_lower_bound,
    :sensitive_value_frequency_upper_bound,
    :bucket_size,
    :bucket_values,
    :bucket_value_count
  ]

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

  def transform_module(), do: nil
end

defmodule Google.Privacy.Dlp.V2.AnalyzeDataSourceRiskDetails.LDiversityResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          sensitive_value_frequency_histogram_buckets: [
            Google.Privacy.Dlp.V2.AnalyzeDataSourceRiskDetails.LDiversityResult.LDiversityHistogramBucket.t()
          ]
        }

  defstruct [:sensitive_value_frequency_histogram_buckets]

  field :sensitive_value_frequency_histogram_buckets, 5,
    repeated: true,
    type:
      Google.Privacy.Dlp.V2.AnalyzeDataSourceRiskDetails.LDiversityResult.LDiversityHistogramBucket,
    json_name: "sensitiveValueFrequencyHistogramBuckets"

  def transform_module(), do: nil
end

defmodule Google.Privacy.Dlp.V2.AnalyzeDataSourceRiskDetails.KMapEstimationResult.KMapEstimationQuasiIdValues do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          quasi_ids_values: [Google.Privacy.Dlp.V2.Value.t()],
          estimated_anonymity: integer
        }

  defstruct [:quasi_ids_values, :estimated_anonymity]

  field :quasi_ids_values, 1,
    repeated: true,
    type: Google.Privacy.Dlp.V2.Value,
    json_name: "quasiIdsValues"

  field :estimated_anonymity, 2, type: :int64, json_name: "estimatedAnonymity"

  def transform_module(), do: nil
end

defmodule Google.Privacy.Dlp.V2.AnalyzeDataSourceRiskDetails.KMapEstimationResult.KMapEstimationHistogramBucket do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          min_anonymity: integer,
          max_anonymity: integer,
          bucket_size: integer,
          bucket_values: [
            Google.Privacy.Dlp.V2.AnalyzeDataSourceRiskDetails.KMapEstimationResult.KMapEstimationQuasiIdValues.t()
          ],
          bucket_value_count: integer
        }

  defstruct [:min_anonymity, :max_anonymity, :bucket_size, :bucket_values, :bucket_value_count]

  field :min_anonymity, 1, type: :int64, json_name: "minAnonymity"
  field :max_anonymity, 2, type: :int64, json_name: "maxAnonymity"
  field :bucket_size, 5, type: :int64, json_name: "bucketSize"

  field :bucket_values, 6,
    repeated: true,
    type:
      Google.Privacy.Dlp.V2.AnalyzeDataSourceRiskDetails.KMapEstimationResult.KMapEstimationQuasiIdValues,
    json_name: "bucketValues"

  field :bucket_value_count, 7, type: :int64, json_name: "bucketValueCount"

  def transform_module(), do: nil
end

defmodule Google.Privacy.Dlp.V2.AnalyzeDataSourceRiskDetails.KMapEstimationResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          k_map_estimation_histogram: [
            Google.Privacy.Dlp.V2.AnalyzeDataSourceRiskDetails.KMapEstimationResult.KMapEstimationHistogramBucket.t()
          ]
        }

  defstruct [:k_map_estimation_histogram]

  field :k_map_estimation_histogram, 1,
    repeated: true,
    type:
      Google.Privacy.Dlp.V2.AnalyzeDataSourceRiskDetails.KMapEstimationResult.KMapEstimationHistogramBucket,
    json_name: "kMapEstimationHistogram"

  def transform_module(), do: nil
end

defmodule Google.Privacy.Dlp.V2.AnalyzeDataSourceRiskDetails.DeltaPresenceEstimationResult.DeltaPresenceEstimationQuasiIdValues do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          quasi_ids_values: [Google.Privacy.Dlp.V2.Value.t()],
          estimated_probability: float | :infinity | :negative_infinity | :nan
        }

  defstruct [:quasi_ids_values, :estimated_probability]

  field :quasi_ids_values, 1,
    repeated: true,
    type: Google.Privacy.Dlp.V2.Value,
    json_name: "quasiIdsValues"

  field :estimated_probability, 2, type: :double, json_name: "estimatedProbability"

  def transform_module(), do: nil
end

defmodule Google.Privacy.Dlp.V2.AnalyzeDataSourceRiskDetails.DeltaPresenceEstimationResult.DeltaPresenceEstimationHistogramBucket do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          min_probability: float | :infinity | :negative_infinity | :nan,
          max_probability: float | :infinity | :negative_infinity | :nan,
          bucket_size: integer,
          bucket_values: [
            Google.Privacy.Dlp.V2.AnalyzeDataSourceRiskDetails.DeltaPresenceEstimationResult.DeltaPresenceEstimationQuasiIdValues.t()
          ],
          bucket_value_count: integer
        }

  defstruct [
    :min_probability,
    :max_probability,
    :bucket_size,
    :bucket_values,
    :bucket_value_count
  ]

  field :min_probability, 1, type: :double, json_name: "minProbability"
  field :max_probability, 2, type: :double, json_name: "maxProbability"
  field :bucket_size, 5, type: :int64, json_name: "bucketSize"

  field :bucket_values, 6,
    repeated: true,
    type:
      Google.Privacy.Dlp.V2.AnalyzeDataSourceRiskDetails.DeltaPresenceEstimationResult.DeltaPresenceEstimationQuasiIdValues,
    json_name: "bucketValues"

  field :bucket_value_count, 7, type: :int64, json_name: "bucketValueCount"

  def transform_module(), do: nil
end

defmodule Google.Privacy.Dlp.V2.AnalyzeDataSourceRiskDetails.DeltaPresenceEstimationResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          delta_presence_estimation_histogram: [
            Google.Privacy.Dlp.V2.AnalyzeDataSourceRiskDetails.DeltaPresenceEstimationResult.DeltaPresenceEstimationHistogramBucket.t()
          ]
        }

  defstruct [:delta_presence_estimation_histogram]

  field :delta_presence_estimation_histogram, 1,
    repeated: true,
    type:
      Google.Privacy.Dlp.V2.AnalyzeDataSourceRiskDetails.DeltaPresenceEstimationResult.DeltaPresenceEstimationHistogramBucket,
    json_name: "deltaPresenceEstimationHistogram"

  def transform_module(), do: nil
end

defmodule Google.Privacy.Dlp.V2.AnalyzeDataSourceRiskDetails.RequestedRiskAnalysisOptions do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          job_config: Google.Privacy.Dlp.V2.RiskAnalysisJobConfig.t() | nil
        }

  defstruct [:job_config]

  field :job_config, 1, type: Google.Privacy.Dlp.V2.RiskAnalysisJobConfig, json_name: "jobConfig"

  def transform_module(), do: nil
end

defmodule Google.Privacy.Dlp.V2.AnalyzeDataSourceRiskDetails do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          result:
            {:numerical_stats_result,
             Google.Privacy.Dlp.V2.AnalyzeDataSourceRiskDetails.NumericalStatsResult.t() | nil}
            | {:categorical_stats_result,
               Google.Privacy.Dlp.V2.AnalyzeDataSourceRiskDetails.CategoricalStatsResult.t() | nil}
            | {:k_anonymity_result,
               Google.Privacy.Dlp.V2.AnalyzeDataSourceRiskDetails.KAnonymityResult.t() | nil}
            | {:l_diversity_result,
               Google.Privacy.Dlp.V2.AnalyzeDataSourceRiskDetails.LDiversityResult.t() | nil}
            | {:k_map_estimation_result,
               Google.Privacy.Dlp.V2.AnalyzeDataSourceRiskDetails.KMapEstimationResult.t() | nil}
            | {:delta_presence_estimation_result,
               Google.Privacy.Dlp.V2.AnalyzeDataSourceRiskDetails.DeltaPresenceEstimationResult.t()
               | nil},
          requested_privacy_metric: Google.Privacy.Dlp.V2.PrivacyMetric.t() | nil,
          requested_source_table: Google.Privacy.Dlp.V2.BigQueryTable.t() | nil,
          requested_options:
            Google.Privacy.Dlp.V2.AnalyzeDataSourceRiskDetails.RequestedRiskAnalysisOptions.t()
            | nil
        }

  defstruct [:result, :requested_privacy_metric, :requested_source_table, :requested_options]

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

  def transform_module(), do: nil
end

defmodule Google.Privacy.Dlp.V2.ValueFrequency do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          value: Google.Privacy.Dlp.V2.Value.t() | nil,
          count: integer
        }

  defstruct [:value, :count]

  field :value, 1, type: Google.Privacy.Dlp.V2.Value
  field :count, 2, type: :int64

  def transform_module(), do: nil
end

defmodule Google.Privacy.Dlp.V2.Value do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          type:
            {:integer_value, integer}
            | {:float_value, float | :infinity | :negative_infinity | :nan}
            | {:string_value, String.t()}
            | {:boolean_value, boolean}
            | {:timestamp_value, Google.Protobuf.Timestamp.t() | nil}
            | {:time_value, Google.Type.TimeOfDay.t() | nil}
            | {:date_value, Google.Type.Date.t() | nil}
            | {:day_of_week_value, Google.Type.DayOfWeek.t()}
        }

  defstruct [:type]

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
    enum: true,
    json_name: "dayOfWeekValue",
    oneof: 0

  def transform_module(), do: nil
end

defmodule Google.Privacy.Dlp.V2.QuoteInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parsed_quote: {:date_time, Google.Privacy.Dlp.V2.DateTime.t() | nil}
        }

  defstruct [:parsed_quote]

  oneof :parsed_quote, 0

  field :date_time, 2, type: Google.Privacy.Dlp.V2.DateTime, json_name: "dateTime", oneof: 0

  def transform_module(), do: nil
end

defmodule Google.Privacy.Dlp.V2.DateTime.TimeZone do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          offset_minutes: integer
        }

  defstruct [:offset_minutes]

  field :offset_minutes, 1, type: :int32, json_name: "offsetMinutes"

  def transform_module(), do: nil
end

defmodule Google.Privacy.Dlp.V2.DateTime do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          date: Google.Type.Date.t() | nil,
          day_of_week: Google.Type.DayOfWeek.t(),
          time: Google.Type.TimeOfDay.t() | nil,
          time_zone: Google.Privacy.Dlp.V2.DateTime.TimeZone.t() | nil
        }

  defstruct [:date, :day_of_week, :time, :time_zone]

  field :date, 1, type: Google.Type.Date
  field :day_of_week, 2, type: Google.Type.DayOfWeek, enum: true, json_name: "dayOfWeek"
  field :time, 3, type: Google.Type.TimeOfDay
  field :time_zone, 4, type: Google.Privacy.Dlp.V2.DateTime.TimeZone, json_name: "timeZone"

  def transform_module(), do: nil
end

defmodule Google.Privacy.Dlp.V2.DeidentifyConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          transformation:
            {:info_type_transformations, Google.Privacy.Dlp.V2.InfoTypeTransformations.t() | nil}
            | {:record_transformations, Google.Privacy.Dlp.V2.RecordTransformations.t() | nil},
          transformation_error_handling:
            Google.Privacy.Dlp.V2.TransformationErrorHandling.t() | nil
        }

  defstruct [:transformation, :transformation_error_handling]

  oneof :transformation, 0

  field :info_type_transformations, 1,
    type: Google.Privacy.Dlp.V2.InfoTypeTransformations,
    json_name: "infoTypeTransformations",
    oneof: 0

  field :record_transformations, 2,
    type: Google.Privacy.Dlp.V2.RecordTransformations,
    json_name: "recordTransformations",
    oneof: 0

  field :transformation_error_handling, 3,
    type: Google.Privacy.Dlp.V2.TransformationErrorHandling,
    json_name: "transformationErrorHandling"

  def transform_module(), do: nil
end

defmodule Google.Privacy.Dlp.V2.TransformationErrorHandling.ThrowError do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []

  def transform_module(), do: nil
end

defmodule Google.Privacy.Dlp.V2.TransformationErrorHandling.LeaveUntransformed do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []

  def transform_module(), do: nil
end

defmodule Google.Privacy.Dlp.V2.TransformationErrorHandling do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          mode:
            {:throw_error, Google.Privacy.Dlp.V2.TransformationErrorHandling.ThrowError.t() | nil}
            | {:leave_untransformed,
               Google.Privacy.Dlp.V2.TransformationErrorHandling.LeaveUntransformed.t() | nil}
        }

  defstruct [:mode]

  oneof :mode, 0

  field :throw_error, 1,
    type: Google.Privacy.Dlp.V2.TransformationErrorHandling.ThrowError,
    json_name: "throwError",
    oneof: 0

  field :leave_untransformed, 2,
    type: Google.Privacy.Dlp.V2.TransformationErrorHandling.LeaveUntransformed,
    json_name: "leaveUntransformed",
    oneof: 0

  def transform_module(), do: nil
end

defmodule Google.Privacy.Dlp.V2.PrimitiveTransformation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          transformation:
            {:replace_config, Google.Privacy.Dlp.V2.ReplaceValueConfig.t() | nil}
            | {:redact_config, Google.Privacy.Dlp.V2.RedactConfig.t() | nil}
            | {:character_mask_config, Google.Privacy.Dlp.V2.CharacterMaskConfig.t() | nil}
            | {:crypto_replace_ffx_fpe_config,
               Google.Privacy.Dlp.V2.CryptoReplaceFfxFpeConfig.t() | nil}
            | {:fixed_size_bucketing_config,
               Google.Privacy.Dlp.V2.FixedSizeBucketingConfig.t() | nil}
            | {:bucketing_config, Google.Privacy.Dlp.V2.BucketingConfig.t() | nil}
            | {:replace_with_info_type_config,
               Google.Privacy.Dlp.V2.ReplaceWithInfoTypeConfig.t() | nil}
            | {:time_part_config, Google.Privacy.Dlp.V2.TimePartConfig.t() | nil}
            | {:crypto_hash_config, Google.Privacy.Dlp.V2.CryptoHashConfig.t() | nil}
            | {:date_shift_config, Google.Privacy.Dlp.V2.DateShiftConfig.t() | nil}
            | {:crypto_deterministic_config,
               Google.Privacy.Dlp.V2.CryptoDeterministicConfig.t() | nil}
            | {:replace_dictionary_config,
               Google.Privacy.Dlp.V2.ReplaceDictionaryConfig.t() | nil}
        }

  defstruct [:transformation]

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

  def transform_module(), do: nil
end

defmodule Google.Privacy.Dlp.V2.TimePartConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          part_to_extract: Google.Privacy.Dlp.V2.TimePartConfig.TimePart.t()
        }

  defstruct [:part_to_extract]

  field :part_to_extract, 1,
    type: Google.Privacy.Dlp.V2.TimePartConfig.TimePart,
    enum: true,
    json_name: "partToExtract"

  def transform_module(), do: nil
end

defmodule Google.Privacy.Dlp.V2.CryptoHashConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          crypto_key: Google.Privacy.Dlp.V2.CryptoKey.t() | nil
        }

  defstruct [:crypto_key]

  field :crypto_key, 1, type: Google.Privacy.Dlp.V2.CryptoKey, json_name: "cryptoKey"

  def transform_module(), do: nil
end

defmodule Google.Privacy.Dlp.V2.CryptoDeterministicConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          crypto_key: Google.Privacy.Dlp.V2.CryptoKey.t() | nil,
          surrogate_info_type: Google.Privacy.Dlp.V2.InfoType.t() | nil,
          context: Google.Privacy.Dlp.V2.FieldId.t() | nil
        }

  defstruct [:crypto_key, :surrogate_info_type, :context]

  field :crypto_key, 1, type: Google.Privacy.Dlp.V2.CryptoKey, json_name: "cryptoKey"

  field :surrogate_info_type, 2,
    type: Google.Privacy.Dlp.V2.InfoType,
    json_name: "surrogateInfoType"

  field :context, 3, type: Google.Privacy.Dlp.V2.FieldId

  def transform_module(), do: nil
end

defmodule Google.Privacy.Dlp.V2.ReplaceValueConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          new_value: Google.Privacy.Dlp.V2.Value.t() | nil
        }

  defstruct [:new_value]

  field :new_value, 1, type: Google.Privacy.Dlp.V2.Value, json_name: "newValue"

  def transform_module(), do: nil
end

defmodule Google.Privacy.Dlp.V2.ReplaceDictionaryConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          type: {:word_list, Google.Privacy.Dlp.V2.CustomInfoType.Dictionary.WordList.t() | nil}
        }

  defstruct [:type]

  oneof :type, 0

  field :word_list, 1,
    type: Google.Privacy.Dlp.V2.CustomInfoType.Dictionary.WordList,
    json_name: "wordList",
    oneof: 0

  def transform_module(), do: nil
end

defmodule Google.Privacy.Dlp.V2.ReplaceWithInfoTypeConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []

  def transform_module(), do: nil
end

defmodule Google.Privacy.Dlp.V2.RedactConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []

  def transform_module(), do: nil
end

defmodule Google.Privacy.Dlp.V2.CharsToIgnore do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          characters:
            {:characters_to_skip, String.t()}
            | {:common_characters_to_ignore,
               Google.Privacy.Dlp.V2.CharsToIgnore.CommonCharsToIgnore.t()}
        }

  defstruct [:characters]

  oneof :characters, 0

  field :characters_to_skip, 1, type: :string, json_name: "charactersToSkip", oneof: 0

  field :common_characters_to_ignore, 2,
    type: Google.Privacy.Dlp.V2.CharsToIgnore.CommonCharsToIgnore,
    enum: true,
    json_name: "commonCharactersToIgnore",
    oneof: 0

  def transform_module(), do: nil
end

defmodule Google.Privacy.Dlp.V2.CharacterMaskConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          masking_character: String.t(),
          number_to_mask: integer,
          reverse_order: boolean,
          characters_to_ignore: [Google.Privacy.Dlp.V2.CharsToIgnore.t()]
        }

  defstruct [:masking_character, :number_to_mask, :reverse_order, :characters_to_ignore]

  field :masking_character, 1, type: :string, json_name: "maskingCharacter"
  field :number_to_mask, 2, type: :int32, json_name: "numberToMask"
  field :reverse_order, 3, type: :bool, json_name: "reverseOrder"

  field :characters_to_ignore, 4,
    repeated: true,
    type: Google.Privacy.Dlp.V2.CharsToIgnore,
    json_name: "charactersToIgnore"

  def transform_module(), do: nil
end

defmodule Google.Privacy.Dlp.V2.FixedSizeBucketingConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          lower_bound: Google.Privacy.Dlp.V2.Value.t() | nil,
          upper_bound: Google.Privacy.Dlp.V2.Value.t() | nil,
          bucket_size: float | :infinity | :negative_infinity | :nan
        }

  defstruct [:lower_bound, :upper_bound, :bucket_size]

  field :lower_bound, 1, type: Google.Privacy.Dlp.V2.Value, json_name: "lowerBound"
  field :upper_bound, 2, type: Google.Privacy.Dlp.V2.Value, json_name: "upperBound"
  field :bucket_size, 3, type: :double, json_name: "bucketSize"

  def transform_module(), do: nil
end

defmodule Google.Privacy.Dlp.V2.BucketingConfig.Bucket do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          min: Google.Privacy.Dlp.V2.Value.t() | nil,
          max: Google.Privacy.Dlp.V2.Value.t() | nil,
          replacement_value: Google.Privacy.Dlp.V2.Value.t() | nil
        }

  defstruct [:min, :max, :replacement_value]

  field :min, 1, type: Google.Privacy.Dlp.V2.Value
  field :max, 2, type: Google.Privacy.Dlp.V2.Value
  field :replacement_value, 3, type: Google.Privacy.Dlp.V2.Value, json_name: "replacementValue"

  def transform_module(), do: nil
end

defmodule Google.Privacy.Dlp.V2.BucketingConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          buckets: [Google.Privacy.Dlp.V2.BucketingConfig.Bucket.t()]
        }

  defstruct [:buckets]

  field :buckets, 1, repeated: true, type: Google.Privacy.Dlp.V2.BucketingConfig.Bucket

  def transform_module(), do: nil
end

defmodule Google.Privacy.Dlp.V2.CryptoReplaceFfxFpeConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          alphabet:
            {:common_alphabet,
             Google.Privacy.Dlp.V2.CryptoReplaceFfxFpeConfig.FfxCommonNativeAlphabet.t()}
            | {:custom_alphabet, String.t()}
            | {:radix, integer},
          crypto_key: Google.Privacy.Dlp.V2.CryptoKey.t() | nil,
          context: Google.Privacy.Dlp.V2.FieldId.t() | nil,
          surrogate_info_type: Google.Privacy.Dlp.V2.InfoType.t() | nil
        }

  defstruct [:alphabet, :crypto_key, :context, :surrogate_info_type]

  oneof :alphabet, 0

  field :crypto_key, 1, type: Google.Privacy.Dlp.V2.CryptoKey, json_name: "cryptoKey"
  field :context, 2, type: Google.Privacy.Dlp.V2.FieldId

  field :common_alphabet, 4,
    type: Google.Privacy.Dlp.V2.CryptoReplaceFfxFpeConfig.FfxCommonNativeAlphabet,
    enum: true,
    json_name: "commonAlphabet",
    oneof: 0

  field :custom_alphabet, 5, type: :string, json_name: "customAlphabet", oneof: 0
  field :radix, 6, type: :int32, oneof: 0

  field :surrogate_info_type, 8,
    type: Google.Privacy.Dlp.V2.InfoType,
    json_name: "surrogateInfoType"

  def transform_module(), do: nil
end

defmodule Google.Privacy.Dlp.V2.CryptoKey do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          source:
            {:transient, Google.Privacy.Dlp.V2.TransientCryptoKey.t() | nil}
            | {:unwrapped, Google.Privacy.Dlp.V2.UnwrappedCryptoKey.t() | nil}
            | {:kms_wrapped, Google.Privacy.Dlp.V2.KmsWrappedCryptoKey.t() | nil}
        }

  defstruct [:source]

  oneof :source, 0

  field :transient, 1, type: Google.Privacy.Dlp.V2.TransientCryptoKey, oneof: 0
  field :unwrapped, 2, type: Google.Privacy.Dlp.V2.UnwrappedCryptoKey, oneof: 0

  field :kms_wrapped, 3,
    type: Google.Privacy.Dlp.V2.KmsWrappedCryptoKey,
    json_name: "kmsWrapped",
    oneof: 0

  def transform_module(), do: nil
end

defmodule Google.Privacy.Dlp.V2.TransientCryptoKey do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Privacy.Dlp.V2.UnwrappedCryptoKey do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          key: binary
        }

  defstruct [:key]

  field :key, 1, type: :bytes

  def transform_module(), do: nil
end

defmodule Google.Privacy.Dlp.V2.KmsWrappedCryptoKey do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          wrapped_key: binary,
          crypto_key_name: String.t()
        }

  defstruct [:wrapped_key, :crypto_key_name]

  field :wrapped_key, 1, type: :bytes, json_name: "wrappedKey"
  field :crypto_key_name, 2, type: :string, json_name: "cryptoKeyName"

  def transform_module(), do: nil
end

defmodule Google.Privacy.Dlp.V2.DateShiftConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          method: {:crypto_key, Google.Privacy.Dlp.V2.CryptoKey.t() | nil},
          upper_bound_days: integer,
          lower_bound_days: integer,
          context: Google.Privacy.Dlp.V2.FieldId.t() | nil
        }

  defstruct [:method, :upper_bound_days, :lower_bound_days, :context]

  oneof :method, 0

  field :upper_bound_days, 1, type: :int32, json_name: "upperBoundDays"
  field :lower_bound_days, 2, type: :int32, json_name: "lowerBoundDays"
  field :context, 3, type: Google.Privacy.Dlp.V2.FieldId
  field :crypto_key, 4, type: Google.Privacy.Dlp.V2.CryptoKey, json_name: "cryptoKey", oneof: 0

  def transform_module(), do: nil
end

defmodule Google.Privacy.Dlp.V2.InfoTypeTransformations.InfoTypeTransformation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          info_types: [Google.Privacy.Dlp.V2.InfoType.t()],
          primitive_transformation: Google.Privacy.Dlp.V2.PrimitiveTransformation.t() | nil
        }

  defstruct [:info_types, :primitive_transformation]

  field :info_types, 1,
    repeated: true,
    type: Google.Privacy.Dlp.V2.InfoType,
    json_name: "infoTypes"

  field :primitive_transformation, 2,
    type: Google.Privacy.Dlp.V2.PrimitiveTransformation,
    json_name: "primitiveTransformation"

  def transform_module(), do: nil
end

defmodule Google.Privacy.Dlp.V2.InfoTypeTransformations do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          transformations: [
            Google.Privacy.Dlp.V2.InfoTypeTransformations.InfoTypeTransformation.t()
          ]
        }

  defstruct [:transformations]

  field :transformations, 1,
    repeated: true,
    type: Google.Privacy.Dlp.V2.InfoTypeTransformations.InfoTypeTransformation

  def transform_module(), do: nil
end

defmodule Google.Privacy.Dlp.V2.FieldTransformation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          transformation:
            {:primitive_transformation, Google.Privacy.Dlp.V2.PrimitiveTransformation.t() | nil}
            | {:info_type_transformations,
               Google.Privacy.Dlp.V2.InfoTypeTransformations.t() | nil},
          fields: [Google.Privacy.Dlp.V2.FieldId.t()],
          condition: Google.Privacy.Dlp.V2.RecordCondition.t() | nil
        }

  defstruct [:transformation, :fields, :condition]

  oneof :transformation, 0

  field :fields, 1, repeated: true, type: Google.Privacy.Dlp.V2.FieldId
  field :condition, 3, type: Google.Privacy.Dlp.V2.RecordCondition

  field :primitive_transformation, 4,
    type: Google.Privacy.Dlp.V2.PrimitiveTransformation,
    json_name: "primitiveTransformation",
    oneof: 0

  field :info_type_transformations, 5,
    type: Google.Privacy.Dlp.V2.InfoTypeTransformations,
    json_name: "infoTypeTransformations",
    oneof: 0

  def transform_module(), do: nil
end

defmodule Google.Privacy.Dlp.V2.RecordTransformations do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          field_transformations: [Google.Privacy.Dlp.V2.FieldTransformation.t()],
          record_suppressions: [Google.Privacy.Dlp.V2.RecordSuppression.t()]
        }

  defstruct [:field_transformations, :record_suppressions]

  field :field_transformations, 1,
    repeated: true,
    type: Google.Privacy.Dlp.V2.FieldTransformation,
    json_name: "fieldTransformations"

  field :record_suppressions, 2,
    repeated: true,
    type: Google.Privacy.Dlp.V2.RecordSuppression,
    json_name: "recordSuppressions"

  def transform_module(), do: nil
end

defmodule Google.Privacy.Dlp.V2.RecordSuppression do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          condition: Google.Privacy.Dlp.V2.RecordCondition.t() | nil
        }

  defstruct [:condition]

  field :condition, 1, type: Google.Privacy.Dlp.V2.RecordCondition

  def transform_module(), do: nil
end

defmodule Google.Privacy.Dlp.V2.RecordCondition.Condition do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          field: Google.Privacy.Dlp.V2.FieldId.t() | nil,
          operator: Google.Privacy.Dlp.V2.RelationalOperator.t(),
          value: Google.Privacy.Dlp.V2.Value.t() | nil
        }

  defstruct [:field, :operator, :value]

  field :field, 1, type: Google.Privacy.Dlp.V2.FieldId
  field :operator, 3, type: Google.Privacy.Dlp.V2.RelationalOperator, enum: true
  field :value, 4, type: Google.Privacy.Dlp.V2.Value

  def transform_module(), do: nil
end

defmodule Google.Privacy.Dlp.V2.RecordCondition.Conditions do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          conditions: [Google.Privacy.Dlp.V2.RecordCondition.Condition.t()]
        }

  defstruct [:conditions]

  field :conditions, 1, repeated: true, type: Google.Privacy.Dlp.V2.RecordCondition.Condition

  def transform_module(), do: nil
end

defmodule Google.Privacy.Dlp.V2.RecordCondition.Expressions do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          type: {:conditions, Google.Privacy.Dlp.V2.RecordCondition.Conditions.t() | nil},
          logical_operator: Google.Privacy.Dlp.V2.RecordCondition.Expressions.LogicalOperator.t()
        }

  defstruct [:type, :logical_operator]

  oneof :type, 0

  field :logical_operator, 1,
    type: Google.Privacy.Dlp.V2.RecordCondition.Expressions.LogicalOperator,
    enum: true,
    json_name: "logicalOperator"

  field :conditions, 3, type: Google.Privacy.Dlp.V2.RecordCondition.Conditions, oneof: 0

  def transform_module(), do: nil
end

defmodule Google.Privacy.Dlp.V2.RecordCondition do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          expressions: Google.Privacy.Dlp.V2.RecordCondition.Expressions.t() | nil
        }

  defstruct [:expressions]

  field :expressions, 3, type: Google.Privacy.Dlp.V2.RecordCondition.Expressions

  def transform_module(), do: nil
end

defmodule Google.Privacy.Dlp.V2.TransformationOverview do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          transformed_bytes: integer,
          transformation_summaries: [Google.Privacy.Dlp.V2.TransformationSummary.t()]
        }

  defstruct [:transformed_bytes, :transformation_summaries]

  field :transformed_bytes, 2, type: :int64, json_name: "transformedBytes"

  field :transformation_summaries, 3,
    repeated: true,
    type: Google.Privacy.Dlp.V2.TransformationSummary,
    json_name: "transformationSummaries"

  def transform_module(), do: nil
end

defmodule Google.Privacy.Dlp.V2.TransformationSummary.SummaryResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          count: integer,
          code: Google.Privacy.Dlp.V2.TransformationSummary.TransformationResultCode.t(),
          details: String.t()
        }

  defstruct [:count, :code, :details]

  field :count, 1, type: :int64

  field :code, 2,
    type: Google.Privacy.Dlp.V2.TransformationSummary.TransformationResultCode,
    enum: true

  field :details, 3, type: :string

  def transform_module(), do: nil
end

defmodule Google.Privacy.Dlp.V2.TransformationSummary do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          info_type: Google.Privacy.Dlp.V2.InfoType.t() | nil,
          field: Google.Privacy.Dlp.V2.FieldId.t() | nil,
          transformation: Google.Privacy.Dlp.V2.PrimitiveTransformation.t() | nil,
          field_transformations: [Google.Privacy.Dlp.V2.FieldTransformation.t()],
          record_suppress: Google.Privacy.Dlp.V2.RecordSuppression.t() | nil,
          results: [Google.Privacy.Dlp.V2.TransformationSummary.SummaryResult.t()],
          transformed_bytes: integer
        }

  defstruct [
    :info_type,
    :field,
    :transformation,
    :field_transformations,
    :record_suppress,
    :results,
    :transformed_bytes
  ]

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

  def transform_module(), do: nil
end

defmodule Google.Privacy.Dlp.V2.Schedule do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          option: {:recurrence_period_duration, Google.Protobuf.Duration.t() | nil}
        }

  defstruct [:option]

  oneof :option, 0

  field :recurrence_period_duration, 1,
    type: Google.Protobuf.Duration,
    json_name: "recurrencePeriodDuration",
    oneof: 0

  def transform_module(), do: nil
end

defmodule Google.Privacy.Dlp.V2.Manual do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []

  def transform_module(), do: nil
end

defmodule Google.Privacy.Dlp.V2.InspectTemplate do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          display_name: String.t(),
          description: String.t(),
          create_time: Google.Protobuf.Timestamp.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil,
          inspect_config: Google.Privacy.Dlp.V2.InspectConfig.t() | nil
        }

  defstruct [:name, :display_name, :description, :create_time, :update_time, :inspect_config]

  field :name, 1, type: :string
  field :display_name, 2, type: :string, json_name: "displayName"
  field :description, 3, type: :string
  field :create_time, 4, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :update_time, 5, type: Google.Protobuf.Timestamp, json_name: "updateTime"
  field :inspect_config, 6, type: Google.Privacy.Dlp.V2.InspectConfig, json_name: "inspectConfig"

  def transform_module(), do: nil
end

defmodule Google.Privacy.Dlp.V2.DeidentifyTemplate do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          display_name: String.t(),
          description: String.t(),
          create_time: Google.Protobuf.Timestamp.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil,
          deidentify_config: Google.Privacy.Dlp.V2.DeidentifyConfig.t() | nil
        }

  defstruct [:name, :display_name, :description, :create_time, :update_time, :deidentify_config]

  field :name, 1, type: :string
  field :display_name, 2, type: :string, json_name: "displayName"
  field :description, 3, type: :string
  field :create_time, 4, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :update_time, 5, type: Google.Protobuf.Timestamp, json_name: "updateTime"

  field :deidentify_config, 6,
    type: Google.Privacy.Dlp.V2.DeidentifyConfig,
    json_name: "deidentifyConfig"

  def transform_module(), do: nil
end

defmodule Google.Privacy.Dlp.V2.Error do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          details: Google.Rpc.Status.t() | nil,
          timestamps: [Google.Protobuf.Timestamp.t()]
        }

  defstruct [:details, :timestamps]

  field :details, 1, type: Google.Rpc.Status
  field :timestamps, 2, repeated: true, type: Google.Protobuf.Timestamp

  def transform_module(), do: nil
end

defmodule Google.Privacy.Dlp.V2.JobTrigger.Trigger do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          trigger:
            {:schedule, Google.Privacy.Dlp.V2.Schedule.t() | nil}
            | {:manual, Google.Privacy.Dlp.V2.Manual.t() | nil}
        }

  defstruct [:trigger]

  oneof :trigger, 0

  field :schedule, 1, type: Google.Privacy.Dlp.V2.Schedule, oneof: 0
  field :manual, 2, type: Google.Privacy.Dlp.V2.Manual, oneof: 0

  def transform_module(), do: nil
end

defmodule Google.Privacy.Dlp.V2.JobTrigger do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          job: {:inspect_job, Google.Privacy.Dlp.V2.InspectJobConfig.t() | nil},
          name: String.t(),
          display_name: String.t(),
          description: String.t(),
          triggers: [Google.Privacy.Dlp.V2.JobTrigger.Trigger.t()],
          errors: [Google.Privacy.Dlp.V2.Error.t()],
          create_time: Google.Protobuf.Timestamp.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil,
          last_run_time: Google.Protobuf.Timestamp.t() | nil,
          status: Google.Privacy.Dlp.V2.JobTrigger.Status.t()
        }

  defstruct [
    :job,
    :name,
    :display_name,
    :description,
    :triggers,
    :errors,
    :create_time,
    :update_time,
    :last_run_time,
    :status
  ]

  oneof :job, 0

  field :name, 1, type: :string
  field :display_name, 2, type: :string, json_name: "displayName"
  field :description, 3, type: :string

  field :inspect_job, 4,
    type: Google.Privacy.Dlp.V2.InspectJobConfig,
    json_name: "inspectJob",
    oneof: 0

  field :triggers, 5, repeated: true, type: Google.Privacy.Dlp.V2.JobTrigger.Trigger
  field :errors, 6, repeated: true, type: Google.Privacy.Dlp.V2.Error
  field :create_time, 7, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :update_time, 8, type: Google.Protobuf.Timestamp, json_name: "updateTime"
  field :last_run_time, 9, type: Google.Protobuf.Timestamp, json_name: "lastRunTime"
  field :status, 10, type: Google.Privacy.Dlp.V2.JobTrigger.Status, enum: true

  def transform_module(), do: nil
end

defmodule Google.Privacy.Dlp.V2.Action.SaveFindings do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          output_config: Google.Privacy.Dlp.V2.OutputStorageConfig.t() | nil
        }

  defstruct [:output_config]

  field :output_config, 1,
    type: Google.Privacy.Dlp.V2.OutputStorageConfig,
    json_name: "outputConfig"

  def transform_module(), do: nil
end

defmodule Google.Privacy.Dlp.V2.Action.PublishToPubSub do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          topic: String.t()
        }

  defstruct [:topic]

  field :topic, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Privacy.Dlp.V2.Action.PublishSummaryToCscc do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []

  def transform_module(), do: nil
end

defmodule Google.Privacy.Dlp.V2.Action.PublishFindingsToCloudDataCatalog do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []

  def transform_module(), do: nil
end

defmodule Google.Privacy.Dlp.V2.Action.JobNotificationEmails do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []

  def transform_module(), do: nil
end

defmodule Google.Privacy.Dlp.V2.Action.PublishToStackdriver do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []

  def transform_module(), do: nil
end

defmodule Google.Privacy.Dlp.V2.Action do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          action:
            {:save_findings, Google.Privacy.Dlp.V2.Action.SaveFindings.t() | nil}
            | {:pub_sub, Google.Privacy.Dlp.V2.Action.PublishToPubSub.t() | nil}
            | {:publish_summary_to_cscc,
               Google.Privacy.Dlp.V2.Action.PublishSummaryToCscc.t() | nil}
            | {:publish_findings_to_cloud_data_catalog,
               Google.Privacy.Dlp.V2.Action.PublishFindingsToCloudDataCatalog.t() | nil}
            | {:job_notification_emails,
               Google.Privacy.Dlp.V2.Action.JobNotificationEmails.t() | nil}
            | {:publish_to_stackdriver,
               Google.Privacy.Dlp.V2.Action.PublishToStackdriver.t() | nil}
        }

  defstruct [:action]

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

  field :job_notification_emails, 8,
    type: Google.Privacy.Dlp.V2.Action.JobNotificationEmails,
    json_name: "jobNotificationEmails",
    oneof: 0

  field :publish_to_stackdriver, 9,
    type: Google.Privacy.Dlp.V2.Action.PublishToStackdriver,
    json_name: "publishToStackdriver",
    oneof: 0

  def transform_module(), do: nil
end

defmodule Google.Privacy.Dlp.V2.CreateInspectTemplateRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          inspect_template: Google.Privacy.Dlp.V2.InspectTemplate.t() | nil,
          template_id: String.t(),
          location_id: String.t()
        }

  defstruct [:parent, :inspect_template, :template_id, :location_id]

  field :parent, 1, type: :string

  field :inspect_template, 2,
    type: Google.Privacy.Dlp.V2.InspectTemplate,
    json_name: "inspectTemplate"

  field :template_id, 3, type: :string, json_name: "templateId"
  field :location_id, 4, type: :string, json_name: "locationId"

  def transform_module(), do: nil
end

defmodule Google.Privacy.Dlp.V2.UpdateInspectTemplateRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          inspect_template: Google.Privacy.Dlp.V2.InspectTemplate.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:name, :inspect_template, :update_mask]

  field :name, 1, type: :string

  field :inspect_template, 2,
    type: Google.Privacy.Dlp.V2.InspectTemplate,
    json_name: "inspectTemplate"

  field :update_mask, 3, type: Google.Protobuf.FieldMask, json_name: "updateMask"

  def transform_module(), do: nil
end

defmodule Google.Privacy.Dlp.V2.GetInspectTemplateRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Privacy.Dlp.V2.ListInspectTemplatesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_token: String.t(),
          page_size: integer,
          order_by: String.t(),
          location_id: String.t()
        }

  defstruct [:parent, :page_token, :page_size, :order_by, :location_id]

  field :parent, 1, type: :string
  field :page_token, 2, type: :string, json_name: "pageToken"
  field :page_size, 3, type: :int32, json_name: "pageSize"
  field :order_by, 4, type: :string, json_name: "orderBy"
  field :location_id, 5, type: :string, json_name: "locationId"

  def transform_module(), do: nil
end

defmodule Google.Privacy.Dlp.V2.ListInspectTemplatesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          inspect_templates: [Google.Privacy.Dlp.V2.InspectTemplate.t()],
          next_page_token: String.t()
        }

  defstruct [:inspect_templates, :next_page_token]

  field :inspect_templates, 1,
    repeated: true,
    type: Google.Privacy.Dlp.V2.InspectTemplate,
    json_name: "inspectTemplates"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"

  def transform_module(), do: nil
end

defmodule Google.Privacy.Dlp.V2.DeleteInspectTemplateRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Privacy.Dlp.V2.CreateJobTriggerRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          job_trigger: Google.Privacy.Dlp.V2.JobTrigger.t() | nil,
          trigger_id: String.t(),
          location_id: String.t()
        }

  defstruct [:parent, :job_trigger, :trigger_id, :location_id]

  field :parent, 1, type: :string
  field :job_trigger, 2, type: Google.Privacy.Dlp.V2.JobTrigger, json_name: "jobTrigger"
  field :trigger_id, 3, type: :string, json_name: "triggerId"
  field :location_id, 4, type: :string, json_name: "locationId"

  def transform_module(), do: nil
end

defmodule Google.Privacy.Dlp.V2.ActivateJobTriggerRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Privacy.Dlp.V2.UpdateJobTriggerRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          job_trigger: Google.Privacy.Dlp.V2.JobTrigger.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:name, :job_trigger, :update_mask]

  field :name, 1, type: :string
  field :job_trigger, 2, type: Google.Privacy.Dlp.V2.JobTrigger, json_name: "jobTrigger"
  field :update_mask, 3, type: Google.Protobuf.FieldMask, json_name: "updateMask"

  def transform_module(), do: nil
end

defmodule Google.Privacy.Dlp.V2.GetJobTriggerRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Privacy.Dlp.V2.CreateDlpJobRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          job:
            {:inspect_job, Google.Privacy.Dlp.V2.InspectJobConfig.t() | nil}
            | {:risk_job, Google.Privacy.Dlp.V2.RiskAnalysisJobConfig.t() | nil},
          parent: String.t(),
          job_id: String.t(),
          location_id: String.t()
        }

  defstruct [:job, :parent, :job_id, :location_id]

  oneof :job, 0

  field :parent, 1, type: :string

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

  def transform_module(), do: nil
end

defmodule Google.Privacy.Dlp.V2.ListJobTriggersRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_token: String.t(),
          page_size: integer,
          order_by: String.t(),
          filter: String.t(),
          type: Google.Privacy.Dlp.V2.DlpJobType.t(),
          location_id: String.t()
        }

  defstruct [:parent, :page_token, :page_size, :order_by, :filter, :type, :location_id]

  field :parent, 1, type: :string
  field :page_token, 2, type: :string, json_name: "pageToken"
  field :page_size, 3, type: :int32, json_name: "pageSize"
  field :order_by, 4, type: :string, json_name: "orderBy"
  field :filter, 5, type: :string
  field :type, 6, type: Google.Privacy.Dlp.V2.DlpJobType, enum: true
  field :location_id, 7, type: :string, json_name: "locationId"

  def transform_module(), do: nil
end

defmodule Google.Privacy.Dlp.V2.ListJobTriggersResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          job_triggers: [Google.Privacy.Dlp.V2.JobTrigger.t()],
          next_page_token: String.t()
        }

  defstruct [:job_triggers, :next_page_token]

  field :job_triggers, 1,
    repeated: true,
    type: Google.Privacy.Dlp.V2.JobTrigger,
    json_name: "jobTriggers"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"

  def transform_module(), do: nil
end

defmodule Google.Privacy.Dlp.V2.DeleteJobTriggerRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Privacy.Dlp.V2.InspectJobConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          storage_config: Google.Privacy.Dlp.V2.StorageConfig.t() | nil,
          inspect_config: Google.Privacy.Dlp.V2.InspectConfig.t() | nil,
          inspect_template_name: String.t(),
          actions: [Google.Privacy.Dlp.V2.Action.t()]
        }

  defstruct [:storage_config, :inspect_config, :inspect_template_name, :actions]

  field :storage_config, 1, type: Google.Privacy.Dlp.V2.StorageConfig, json_name: "storageConfig"
  field :inspect_config, 2, type: Google.Privacy.Dlp.V2.InspectConfig, json_name: "inspectConfig"
  field :inspect_template_name, 3, type: :string, json_name: "inspectTemplateName"
  field :actions, 4, repeated: true, type: Google.Privacy.Dlp.V2.Action

  def transform_module(), do: nil
end

defmodule Google.Privacy.Dlp.V2.DlpJob do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          details:
            {:risk_details, Google.Privacy.Dlp.V2.AnalyzeDataSourceRiskDetails.t() | nil}
            | {:inspect_details, Google.Privacy.Dlp.V2.InspectDataSourceDetails.t() | nil},
          name: String.t(),
          type: Google.Privacy.Dlp.V2.DlpJobType.t(),
          state: Google.Privacy.Dlp.V2.DlpJob.JobState.t(),
          create_time: Google.Protobuf.Timestamp.t() | nil,
          start_time: Google.Protobuf.Timestamp.t() | nil,
          end_time: Google.Protobuf.Timestamp.t() | nil,
          job_trigger_name: String.t(),
          errors: [Google.Privacy.Dlp.V2.Error.t()]
        }

  defstruct [
    :details,
    :name,
    :type,
    :state,
    :create_time,
    :start_time,
    :end_time,
    :job_trigger_name,
    :errors
  ]

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

  def transform_module(), do: nil
end

defmodule Google.Privacy.Dlp.V2.GetDlpJobRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Privacy.Dlp.V2.ListDlpJobsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          filter: String.t(),
          page_size: integer,
          page_token: String.t(),
          type: Google.Privacy.Dlp.V2.DlpJobType.t(),
          order_by: String.t(),
          location_id: String.t()
        }

  defstruct [:parent, :filter, :page_size, :page_token, :type, :order_by, :location_id]

  field :parent, 4, type: :string
  field :filter, 1, type: :string
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :type, 5, type: Google.Privacy.Dlp.V2.DlpJobType, enum: true
  field :order_by, 6, type: :string, json_name: "orderBy"
  field :location_id, 7, type: :string, json_name: "locationId"

  def transform_module(), do: nil
end

defmodule Google.Privacy.Dlp.V2.ListDlpJobsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          jobs: [Google.Privacy.Dlp.V2.DlpJob.t()],
          next_page_token: String.t()
        }

  defstruct [:jobs, :next_page_token]

  field :jobs, 1, repeated: true, type: Google.Privacy.Dlp.V2.DlpJob
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"

  def transform_module(), do: nil
end

defmodule Google.Privacy.Dlp.V2.CancelDlpJobRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Privacy.Dlp.V2.FinishDlpJobRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Privacy.Dlp.V2.DeleteDlpJobRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Privacy.Dlp.V2.CreateDeidentifyTemplateRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          deidentify_template: Google.Privacy.Dlp.V2.DeidentifyTemplate.t() | nil,
          template_id: String.t(),
          location_id: String.t()
        }

  defstruct [:parent, :deidentify_template, :template_id, :location_id]

  field :parent, 1, type: :string

  field :deidentify_template, 2,
    type: Google.Privacy.Dlp.V2.DeidentifyTemplate,
    json_name: "deidentifyTemplate"

  field :template_id, 3, type: :string, json_name: "templateId"
  field :location_id, 4, type: :string, json_name: "locationId"

  def transform_module(), do: nil
end

defmodule Google.Privacy.Dlp.V2.UpdateDeidentifyTemplateRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          deidentify_template: Google.Privacy.Dlp.V2.DeidentifyTemplate.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:name, :deidentify_template, :update_mask]

  field :name, 1, type: :string

  field :deidentify_template, 2,
    type: Google.Privacy.Dlp.V2.DeidentifyTemplate,
    json_name: "deidentifyTemplate"

  field :update_mask, 3, type: Google.Protobuf.FieldMask, json_name: "updateMask"

  def transform_module(), do: nil
end

defmodule Google.Privacy.Dlp.V2.GetDeidentifyTemplateRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Privacy.Dlp.V2.ListDeidentifyTemplatesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_token: String.t(),
          page_size: integer,
          order_by: String.t(),
          location_id: String.t()
        }

  defstruct [:parent, :page_token, :page_size, :order_by, :location_id]

  field :parent, 1, type: :string
  field :page_token, 2, type: :string, json_name: "pageToken"
  field :page_size, 3, type: :int32, json_name: "pageSize"
  field :order_by, 4, type: :string, json_name: "orderBy"
  field :location_id, 5, type: :string, json_name: "locationId"

  def transform_module(), do: nil
end

defmodule Google.Privacy.Dlp.V2.ListDeidentifyTemplatesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          deidentify_templates: [Google.Privacy.Dlp.V2.DeidentifyTemplate.t()],
          next_page_token: String.t()
        }

  defstruct [:deidentify_templates, :next_page_token]

  field :deidentify_templates, 1,
    repeated: true,
    type: Google.Privacy.Dlp.V2.DeidentifyTemplate,
    json_name: "deidentifyTemplates"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"

  def transform_module(), do: nil
end

defmodule Google.Privacy.Dlp.V2.DeleteDeidentifyTemplateRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Privacy.Dlp.V2.LargeCustomDictionaryConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          source:
            {:cloud_storage_file_set, Google.Privacy.Dlp.V2.CloudStorageFileSet.t() | nil}
            | {:big_query_field, Google.Privacy.Dlp.V2.BigQueryField.t() | nil},
          output_path: Google.Privacy.Dlp.V2.CloudStoragePath.t() | nil
        }

  defstruct [:source, :output_path]

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

  def transform_module(), do: nil
end

defmodule Google.Privacy.Dlp.V2.LargeCustomDictionaryStats do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          approx_num_phrases: integer
        }

  defstruct [:approx_num_phrases]

  field :approx_num_phrases, 1, type: :int64, json_name: "approxNumPhrases"

  def transform_module(), do: nil
end

defmodule Google.Privacy.Dlp.V2.StoredInfoTypeConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          type:
            {:large_custom_dictionary,
             Google.Privacy.Dlp.V2.LargeCustomDictionaryConfig.t() | nil}
            | {:dictionary, Google.Privacy.Dlp.V2.CustomInfoType.Dictionary.t() | nil}
            | {:regex, Google.Privacy.Dlp.V2.CustomInfoType.Regex.t() | nil},
          display_name: String.t(),
          description: String.t()
        }

  defstruct [:type, :display_name, :description]

  oneof :type, 0

  field :display_name, 1, type: :string, json_name: "displayName"
  field :description, 2, type: :string

  field :large_custom_dictionary, 3,
    type: Google.Privacy.Dlp.V2.LargeCustomDictionaryConfig,
    json_name: "largeCustomDictionary",
    oneof: 0

  field :dictionary, 4, type: Google.Privacy.Dlp.V2.CustomInfoType.Dictionary, oneof: 0
  field :regex, 5, type: Google.Privacy.Dlp.V2.CustomInfoType.Regex, oneof: 0

  def transform_module(), do: nil
end

defmodule Google.Privacy.Dlp.V2.StoredInfoTypeStats do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          type:
            {:large_custom_dictionary, Google.Privacy.Dlp.V2.LargeCustomDictionaryStats.t() | nil}
        }

  defstruct [:type]

  oneof :type, 0

  field :large_custom_dictionary, 1,
    type: Google.Privacy.Dlp.V2.LargeCustomDictionaryStats,
    json_name: "largeCustomDictionary",
    oneof: 0

  def transform_module(), do: nil
end

defmodule Google.Privacy.Dlp.V2.StoredInfoTypeVersion do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          config: Google.Privacy.Dlp.V2.StoredInfoTypeConfig.t() | nil,
          create_time: Google.Protobuf.Timestamp.t() | nil,
          state: Google.Privacy.Dlp.V2.StoredInfoTypeState.t(),
          errors: [Google.Privacy.Dlp.V2.Error.t()],
          stats: Google.Privacy.Dlp.V2.StoredInfoTypeStats.t() | nil
        }

  defstruct [:config, :create_time, :state, :errors, :stats]

  field :config, 1, type: Google.Privacy.Dlp.V2.StoredInfoTypeConfig
  field :create_time, 2, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :state, 3, type: Google.Privacy.Dlp.V2.StoredInfoTypeState, enum: true
  field :errors, 4, repeated: true, type: Google.Privacy.Dlp.V2.Error
  field :stats, 5, type: Google.Privacy.Dlp.V2.StoredInfoTypeStats

  def transform_module(), do: nil
end

defmodule Google.Privacy.Dlp.V2.StoredInfoType do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          current_version: Google.Privacy.Dlp.V2.StoredInfoTypeVersion.t() | nil,
          pending_versions: [Google.Privacy.Dlp.V2.StoredInfoTypeVersion.t()]
        }

  defstruct [:name, :current_version, :pending_versions]

  field :name, 1, type: :string

  field :current_version, 2,
    type: Google.Privacy.Dlp.V2.StoredInfoTypeVersion,
    json_name: "currentVersion"

  field :pending_versions, 3,
    repeated: true,
    type: Google.Privacy.Dlp.V2.StoredInfoTypeVersion,
    json_name: "pendingVersions"

  def transform_module(), do: nil
end

defmodule Google.Privacy.Dlp.V2.CreateStoredInfoTypeRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          config: Google.Privacy.Dlp.V2.StoredInfoTypeConfig.t() | nil,
          stored_info_type_id: String.t(),
          location_id: String.t()
        }

  defstruct [:parent, :config, :stored_info_type_id, :location_id]

  field :parent, 1, type: :string
  field :config, 2, type: Google.Privacy.Dlp.V2.StoredInfoTypeConfig
  field :stored_info_type_id, 3, type: :string, json_name: "storedInfoTypeId"
  field :location_id, 4, type: :string, json_name: "locationId"

  def transform_module(), do: nil
end

defmodule Google.Privacy.Dlp.V2.UpdateStoredInfoTypeRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          config: Google.Privacy.Dlp.V2.StoredInfoTypeConfig.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:name, :config, :update_mask]

  field :name, 1, type: :string
  field :config, 2, type: Google.Privacy.Dlp.V2.StoredInfoTypeConfig
  field :update_mask, 3, type: Google.Protobuf.FieldMask, json_name: "updateMask"

  def transform_module(), do: nil
end

defmodule Google.Privacy.Dlp.V2.GetStoredInfoTypeRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Privacy.Dlp.V2.ListStoredInfoTypesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_token: String.t(),
          page_size: integer,
          order_by: String.t(),
          location_id: String.t()
        }

  defstruct [:parent, :page_token, :page_size, :order_by, :location_id]

  field :parent, 1, type: :string
  field :page_token, 2, type: :string, json_name: "pageToken"
  field :page_size, 3, type: :int32, json_name: "pageSize"
  field :order_by, 4, type: :string, json_name: "orderBy"
  field :location_id, 5, type: :string, json_name: "locationId"

  def transform_module(), do: nil
end

defmodule Google.Privacy.Dlp.V2.ListStoredInfoTypesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          stored_info_types: [Google.Privacy.Dlp.V2.StoredInfoType.t()],
          next_page_token: String.t()
        }

  defstruct [:stored_info_types, :next_page_token]

  field :stored_info_types, 1,
    repeated: true,
    type: Google.Privacy.Dlp.V2.StoredInfoType,
    json_name: "storedInfoTypes"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"

  def transform_module(), do: nil
end

defmodule Google.Privacy.Dlp.V2.DeleteStoredInfoTypeRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Privacy.Dlp.V2.HybridInspectJobTriggerRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          hybrid_item: Google.Privacy.Dlp.V2.HybridContentItem.t() | nil
        }

  defstruct [:name, :hybrid_item]

  field :name, 1, type: :string
  field :hybrid_item, 3, type: Google.Privacy.Dlp.V2.HybridContentItem, json_name: "hybridItem"

  def transform_module(), do: nil
end

defmodule Google.Privacy.Dlp.V2.HybridInspectDlpJobRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          hybrid_item: Google.Privacy.Dlp.V2.HybridContentItem.t() | nil
        }

  defstruct [:name, :hybrid_item]

  field :name, 1, type: :string
  field :hybrid_item, 3, type: Google.Privacy.Dlp.V2.HybridContentItem, json_name: "hybridItem"

  def transform_module(), do: nil
end

defmodule Google.Privacy.Dlp.V2.HybridContentItem do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          item: Google.Privacy.Dlp.V2.ContentItem.t() | nil,
          finding_details: Google.Privacy.Dlp.V2.HybridFindingDetails.t() | nil
        }

  defstruct [:item, :finding_details]

  field :item, 1, type: Google.Privacy.Dlp.V2.ContentItem

  field :finding_details, 2,
    type: Google.Privacy.Dlp.V2.HybridFindingDetails,
    json_name: "findingDetails"

  def transform_module(), do: nil
end

defmodule Google.Privacy.Dlp.V2.HybridFindingDetails.LabelsEntry do
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

defmodule Google.Privacy.Dlp.V2.HybridFindingDetails do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          container_details: Google.Privacy.Dlp.V2.Container.t() | nil,
          file_offset: integer,
          row_offset: integer,
          table_options: Google.Privacy.Dlp.V2.TableOptions.t() | nil,
          labels: %{String.t() => String.t()}
        }

  defstruct [:container_details, :file_offset, :row_offset, :table_options, :labels]

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

  def transform_module(), do: nil
end

defmodule Google.Privacy.Dlp.V2.HybridInspectResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []

  def transform_module(), do: nil
end

defmodule Google.Privacy.Dlp.V2.DlpService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.privacy.dlp.v2.DlpService"

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
