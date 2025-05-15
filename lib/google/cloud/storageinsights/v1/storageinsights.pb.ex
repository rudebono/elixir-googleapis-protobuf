defmodule Google.Cloud.Storageinsights.V1.FrequencyOptions.Frequency do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :FREQUENCY_UNSPECIFIED, 0
  field :DAILY, 1
  field :WEEKLY, 2
end

defmodule Google.Cloud.Storageinsights.V1.Identity.IdentityType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :IDENTITY_TYPE_UNSPECIFIED, 0
  field :IDENTITY_TYPE_PER_CONFIG, 1
  field :IDENTITY_TYPE_PER_PROJECT, 2
end

defmodule Google.Cloud.Storageinsights.V1.DatasetConfig.ConfigState do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :CONFIG_STATE_UNSPECIFIED, 0
  field :CONFIG_STATE_ACTIVE, 1
  field :CONFIG_STATE_VERIFICATION_IN_PROGRESS, 2
  field :CONFIG_STATE_CREATED, 3
  field :CONFIG_STATE_PROCESSING, 4
end

defmodule Google.Cloud.Storageinsights.V1.ListReportConfigsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
  field :order_by, 5, type: :string, json_name: "orderBy"
end

defmodule Google.Cloud.Storageinsights.V1.ListReportConfigsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :report_configs, 1,
    repeated: true,
    type: Google.Cloud.Storageinsights.V1.ReportConfig,
    json_name: "reportConfigs"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Storageinsights.V1.GetReportConfigRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Storageinsights.V1.CreateReportConfigRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :report_config, 3,
    type: Google.Cloud.Storageinsights.V1.ReportConfig,
    json_name: "reportConfig",
    deprecated: false

  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Storageinsights.V1.UpdateReportConfigRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :update_mask, 1,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :report_config, 2,
    type: Google.Cloud.Storageinsights.V1.ReportConfig,
    json_name: "reportConfig",
    deprecated: false

  field :request_id, 3, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Storageinsights.V1.DeleteReportConfigRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :force, 2, type: :bool, deprecated: false
  field :request_id, 3, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Storageinsights.V1.ReportDetail.Metrics do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :processed_records_count, 1, type: :int64, json_name: "processedRecordsCount"
end

defmodule Google.Cloud.Storageinsights.V1.ReportDetail.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Storageinsights.V1.ReportDetail do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string
  field :snapshot_time, 2, type: Google.Protobuf.Timestamp, json_name: "snapshotTime"
  field :report_path_prefix, 8, type: :string, json_name: "reportPathPrefix"
  field :shards_count, 9, type: :int64, json_name: "shardsCount"
  field :status, 4, type: Google.Rpc.Status

  field :labels, 5,
    repeated: true,
    type: Google.Cloud.Storageinsights.V1.ReportDetail.LabelsEntry,
    map: true

  field :target_datetime, 6, type: Google.Type.DateTime, json_name: "targetDatetime"

  field :report_metrics, 7,
    type: Google.Cloud.Storageinsights.V1.ReportDetail.Metrics,
    json_name: "reportMetrics"
end

defmodule Google.Cloud.Storageinsights.V1.ListReportDetailsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
  field :order_by, 5, type: :string, json_name: "orderBy"
end

defmodule Google.Cloud.Storageinsights.V1.ListReportDetailsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :report_details, 1,
    repeated: true,
    type: Google.Cloud.Storageinsights.V1.ReportDetail,
    json_name: "reportDetails"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Storageinsights.V1.GetReportDetailRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Storageinsights.V1.OperationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :create_time, 1,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :end_time, 2, type: Google.Protobuf.Timestamp, json_name: "endTime", deprecated: false
  field :target, 3, type: :string, deprecated: false
  field :verb, 4, type: :string, deprecated: false
  field :status_message, 5, type: :string, json_name: "statusMessage", deprecated: false

  field :requested_cancellation, 6,
    type: :bool,
    json_name: "requestedCancellation",
    deprecated: false

  field :api_version, 7, type: :string, json_name: "apiVersion", deprecated: false
end

defmodule Google.Cloud.Storageinsights.V1.FrequencyOptions do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :frequency, 1,
    type: Google.Cloud.Storageinsights.V1.FrequencyOptions.Frequency,
    enum: true

  field :start_date, 2, type: Google.Type.Date, json_name: "startDate"
  field :end_date, 3, type: Google.Type.Date, json_name: "endDate"
end

defmodule Google.Cloud.Storageinsights.V1.CSVOptions do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :record_separator, 1, type: :string, json_name: "recordSeparator"
  field :delimiter, 2, type: :string
  field :header_required, 3, type: :bool, json_name: "headerRequired"
end

defmodule Google.Cloud.Storageinsights.V1.ParquetOptions do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3
end

defmodule Google.Cloud.Storageinsights.V1.CloudStorageFilters do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :bucket, 1, type: :string
end

defmodule Google.Cloud.Storageinsights.V1.CloudStorageDestinationOptions do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :bucket, 1, type: :string
  field :destination_path, 2, type: :string, json_name: "destinationPath"
end

defmodule Google.Cloud.Storageinsights.V1.ObjectMetadataReportOptions do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :filter, 0

  oneof :destination_options, 1

  field :metadata_fields, 1, repeated: true, type: :string, json_name: "metadataFields"

  field :storage_filters, 2,
    type: Google.Cloud.Storageinsights.V1.CloudStorageFilters,
    json_name: "storageFilters",
    oneof: 0

  field :storage_destination_options, 3,
    type: Google.Cloud.Storageinsights.V1.CloudStorageDestinationOptions,
    json_name: "storageDestinationOptions",
    oneof: 1
end

defmodule Google.Cloud.Storageinsights.V1.ReportConfig.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Storageinsights.V1.ReportConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :report_format, 0

  oneof :report_kind, 1

  field :name, 1, type: :string

  field :create_time, 2,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :frequency_options, 5,
    type: Google.Cloud.Storageinsights.V1.FrequencyOptions,
    json_name: "frequencyOptions"

  field :csv_options, 6,
    type: Google.Cloud.Storageinsights.V1.CSVOptions,
    json_name: "csvOptions",
    oneof: 0

  field :parquet_options, 7,
    type: Google.Cloud.Storageinsights.V1.ParquetOptions,
    json_name: "parquetOptions",
    oneof: 0

  field :object_metadata_report_options, 8,
    type: Google.Cloud.Storageinsights.V1.ObjectMetadataReportOptions,
    json_name: "objectMetadataReportOptions",
    oneof: 1

  field :labels, 10,
    repeated: true,
    type: Google.Cloud.Storageinsights.V1.ReportConfig.LabelsEntry,
    map: true

  field :display_name, 11, type: :string, json_name: "displayName"
end

defmodule Google.Cloud.Storageinsights.V1.Identity do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :type, 2, type: Google.Cloud.Storageinsights.V1.Identity.IdentityType, enum: true
end

defmodule Google.Cloud.Storageinsights.V1.DatasetConfig.SourceProjects do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :project_numbers, 1, repeated: true, type: :int64, json_name: "projectNumbers"
end

defmodule Google.Cloud.Storageinsights.V1.DatasetConfig.SourceFolders do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :folder_numbers, 1,
    repeated: true,
    type: :int64,
    json_name: "folderNumbers",
    deprecated: false
end

defmodule Google.Cloud.Storageinsights.V1.DatasetConfig.CloudStorageLocations do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :locations, 1, repeated: true, type: :string
end

defmodule Google.Cloud.Storageinsights.V1.DatasetConfig.CloudStorageBuckets.CloudStorageBucket do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :cloud_storage_bucket, 0

  field :bucket_name, 1, type: :string, json_name: "bucketName", oneof: 0
  field :bucket_prefix_regex, 2, type: :string, json_name: "bucketPrefixRegex", oneof: 0
end

defmodule Google.Cloud.Storageinsights.V1.DatasetConfig.CloudStorageBuckets do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :cloud_storage_buckets, 1,
    repeated: true,
    type: Google.Cloud.Storageinsights.V1.DatasetConfig.CloudStorageBuckets.CloudStorageBucket,
    json_name: "cloudStorageBuckets"
end

defmodule Google.Cloud.Storageinsights.V1.DatasetConfig.Link do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :dataset, 1, type: :string, deprecated: false
  field :linked, 2, type: :bool, deprecated: false
end

defmodule Google.Cloud.Storageinsights.V1.DatasetConfig.BucketErrors do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :validated_count, 1, type: :int64, json_name: "validatedCount", deprecated: false

  field :permission_denied_count, 2,
    type: :int64,
    json_name: "permissionDeniedCount",
    deprecated: false

  field :permission_denied_bucket_ids, 3,
    repeated: true,
    type: :string,
    json_name: "permissionDeniedBucketIds",
    deprecated: false

  field :non_management_hub_entitled_count, 5,
    type: :int64,
    json_name: "nonManagementHubEntitledCount",
    deprecated: true

  field :internal_error_count, 4, type: :int64, json_name: "internalErrorCount", deprecated: false

  field :non_storage_intelligence_entitled_count, 7,
    type: :int64,
    json_name: "nonStorageIntelligenceEntitledCount",
    deprecated: false

  field :non_storage_intelligence_entitled_bucket_ids, 8,
    repeated: true,
    type: :string,
    json_name: "nonStorageIntelligenceEntitledBucketIds",
    deprecated: false
end

defmodule Google.Cloud.Storageinsights.V1.DatasetConfig.ProjectErrors do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :destination_project_check_result, 0

  field :validated_count, 1,
    proto3_optional: true,
    type: :int64,
    json_name: "validatedCount",
    deprecated: false

  field :outside_org_error_count, 2,
    proto3_optional: true,
    type: :int64,
    json_name: "outsideOrgErrorCount",
    deprecated: false

  field :outside_org_project_numbers, 3,
    repeated: true,
    type: :int64,
    json_name: "outsideOrgProjectNumbers",
    deprecated: false

  field :non_management_hub_entitled_error_count, 7,
    proto3_optional: true,
    type: :int64,
    json_name: "nonManagementHubEntitledErrorCount",
    deprecated: true

  field :non_management_hub_entitled_project_numbers, 8,
    repeated: true,
    type: :int64,
    json_name: "nonManagementHubEntitledProjectNumbers",
    deprecated: true

  field :non_storage_intelligence_entitled_error_count, 9,
    proto3_optional: true,
    type: :int64,
    json_name: "nonStorageIntelligenceEntitledErrorCount",
    deprecated: false

  field :non_storage_intelligence_entitled_project_numbers, 10,
    repeated: true,
    type: :int64,
    json_name: "nonStorageIntelligenceEntitledProjectNumbers",
    deprecated: false

  field :internal_error_count, 4,
    proto3_optional: true,
    type: :int64,
    json_name: "internalErrorCount",
    deprecated: false

  field :destination_project_org_error, 5,
    type: :bool,
    json_name: "destinationProjectOrgError",
    oneof: 0,
    deprecated: false

  field :destination_project_check_has_internal_error, 6,
    type: :bool,
    json_name: "destinationProjectCheckHasInternalError",
    oneof: 0,
    deprecated: false
end

defmodule Google.Cloud.Storageinsights.V1.DatasetConfig.ValidationErrorsBeforeIngestion do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :bucket_errors, 1,
    type: Google.Cloud.Storageinsights.V1.DatasetConfig.BucketErrors,
    json_name: "bucketErrors",
    deprecated: false

  field :project_errors, 2,
    type: Google.Cloud.Storageinsights.V1.DatasetConfig.ProjectErrors,
    json_name: "projectErrors",
    deprecated: false
end

defmodule Google.Cloud.Storageinsights.V1.DatasetConfig.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Storageinsights.V1.DatasetConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :source_options, 0

  oneof :cloud_storage_locations, 1

  oneof :cloud_storage_buckets, 2

  field :name, 1, type: :string, deprecated: false

  field :create_time, 2,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :labels, 4,
    repeated: true,
    type: Google.Cloud.Storageinsights.V1.DatasetConfig.LabelsEntry,
    map: true

  field :uid, 5, type: :string, deprecated: false
  field :organization_number, 22, type: :int64, json_name: "organizationNumber", deprecated: false

  field :source_projects, 7,
    type: Google.Cloud.Storageinsights.V1.DatasetConfig.SourceProjects,
    json_name: "sourceProjects",
    oneof: 0

  field :source_folders, 24,
    type: Google.Cloud.Storageinsights.V1.DatasetConfig.SourceFolders,
    json_name: "sourceFolders",
    oneof: 0

  field :organization_scope, 25, type: :bool, json_name: "organizationScope", oneof: 0

  field :cloud_storage_object_path, 21,
    type: :string,
    json_name: "cloudStorageObjectPath",
    oneof: 0,
    deprecated: false

  field :include_cloud_storage_locations, 8,
    type: Google.Cloud.Storageinsights.V1.DatasetConfig.CloudStorageLocations,
    json_name: "includeCloudStorageLocations",
    oneof: 1

  field :exclude_cloud_storage_locations, 9,
    type: Google.Cloud.Storageinsights.V1.DatasetConfig.CloudStorageLocations,
    json_name: "excludeCloudStorageLocations",
    oneof: 1

  field :include_cloud_storage_buckets, 10,
    type: Google.Cloud.Storageinsights.V1.DatasetConfig.CloudStorageBuckets,
    json_name: "includeCloudStorageBuckets",
    oneof: 2

  field :exclude_cloud_storage_buckets, 11,
    type: Google.Cloud.Storageinsights.V1.DatasetConfig.CloudStorageBuckets,
    json_name: "excludeCloudStorageBuckets",
    oneof: 2

  field :include_newly_created_buckets, 12, type: :bool, json_name: "includeNewlyCreatedBuckets"

  field :skip_verification_and_ingest, 19,
    type: :bool,
    json_name: "skipVerificationAndIngest",
    deprecated: true

  field :retention_period_days, 14, type: :int32, json_name: "retentionPeriodDays"
  field :link, 15, type: Google.Cloud.Storageinsights.V1.DatasetConfig.Link
  field :identity, 16, type: Google.Cloud.Storageinsights.V1.Identity
  field :status, 17, type: Google.Rpc.Status, deprecated: false

  field :dataset_config_state, 18,
    type: Google.Cloud.Storageinsights.V1.DatasetConfig.ConfigState,
    json_name: "datasetConfigState",
    enum: true,
    deprecated: false

  field :description, 20, type: :string, deprecated: false
end

defmodule Google.Cloud.Storageinsights.V1.ListDatasetConfigsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
  field :order_by, 5, type: :string, json_name: "orderBy"
end

defmodule Google.Cloud.Storageinsights.V1.ListDatasetConfigsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :dataset_configs, 1,
    repeated: true,
    type: Google.Cloud.Storageinsights.V1.DatasetConfig,
    json_name: "datasetConfigs"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Storageinsights.V1.GetDatasetConfigRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Storageinsights.V1.CreateDatasetConfigRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :dataset_config_id, 2, type: :string, json_name: "datasetConfigId", deprecated: false

  field :dataset_config, 3,
    type: Google.Cloud.Storageinsights.V1.DatasetConfig,
    json_name: "datasetConfig",
    deprecated: false

  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Storageinsights.V1.UpdateDatasetConfigRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :update_mask, 1,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :dataset_config, 2,
    type: Google.Cloud.Storageinsights.V1.DatasetConfig,
    json_name: "datasetConfig",
    deprecated: false

  field :request_id, 3, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Storageinsights.V1.DeleteDatasetConfigRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Storageinsights.V1.LinkDatasetRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Storageinsights.V1.LinkDatasetResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3
end

defmodule Google.Cloud.Storageinsights.V1.UnlinkDatasetRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Storageinsights.V1.LocationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :report_config_available, 1, type: :bool, json_name: "reportConfigAvailable"
  field :dataset_config_available, 2, type: :bool, json_name: "datasetConfigAvailable"
end

defmodule Google.Cloud.Storageinsights.V1.StorageInsights.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.storageinsights.v1.StorageInsights",
    protoc_gen_elixir_version: "0.14.1"

  rpc :ListReportConfigs,
      Google.Cloud.Storageinsights.V1.ListReportConfigsRequest,
      Google.Cloud.Storageinsights.V1.ListReportConfigsResponse

  rpc :GetReportConfig,
      Google.Cloud.Storageinsights.V1.GetReportConfigRequest,
      Google.Cloud.Storageinsights.V1.ReportConfig

  rpc :CreateReportConfig,
      Google.Cloud.Storageinsights.V1.CreateReportConfigRequest,
      Google.Cloud.Storageinsights.V1.ReportConfig

  rpc :UpdateReportConfig,
      Google.Cloud.Storageinsights.V1.UpdateReportConfigRequest,
      Google.Cloud.Storageinsights.V1.ReportConfig

  rpc :DeleteReportConfig,
      Google.Cloud.Storageinsights.V1.DeleteReportConfigRequest,
      Google.Protobuf.Empty

  rpc :ListReportDetails,
      Google.Cloud.Storageinsights.V1.ListReportDetailsRequest,
      Google.Cloud.Storageinsights.V1.ListReportDetailsResponse

  rpc :GetReportDetail,
      Google.Cloud.Storageinsights.V1.GetReportDetailRequest,
      Google.Cloud.Storageinsights.V1.ReportDetail

  rpc :ListDatasetConfigs,
      Google.Cloud.Storageinsights.V1.ListDatasetConfigsRequest,
      Google.Cloud.Storageinsights.V1.ListDatasetConfigsResponse

  rpc :GetDatasetConfig,
      Google.Cloud.Storageinsights.V1.GetDatasetConfigRequest,
      Google.Cloud.Storageinsights.V1.DatasetConfig

  rpc :CreateDatasetConfig,
      Google.Cloud.Storageinsights.V1.CreateDatasetConfigRequest,
      Google.Longrunning.Operation

  rpc :UpdateDatasetConfig,
      Google.Cloud.Storageinsights.V1.UpdateDatasetConfigRequest,
      Google.Longrunning.Operation

  rpc :DeleteDatasetConfig,
      Google.Cloud.Storageinsights.V1.DeleteDatasetConfigRequest,
      Google.Longrunning.Operation

  rpc :LinkDataset,
      Google.Cloud.Storageinsights.V1.LinkDatasetRequest,
      Google.Longrunning.Operation

  rpc :UnlinkDataset,
      Google.Cloud.Storageinsights.V1.UnlinkDatasetRequest,
      Google.Longrunning.Operation
end

defmodule Google.Cloud.Storageinsights.V1.StorageInsights.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Storageinsights.V1.StorageInsights.Service
end
