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
defmodule Google.Privacy.Dlp.V2.ResourceVisibility do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :RESOURCE_VISIBILITY_UNSPECIFIED
          | :RESOURCE_VISIBILITY_PUBLIC
          | :RESOURCE_VISIBILITY_RESTRICTED

  field :RESOURCE_VISIBILITY_UNSPECIFIED, 0
  field :RESOURCE_VISIBILITY_PUBLIC, 10
  field :RESOURCE_VISIBILITY_RESTRICTED, 20
end
defmodule Google.Privacy.Dlp.V2.EncryptionStatus do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :ENCRYPTION_STATUS_UNSPECIFIED
          | :ENCRYPTION_GOOGLE_MANAGED
          | :ENCRYPTION_CUSTOMER_MANAGED

  field :ENCRYPTION_STATUS_UNSPECIFIED, 0
  field :ENCRYPTION_GOOGLE_MANAGED, 1
  field :ENCRYPTION_CUSTOMER_MANAGED, 2
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
          | :POWERPOINT_DOCUMENT
          | :EXCEL_DOCUMENT
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
  field :POWERPOINT_DOCUMENT, 9
  field :EXCEL_DOCUMENT, 10
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
defmodule Google.Privacy.Dlp.V2.DataProfileAction.EventType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :EVENT_TYPE_UNSPECIFIED
          | :NEW_PROFILE
          | :CHANGED_PROFILE
          | :SCORE_INCREASED
          | :ERROR_CHANGED

  field :EVENT_TYPE_UNSPECIFIED, 0
  field :NEW_PROFILE, 1
  field :CHANGED_PROFILE, 2
  field :SCORE_INCREASED, 3
  field :ERROR_CHANGED, 4
end
defmodule Google.Privacy.Dlp.V2.DataProfileAction.PubSubNotification.DetailLevel do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :DETAIL_LEVEL_UNSPECIFIED | :TABLE_PROFILE | :RESOURCE_NAME

  field :DETAIL_LEVEL_UNSPECIFIED, 0
  field :TABLE_PROFILE, 1
  field :RESOURCE_NAME, 2
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
defmodule Google.Privacy.Dlp.V2.SensitivityScore.SensitivityScoreLevel do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :SENSITIVITY_SCORE_UNSPECIFIED
          | :SENSITIVITY_LOW
          | :SENSITIVITY_MODERATE
          | :SENSITIVITY_HIGH

  field :SENSITIVITY_SCORE_UNSPECIFIED, 0
  field :SENSITIVITY_LOW, 10
  field :SENSITIVITY_MODERATE, 20
  field :SENSITIVITY_HIGH, 30
end
defmodule Google.Privacy.Dlp.V2.DataRiskLevel.DataRiskLevelScore do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :RISK_SCORE_UNSPECIFIED | :RISK_LOW | :RISK_MODERATE | :RISK_HIGH

  field :RISK_SCORE_UNSPECIFIED, 0
  field :RISK_LOW, 10
  field :RISK_MODERATE, 20
  field :RISK_HIGH, 30
end
defmodule Google.Privacy.Dlp.V2.TableDataProfile.State do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :STATE_UNSPECIFIED | :RUNNING | :DONE

  field :STATE_UNSPECIFIED, 0
  field :RUNNING, 1
  field :DONE, 2
end
defmodule Google.Privacy.Dlp.V2.DataProfilePubSubCondition.ProfileScoreBucket do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :PROFILE_SCORE_BUCKET_UNSPECIFIED | :HIGH | :MEDIUM_OR_HIGH

  field :PROFILE_SCORE_BUCKET_UNSPECIFIED, 0
  field :HIGH, 1
  field :MEDIUM_OR_HIGH, 2
end
defmodule Google.Privacy.Dlp.V2.DataProfilePubSubCondition.PubSubExpressions.PubSubLogicalOperator do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :LOGICAL_OPERATOR_UNSPECIFIED | :OR | :AND

  field :LOGICAL_OPERATOR_UNSPECIFIED, 0
  field :OR, 1
  field :AND, 2
end
defmodule Google.Privacy.Dlp.V2.ExcludeInfoTypes do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          info_types: [Google.Privacy.Dlp.V2.InfoType.t()]
        }

  defstruct info_types: []

  field :info_types, 1,
    repeated: true,
    type: Google.Privacy.Dlp.V2.InfoType,
    json_name: "infoTypes"
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

  defstruct type: nil,
            matching_type: :MATCHING_TYPE_UNSPECIFIED

  oneof :type, 0

  field :dictionary, 1, type: Google.Privacy.Dlp.V2.CustomInfoType.Dictionary, oneof: 0
  field :regex, 2, type: Google.Privacy.Dlp.V2.CustomInfoType.Regex, oneof: 0

  field :exclude_info_types, 3,
    type: Google.Privacy.Dlp.V2.ExcludeInfoTypes,
    json_name: "excludeInfoTypes",
    oneof: 0

  field :matching_type, 4,
    type: Google.Privacy.Dlp.V2.MatchingType,
    json_name: "matchingType",
    enum: true
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

  defstruct type: nil

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          info_types: [Google.Privacy.Dlp.V2.InfoType.t()],
          rules: [Google.Privacy.Dlp.V2.InspectionRule.t()]
        }

  defstruct info_types: [],
            rules: []

  field :info_types, 1,
    repeated: true,
    type: Google.Privacy.Dlp.V2.InfoType,
    json_name: "infoTypes"

  field :rules, 2, repeated: true, type: Google.Privacy.Dlp.V2.InspectionRule
end
defmodule Google.Privacy.Dlp.V2.InspectConfig.FindingLimits.InfoTypeLimit do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          info_type: Google.Privacy.Dlp.V2.InfoType.t() | nil,
          max_findings: integer
        }

  defstruct info_type: nil,
            max_findings: 0

  field :info_type, 1, type: Google.Privacy.Dlp.V2.InfoType, json_name: "infoType"
  field :max_findings, 2, type: :int32, json_name: "maxFindings"
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

  defstruct max_findings_per_item: 0,
            max_findings_per_request: 0,
            max_findings_per_info_type: []

  field :max_findings_per_item, 1, type: :int32, json_name: "maxFindingsPerItem"
  field :max_findings_per_request, 2, type: :int32, json_name: "maxFindingsPerRequest"

  field :max_findings_per_info_type, 3,
    repeated: true,
    type: Google.Privacy.Dlp.V2.InspectConfig.FindingLimits.InfoTypeLimit,
    json_name: "maxFindingsPerInfoType"
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

  defstruct info_types: [],
            min_likelihood: :LIKELIHOOD_UNSPECIFIED,
            limits: nil,
            include_quote: false,
            exclude_info_types: false,
            custom_info_types: [],
            content_options: [],
            rule_set: []

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          type: Google.Privacy.Dlp.V2.ByteContentItem.BytesType.t(),
          data: binary
        }

  defstruct type: :BYTES_TYPE_UNSPECIFIED,
            data: ""

  field :type, 1, type: Google.Privacy.Dlp.V2.ByteContentItem.BytesType, enum: true
  field :data, 2, type: :bytes
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

  defstruct data_item: nil

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          values: [Google.Privacy.Dlp.V2.Value.t()]
        }

  defstruct values: []

  field :values, 1, repeated: true, type: Google.Privacy.Dlp.V2.Value
end
defmodule Google.Privacy.Dlp.V2.Table do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          headers: [Google.Privacy.Dlp.V2.FieldId.t()],
          rows: [Google.Privacy.Dlp.V2.Table.Row.t()]
        }

  defstruct headers: [],
            rows: []

  field :headers, 1, repeated: true, type: Google.Privacy.Dlp.V2.FieldId
  field :rows, 2, repeated: true, type: Google.Privacy.Dlp.V2.Table.Row
end
defmodule Google.Privacy.Dlp.V2.InspectResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          findings: [Google.Privacy.Dlp.V2.Finding.t()],
          findings_truncated: boolean
        }

  defstruct findings: [],
            findings_truncated: false

  field :findings, 1, repeated: true, type: Google.Privacy.Dlp.V2.Finding
  field :findings_truncated, 2, type: :bool, json_name: "findingsTruncated"
end
defmodule Google.Privacy.Dlp.V2.Finding.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct key: "",
            value: ""

  field :key, 1, type: :string
  field :value, 2, type: :string
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

  defstruct name: "",
            quote: "",
            info_type: nil,
            likelihood: :LIKELIHOOD_UNSPECIFIED,
            location: nil,
            create_time: nil,
            quote_info: nil,
            resource_name: "",
            trigger_name: "",
            labels: %{},
            job_create_time: nil,
            job_name: "",
            finding_id: ""

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          byte_range: Google.Privacy.Dlp.V2.Range.t() | nil,
          codepoint_range: Google.Privacy.Dlp.V2.Range.t() | nil,
          content_locations: [Google.Privacy.Dlp.V2.ContentLocation.t()],
          container: Google.Privacy.Dlp.V2.Container.t() | nil
        }

  defstruct byte_range: nil,
            codepoint_range: nil,
            content_locations: [],
            container: nil

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

  defstruct location: nil,
            container_name: "",
            container_timestamp: nil,
            container_version: ""

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          label: {:storage_label, Google.Privacy.Dlp.V2.StorageMetadataLabel.t() | nil},
          type: Google.Privacy.Dlp.V2.MetadataType.t()
        }

  defstruct label: nil,
            type: :METADATATYPE_UNSPECIFIED

  oneof :label, 0

  field :type, 1, type: Google.Privacy.Dlp.V2.MetadataType, enum: true

  field :storage_label, 3,
    type: Google.Privacy.Dlp.V2.StorageMetadataLabel,
    json_name: "storageLabel",
    oneof: 0
end
defmodule Google.Privacy.Dlp.V2.StorageMetadataLabel do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t()
        }

  defstruct key: ""

  field :key, 1, type: :string
end
defmodule Google.Privacy.Dlp.V2.DocumentLocation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          file_offset: integer
        }

  defstruct file_offset: 0

  field :file_offset, 1, type: :int64, json_name: "fileOffset"
end
defmodule Google.Privacy.Dlp.V2.RecordLocation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          record_key: Google.Privacy.Dlp.V2.RecordKey.t() | nil,
          field_id: Google.Privacy.Dlp.V2.FieldId.t() | nil,
          table_location: Google.Privacy.Dlp.V2.TableLocation.t() | nil
        }

  defstruct record_key: nil,
            field_id: nil,
            table_location: nil

  field :record_key, 1, type: Google.Privacy.Dlp.V2.RecordKey, json_name: "recordKey"
  field :field_id, 2, type: Google.Privacy.Dlp.V2.FieldId, json_name: "fieldId"
  field :table_location, 3, type: Google.Privacy.Dlp.V2.TableLocation, json_name: "tableLocation"
end
defmodule Google.Privacy.Dlp.V2.TableLocation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          row_index: integer
        }

  defstruct row_index: 0

  field :row_index, 1, type: :int64, json_name: "rowIndex"
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

  defstruct type: "",
            project_id: "",
            full_path: "",
            root_path: "",
            relative_path: "",
            update_time: nil,
            version: ""

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          start: integer,
          end: integer
        }

  defstruct start: 0,
            end: 0

  field :start, 1, type: :int64
  field :end, 2, type: :int64
end
defmodule Google.Privacy.Dlp.V2.ImageLocation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          bounding_boxes: [Google.Privacy.Dlp.V2.BoundingBox.t()]
        }

  defstruct bounding_boxes: []

  field :bounding_boxes, 1,
    repeated: true,
    type: Google.Privacy.Dlp.V2.BoundingBox,
    json_name: "boundingBoxes"
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

  defstruct top: 0,
            left: 0,
            width: 0,
            height: 0

  field :top, 1, type: :int32
  field :left, 2, type: :int32
  field :width, 3, type: :int32
  field :height, 4, type: :int32
end
defmodule Google.Privacy.Dlp.V2.RedactImageRequest.ImageRedactionConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          target:
            {:info_type, Google.Privacy.Dlp.V2.InfoType.t() | nil} | {:redact_all_text, boolean},
          redaction_color: Google.Privacy.Dlp.V2.Color.t() | nil
        }

  defstruct target: nil,
            redaction_color: nil

  oneof :target, 0

  field :info_type, 1, type: Google.Privacy.Dlp.V2.InfoType, json_name: "infoType", oneof: 0
  field :redact_all_text, 2, type: :bool, json_name: "redactAllText", oneof: 0
  field :redaction_color, 3, type: Google.Privacy.Dlp.V2.Color, json_name: "redactionColor"
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

  defstruct parent: "",
            location_id: "",
            inspect_config: nil,
            image_redaction_configs: [],
            include_findings: false,
            byte_item: nil

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          red: float | :infinity | :negative_infinity | :nan,
          green: float | :infinity | :negative_infinity | :nan,
          blue: float | :infinity | :negative_infinity | :nan
        }

  defstruct red: 0.0,
            green: 0.0,
            blue: 0.0

  field :red, 1, type: :float
  field :green, 2, type: :float
  field :blue, 3, type: :float
end
defmodule Google.Privacy.Dlp.V2.RedactImageResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          redacted_image: binary,
          extracted_text: String.t(),
          inspect_result: Google.Privacy.Dlp.V2.InspectResult.t() | nil
        }

  defstruct redacted_image: "",
            extracted_text: "",
            inspect_result: nil

  field :redacted_image, 1, type: :bytes, json_name: "redactedImage"
  field :extracted_text, 2, type: :string, json_name: "extractedText"
  field :inspect_result, 3, type: Google.Privacy.Dlp.V2.InspectResult, json_name: "inspectResult"
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

  defstruct parent: "",
            deidentify_config: nil,
            inspect_config: nil,
            item: nil,
            inspect_template_name: "",
            deidentify_template_name: "",
            location_id: ""

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          item: Google.Privacy.Dlp.V2.ContentItem.t() | nil,
          overview: Google.Privacy.Dlp.V2.TransformationOverview.t() | nil
        }

  defstruct item: nil,
            overview: nil

  field :item, 1, type: Google.Privacy.Dlp.V2.ContentItem
  field :overview, 2, type: Google.Privacy.Dlp.V2.TransformationOverview
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

  defstruct parent: "",
            reidentify_config: nil,
            inspect_config: nil,
            item: nil,
            inspect_template_name: "",
            reidentify_template_name: "",
            location_id: ""

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          item: Google.Privacy.Dlp.V2.ContentItem.t() | nil,
          overview: Google.Privacy.Dlp.V2.TransformationOverview.t() | nil
        }

  defstruct item: nil,
            overview: nil

  field :item, 1, type: Google.Privacy.Dlp.V2.ContentItem
  field :overview, 2, type: Google.Privacy.Dlp.V2.TransformationOverview
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

  defstruct parent: "",
            inspect_config: nil,
            item: nil,
            inspect_template_name: "",
            location_id: ""

  field :parent, 1, type: :string, deprecated: false
  field :inspect_config, 2, type: Google.Privacy.Dlp.V2.InspectConfig, json_name: "inspectConfig"
  field :item, 3, type: Google.Privacy.Dlp.V2.ContentItem
  field :inspect_template_name, 4, type: :string, json_name: "inspectTemplateName"
  field :location_id, 5, type: :string, json_name: "locationId"
end
defmodule Google.Privacy.Dlp.V2.InspectContentResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          result: Google.Privacy.Dlp.V2.InspectResult.t() | nil
        }

  defstruct result: nil

  field :result, 1, type: Google.Privacy.Dlp.V2.InspectResult
end
defmodule Google.Privacy.Dlp.V2.OutputStorageConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          type: {:table, Google.Privacy.Dlp.V2.BigQueryTable.t() | nil},
          output_schema: Google.Privacy.Dlp.V2.OutputStorageConfig.OutputSchema.t()
        }

  defstruct type: nil,
            output_schema: :OUTPUT_SCHEMA_UNSPECIFIED

  oneof :type, 0

  field :table, 1, type: Google.Privacy.Dlp.V2.BigQueryTable, oneof: 0

  field :output_schema, 3,
    type: Google.Privacy.Dlp.V2.OutputStorageConfig.OutputSchema,
    json_name: "outputSchema",
    enum: true
end
defmodule Google.Privacy.Dlp.V2.InfoTypeStats do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          info_type: Google.Privacy.Dlp.V2.InfoType.t() | nil,
          count: integer
        }

  defstruct info_type: nil,
            count: 0

  field :info_type, 1, type: Google.Privacy.Dlp.V2.InfoType, json_name: "infoType"
  field :count, 2, type: :int64
end
defmodule Google.Privacy.Dlp.V2.InspectDataSourceDetails.RequestedOptions do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          snapshot_inspect_template: Google.Privacy.Dlp.V2.InspectTemplate.t() | nil,
          job_config: Google.Privacy.Dlp.V2.InspectJobConfig.t() | nil
        }

  defstruct snapshot_inspect_template: nil,
            job_config: nil

  field :snapshot_inspect_template, 1,
    type: Google.Privacy.Dlp.V2.InspectTemplate,
    json_name: "snapshotInspectTemplate"

  field :job_config, 3, type: Google.Privacy.Dlp.V2.InspectJobConfig, json_name: "jobConfig"
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

  defstruct processed_bytes: 0,
            total_estimated_bytes: 0,
            info_type_stats: [],
            hybrid_stats: nil

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          requested_options:
            Google.Privacy.Dlp.V2.InspectDataSourceDetails.RequestedOptions.t() | nil,
          result: Google.Privacy.Dlp.V2.InspectDataSourceDetails.Result.t() | nil
        }

  defstruct requested_options: nil,
            result: nil

  field :requested_options, 2,
    type: Google.Privacy.Dlp.V2.InspectDataSourceDetails.RequestedOptions,
    json_name: "requestedOptions"

  field :result, 3, type: Google.Privacy.Dlp.V2.InspectDataSourceDetails.Result
end
defmodule Google.Privacy.Dlp.V2.HybridInspectStatistics do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          processed_count: integer,
          aborted_count: integer,
          pending_count: integer
        }

  defstruct processed_count: 0,
            aborted_count: 0,
            pending_count: 0

  field :processed_count, 1, type: :int64, json_name: "processedCount"
  field :aborted_count, 2, type: :int64, json_name: "abortedCount"
  field :pending_count, 3, type: :int64, json_name: "pendingCount"
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

  defstruct name: "",
            display_name: "",
            supported_by: [],
            description: ""

  field :name, 1, type: :string
  field :display_name, 2, type: :string, json_name: "displayName"

  field :supported_by, 3,
    repeated: true,
    type: Google.Privacy.Dlp.V2.InfoTypeSupportedBy,
    json_name: "supportedBy",
    enum: true

  field :description, 4, type: :string
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

  defstruct parent: "",
            language_code: "",
            filter: "",
            location_id: ""

  field :parent, 4, type: :string
  field :language_code, 1, type: :string, json_name: "languageCode"
  field :filter, 2, type: :string
  field :location_id, 3, type: :string, json_name: "locationId"
end
defmodule Google.Privacy.Dlp.V2.ListInfoTypesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          info_types: [Google.Privacy.Dlp.V2.InfoTypeDescription.t()]
        }

  defstruct info_types: []

  field :info_types, 1,
    repeated: true,
    type: Google.Privacy.Dlp.V2.InfoTypeDescription,
    json_name: "infoTypes"
end
defmodule Google.Privacy.Dlp.V2.RiskAnalysisJobConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          privacy_metric: Google.Privacy.Dlp.V2.PrivacyMetric.t() | nil,
          source_table: Google.Privacy.Dlp.V2.BigQueryTable.t() | nil,
          actions: [Google.Privacy.Dlp.V2.Action.t()]
        }

  defstruct privacy_metric: nil,
            source_table: nil,
            actions: []

  field :privacy_metric, 1, type: Google.Privacy.Dlp.V2.PrivacyMetric, json_name: "privacyMetric"
  field :source_table, 2, type: Google.Privacy.Dlp.V2.BigQueryTable, json_name: "sourceTable"
  field :actions, 3, repeated: true, type: Google.Privacy.Dlp.V2.Action
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

  defstruct tag: nil,
            field: nil

  oneof :tag, 0

  field :field, 1, type: Google.Privacy.Dlp.V2.FieldId, deprecated: false
  field :info_type, 2, type: Google.Privacy.Dlp.V2.InfoType, json_name: "infoType", oneof: 0
  field :custom_tag, 3, type: :string, json_name: "customTag", oneof: 0
  field :inferred, 4, type: Google.Protobuf.Empty, oneof: 0
end
defmodule Google.Privacy.Dlp.V2.StatisticalTable.QuasiIdentifierField do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          field: Google.Privacy.Dlp.V2.FieldId.t() | nil,
          custom_tag: String.t()
        }

  defstruct field: nil,
            custom_tag: ""

  field :field, 1, type: Google.Privacy.Dlp.V2.FieldId
  field :custom_tag, 2, type: :string, json_name: "customTag"
end
defmodule Google.Privacy.Dlp.V2.StatisticalTable do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          table: Google.Privacy.Dlp.V2.BigQueryTable.t() | nil,
          quasi_ids: [Google.Privacy.Dlp.V2.StatisticalTable.QuasiIdentifierField.t()],
          relative_frequency: Google.Privacy.Dlp.V2.FieldId.t() | nil
        }

  defstruct table: nil,
            quasi_ids: [],
            relative_frequency: nil

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          field: Google.Privacy.Dlp.V2.FieldId.t() | nil
        }

  defstruct field: nil

  field :field, 1, type: Google.Privacy.Dlp.V2.FieldId
end
defmodule Google.Privacy.Dlp.V2.PrivacyMetric.CategoricalStatsConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          field: Google.Privacy.Dlp.V2.FieldId.t() | nil
        }

  defstruct field: nil

  field :field, 1, type: Google.Privacy.Dlp.V2.FieldId
end
defmodule Google.Privacy.Dlp.V2.PrivacyMetric.KAnonymityConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          quasi_ids: [Google.Privacy.Dlp.V2.FieldId.t()],
          entity_id: Google.Privacy.Dlp.V2.EntityId.t() | nil
        }

  defstruct quasi_ids: [],
            entity_id: nil

  field :quasi_ids, 1, repeated: true, type: Google.Privacy.Dlp.V2.FieldId, json_name: "quasiIds"
  field :entity_id, 2, type: Google.Privacy.Dlp.V2.EntityId, json_name: "entityId"
end
defmodule Google.Privacy.Dlp.V2.PrivacyMetric.LDiversityConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          quasi_ids: [Google.Privacy.Dlp.V2.FieldId.t()],
          sensitive_attribute: Google.Privacy.Dlp.V2.FieldId.t() | nil
        }

  defstruct quasi_ids: [],
            sensitive_attribute: nil

  field :quasi_ids, 1, repeated: true, type: Google.Privacy.Dlp.V2.FieldId, json_name: "quasiIds"

  field :sensitive_attribute, 2,
    type: Google.Privacy.Dlp.V2.FieldId,
    json_name: "sensitiveAttribute"
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

  defstruct tag: nil,
            field: nil

  oneof :tag, 0

  field :field, 1, type: Google.Privacy.Dlp.V2.FieldId, deprecated: false
  field :info_type, 2, type: Google.Privacy.Dlp.V2.InfoType, json_name: "infoType", oneof: 0
  field :custom_tag, 3, type: :string, json_name: "customTag", oneof: 0
  field :inferred, 4, type: Google.Protobuf.Empty, oneof: 0
end
defmodule Google.Privacy.Dlp.V2.PrivacyMetric.KMapEstimationConfig.AuxiliaryTable.QuasiIdField do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          field: Google.Privacy.Dlp.V2.FieldId.t() | nil,
          custom_tag: String.t()
        }

  defstruct field: nil,
            custom_tag: ""

  field :field, 1, type: Google.Privacy.Dlp.V2.FieldId
  field :custom_tag, 2, type: :string, json_name: "customTag"
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

  defstruct table: nil,
            quasi_ids: [],
            relative_frequency: nil

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          quasi_ids: [Google.Privacy.Dlp.V2.PrivacyMetric.KMapEstimationConfig.TaggedField.t()],
          region_code: String.t(),
          auxiliary_tables: [
            Google.Privacy.Dlp.V2.PrivacyMetric.KMapEstimationConfig.AuxiliaryTable.t()
          ]
        }

  defstruct quasi_ids: [],
            region_code: "",
            auxiliary_tables: []

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          quasi_ids: [Google.Privacy.Dlp.V2.QuasiId.t()],
          region_code: String.t(),
          auxiliary_tables: [Google.Privacy.Dlp.V2.StatisticalTable.t()]
        }

  defstruct quasi_ids: [],
            region_code: "",
            auxiliary_tables: []

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

  defstruct type: nil

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          min_value: Google.Privacy.Dlp.V2.Value.t() | nil,
          max_value: Google.Privacy.Dlp.V2.Value.t() | nil,
          quantile_values: [Google.Privacy.Dlp.V2.Value.t()]
        }

  defstruct min_value: nil,
            max_value: nil,
            quantile_values: []

  field :min_value, 1, type: Google.Privacy.Dlp.V2.Value, json_name: "minValue"
  field :max_value, 2, type: Google.Privacy.Dlp.V2.Value, json_name: "maxValue"

  field :quantile_values, 4,
    repeated: true,
    type: Google.Privacy.Dlp.V2.Value,
    json_name: "quantileValues"
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

  defstruct value_frequency_lower_bound: 0,
            value_frequency_upper_bound: 0,
            bucket_size: 0,
            bucket_values: [],
            bucket_value_count: 0

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          value_frequency_histogram_buckets: [
            Google.Privacy.Dlp.V2.AnalyzeDataSourceRiskDetails.CategoricalStatsResult.CategoricalStatsHistogramBucket.t()
          ]
        }

  defstruct value_frequency_histogram_buckets: []

  field :value_frequency_histogram_buckets, 5,
    repeated: true,
    type:
      Google.Privacy.Dlp.V2.AnalyzeDataSourceRiskDetails.CategoricalStatsResult.CategoricalStatsHistogramBucket,
    json_name: "valueFrequencyHistogramBuckets"
end
defmodule Google.Privacy.Dlp.V2.AnalyzeDataSourceRiskDetails.KAnonymityResult.KAnonymityEquivalenceClass do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          quasi_ids_values: [Google.Privacy.Dlp.V2.Value.t()],
          equivalence_class_size: integer
        }

  defstruct quasi_ids_values: [],
            equivalence_class_size: 0

  field :quasi_ids_values, 1,
    repeated: true,
    type: Google.Privacy.Dlp.V2.Value,
    json_name: "quasiIdsValues"

  field :equivalence_class_size, 2, type: :int64, json_name: "equivalenceClassSize"
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

  defstruct equivalence_class_size_lower_bound: 0,
            equivalence_class_size_upper_bound: 0,
            bucket_size: 0,
            bucket_values: [],
            bucket_value_count: 0

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          equivalence_class_histogram_buckets: [
            Google.Privacy.Dlp.V2.AnalyzeDataSourceRiskDetails.KAnonymityResult.KAnonymityHistogramBucket.t()
          ]
        }

  defstruct equivalence_class_histogram_buckets: []

  field :equivalence_class_histogram_buckets, 5,
    repeated: true,
    type:
      Google.Privacy.Dlp.V2.AnalyzeDataSourceRiskDetails.KAnonymityResult.KAnonymityHistogramBucket,
    json_name: "equivalenceClassHistogramBuckets"
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

  defstruct quasi_ids_values: [],
            equivalence_class_size: 0,
            num_distinct_sensitive_values: 0,
            top_sensitive_values: []

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

  defstruct sensitive_value_frequency_lower_bound: 0,
            sensitive_value_frequency_upper_bound: 0,
            bucket_size: 0,
            bucket_values: [],
            bucket_value_count: 0

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          sensitive_value_frequency_histogram_buckets: [
            Google.Privacy.Dlp.V2.AnalyzeDataSourceRiskDetails.LDiversityResult.LDiversityHistogramBucket.t()
          ]
        }

  defstruct sensitive_value_frequency_histogram_buckets: []

  field :sensitive_value_frequency_histogram_buckets, 5,
    repeated: true,
    type:
      Google.Privacy.Dlp.V2.AnalyzeDataSourceRiskDetails.LDiversityResult.LDiversityHistogramBucket,
    json_name: "sensitiveValueFrequencyHistogramBuckets"
end
defmodule Google.Privacy.Dlp.V2.AnalyzeDataSourceRiskDetails.KMapEstimationResult.KMapEstimationQuasiIdValues do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          quasi_ids_values: [Google.Privacy.Dlp.V2.Value.t()],
          estimated_anonymity: integer
        }

  defstruct quasi_ids_values: [],
            estimated_anonymity: 0

  field :quasi_ids_values, 1,
    repeated: true,
    type: Google.Privacy.Dlp.V2.Value,
    json_name: "quasiIdsValues"

  field :estimated_anonymity, 2, type: :int64, json_name: "estimatedAnonymity"
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

  defstruct min_anonymity: 0,
            max_anonymity: 0,
            bucket_size: 0,
            bucket_values: [],
            bucket_value_count: 0

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          k_map_estimation_histogram: [
            Google.Privacy.Dlp.V2.AnalyzeDataSourceRiskDetails.KMapEstimationResult.KMapEstimationHistogramBucket.t()
          ]
        }

  defstruct k_map_estimation_histogram: []

  field :k_map_estimation_histogram, 1,
    repeated: true,
    type:
      Google.Privacy.Dlp.V2.AnalyzeDataSourceRiskDetails.KMapEstimationResult.KMapEstimationHistogramBucket,
    json_name: "kMapEstimationHistogram"
end
defmodule Google.Privacy.Dlp.V2.AnalyzeDataSourceRiskDetails.DeltaPresenceEstimationResult.DeltaPresenceEstimationQuasiIdValues do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          quasi_ids_values: [Google.Privacy.Dlp.V2.Value.t()],
          estimated_probability: float | :infinity | :negative_infinity | :nan
        }

  defstruct quasi_ids_values: [],
            estimated_probability: 0.0

  field :quasi_ids_values, 1,
    repeated: true,
    type: Google.Privacy.Dlp.V2.Value,
    json_name: "quasiIdsValues"

  field :estimated_probability, 2, type: :double, json_name: "estimatedProbability"
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

  defstruct min_probability: 0.0,
            max_probability: 0.0,
            bucket_size: 0,
            bucket_values: [],
            bucket_value_count: 0

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          delta_presence_estimation_histogram: [
            Google.Privacy.Dlp.V2.AnalyzeDataSourceRiskDetails.DeltaPresenceEstimationResult.DeltaPresenceEstimationHistogramBucket.t()
          ]
        }

  defstruct delta_presence_estimation_histogram: []

  field :delta_presence_estimation_histogram, 1,
    repeated: true,
    type:
      Google.Privacy.Dlp.V2.AnalyzeDataSourceRiskDetails.DeltaPresenceEstimationResult.DeltaPresenceEstimationHistogramBucket,
    json_name: "deltaPresenceEstimationHistogram"
end
defmodule Google.Privacy.Dlp.V2.AnalyzeDataSourceRiskDetails.RequestedRiskAnalysisOptions do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          job_config: Google.Privacy.Dlp.V2.RiskAnalysisJobConfig.t() | nil
        }

  defstruct job_config: nil

  field :job_config, 1, type: Google.Privacy.Dlp.V2.RiskAnalysisJobConfig, json_name: "jobConfig"
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

  defstruct result: nil,
            requested_privacy_metric: nil,
            requested_source_table: nil,
            requested_options: nil

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          value: Google.Privacy.Dlp.V2.Value.t() | nil,
          count: integer
        }

  defstruct value: nil,
            count: 0

  field :value, 1, type: Google.Privacy.Dlp.V2.Value
  field :count, 2, type: :int64
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

  defstruct type: nil

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parsed_quote: {:date_time, Google.Privacy.Dlp.V2.DateTime.t() | nil}
        }

  defstruct parsed_quote: nil

  oneof :parsed_quote, 0

  field :date_time, 2, type: Google.Privacy.Dlp.V2.DateTime, json_name: "dateTime", oneof: 0
end
defmodule Google.Privacy.Dlp.V2.DateTime.TimeZone do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          offset_minutes: integer
        }

  defstruct offset_minutes: 0

  field :offset_minutes, 1, type: :int32, json_name: "offsetMinutes"
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

  defstruct date: nil,
            day_of_week: :DAY_OF_WEEK_UNSPECIFIED,
            time: nil,
            time_zone: nil

  field :date, 1, type: Google.Type.Date
  field :day_of_week, 2, type: Google.Type.DayOfWeek, json_name: "dayOfWeek", enum: true
  field :time, 3, type: Google.Type.TimeOfDay
  field :time_zone, 4, type: Google.Privacy.Dlp.V2.DateTime.TimeZone, json_name: "timeZone"
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

  defstruct transformation: nil,
            transformation_error_handling: nil

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
end
defmodule Google.Privacy.Dlp.V2.TransformationErrorHandling.ThrowError do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
defmodule Google.Privacy.Dlp.V2.TransformationErrorHandling.LeaveUntransformed do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
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

  defstruct mode: nil

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

  defstruct transformation: nil

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          part_to_extract: Google.Privacy.Dlp.V2.TimePartConfig.TimePart.t()
        }

  defstruct part_to_extract: :TIME_PART_UNSPECIFIED

  field :part_to_extract, 1,
    type: Google.Privacy.Dlp.V2.TimePartConfig.TimePart,
    json_name: "partToExtract",
    enum: true
end
defmodule Google.Privacy.Dlp.V2.CryptoHashConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          crypto_key: Google.Privacy.Dlp.V2.CryptoKey.t() | nil
        }

  defstruct crypto_key: nil

  field :crypto_key, 1, type: Google.Privacy.Dlp.V2.CryptoKey, json_name: "cryptoKey"
end
defmodule Google.Privacy.Dlp.V2.CryptoDeterministicConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          crypto_key: Google.Privacy.Dlp.V2.CryptoKey.t() | nil,
          surrogate_info_type: Google.Privacy.Dlp.V2.InfoType.t() | nil,
          context: Google.Privacy.Dlp.V2.FieldId.t() | nil
        }

  defstruct crypto_key: nil,
            surrogate_info_type: nil,
            context: nil

  field :crypto_key, 1, type: Google.Privacy.Dlp.V2.CryptoKey, json_name: "cryptoKey"

  field :surrogate_info_type, 2,
    type: Google.Privacy.Dlp.V2.InfoType,
    json_name: "surrogateInfoType"

  field :context, 3, type: Google.Privacy.Dlp.V2.FieldId
end
defmodule Google.Privacy.Dlp.V2.ReplaceValueConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          new_value: Google.Privacy.Dlp.V2.Value.t() | nil
        }

  defstruct new_value: nil

  field :new_value, 1, type: Google.Privacy.Dlp.V2.Value, json_name: "newValue"
end
defmodule Google.Privacy.Dlp.V2.ReplaceDictionaryConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          type: {:word_list, Google.Privacy.Dlp.V2.CustomInfoType.Dictionary.WordList.t() | nil}
        }

  defstruct type: nil

  oneof :type, 0

  field :word_list, 1,
    type: Google.Privacy.Dlp.V2.CustomInfoType.Dictionary.WordList,
    json_name: "wordList",
    oneof: 0
end
defmodule Google.Privacy.Dlp.V2.ReplaceWithInfoTypeConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
defmodule Google.Privacy.Dlp.V2.RedactConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
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

  defstruct characters: nil

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          masking_character: String.t(),
          number_to_mask: integer,
          reverse_order: boolean,
          characters_to_ignore: [Google.Privacy.Dlp.V2.CharsToIgnore.t()]
        }

  defstruct masking_character: "",
            number_to_mask: 0,
            reverse_order: false,
            characters_to_ignore: []

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          lower_bound: Google.Privacy.Dlp.V2.Value.t() | nil,
          upper_bound: Google.Privacy.Dlp.V2.Value.t() | nil,
          bucket_size: float | :infinity | :negative_infinity | :nan
        }

  defstruct lower_bound: nil,
            upper_bound: nil,
            bucket_size: 0.0

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          min: Google.Privacy.Dlp.V2.Value.t() | nil,
          max: Google.Privacy.Dlp.V2.Value.t() | nil,
          replacement_value: Google.Privacy.Dlp.V2.Value.t() | nil
        }

  defstruct min: nil,
            max: nil,
            replacement_value: nil

  field :min, 1, type: Google.Privacy.Dlp.V2.Value
  field :max, 2, type: Google.Privacy.Dlp.V2.Value

  field :replacement_value, 3,
    type: Google.Privacy.Dlp.V2.Value,
    json_name: "replacementValue",
    deprecated: false
end
defmodule Google.Privacy.Dlp.V2.BucketingConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          buckets: [Google.Privacy.Dlp.V2.BucketingConfig.Bucket.t()]
        }

  defstruct buckets: []

  field :buckets, 1, repeated: true, type: Google.Privacy.Dlp.V2.BucketingConfig.Bucket
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

  defstruct alphabet: nil,
            crypto_key: nil,
            context: nil,
            surrogate_info_type: nil

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          source:
            {:transient, Google.Privacy.Dlp.V2.TransientCryptoKey.t() | nil}
            | {:unwrapped, Google.Privacy.Dlp.V2.UnwrappedCryptoKey.t() | nil}
            | {:kms_wrapped, Google.Privacy.Dlp.V2.KmsWrappedCryptoKey.t() | nil}
        }

  defstruct source: nil

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Privacy.Dlp.V2.UnwrappedCryptoKey do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          key: binary
        }

  defstruct key: ""

  field :key, 1, type: :bytes, deprecated: false
end
defmodule Google.Privacy.Dlp.V2.KmsWrappedCryptoKey do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          wrapped_key: binary,
          crypto_key_name: String.t()
        }

  defstruct wrapped_key: "",
            crypto_key_name: ""

  field :wrapped_key, 1, type: :bytes, json_name: "wrappedKey", deprecated: false
  field :crypto_key_name, 2, type: :string, json_name: "cryptoKeyName", deprecated: false
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

  defstruct method: nil,
            upper_bound_days: 0,
            lower_bound_days: 0,
            context: nil

  oneof :method, 0

  field :upper_bound_days, 1, type: :int32, json_name: "upperBoundDays", deprecated: false
  field :lower_bound_days, 2, type: :int32, json_name: "lowerBoundDays", deprecated: false
  field :context, 3, type: Google.Privacy.Dlp.V2.FieldId
  field :crypto_key, 4, type: Google.Privacy.Dlp.V2.CryptoKey, json_name: "cryptoKey", oneof: 0
end
defmodule Google.Privacy.Dlp.V2.InfoTypeTransformations.InfoTypeTransformation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          info_types: [Google.Privacy.Dlp.V2.InfoType.t()],
          primitive_transformation: Google.Privacy.Dlp.V2.PrimitiveTransformation.t() | nil
        }

  defstruct info_types: [],
            primitive_transformation: nil

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          transformations: [
            Google.Privacy.Dlp.V2.InfoTypeTransformations.InfoTypeTransformation.t()
          ]
        }

  defstruct transformations: []

  field :transformations, 1,
    repeated: true,
    type: Google.Privacy.Dlp.V2.InfoTypeTransformations.InfoTypeTransformation,
    deprecated: false
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

  defstruct transformation: nil,
            fields: [],
            condition: nil

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          field_transformations: [Google.Privacy.Dlp.V2.FieldTransformation.t()],
          record_suppressions: [Google.Privacy.Dlp.V2.RecordSuppression.t()]
        }

  defstruct field_transformations: [],
            record_suppressions: []

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          condition: Google.Privacy.Dlp.V2.RecordCondition.t() | nil
        }

  defstruct condition: nil

  field :condition, 1, type: Google.Privacy.Dlp.V2.RecordCondition
end
defmodule Google.Privacy.Dlp.V2.RecordCondition.Condition do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          field: Google.Privacy.Dlp.V2.FieldId.t() | nil,
          operator: Google.Privacy.Dlp.V2.RelationalOperator.t(),
          value: Google.Privacy.Dlp.V2.Value.t() | nil
        }

  defstruct field: nil,
            operator: :RELATIONAL_OPERATOR_UNSPECIFIED,
            value: nil

  field :field, 1, type: Google.Privacy.Dlp.V2.FieldId, deprecated: false

  field :operator, 3,
    type: Google.Privacy.Dlp.V2.RelationalOperator,
    enum: true,
    deprecated: false

  field :value, 4, type: Google.Privacy.Dlp.V2.Value
end
defmodule Google.Privacy.Dlp.V2.RecordCondition.Conditions do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          conditions: [Google.Privacy.Dlp.V2.RecordCondition.Condition.t()]
        }

  defstruct conditions: []

  field :conditions, 1, repeated: true, type: Google.Privacy.Dlp.V2.RecordCondition.Condition
end
defmodule Google.Privacy.Dlp.V2.RecordCondition.Expressions do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          type: {:conditions, Google.Privacy.Dlp.V2.RecordCondition.Conditions.t() | nil},
          logical_operator: Google.Privacy.Dlp.V2.RecordCondition.Expressions.LogicalOperator.t()
        }

  defstruct type: nil,
            logical_operator: :LOGICAL_OPERATOR_UNSPECIFIED

  oneof :type, 0

  field :logical_operator, 1,
    type: Google.Privacy.Dlp.V2.RecordCondition.Expressions.LogicalOperator,
    json_name: "logicalOperator",
    enum: true

  field :conditions, 3, type: Google.Privacy.Dlp.V2.RecordCondition.Conditions, oneof: 0
end
defmodule Google.Privacy.Dlp.V2.RecordCondition do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          expressions: Google.Privacy.Dlp.V2.RecordCondition.Expressions.t() | nil
        }

  defstruct expressions: nil

  field :expressions, 3, type: Google.Privacy.Dlp.V2.RecordCondition.Expressions
end
defmodule Google.Privacy.Dlp.V2.TransformationOverview do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          transformed_bytes: integer,
          transformation_summaries: [Google.Privacy.Dlp.V2.TransformationSummary.t()]
        }

  defstruct transformed_bytes: 0,
            transformation_summaries: []

  field :transformed_bytes, 2, type: :int64, json_name: "transformedBytes"

  field :transformation_summaries, 3,
    repeated: true,
    type: Google.Privacy.Dlp.V2.TransformationSummary,
    json_name: "transformationSummaries"
end
defmodule Google.Privacy.Dlp.V2.TransformationSummary.SummaryResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          count: integer,
          code: Google.Privacy.Dlp.V2.TransformationSummary.TransformationResultCode.t(),
          details: String.t()
        }

  defstruct count: 0,
            code: :TRANSFORMATION_RESULT_CODE_UNSPECIFIED,
            details: ""

  field :count, 1, type: :int64

  field :code, 2,
    type: Google.Privacy.Dlp.V2.TransformationSummary.TransformationResultCode,
    enum: true

  field :details, 3, type: :string
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

  defstruct info_type: nil,
            field: nil,
            transformation: nil,
            field_transformations: [],
            record_suppress: nil,
            results: [],
            transformed_bytes: 0

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
defmodule Google.Privacy.Dlp.V2.Schedule do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          option: {:recurrence_period_duration, Google.Protobuf.Duration.t() | nil}
        }

  defstruct option: nil

  oneof :option, 0

  field :recurrence_period_duration, 1,
    type: Google.Protobuf.Duration,
    json_name: "recurrencePeriodDuration",
    oneof: 0
end
defmodule Google.Privacy.Dlp.V2.Manual do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
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

  defstruct name: "",
            display_name: "",
            description: "",
            create_time: nil,
            update_time: nil,
            inspect_config: nil

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          display_name: String.t(),
          description: String.t(),
          create_time: Google.Protobuf.Timestamp.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil,
          deidentify_config: Google.Privacy.Dlp.V2.DeidentifyConfig.t() | nil
        }

  defstruct name: "",
            display_name: "",
            description: "",
            create_time: nil,
            update_time: nil,
            deidentify_config: nil

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          details: Google.Rpc.Status.t() | nil,
          timestamps: [Google.Protobuf.Timestamp.t()]
        }

  defstruct details: nil,
            timestamps: []

  field :details, 1, type: Google.Rpc.Status
  field :timestamps, 2, repeated: true, type: Google.Protobuf.Timestamp
end
defmodule Google.Privacy.Dlp.V2.JobTrigger.Trigger do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          trigger:
            {:schedule, Google.Privacy.Dlp.V2.Schedule.t() | nil}
            | {:manual, Google.Privacy.Dlp.V2.Manual.t() | nil}
        }

  defstruct trigger: nil

  oneof :trigger, 0

  field :schedule, 1, type: Google.Privacy.Dlp.V2.Schedule, oneof: 0
  field :manual, 2, type: Google.Privacy.Dlp.V2.Manual, oneof: 0
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

  defstruct job: nil,
            name: "",
            display_name: "",
            description: "",
            triggers: [],
            errors: [],
            create_time: nil,
            update_time: nil,
            last_run_time: nil,
            status: :STATUS_UNSPECIFIED

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          output_config: Google.Privacy.Dlp.V2.OutputStorageConfig.t() | nil
        }

  defstruct output_config: nil

  field :output_config, 1,
    type: Google.Privacy.Dlp.V2.OutputStorageConfig,
    json_name: "outputConfig"
end
defmodule Google.Privacy.Dlp.V2.Action.PublishToPubSub do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          topic: String.t()
        }

  defstruct topic: ""

  field :topic, 1, type: :string
end
defmodule Google.Privacy.Dlp.V2.Action.PublishSummaryToCscc do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
defmodule Google.Privacy.Dlp.V2.Action.PublishFindingsToCloudDataCatalog do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
defmodule Google.Privacy.Dlp.V2.Action.JobNotificationEmails do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
defmodule Google.Privacy.Dlp.V2.Action.PublishToStackdriver do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
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

  defstruct action: nil

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

  defstruct parent: "",
            inspect_template: nil,
            template_id: "",
            location_id: ""

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          inspect_template: Google.Privacy.Dlp.V2.InspectTemplate.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct name: "",
            inspect_template: nil,
            update_mask: nil

  field :name, 1, type: :string, deprecated: false

  field :inspect_template, 2,
    type: Google.Privacy.Dlp.V2.InspectTemplate,
    json_name: "inspectTemplate"

  field :update_mask, 3, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end
defmodule Google.Privacy.Dlp.V2.GetInspectTemplateRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
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

  defstruct parent: "",
            page_token: "",
            page_size: 0,
            order_by: "",
            location_id: ""

  field :parent, 1, type: :string, deprecated: false
  field :page_token, 2, type: :string, json_name: "pageToken"
  field :page_size, 3, type: :int32, json_name: "pageSize"
  field :order_by, 4, type: :string, json_name: "orderBy"
  field :location_id, 5, type: :string, json_name: "locationId"
end
defmodule Google.Privacy.Dlp.V2.ListInspectTemplatesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          inspect_templates: [Google.Privacy.Dlp.V2.InspectTemplate.t()],
          next_page_token: String.t()
        }

  defstruct inspect_templates: [],
            next_page_token: ""

  field :inspect_templates, 1,
    repeated: true,
    type: Google.Privacy.Dlp.V2.InspectTemplate,
    json_name: "inspectTemplates"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Google.Privacy.Dlp.V2.DeleteInspectTemplateRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
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

  defstruct parent: "",
            job_trigger: nil,
            trigger_id: "",
            location_id: ""

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Privacy.Dlp.V2.UpdateJobTriggerRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          job_trigger: Google.Privacy.Dlp.V2.JobTrigger.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct name: "",
            job_trigger: nil,
            update_mask: nil

  field :name, 1, type: :string, deprecated: false
  field :job_trigger, 2, type: Google.Privacy.Dlp.V2.JobTrigger, json_name: "jobTrigger"
  field :update_mask, 3, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end
defmodule Google.Privacy.Dlp.V2.GetJobTriggerRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
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

  defstruct job: nil,
            parent: "",
            job_id: "",
            location_id: ""

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

  defstruct parent: "",
            page_token: "",
            page_size: 0,
            order_by: "",
            filter: "",
            type: :DLP_JOB_TYPE_UNSPECIFIED,
            location_id: ""

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          job_triggers: [Google.Privacy.Dlp.V2.JobTrigger.t()],
          next_page_token: String.t()
        }

  defstruct job_triggers: [],
            next_page_token: ""

  field :job_triggers, 1,
    repeated: true,
    type: Google.Privacy.Dlp.V2.JobTrigger,
    json_name: "jobTriggers"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Google.Privacy.Dlp.V2.DeleteJobTriggerRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
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

  defstruct storage_config: nil,
            inspect_config: nil,
            inspect_template_name: "",
            actions: []

  field :storage_config, 1, type: Google.Privacy.Dlp.V2.StorageConfig, json_name: "storageConfig"
  field :inspect_config, 2, type: Google.Privacy.Dlp.V2.InspectConfig, json_name: "inspectConfig"
  field :inspect_template_name, 3, type: :string, json_name: "inspectTemplateName"
  field :actions, 4, repeated: true, type: Google.Privacy.Dlp.V2.Action
end
defmodule Google.Privacy.Dlp.V2.DataProfileAction.Export do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          profile_table: Google.Privacy.Dlp.V2.BigQueryTable.t() | nil
        }

  defstruct profile_table: nil

  field :profile_table, 1, type: Google.Privacy.Dlp.V2.BigQueryTable, json_name: "profileTable"
end
defmodule Google.Privacy.Dlp.V2.DataProfileAction.PubSubNotification do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          topic: String.t(),
          event: Google.Privacy.Dlp.V2.DataProfileAction.EventType.t(),
          pubsub_condition: Google.Privacy.Dlp.V2.DataProfilePubSubCondition.t() | nil,
          detail_of_message:
            Google.Privacy.Dlp.V2.DataProfileAction.PubSubNotification.DetailLevel.t()
        }

  defstruct topic: "",
            event: :EVENT_TYPE_UNSPECIFIED,
            pubsub_condition: nil,
            detail_of_message: :DETAIL_LEVEL_UNSPECIFIED

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          action:
            {:export_data, Google.Privacy.Dlp.V2.DataProfileAction.Export.t() | nil}
            | {:pub_sub_notification,
               Google.Privacy.Dlp.V2.DataProfileAction.PubSubNotification.t() | nil}
        }

  defstruct action: nil

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          location: Google.Privacy.Dlp.V2.DataProfileLocation.t() | nil,
          project_id: String.t(),
          inspect_templates: [String.t()],
          data_profile_actions: [Google.Privacy.Dlp.V2.DataProfileAction.t()]
        }

  defstruct location: nil,
            project_id: "",
            inspect_templates: [],
            data_profile_actions: []

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          location: {:organization_id, integer} | {:folder_id, integer}
        }

  defstruct location: nil

  oneof :location, 0

  field :organization_id, 1, type: :int64, json_name: "organizationId", oneof: 0
  field :folder_id, 2, type: :int64, json_name: "folderId", oneof: 0
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

  defstruct details: nil,
            name: "",
            type: :DLP_JOB_TYPE_UNSPECIFIED,
            state: :JOB_STATE_UNSPECIFIED,
            create_time: nil,
            start_time: nil,
            end_time: nil,
            job_trigger_name: "",
            errors: []

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
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

  defstruct parent: "",
            filter: "",
            page_size: 0,
            page_token: "",
            type: :DLP_JOB_TYPE_UNSPECIFIED,
            order_by: "",
            location_id: ""

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          jobs: [Google.Privacy.Dlp.V2.DlpJob.t()],
          next_page_token: String.t()
        }

  defstruct jobs: [],
            next_page_token: ""

  field :jobs, 1, repeated: true, type: Google.Privacy.Dlp.V2.DlpJob
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Google.Privacy.Dlp.V2.CancelDlpJobRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Privacy.Dlp.V2.FinishDlpJobRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Privacy.Dlp.V2.DeleteDlpJobRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
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

  defstruct parent: "",
            deidentify_template: nil,
            template_id: "",
            location_id: ""

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          deidentify_template: Google.Privacy.Dlp.V2.DeidentifyTemplate.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct name: "",
            deidentify_template: nil,
            update_mask: nil

  field :name, 1, type: :string, deprecated: false

  field :deidentify_template, 2,
    type: Google.Privacy.Dlp.V2.DeidentifyTemplate,
    json_name: "deidentifyTemplate"

  field :update_mask, 3, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end
defmodule Google.Privacy.Dlp.V2.GetDeidentifyTemplateRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
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

  defstruct parent: "",
            page_token: "",
            page_size: 0,
            order_by: "",
            location_id: ""

  field :parent, 1, type: :string, deprecated: false
  field :page_token, 2, type: :string, json_name: "pageToken"
  field :page_size, 3, type: :int32, json_name: "pageSize"
  field :order_by, 4, type: :string, json_name: "orderBy"
  field :location_id, 5, type: :string, json_name: "locationId"
end
defmodule Google.Privacy.Dlp.V2.ListDeidentifyTemplatesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          deidentify_templates: [Google.Privacy.Dlp.V2.DeidentifyTemplate.t()],
          next_page_token: String.t()
        }

  defstruct deidentify_templates: [],
            next_page_token: ""

  field :deidentify_templates, 1,
    repeated: true,
    type: Google.Privacy.Dlp.V2.DeidentifyTemplate,
    json_name: "deidentifyTemplates"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Google.Privacy.Dlp.V2.DeleteDeidentifyTemplateRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
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

  defstruct source: nil,
            output_path: nil

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          approx_num_phrases: integer
        }

  defstruct approx_num_phrases: 0

  field :approx_num_phrases, 1, type: :int64, json_name: "approxNumPhrases"
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

  defstruct type: nil,
            display_name: "",
            description: ""

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          type:
            {:large_custom_dictionary, Google.Privacy.Dlp.V2.LargeCustomDictionaryStats.t() | nil}
        }

  defstruct type: nil

  oneof :type, 0

  field :large_custom_dictionary, 1,
    type: Google.Privacy.Dlp.V2.LargeCustomDictionaryStats,
    json_name: "largeCustomDictionary",
    oneof: 0
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

  defstruct config: nil,
            create_time: nil,
            state: :STORED_INFO_TYPE_STATE_UNSPECIFIED,
            errors: [],
            stats: nil

  field :config, 1, type: Google.Privacy.Dlp.V2.StoredInfoTypeConfig
  field :create_time, 2, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :state, 3, type: Google.Privacy.Dlp.V2.StoredInfoTypeState, enum: true
  field :errors, 4, repeated: true, type: Google.Privacy.Dlp.V2.Error
  field :stats, 5, type: Google.Privacy.Dlp.V2.StoredInfoTypeStats
end
defmodule Google.Privacy.Dlp.V2.StoredInfoType do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          current_version: Google.Privacy.Dlp.V2.StoredInfoTypeVersion.t() | nil,
          pending_versions: [Google.Privacy.Dlp.V2.StoredInfoTypeVersion.t()]
        }

  defstruct name: "",
            current_version: nil,
            pending_versions: []

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          config: Google.Privacy.Dlp.V2.StoredInfoTypeConfig.t() | nil,
          stored_info_type_id: String.t(),
          location_id: String.t()
        }

  defstruct parent: "",
            config: nil,
            stored_info_type_id: "",
            location_id: ""

  field :parent, 1, type: :string, deprecated: false
  field :config, 2, type: Google.Privacy.Dlp.V2.StoredInfoTypeConfig, deprecated: false
  field :stored_info_type_id, 3, type: :string, json_name: "storedInfoTypeId"
  field :location_id, 4, type: :string, json_name: "locationId"
end
defmodule Google.Privacy.Dlp.V2.UpdateStoredInfoTypeRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          config: Google.Privacy.Dlp.V2.StoredInfoTypeConfig.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct name: "",
            config: nil,
            update_mask: nil

  field :name, 1, type: :string, deprecated: false
  field :config, 2, type: Google.Privacy.Dlp.V2.StoredInfoTypeConfig
  field :update_mask, 3, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end
defmodule Google.Privacy.Dlp.V2.GetStoredInfoTypeRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
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

  defstruct parent: "",
            page_token: "",
            page_size: 0,
            order_by: "",
            location_id: ""

  field :parent, 1, type: :string, deprecated: false
  field :page_token, 2, type: :string, json_name: "pageToken"
  field :page_size, 3, type: :int32, json_name: "pageSize"
  field :order_by, 4, type: :string, json_name: "orderBy"
  field :location_id, 5, type: :string, json_name: "locationId"
end
defmodule Google.Privacy.Dlp.V2.ListStoredInfoTypesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          stored_info_types: [Google.Privacy.Dlp.V2.StoredInfoType.t()],
          next_page_token: String.t()
        }

  defstruct stored_info_types: [],
            next_page_token: ""

  field :stored_info_types, 1,
    repeated: true,
    type: Google.Privacy.Dlp.V2.StoredInfoType,
    json_name: "storedInfoTypes"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Google.Privacy.Dlp.V2.DeleteStoredInfoTypeRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Privacy.Dlp.V2.HybridInspectJobTriggerRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          hybrid_item: Google.Privacy.Dlp.V2.HybridContentItem.t() | nil
        }

  defstruct name: "",
            hybrid_item: nil

  field :name, 1, type: :string, deprecated: false
  field :hybrid_item, 3, type: Google.Privacy.Dlp.V2.HybridContentItem, json_name: "hybridItem"
end
defmodule Google.Privacy.Dlp.V2.HybridInspectDlpJobRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          hybrid_item: Google.Privacy.Dlp.V2.HybridContentItem.t() | nil
        }

  defstruct name: "",
            hybrid_item: nil

  field :name, 1, type: :string, deprecated: false
  field :hybrid_item, 3, type: Google.Privacy.Dlp.V2.HybridContentItem, json_name: "hybridItem"
end
defmodule Google.Privacy.Dlp.V2.HybridContentItem do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          item: Google.Privacy.Dlp.V2.ContentItem.t() | nil,
          finding_details: Google.Privacy.Dlp.V2.HybridFindingDetails.t() | nil
        }

  defstruct item: nil,
            finding_details: nil

  field :item, 1, type: Google.Privacy.Dlp.V2.ContentItem

  field :finding_details, 2,
    type: Google.Privacy.Dlp.V2.HybridFindingDetails,
    json_name: "findingDetails"
end
defmodule Google.Privacy.Dlp.V2.HybridFindingDetails.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct key: "",
            value: ""

  field :key, 1, type: :string
  field :value, 2, type: :string
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

  defstruct container_details: nil,
            file_offset: 0,
            row_offset: 0,
            table_options: nil,
            labels: %{}

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
defmodule Google.Privacy.Dlp.V2.SensitivityScore do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          score: Google.Privacy.Dlp.V2.SensitivityScore.SensitivityScoreLevel.t()
        }

  defstruct score: :SENSITIVITY_SCORE_UNSPECIFIED

  field :score, 1, type: Google.Privacy.Dlp.V2.SensitivityScore.SensitivityScoreLevel, enum: true
end
defmodule Google.Privacy.Dlp.V2.DataRiskLevel do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          score: Google.Privacy.Dlp.V2.DataRiskLevel.DataRiskLevelScore.t()
        }

  defstruct score: :RISK_SCORE_UNSPECIFIED

  field :score, 1, type: Google.Privacy.Dlp.V2.DataRiskLevel.DataRiskLevelScore, enum: true
end
defmodule Google.Privacy.Dlp.V2.DataProfileConfigSnapshot do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          inspect_config: Google.Privacy.Dlp.V2.InspectConfig.t() | nil,
          data_profile_job: Google.Privacy.Dlp.V2.DataProfileJobConfig.t() | nil
        }

  defstruct inspect_config: nil,
            data_profile_job: nil

  field :inspect_config, 2, type: Google.Privacy.Dlp.V2.InspectConfig, json_name: "inspectConfig"

  field :data_profile_job, 3,
    type: Google.Privacy.Dlp.V2.DataProfileJobConfig,
    json_name: "dataProfileJob"
end
defmodule Google.Privacy.Dlp.V2.TableDataProfile.ResourceLabelsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct key: "",
            value: ""

  field :key, 1, type: :string
  field :value, 2, type: :string
end
defmodule Google.Privacy.Dlp.V2.TableDataProfile do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          project_data_profile: String.t(),
          dataset_project_id: String.t(),
          dataset_location: String.t(),
          dataset_id: String.t(),
          table_id: String.t(),
          full_resource: String.t(),
          profile_status: Google.Privacy.Dlp.V2.ProfileStatus.t() | nil,
          state: Google.Privacy.Dlp.V2.TableDataProfile.State.t(),
          sensitivity_score: Google.Privacy.Dlp.V2.SensitivityScore.t() | nil,
          data_risk_level: Google.Privacy.Dlp.V2.DataRiskLevel.t() | nil,
          predicted_info_types: [Google.Privacy.Dlp.V2.InfoTypeSummary.t()],
          other_info_types: [Google.Privacy.Dlp.V2.OtherInfoTypeSummary.t()],
          config_snapshot: Google.Privacy.Dlp.V2.DataProfileConfigSnapshot.t() | nil,
          last_modified_time: Google.Protobuf.Timestamp.t() | nil,
          expiration_time: Google.Protobuf.Timestamp.t() | nil,
          scanned_column_count: integer,
          failed_column_count: integer,
          table_size_bytes: integer,
          row_count: integer,
          encryption_status: Google.Privacy.Dlp.V2.EncryptionStatus.t(),
          resource_visibility: Google.Privacy.Dlp.V2.ResourceVisibility.t(),
          profile_last_generated: Google.Protobuf.Timestamp.t() | nil,
          resource_labels: %{String.t() => String.t()},
          create_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct name: "",
            project_data_profile: "",
            dataset_project_id: "",
            dataset_location: "",
            dataset_id: "",
            table_id: "",
            full_resource: "",
            profile_status: nil,
            state: :STATE_UNSPECIFIED,
            sensitivity_score: nil,
            data_risk_level: nil,
            predicted_info_types: [],
            other_info_types: [],
            config_snapshot: nil,
            last_modified_time: nil,
            expiration_time: nil,
            scanned_column_count: 0,
            failed_column_count: 0,
            table_size_bytes: 0,
            row_count: 0,
            encryption_status: :ENCRYPTION_STATUS_UNSPECIFIED,
            resource_visibility: :RESOURCE_VISIBILITY_UNSPECIFIED,
            profile_last_generated: nil,
            resource_labels: %{},
            create_time: nil

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          status: Google.Rpc.Status.t() | nil,
          timestamp: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct status: nil,
            timestamp: nil

  field :status, 1, type: Google.Rpc.Status
  field :timestamp, 3, type: Google.Protobuf.Timestamp
end
defmodule Google.Privacy.Dlp.V2.InfoTypeSummary do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          info_type: Google.Privacy.Dlp.V2.InfoType.t() | nil
        }

  defstruct info_type: nil

  field :info_type, 1, type: Google.Privacy.Dlp.V2.InfoType, json_name: "infoType"
end
defmodule Google.Privacy.Dlp.V2.OtherInfoTypeSummary do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          info_type: Google.Privacy.Dlp.V2.InfoType.t() | nil
        }

  defstruct info_type: nil

  field :info_type, 1, type: Google.Privacy.Dlp.V2.InfoType, json_name: "infoType"
end
defmodule Google.Privacy.Dlp.V2.DataProfilePubSubCondition.PubSubCondition do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          value:
            {:minimum_risk_score,
             Google.Privacy.Dlp.V2.DataProfilePubSubCondition.ProfileScoreBucket.t()}
            | {:minimum_sensitivity_score,
               Google.Privacy.Dlp.V2.DataProfilePubSubCondition.ProfileScoreBucket.t()}
        }

  defstruct value: nil

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          logical_operator:
            Google.Privacy.Dlp.V2.DataProfilePubSubCondition.PubSubExpressions.PubSubLogicalOperator.t(),
          conditions: [Google.Privacy.Dlp.V2.DataProfilePubSubCondition.PubSubCondition.t()]
        }

  defstruct logical_operator: :LOGICAL_OPERATOR_UNSPECIFIED,
            conditions: []

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          expressions:
            Google.Privacy.Dlp.V2.DataProfilePubSubCondition.PubSubExpressions.t() | nil
        }

  defstruct expressions: nil

  field :expressions, 1, type: Google.Privacy.Dlp.V2.DataProfilePubSubCondition.PubSubExpressions
end
defmodule Google.Privacy.Dlp.V2.DataProfilePubSubMessage do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          profile: Google.Privacy.Dlp.V2.TableDataProfile.t() | nil,
          event: Google.Privacy.Dlp.V2.DataProfileAction.EventType.t()
        }

  defstruct profile: nil,
            event: :EVENT_TYPE_UNSPECIFIED

  field :profile, 1, type: Google.Privacy.Dlp.V2.TableDataProfile
  field :event, 2, type: Google.Privacy.Dlp.V2.DataProfileAction.EventType, enum: true
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
