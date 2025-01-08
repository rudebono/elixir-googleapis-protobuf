defmodule Google.Pubsub.V1.IngestionDataSourceSettings.AwsKinesis.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :ACTIVE, 1
  field :KINESIS_PERMISSION_DENIED, 2
  field :PUBLISH_PERMISSION_DENIED, 3
  field :STREAM_NOT_FOUND, 4
  field :CONSUMER_NOT_FOUND, 5
end

defmodule Google.Pubsub.V1.IngestionDataSourceSettings.CloudStorage.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :ACTIVE, 1
  field :CLOUD_STORAGE_PERMISSION_DENIED, 2
  field :PUBLISH_PERMISSION_DENIED, 3
  field :BUCKET_NOT_FOUND, 4
  field :TOO_MANY_OBJECTS, 5
end

defmodule Google.Pubsub.V1.IngestionDataSourceSettings.AzureEventHubs.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :ACTIVE, 1
  field :EVENT_HUBS_PERMISSION_DENIED, 2
  field :PUBLISH_PERMISSION_DENIED, 3
  field :NAMESPACE_NOT_FOUND, 4
  field :EVENT_HUB_NOT_FOUND, 5
  field :SUBSCRIPTION_NOT_FOUND, 6
  field :RESOURCE_GROUP_NOT_FOUND, 7
end

defmodule Google.Pubsub.V1.IngestionDataSourceSettings.AwsMsk.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :ACTIVE, 1
  field :MSK_PERMISSION_DENIED, 2
  field :PUBLISH_PERMISSION_DENIED, 3
  field :CLUSTER_NOT_FOUND, 4
  field :TOPIC_NOT_FOUND, 5
end

defmodule Google.Pubsub.V1.IngestionDataSourceSettings.ConfluentCloud.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :ACTIVE, 1
  field :CONFLUENT_CLOUD_PERMISSION_DENIED, 2
  field :PUBLISH_PERMISSION_DENIED, 3
  field :UNREACHABLE_BOOTSTRAP_SERVER, 4
  field :CLUSTER_NOT_FOUND, 5
  field :TOPIC_NOT_FOUND, 6
end

defmodule Google.Pubsub.V1.PlatformLogsSettings.Severity do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :SEVERITY_UNSPECIFIED, 0
  field :DISABLED, 1
  field :DEBUG, 2
  field :INFO, 3
  field :WARNING, 4
  field :ERROR, 5
end

defmodule Google.Pubsub.V1.Topic.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :ACTIVE, 1
  field :INGESTION_RESOURCE_ERROR, 2
end

defmodule Google.Pubsub.V1.Subscription.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :ACTIVE, 1
  field :RESOURCE_ERROR, 2
end

defmodule Google.Pubsub.V1.BigQueryConfig.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :ACTIVE, 1
  field :PERMISSION_DENIED, 2
  field :NOT_FOUND, 3
  field :SCHEMA_MISMATCH, 4
  field :IN_TRANSIT_LOCATION_RESTRICTION, 5
end

defmodule Google.Pubsub.V1.CloudStorageConfig.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :ACTIVE, 1
  field :PERMISSION_DENIED, 2
  field :NOT_FOUND, 3
  field :IN_TRANSIT_LOCATION_RESTRICTION, 4
  field :SCHEMA_MISMATCH, 5
end

defmodule Google.Pubsub.V1.MessageStoragePolicy do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :allowed_persistence_regions, 1,
    repeated: true,
    type: :string,
    json_name: "allowedPersistenceRegions",
    deprecated: false

  field :enforce_in_transit, 2, type: :bool, json_name: "enforceInTransit", deprecated: false
end

defmodule Google.Pubsub.V1.SchemaSettings do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :schema, 1, type: :string, deprecated: false
  field :encoding, 2, type: Google.Pubsub.V1.Encoding, enum: true, deprecated: false
  field :first_revision_id, 3, type: :string, json_name: "firstRevisionId", deprecated: false
  field :last_revision_id, 4, type: :string, json_name: "lastRevisionId", deprecated: false
end

defmodule Google.Pubsub.V1.IngestionDataSourceSettings.AwsKinesis do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :state, 1,
    type: Google.Pubsub.V1.IngestionDataSourceSettings.AwsKinesis.State,
    enum: true,
    deprecated: false

  field :stream_arn, 2, type: :string, json_name: "streamArn", deprecated: false
  field :consumer_arn, 3, type: :string, json_name: "consumerArn", deprecated: false
  field :aws_role_arn, 4, type: :string, json_name: "awsRoleArn", deprecated: false
  field :gcp_service_account, 5, type: :string, json_name: "gcpServiceAccount", deprecated: false
end

defmodule Google.Pubsub.V1.IngestionDataSourceSettings.CloudStorage.TextFormat do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :delimiter, 1, proto3_optional: true, type: :string, deprecated: false
end

defmodule Google.Pubsub.V1.IngestionDataSourceSettings.CloudStorage.AvroFormat do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3
end

defmodule Google.Pubsub.V1.IngestionDataSourceSettings.CloudStorage.PubSubAvroFormat do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3
end

defmodule Google.Pubsub.V1.IngestionDataSourceSettings.CloudStorage do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  oneof :input_format, 0

  field :state, 1,
    type: Google.Pubsub.V1.IngestionDataSourceSettings.CloudStorage.State,
    enum: true,
    deprecated: false

  field :bucket, 2, type: :string, deprecated: false

  field :text_format, 3,
    type: Google.Pubsub.V1.IngestionDataSourceSettings.CloudStorage.TextFormat,
    json_name: "textFormat",
    oneof: 0,
    deprecated: false

  field :avro_format, 4,
    type: Google.Pubsub.V1.IngestionDataSourceSettings.CloudStorage.AvroFormat,
    json_name: "avroFormat",
    oneof: 0,
    deprecated: false

  field :pubsub_avro_format, 5,
    type: Google.Pubsub.V1.IngestionDataSourceSettings.CloudStorage.PubSubAvroFormat,
    json_name: "pubsubAvroFormat",
    oneof: 0,
    deprecated: false

  field :minimum_object_create_time, 6,
    type: Google.Protobuf.Timestamp,
    json_name: "minimumObjectCreateTime",
    deprecated: false

  field :match_glob, 9, type: :string, json_name: "matchGlob", deprecated: false
end

defmodule Google.Pubsub.V1.IngestionDataSourceSettings.AzureEventHubs do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :state, 1,
    type: Google.Pubsub.V1.IngestionDataSourceSettings.AzureEventHubs.State,
    enum: true,
    deprecated: false

  field :resource_group, 2, type: :string, json_name: "resourceGroup", deprecated: false
  field :namespace, 3, type: :string, deprecated: false
  field :event_hub, 4, type: :string, json_name: "eventHub", deprecated: false
  field :client_id, 5, type: :string, json_name: "clientId", deprecated: false
  field :tenant_id, 6, type: :string, json_name: "tenantId", deprecated: false
  field :subscription_id, 7, type: :string, json_name: "subscriptionId", deprecated: false
  field :gcp_service_account, 8, type: :string, json_name: "gcpServiceAccount", deprecated: false
end

defmodule Google.Pubsub.V1.IngestionDataSourceSettings.AwsMsk do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :state, 1,
    type: Google.Pubsub.V1.IngestionDataSourceSettings.AwsMsk.State,
    enum: true,
    deprecated: false

  field :cluster_arn, 2, type: :string, json_name: "clusterArn", deprecated: false
  field :topic, 3, type: :string, deprecated: false
  field :aws_role_arn, 4, type: :string, json_name: "awsRoleArn", deprecated: false
  field :gcp_service_account, 5, type: :string, json_name: "gcpServiceAccount", deprecated: false
end

defmodule Google.Pubsub.V1.IngestionDataSourceSettings.ConfluentCloud do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :state, 1,
    type: Google.Pubsub.V1.IngestionDataSourceSettings.ConfluentCloud.State,
    enum: true,
    deprecated: false

  field :bootstrap_server, 2, type: :string, json_name: "bootstrapServer", deprecated: false
  field :cluster_id, 3, type: :string, json_name: "clusterId", deprecated: false
  field :topic, 4, type: :string, deprecated: false
  field :identity_pool_id, 5, type: :string, json_name: "identityPoolId", deprecated: false
  field :gcp_service_account, 6, type: :string, json_name: "gcpServiceAccount", deprecated: false
end

defmodule Google.Pubsub.V1.IngestionDataSourceSettings do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  oneof :source, 0

  field :aws_kinesis, 1,
    type: Google.Pubsub.V1.IngestionDataSourceSettings.AwsKinesis,
    json_name: "awsKinesis",
    oneof: 0,
    deprecated: false

  field :cloud_storage, 2,
    type: Google.Pubsub.V1.IngestionDataSourceSettings.CloudStorage,
    json_name: "cloudStorage",
    oneof: 0,
    deprecated: false

  field :azure_event_hubs, 3,
    type: Google.Pubsub.V1.IngestionDataSourceSettings.AzureEventHubs,
    json_name: "azureEventHubs",
    oneof: 0,
    deprecated: false

  field :aws_msk, 5,
    type: Google.Pubsub.V1.IngestionDataSourceSettings.AwsMsk,
    json_name: "awsMsk",
    oneof: 0,
    deprecated: false

  field :confluent_cloud, 6,
    type: Google.Pubsub.V1.IngestionDataSourceSettings.ConfluentCloud,
    json_name: "confluentCloud",
    oneof: 0,
    deprecated: false

  field :platform_logs_settings, 4,
    type: Google.Pubsub.V1.PlatformLogsSettings,
    json_name: "platformLogsSettings",
    deprecated: false
end

defmodule Google.Pubsub.V1.PlatformLogsSettings do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :severity, 1,
    type: Google.Pubsub.V1.PlatformLogsSettings.Severity,
    enum: true,
    deprecated: false
end

defmodule Google.Pubsub.V1.IngestionFailureEvent.ApiViolationReason do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3
end

defmodule Google.Pubsub.V1.IngestionFailureEvent.AvroFailureReason do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3
end

defmodule Google.Pubsub.V1.IngestionFailureEvent.CloudStorageFailure do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  oneof :reason, 0

  field :bucket, 1, type: :string, deprecated: false
  field :object_name, 2, type: :string, json_name: "objectName", deprecated: false
  field :object_generation, 3, type: :int64, json_name: "objectGeneration", deprecated: false

  field :avro_failure_reason, 5,
    type: Google.Pubsub.V1.IngestionFailureEvent.AvroFailureReason,
    json_name: "avroFailureReason",
    oneof: 0,
    deprecated: false

  field :api_violation_reason, 6,
    type: Google.Pubsub.V1.IngestionFailureEvent.ApiViolationReason,
    json_name: "apiViolationReason",
    oneof: 0,
    deprecated: false
end

defmodule Google.Pubsub.V1.IngestionFailureEvent.AwsMskFailureReason do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  oneof :reason, 0

  field :cluster_arn, 1, type: :string, json_name: "clusterArn", deprecated: false
  field :kafka_topic, 2, type: :string, json_name: "kafkaTopic", deprecated: false
  field :partition_id, 3, type: :int64, json_name: "partitionId", deprecated: false
  field :offset, 4, type: :int64, deprecated: false

  field :api_violation_reason, 5,
    type: Google.Pubsub.V1.IngestionFailureEvent.ApiViolationReason,
    json_name: "apiViolationReason",
    oneof: 0,
    deprecated: false
end

defmodule Google.Pubsub.V1.IngestionFailureEvent.AzureEventHubsFailureReason do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  oneof :reason, 0

  field :namespace, 1, type: :string, deprecated: false
  field :event_hub, 2, type: :string, json_name: "eventHub", deprecated: false
  field :partition_id, 3, type: :int64, json_name: "partitionId", deprecated: false
  field :offset, 4, type: :int64, deprecated: false

  field :api_violation_reason, 5,
    type: Google.Pubsub.V1.IngestionFailureEvent.ApiViolationReason,
    json_name: "apiViolationReason",
    oneof: 0,
    deprecated: false
end

defmodule Google.Pubsub.V1.IngestionFailureEvent.ConfluentCloudFailureReason do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  oneof :reason, 0

  field :cluster_id, 1, type: :string, json_name: "clusterId", deprecated: false
  field :kafka_topic, 2, type: :string, json_name: "kafkaTopic", deprecated: false
  field :partition_id, 3, type: :int64, json_name: "partitionId", deprecated: false
  field :offset, 4, type: :int64, deprecated: false

  field :api_violation_reason, 5,
    type: Google.Pubsub.V1.IngestionFailureEvent.ApiViolationReason,
    json_name: "apiViolationReason",
    oneof: 0,
    deprecated: false
end

defmodule Google.Pubsub.V1.IngestionFailureEvent do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  oneof :failure, 0

  field :topic, 1, type: :string, deprecated: false
  field :error_message, 2, type: :string, json_name: "errorMessage", deprecated: false

  field :cloud_storage_failure, 3,
    type: Google.Pubsub.V1.IngestionFailureEvent.CloudStorageFailure,
    json_name: "cloudStorageFailure",
    oneof: 0,
    deprecated: false

  field :aws_msk_failure, 4,
    type: Google.Pubsub.V1.IngestionFailureEvent.AwsMskFailureReason,
    json_name: "awsMskFailure",
    oneof: 0,
    deprecated: false

  field :azure_event_hubs_failure, 5,
    type: Google.Pubsub.V1.IngestionFailureEvent.AzureEventHubsFailureReason,
    json_name: "azureEventHubsFailure",
    oneof: 0,
    deprecated: false

  field :confluent_cloud_failure, 6,
    type: Google.Pubsub.V1.IngestionFailureEvent.ConfluentCloudFailureReason,
    json_name: "confluentCloudFailure",
    oneof: 0,
    deprecated: false
end

defmodule Google.Pubsub.V1.Topic.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Pubsub.V1.Topic do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :labels, 2,
    repeated: true,
    type: Google.Pubsub.V1.Topic.LabelsEntry,
    map: true,
    deprecated: false

  field :message_storage_policy, 3,
    type: Google.Pubsub.V1.MessageStoragePolicy,
    json_name: "messageStoragePolicy",
    deprecated: false

  field :kms_key_name, 5, type: :string, json_name: "kmsKeyName", deprecated: false

  field :schema_settings, 6,
    type: Google.Pubsub.V1.SchemaSettings,
    json_name: "schemaSettings",
    deprecated: false

  field :satisfies_pzs, 7, type: :bool, json_name: "satisfiesPzs", deprecated: false

  field :message_retention_duration, 8,
    type: Google.Protobuf.Duration,
    json_name: "messageRetentionDuration",
    deprecated: false

  field :state, 9, type: Google.Pubsub.V1.Topic.State, enum: true, deprecated: false

  field :ingestion_data_source_settings, 10,
    type: Google.Pubsub.V1.IngestionDataSourceSettings,
    json_name: "ingestionDataSourceSettings",
    deprecated: false
end

defmodule Google.Pubsub.V1.PubsubMessage.AttributesEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Pubsub.V1.PubsubMessage do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :data, 1, type: :bytes, deprecated: false

  field :attributes, 2,
    repeated: true,
    type: Google.Pubsub.V1.PubsubMessage.AttributesEntry,
    map: true,
    deprecated: false

  field :message_id, 3, type: :string, json_name: "messageId"
  field :publish_time, 4, type: Google.Protobuf.Timestamp, json_name: "publishTime"
  field :ordering_key, 5, type: :string, json_name: "orderingKey", deprecated: false
end

defmodule Google.Pubsub.V1.GetTopicRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :topic, 1, type: :string, deprecated: false
end

defmodule Google.Pubsub.V1.UpdateTopicRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :topic, 1, type: Google.Pubsub.V1.Topic, deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Pubsub.V1.PublishRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :topic, 1, type: :string, deprecated: false
  field :messages, 2, repeated: true, type: Google.Pubsub.V1.PubsubMessage, deprecated: false
end

defmodule Google.Pubsub.V1.PublishResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :message_ids, 1, repeated: true, type: :string, json_name: "messageIds", deprecated: false
end

defmodule Google.Pubsub.V1.ListTopicsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :project, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Pubsub.V1.ListTopicsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :topics, 1, repeated: true, type: Google.Pubsub.V1.Topic, deprecated: false
  field :next_page_token, 2, type: :string, json_name: "nextPageToken", deprecated: false
end

defmodule Google.Pubsub.V1.ListTopicSubscriptionsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :topic, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Pubsub.V1.ListTopicSubscriptionsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :subscriptions, 1, repeated: true, type: :string, deprecated: false
  field :next_page_token, 2, type: :string, json_name: "nextPageToken", deprecated: false
end

defmodule Google.Pubsub.V1.ListTopicSnapshotsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :topic, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Pubsub.V1.ListTopicSnapshotsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :snapshots, 1, repeated: true, type: :string, deprecated: false
  field :next_page_token, 2, type: :string, json_name: "nextPageToken", deprecated: false
end

defmodule Google.Pubsub.V1.DeleteTopicRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :topic, 1, type: :string, deprecated: false
end

defmodule Google.Pubsub.V1.DetachSubscriptionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :subscription, 1, type: :string, deprecated: false
end

defmodule Google.Pubsub.V1.DetachSubscriptionResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3
end

defmodule Google.Pubsub.V1.Subscription.AnalyticsHubSubscriptionInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :listing, 1, type: :string, deprecated: false
  field :subscription, 2, type: :string, deprecated: false
end

defmodule Google.Pubsub.V1.Subscription.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Pubsub.V1.Subscription do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :topic, 2, type: :string, deprecated: false

  field :push_config, 4,
    type: Google.Pubsub.V1.PushConfig,
    json_name: "pushConfig",
    deprecated: false

  field :bigquery_config, 18,
    type: Google.Pubsub.V1.BigQueryConfig,
    json_name: "bigqueryConfig",
    deprecated: false

  field :cloud_storage_config, 22,
    type: Google.Pubsub.V1.CloudStorageConfig,
    json_name: "cloudStorageConfig",
    deprecated: false

  field :ack_deadline_seconds, 5, type: :int32, json_name: "ackDeadlineSeconds", deprecated: false

  field :retain_acked_messages, 7,
    type: :bool,
    json_name: "retainAckedMessages",
    deprecated: false

  field :message_retention_duration, 8,
    type: Google.Protobuf.Duration,
    json_name: "messageRetentionDuration",
    deprecated: false

  field :labels, 9,
    repeated: true,
    type: Google.Pubsub.V1.Subscription.LabelsEntry,
    map: true,
    deprecated: false

  field :enable_message_ordering, 10,
    type: :bool,
    json_name: "enableMessageOrdering",
    deprecated: false

  field :expiration_policy, 11,
    type: Google.Pubsub.V1.ExpirationPolicy,
    json_name: "expirationPolicy",
    deprecated: false

  field :filter, 12, type: :string, deprecated: false

  field :dead_letter_policy, 13,
    type: Google.Pubsub.V1.DeadLetterPolicy,
    json_name: "deadLetterPolicy",
    deprecated: false

  field :retry_policy, 14,
    type: Google.Pubsub.V1.RetryPolicy,
    json_name: "retryPolicy",
    deprecated: false

  field :detached, 15, type: :bool, deprecated: false

  field :enable_exactly_once_delivery, 16,
    type: :bool,
    json_name: "enableExactlyOnceDelivery",
    deprecated: false

  field :topic_message_retention_duration, 17,
    type: Google.Protobuf.Duration,
    json_name: "topicMessageRetentionDuration",
    deprecated: false

  field :state, 19, type: Google.Pubsub.V1.Subscription.State, enum: true, deprecated: false

  field :analytics_hub_subscription_info, 23,
    type: Google.Pubsub.V1.Subscription.AnalyticsHubSubscriptionInfo,
    json_name: "analyticsHubSubscriptionInfo",
    deprecated: false
end

defmodule Google.Pubsub.V1.RetryPolicy do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :minimum_backoff, 1,
    type: Google.Protobuf.Duration,
    json_name: "minimumBackoff",
    deprecated: false

  field :maximum_backoff, 2,
    type: Google.Protobuf.Duration,
    json_name: "maximumBackoff",
    deprecated: false
end

defmodule Google.Pubsub.V1.DeadLetterPolicy do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :dead_letter_topic, 1, type: :string, json_name: "deadLetterTopic", deprecated: false

  field :max_delivery_attempts, 2,
    type: :int32,
    json_name: "maxDeliveryAttempts",
    deprecated: false
end

defmodule Google.Pubsub.V1.ExpirationPolicy do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :ttl, 1, type: Google.Protobuf.Duration, deprecated: false
end

defmodule Google.Pubsub.V1.PushConfig.OidcToken do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :service_account_email, 1,
    type: :string,
    json_name: "serviceAccountEmail",
    deprecated: false

  field :audience, 2, type: :string, deprecated: false
end

defmodule Google.Pubsub.V1.PushConfig.PubsubWrapper do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3
end

defmodule Google.Pubsub.V1.PushConfig.NoWrapper do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :write_metadata, 1, type: :bool, json_name: "writeMetadata", deprecated: false
end

defmodule Google.Pubsub.V1.PushConfig.AttributesEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Pubsub.V1.PushConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  oneof :authentication_method, 0

  oneof :wrapper, 1

  field :push_endpoint, 1, type: :string, json_name: "pushEndpoint", deprecated: false

  field :attributes, 2,
    repeated: true,
    type: Google.Pubsub.V1.PushConfig.AttributesEntry,
    map: true,
    deprecated: false

  field :oidc_token, 3,
    type: Google.Pubsub.V1.PushConfig.OidcToken,
    json_name: "oidcToken",
    oneof: 0,
    deprecated: false

  field :pubsub_wrapper, 4,
    type: Google.Pubsub.V1.PushConfig.PubsubWrapper,
    json_name: "pubsubWrapper",
    oneof: 1,
    deprecated: false

  field :no_wrapper, 5,
    type: Google.Pubsub.V1.PushConfig.NoWrapper,
    json_name: "noWrapper",
    oneof: 1,
    deprecated: false
end

defmodule Google.Pubsub.V1.BigQueryConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :table, 1, type: :string, deprecated: false
  field :use_topic_schema, 2, type: :bool, json_name: "useTopicSchema", deprecated: false
  field :write_metadata, 3, type: :bool, json_name: "writeMetadata", deprecated: false
  field :drop_unknown_fields, 4, type: :bool, json_name: "dropUnknownFields", deprecated: false
  field :state, 5, type: Google.Pubsub.V1.BigQueryConfig.State, enum: true, deprecated: false
  field :use_table_schema, 6, type: :bool, json_name: "useTableSchema", deprecated: false

  field :service_account_email, 7,
    type: :string,
    json_name: "serviceAccountEmail",
    deprecated: false
end

defmodule Google.Pubsub.V1.CloudStorageConfig.TextConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3
end

defmodule Google.Pubsub.V1.CloudStorageConfig.AvroConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :write_metadata, 1, type: :bool, json_name: "writeMetadata", deprecated: false
  field :use_topic_schema, 2, type: :bool, json_name: "useTopicSchema", deprecated: false
end

defmodule Google.Pubsub.V1.CloudStorageConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  oneof :output_format, 0

  field :bucket, 1, type: :string, deprecated: false
  field :filename_prefix, 2, type: :string, json_name: "filenamePrefix", deprecated: false
  field :filename_suffix, 3, type: :string, json_name: "filenameSuffix", deprecated: false

  field :filename_datetime_format, 10,
    type: :string,
    json_name: "filenameDatetimeFormat",
    deprecated: false

  field :text_config, 4,
    type: Google.Pubsub.V1.CloudStorageConfig.TextConfig,
    json_name: "textConfig",
    oneof: 0,
    deprecated: false

  field :avro_config, 5,
    type: Google.Pubsub.V1.CloudStorageConfig.AvroConfig,
    json_name: "avroConfig",
    oneof: 0,
    deprecated: false

  field :max_duration, 6,
    type: Google.Protobuf.Duration,
    json_name: "maxDuration",
    deprecated: false

  field :max_bytes, 7, type: :int64, json_name: "maxBytes", deprecated: false
  field :max_messages, 8, type: :int64, json_name: "maxMessages", deprecated: false
  field :state, 9, type: Google.Pubsub.V1.CloudStorageConfig.State, enum: true, deprecated: false

  field :service_account_email, 11,
    type: :string,
    json_name: "serviceAccountEmail",
    deprecated: false
end

defmodule Google.Pubsub.V1.ReceivedMessage do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :ack_id, 1, type: :string, json_name: "ackId", deprecated: false
  field :message, 2, type: Google.Pubsub.V1.PubsubMessage, deprecated: false
  field :delivery_attempt, 3, type: :int32, json_name: "deliveryAttempt", deprecated: false
end

defmodule Google.Pubsub.V1.GetSubscriptionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :subscription, 1, type: :string, deprecated: false
end

defmodule Google.Pubsub.V1.UpdateSubscriptionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :subscription, 1, type: Google.Pubsub.V1.Subscription, deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Pubsub.V1.ListSubscriptionsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :project, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Pubsub.V1.ListSubscriptionsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :subscriptions, 1, repeated: true, type: Google.Pubsub.V1.Subscription, deprecated: false
  field :next_page_token, 2, type: :string, json_name: "nextPageToken", deprecated: false
end

defmodule Google.Pubsub.V1.DeleteSubscriptionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :subscription, 1, type: :string, deprecated: false
end

defmodule Google.Pubsub.V1.ModifyPushConfigRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :subscription, 1, type: :string, deprecated: false

  field :push_config, 2,
    type: Google.Pubsub.V1.PushConfig,
    json_name: "pushConfig",
    deprecated: false
end

defmodule Google.Pubsub.V1.PullRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :subscription, 1, type: :string, deprecated: false
  field :return_immediately, 2, type: :bool, json_name: "returnImmediately", deprecated: true
  field :max_messages, 3, type: :int32, json_name: "maxMessages", deprecated: false
end

defmodule Google.Pubsub.V1.PullResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :received_messages, 1,
    repeated: true,
    type: Google.Pubsub.V1.ReceivedMessage,
    json_name: "receivedMessages",
    deprecated: false
end

defmodule Google.Pubsub.V1.ModifyAckDeadlineRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :subscription, 1, type: :string, deprecated: false
  field :ack_ids, 4, repeated: true, type: :string, json_name: "ackIds", deprecated: false
  field :ack_deadline_seconds, 3, type: :int32, json_name: "ackDeadlineSeconds", deprecated: false
end

defmodule Google.Pubsub.V1.AcknowledgeRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :subscription, 1, type: :string, deprecated: false
  field :ack_ids, 2, repeated: true, type: :string, json_name: "ackIds", deprecated: false
end

defmodule Google.Pubsub.V1.StreamingPullRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :subscription, 1, type: :string, deprecated: false
  field :ack_ids, 2, repeated: true, type: :string, json_name: "ackIds", deprecated: false

  field :modify_deadline_seconds, 3,
    repeated: true,
    type: :int32,
    json_name: "modifyDeadlineSeconds",
    deprecated: false

  field :modify_deadline_ack_ids, 4,
    repeated: true,
    type: :string,
    json_name: "modifyDeadlineAckIds",
    deprecated: false

  field :stream_ack_deadline_seconds, 5,
    type: :int32,
    json_name: "streamAckDeadlineSeconds",
    deprecated: false

  field :client_id, 6, type: :string, json_name: "clientId", deprecated: false

  field :max_outstanding_messages, 7,
    type: :int64,
    json_name: "maxOutstandingMessages",
    deprecated: false

  field :max_outstanding_bytes, 8,
    type: :int64,
    json_name: "maxOutstandingBytes",
    deprecated: false
end

defmodule Google.Pubsub.V1.StreamingPullResponse.AcknowledgeConfirmation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :ack_ids, 1, repeated: true, type: :string, json_name: "ackIds", deprecated: false

  field :invalid_ack_ids, 2,
    repeated: true,
    type: :string,
    json_name: "invalidAckIds",
    deprecated: false

  field :unordered_ack_ids, 3,
    repeated: true,
    type: :string,
    json_name: "unorderedAckIds",
    deprecated: false

  field :temporary_failed_ack_ids, 4,
    repeated: true,
    type: :string,
    json_name: "temporaryFailedAckIds",
    deprecated: false
end

defmodule Google.Pubsub.V1.StreamingPullResponse.ModifyAckDeadlineConfirmation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :ack_ids, 1, repeated: true, type: :string, json_name: "ackIds", deprecated: false

  field :invalid_ack_ids, 2,
    repeated: true,
    type: :string,
    json_name: "invalidAckIds",
    deprecated: false

  field :temporary_failed_ack_ids, 3,
    repeated: true,
    type: :string,
    json_name: "temporaryFailedAckIds",
    deprecated: false
end

defmodule Google.Pubsub.V1.StreamingPullResponse.SubscriptionProperties do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :exactly_once_delivery_enabled, 1,
    type: :bool,
    json_name: "exactlyOnceDeliveryEnabled",
    deprecated: false

  field :message_ordering_enabled, 2,
    type: :bool,
    json_name: "messageOrderingEnabled",
    deprecated: false
end

defmodule Google.Pubsub.V1.StreamingPullResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :received_messages, 1,
    repeated: true,
    type: Google.Pubsub.V1.ReceivedMessage,
    json_name: "receivedMessages",
    deprecated: false

  field :acknowledge_confirmation, 5,
    type: Google.Pubsub.V1.StreamingPullResponse.AcknowledgeConfirmation,
    json_name: "acknowledgeConfirmation",
    deprecated: false

  field :modify_ack_deadline_confirmation, 3,
    type: Google.Pubsub.V1.StreamingPullResponse.ModifyAckDeadlineConfirmation,
    json_name: "modifyAckDeadlineConfirmation",
    deprecated: false

  field :subscription_properties, 4,
    type: Google.Pubsub.V1.StreamingPullResponse.SubscriptionProperties,
    json_name: "subscriptionProperties",
    deprecated: false
end

defmodule Google.Pubsub.V1.CreateSnapshotRequest.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Pubsub.V1.CreateSnapshotRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :subscription, 2, type: :string, deprecated: false

  field :labels, 3,
    repeated: true,
    type: Google.Pubsub.V1.CreateSnapshotRequest.LabelsEntry,
    map: true,
    deprecated: false
end

defmodule Google.Pubsub.V1.UpdateSnapshotRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :snapshot, 1, type: Google.Pubsub.V1.Snapshot, deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Pubsub.V1.Snapshot.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Pubsub.V1.Snapshot do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :topic, 2, type: :string, deprecated: false

  field :expire_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "expireTime",
    deprecated: false

  field :labels, 4,
    repeated: true,
    type: Google.Pubsub.V1.Snapshot.LabelsEntry,
    map: true,
    deprecated: false
end

defmodule Google.Pubsub.V1.GetSnapshotRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :snapshot, 1, type: :string, deprecated: false
end

defmodule Google.Pubsub.V1.ListSnapshotsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :project, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Pubsub.V1.ListSnapshotsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :snapshots, 1, repeated: true, type: Google.Pubsub.V1.Snapshot, deprecated: false
  field :next_page_token, 2, type: :string, json_name: "nextPageToken", deprecated: false
end

defmodule Google.Pubsub.V1.DeleteSnapshotRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :snapshot, 1, type: :string, deprecated: false
end

defmodule Google.Pubsub.V1.SeekRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  oneof :target, 0

  field :subscription, 1, type: :string, deprecated: false
  field :time, 2, type: Google.Protobuf.Timestamp, oneof: 0, deprecated: false
  field :snapshot, 3, type: :string, oneof: 0, deprecated: false
end

defmodule Google.Pubsub.V1.SeekResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3
end

defmodule Google.Pubsub.V1.Publisher.Service do
  @moduledoc false

  use GRPC.Service, name: "google.pubsub.v1.Publisher", protoc_gen_elixir_version: "0.13.0"

  rpc :CreateTopic, Google.Pubsub.V1.Topic, Google.Pubsub.V1.Topic

  rpc :UpdateTopic, Google.Pubsub.V1.UpdateTopicRequest, Google.Pubsub.V1.Topic

  rpc :Publish, Google.Pubsub.V1.PublishRequest, Google.Pubsub.V1.PublishResponse

  rpc :GetTopic, Google.Pubsub.V1.GetTopicRequest, Google.Pubsub.V1.Topic

  rpc :ListTopics, Google.Pubsub.V1.ListTopicsRequest, Google.Pubsub.V1.ListTopicsResponse

  rpc :ListTopicSubscriptions,
      Google.Pubsub.V1.ListTopicSubscriptionsRequest,
      Google.Pubsub.V1.ListTopicSubscriptionsResponse

  rpc :ListTopicSnapshots,
      Google.Pubsub.V1.ListTopicSnapshotsRequest,
      Google.Pubsub.V1.ListTopicSnapshotsResponse

  rpc :DeleteTopic, Google.Pubsub.V1.DeleteTopicRequest, Google.Protobuf.Empty

  rpc :DetachSubscription,
      Google.Pubsub.V1.DetachSubscriptionRequest,
      Google.Pubsub.V1.DetachSubscriptionResponse
end

defmodule Google.Pubsub.V1.Publisher.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Pubsub.V1.Publisher.Service
end

defmodule Google.Pubsub.V1.Subscriber.Service do
  @moduledoc false

  use GRPC.Service, name: "google.pubsub.v1.Subscriber", protoc_gen_elixir_version: "0.13.0"

  rpc :CreateSubscription, Google.Pubsub.V1.Subscription, Google.Pubsub.V1.Subscription

  rpc :GetSubscription, Google.Pubsub.V1.GetSubscriptionRequest, Google.Pubsub.V1.Subscription

  rpc :UpdateSubscription,
      Google.Pubsub.V1.UpdateSubscriptionRequest,
      Google.Pubsub.V1.Subscription

  rpc :ListSubscriptions,
      Google.Pubsub.V1.ListSubscriptionsRequest,
      Google.Pubsub.V1.ListSubscriptionsResponse

  rpc :DeleteSubscription, Google.Pubsub.V1.DeleteSubscriptionRequest, Google.Protobuf.Empty

  rpc :ModifyAckDeadline, Google.Pubsub.V1.ModifyAckDeadlineRequest, Google.Protobuf.Empty

  rpc :Acknowledge, Google.Pubsub.V1.AcknowledgeRequest, Google.Protobuf.Empty

  rpc :Pull, Google.Pubsub.V1.PullRequest, Google.Pubsub.V1.PullResponse

  rpc :StreamingPull,
      stream(Google.Pubsub.V1.StreamingPullRequest),
      stream(Google.Pubsub.V1.StreamingPullResponse)

  rpc :ModifyPushConfig, Google.Pubsub.V1.ModifyPushConfigRequest, Google.Protobuf.Empty

  rpc :GetSnapshot, Google.Pubsub.V1.GetSnapshotRequest, Google.Pubsub.V1.Snapshot

  rpc :ListSnapshots,
      Google.Pubsub.V1.ListSnapshotsRequest,
      Google.Pubsub.V1.ListSnapshotsResponse

  rpc :CreateSnapshot, Google.Pubsub.V1.CreateSnapshotRequest, Google.Pubsub.V1.Snapshot

  rpc :UpdateSnapshot, Google.Pubsub.V1.UpdateSnapshotRequest, Google.Pubsub.V1.Snapshot

  rpc :DeleteSnapshot, Google.Pubsub.V1.DeleteSnapshotRequest, Google.Protobuf.Empty

  rpc :Seek, Google.Pubsub.V1.SeekRequest, Google.Pubsub.V1.SeekResponse
end

defmodule Google.Pubsub.V1.Subscriber.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Pubsub.V1.Subscriber.Service
end