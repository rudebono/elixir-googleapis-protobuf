defmodule Google.Analytics.Admin.V1beta.RunAccessReportRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :entity, 1, type: :string
  field :dimensions, 2, repeated: true, type: Google.Analytics.Admin.V1beta.AccessDimension
  field :metrics, 3, repeated: true, type: Google.Analytics.Admin.V1beta.AccessMetric

  field :date_ranges, 4,
    repeated: true,
    type: Google.Analytics.Admin.V1beta.AccessDateRange,
    json_name: "dateRanges"

  field :dimension_filter, 5,
    type: Google.Analytics.Admin.V1beta.AccessFilterExpression,
    json_name: "dimensionFilter"

  field :metric_filter, 6,
    type: Google.Analytics.Admin.V1beta.AccessFilterExpression,
    json_name: "metricFilter"

  field :offset, 7, type: :int64
  field :limit, 8, type: :int64
  field :time_zone, 9, type: :string, json_name: "timeZone"

  field :order_bys, 10,
    repeated: true,
    type: Google.Analytics.Admin.V1beta.AccessOrderBy,
    json_name: "orderBys"

  field :return_entity_quota, 11, type: :bool, json_name: "returnEntityQuota"
  field :include_all_users, 12, type: :bool, json_name: "includeAllUsers", deprecated: false
  field :expand_groups, 13, type: :bool, json_name: "expandGroups", deprecated: false
end

defmodule Google.Analytics.Admin.V1beta.RunAccessReportResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :dimension_headers, 1,
    repeated: true,
    type: Google.Analytics.Admin.V1beta.AccessDimensionHeader,
    json_name: "dimensionHeaders"

  field :metric_headers, 2,
    repeated: true,
    type: Google.Analytics.Admin.V1beta.AccessMetricHeader,
    json_name: "metricHeaders"

  field :rows, 3, repeated: true, type: Google.Analytics.Admin.V1beta.AccessRow
  field :row_count, 4, type: :int32, json_name: "rowCount"
  field :quota, 5, type: Google.Analytics.Admin.V1beta.AccessQuota
end

defmodule Google.Analytics.Admin.V1beta.GetAccountRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Analytics.Admin.V1beta.ListAccountsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :page_size, 1, type: :int32, json_name: "pageSize"
  field :page_token, 2, type: :string, json_name: "pageToken"
  field :show_deleted, 3, type: :bool, json_name: "showDeleted"
end

defmodule Google.Analytics.Admin.V1beta.ListAccountsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :accounts, 1, repeated: true, type: Google.Analytics.Admin.V1beta.Account
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Analytics.Admin.V1beta.DeleteAccountRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Analytics.Admin.V1beta.UpdateAccountRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :account, 1, type: Google.Analytics.Admin.V1beta.Account, deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Analytics.Admin.V1beta.ProvisionAccountTicketRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :account, 1, type: Google.Analytics.Admin.V1beta.Account
  field :redirect_uri, 2, type: :string, json_name: "redirectUri"
end

defmodule Google.Analytics.Admin.V1beta.ProvisionAccountTicketResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :account_ticket_id, 1, type: :string, json_name: "accountTicketId"
end

defmodule Google.Analytics.Admin.V1beta.GetPropertyRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Analytics.Admin.V1beta.ListPropertiesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :filter, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :show_deleted, 4, type: :bool, json_name: "showDeleted"
end

defmodule Google.Analytics.Admin.V1beta.ListPropertiesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :properties, 1, repeated: true, type: Google.Analytics.Admin.V1beta.Property
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Analytics.Admin.V1beta.UpdatePropertyRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :property, 1, type: Google.Analytics.Admin.V1beta.Property, deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Analytics.Admin.V1beta.CreatePropertyRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :property, 1, type: Google.Analytics.Admin.V1beta.Property, deprecated: false
end

defmodule Google.Analytics.Admin.V1beta.DeletePropertyRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Analytics.Admin.V1beta.CreateFirebaseLinkRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :firebase_link, 2,
    type: Google.Analytics.Admin.V1beta.FirebaseLink,
    json_name: "firebaseLink",
    deprecated: false
end

defmodule Google.Analytics.Admin.V1beta.DeleteFirebaseLinkRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Analytics.Admin.V1beta.ListFirebaseLinksRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Analytics.Admin.V1beta.ListFirebaseLinksResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :firebase_links, 1,
    repeated: true,
    type: Google.Analytics.Admin.V1beta.FirebaseLink,
    json_name: "firebaseLinks"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Analytics.Admin.V1beta.CreateGoogleAdsLinkRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :google_ads_link, 2,
    type: Google.Analytics.Admin.V1beta.GoogleAdsLink,
    json_name: "googleAdsLink",
    deprecated: false
end

defmodule Google.Analytics.Admin.V1beta.UpdateGoogleAdsLinkRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :google_ads_link, 1,
    type: Google.Analytics.Admin.V1beta.GoogleAdsLink,
    json_name: "googleAdsLink"

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Analytics.Admin.V1beta.DeleteGoogleAdsLinkRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Analytics.Admin.V1beta.ListGoogleAdsLinksRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Analytics.Admin.V1beta.ListGoogleAdsLinksResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :google_ads_links, 1,
    repeated: true,
    type: Google.Analytics.Admin.V1beta.GoogleAdsLink,
    json_name: "googleAdsLinks"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Analytics.Admin.V1beta.GetDataSharingSettingsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Analytics.Admin.V1beta.ListAccountSummariesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :page_size, 1, type: :int32, json_name: "pageSize"
  field :page_token, 2, type: :string, json_name: "pageToken"
end

defmodule Google.Analytics.Admin.V1beta.ListAccountSummariesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :account_summaries, 1,
    repeated: true,
    type: Google.Analytics.Admin.V1beta.AccountSummary,
    json_name: "accountSummaries"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Analytics.Admin.V1beta.AcknowledgeUserDataCollectionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :property, 1, type: :string, deprecated: false
  field :acknowledgement, 2, type: :string, deprecated: false
end

defmodule Google.Analytics.Admin.V1beta.AcknowledgeUserDataCollectionResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3
end

defmodule Google.Analytics.Admin.V1beta.SearchChangeHistoryEventsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :account, 1, type: :string, deprecated: false
  field :property, 2, type: :string, deprecated: false

  field :resource_type, 3,
    repeated: true,
    type: Google.Analytics.Admin.V1beta.ChangeHistoryResourceType,
    json_name: "resourceType",
    enum: true,
    deprecated: false

  field :action, 4,
    repeated: true,
    type: Google.Analytics.Admin.V1beta.ActionType,
    enum: true,
    deprecated: false

  field :actor_email, 5, repeated: true, type: :string, json_name: "actorEmail", deprecated: false

  field :earliest_change_time, 6,
    type: Google.Protobuf.Timestamp,
    json_name: "earliestChangeTime",
    deprecated: false

  field :latest_change_time, 7,
    type: Google.Protobuf.Timestamp,
    json_name: "latestChangeTime",
    deprecated: false

  field :page_size, 8, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 9, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Analytics.Admin.V1beta.SearchChangeHistoryEventsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :change_history_events, 1,
    repeated: true,
    type: Google.Analytics.Admin.V1beta.ChangeHistoryEvent,
    json_name: "changeHistoryEvents"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Analytics.Admin.V1beta.GetMeasurementProtocolSecretRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Analytics.Admin.V1beta.CreateMeasurementProtocolSecretRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :measurement_protocol_secret, 2,
    type: Google.Analytics.Admin.V1beta.MeasurementProtocolSecret,
    json_name: "measurementProtocolSecret",
    deprecated: false
end

defmodule Google.Analytics.Admin.V1beta.DeleteMeasurementProtocolSecretRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Analytics.Admin.V1beta.UpdateMeasurementProtocolSecretRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :measurement_protocol_secret, 1,
    type: Google.Analytics.Admin.V1beta.MeasurementProtocolSecret,
    json_name: "measurementProtocolSecret",
    deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Analytics.Admin.V1beta.ListMeasurementProtocolSecretsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Analytics.Admin.V1beta.ListMeasurementProtocolSecretsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :measurement_protocol_secrets, 1,
    repeated: true,
    type: Google.Analytics.Admin.V1beta.MeasurementProtocolSecret,
    json_name: "measurementProtocolSecrets"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Analytics.Admin.V1beta.CreateConversionEventRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :conversion_event, 1,
    type: Google.Analytics.Admin.V1beta.ConversionEvent,
    json_name: "conversionEvent",
    deprecated: false

  field :parent, 2, type: :string, deprecated: false
end

defmodule Google.Analytics.Admin.V1beta.UpdateConversionEventRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :conversion_event, 1,
    type: Google.Analytics.Admin.V1beta.ConversionEvent,
    json_name: "conversionEvent",
    deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Analytics.Admin.V1beta.GetConversionEventRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Analytics.Admin.V1beta.DeleteConversionEventRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Analytics.Admin.V1beta.ListConversionEventsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Analytics.Admin.V1beta.ListConversionEventsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :conversion_events, 1,
    repeated: true,
    type: Google.Analytics.Admin.V1beta.ConversionEvent,
    json_name: "conversionEvents"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Analytics.Admin.V1beta.CreateKeyEventRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :key_event, 1,
    type: Google.Analytics.Admin.V1beta.KeyEvent,
    json_name: "keyEvent",
    deprecated: false

  field :parent, 2, type: :string, deprecated: false
end

defmodule Google.Analytics.Admin.V1beta.UpdateKeyEventRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :key_event, 1,
    type: Google.Analytics.Admin.V1beta.KeyEvent,
    json_name: "keyEvent",
    deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Analytics.Admin.V1beta.GetKeyEventRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Analytics.Admin.V1beta.DeleteKeyEventRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Analytics.Admin.V1beta.ListKeyEventsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Analytics.Admin.V1beta.ListKeyEventsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :key_events, 1,
    repeated: true,
    type: Google.Analytics.Admin.V1beta.KeyEvent,
    json_name: "keyEvents"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Analytics.Admin.V1beta.CreateCustomDimensionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :custom_dimension, 2,
    type: Google.Analytics.Admin.V1beta.CustomDimension,
    json_name: "customDimension",
    deprecated: false
end

defmodule Google.Analytics.Admin.V1beta.UpdateCustomDimensionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :custom_dimension, 1,
    type: Google.Analytics.Admin.V1beta.CustomDimension,
    json_name: "customDimension"

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Analytics.Admin.V1beta.ListCustomDimensionsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Analytics.Admin.V1beta.ListCustomDimensionsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :custom_dimensions, 1,
    repeated: true,
    type: Google.Analytics.Admin.V1beta.CustomDimension,
    json_name: "customDimensions"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Analytics.Admin.V1beta.ArchiveCustomDimensionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Analytics.Admin.V1beta.GetCustomDimensionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Analytics.Admin.V1beta.CreateCustomMetricRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :custom_metric, 2,
    type: Google.Analytics.Admin.V1beta.CustomMetric,
    json_name: "customMetric",
    deprecated: false
end

defmodule Google.Analytics.Admin.V1beta.UpdateCustomMetricRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :custom_metric, 1,
    type: Google.Analytics.Admin.V1beta.CustomMetric,
    json_name: "customMetric"

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Analytics.Admin.V1beta.ListCustomMetricsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Analytics.Admin.V1beta.ListCustomMetricsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :custom_metrics, 1,
    repeated: true,
    type: Google.Analytics.Admin.V1beta.CustomMetric,
    json_name: "customMetrics"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Analytics.Admin.V1beta.ArchiveCustomMetricRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Analytics.Admin.V1beta.GetCustomMetricRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Analytics.Admin.V1beta.GetDataRetentionSettingsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Analytics.Admin.V1beta.UpdateDataRetentionSettingsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :data_retention_settings, 1,
    type: Google.Analytics.Admin.V1beta.DataRetentionSettings,
    json_name: "dataRetentionSettings",
    deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Analytics.Admin.V1beta.CreateDataStreamRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :data_stream, 2,
    type: Google.Analytics.Admin.V1beta.DataStream,
    json_name: "dataStream",
    deprecated: false
end

defmodule Google.Analytics.Admin.V1beta.DeleteDataStreamRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Analytics.Admin.V1beta.UpdateDataStreamRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :data_stream, 1, type: Google.Analytics.Admin.V1beta.DataStream, json_name: "dataStream"

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Analytics.Admin.V1beta.ListDataStreamsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Analytics.Admin.V1beta.ListDataStreamsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :data_streams, 1,
    repeated: true,
    type: Google.Analytics.Admin.V1beta.DataStream,
    json_name: "dataStreams"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Analytics.Admin.V1beta.GetDataStreamRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Analytics.Admin.V1beta.AnalyticsAdminService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.analytics.admin.v1beta.AnalyticsAdminService",
    protoc_gen_elixir_version: "0.14.0"

  rpc :GetAccount,
      Google.Analytics.Admin.V1beta.GetAccountRequest,
      Google.Analytics.Admin.V1beta.Account

  rpc :ListAccounts,
      Google.Analytics.Admin.V1beta.ListAccountsRequest,
      Google.Analytics.Admin.V1beta.ListAccountsResponse

  rpc :DeleteAccount, Google.Analytics.Admin.V1beta.DeleteAccountRequest, Google.Protobuf.Empty

  rpc :UpdateAccount,
      Google.Analytics.Admin.V1beta.UpdateAccountRequest,
      Google.Analytics.Admin.V1beta.Account

  rpc :ProvisionAccountTicket,
      Google.Analytics.Admin.V1beta.ProvisionAccountTicketRequest,
      Google.Analytics.Admin.V1beta.ProvisionAccountTicketResponse

  rpc :ListAccountSummaries,
      Google.Analytics.Admin.V1beta.ListAccountSummariesRequest,
      Google.Analytics.Admin.V1beta.ListAccountSummariesResponse

  rpc :GetProperty,
      Google.Analytics.Admin.V1beta.GetPropertyRequest,
      Google.Analytics.Admin.V1beta.Property

  rpc :ListProperties,
      Google.Analytics.Admin.V1beta.ListPropertiesRequest,
      Google.Analytics.Admin.V1beta.ListPropertiesResponse

  rpc :CreateProperty,
      Google.Analytics.Admin.V1beta.CreatePropertyRequest,
      Google.Analytics.Admin.V1beta.Property

  rpc :DeleteProperty,
      Google.Analytics.Admin.V1beta.DeletePropertyRequest,
      Google.Analytics.Admin.V1beta.Property

  rpc :UpdateProperty,
      Google.Analytics.Admin.V1beta.UpdatePropertyRequest,
      Google.Analytics.Admin.V1beta.Property

  rpc :CreateFirebaseLink,
      Google.Analytics.Admin.V1beta.CreateFirebaseLinkRequest,
      Google.Analytics.Admin.V1beta.FirebaseLink

  rpc :DeleteFirebaseLink,
      Google.Analytics.Admin.V1beta.DeleteFirebaseLinkRequest,
      Google.Protobuf.Empty

  rpc :ListFirebaseLinks,
      Google.Analytics.Admin.V1beta.ListFirebaseLinksRequest,
      Google.Analytics.Admin.V1beta.ListFirebaseLinksResponse

  rpc :CreateGoogleAdsLink,
      Google.Analytics.Admin.V1beta.CreateGoogleAdsLinkRequest,
      Google.Analytics.Admin.V1beta.GoogleAdsLink

  rpc :UpdateGoogleAdsLink,
      Google.Analytics.Admin.V1beta.UpdateGoogleAdsLinkRequest,
      Google.Analytics.Admin.V1beta.GoogleAdsLink

  rpc :DeleteGoogleAdsLink,
      Google.Analytics.Admin.V1beta.DeleteGoogleAdsLinkRequest,
      Google.Protobuf.Empty

  rpc :ListGoogleAdsLinks,
      Google.Analytics.Admin.V1beta.ListGoogleAdsLinksRequest,
      Google.Analytics.Admin.V1beta.ListGoogleAdsLinksResponse

  rpc :GetDataSharingSettings,
      Google.Analytics.Admin.V1beta.GetDataSharingSettingsRequest,
      Google.Analytics.Admin.V1beta.DataSharingSettings

  rpc :GetMeasurementProtocolSecret,
      Google.Analytics.Admin.V1beta.GetMeasurementProtocolSecretRequest,
      Google.Analytics.Admin.V1beta.MeasurementProtocolSecret

  rpc :ListMeasurementProtocolSecrets,
      Google.Analytics.Admin.V1beta.ListMeasurementProtocolSecretsRequest,
      Google.Analytics.Admin.V1beta.ListMeasurementProtocolSecretsResponse

  rpc :CreateMeasurementProtocolSecret,
      Google.Analytics.Admin.V1beta.CreateMeasurementProtocolSecretRequest,
      Google.Analytics.Admin.V1beta.MeasurementProtocolSecret

  rpc :DeleteMeasurementProtocolSecret,
      Google.Analytics.Admin.V1beta.DeleteMeasurementProtocolSecretRequest,
      Google.Protobuf.Empty

  rpc :UpdateMeasurementProtocolSecret,
      Google.Analytics.Admin.V1beta.UpdateMeasurementProtocolSecretRequest,
      Google.Analytics.Admin.V1beta.MeasurementProtocolSecret

  rpc :AcknowledgeUserDataCollection,
      Google.Analytics.Admin.V1beta.AcknowledgeUserDataCollectionRequest,
      Google.Analytics.Admin.V1beta.AcknowledgeUserDataCollectionResponse

  rpc :SearchChangeHistoryEvents,
      Google.Analytics.Admin.V1beta.SearchChangeHistoryEventsRequest,
      Google.Analytics.Admin.V1beta.SearchChangeHistoryEventsResponse

  rpc :CreateConversionEvent,
      Google.Analytics.Admin.V1beta.CreateConversionEventRequest,
      Google.Analytics.Admin.V1beta.ConversionEvent

  rpc :UpdateConversionEvent,
      Google.Analytics.Admin.V1beta.UpdateConversionEventRequest,
      Google.Analytics.Admin.V1beta.ConversionEvent

  rpc :GetConversionEvent,
      Google.Analytics.Admin.V1beta.GetConversionEventRequest,
      Google.Analytics.Admin.V1beta.ConversionEvent

  rpc :DeleteConversionEvent,
      Google.Analytics.Admin.V1beta.DeleteConversionEventRequest,
      Google.Protobuf.Empty

  rpc :ListConversionEvents,
      Google.Analytics.Admin.V1beta.ListConversionEventsRequest,
      Google.Analytics.Admin.V1beta.ListConversionEventsResponse

  rpc :CreateKeyEvent,
      Google.Analytics.Admin.V1beta.CreateKeyEventRequest,
      Google.Analytics.Admin.V1beta.KeyEvent

  rpc :UpdateKeyEvent,
      Google.Analytics.Admin.V1beta.UpdateKeyEventRequest,
      Google.Analytics.Admin.V1beta.KeyEvent

  rpc :GetKeyEvent,
      Google.Analytics.Admin.V1beta.GetKeyEventRequest,
      Google.Analytics.Admin.V1beta.KeyEvent

  rpc :DeleteKeyEvent, Google.Analytics.Admin.V1beta.DeleteKeyEventRequest, Google.Protobuf.Empty

  rpc :ListKeyEvents,
      Google.Analytics.Admin.V1beta.ListKeyEventsRequest,
      Google.Analytics.Admin.V1beta.ListKeyEventsResponse

  rpc :CreateCustomDimension,
      Google.Analytics.Admin.V1beta.CreateCustomDimensionRequest,
      Google.Analytics.Admin.V1beta.CustomDimension

  rpc :UpdateCustomDimension,
      Google.Analytics.Admin.V1beta.UpdateCustomDimensionRequest,
      Google.Analytics.Admin.V1beta.CustomDimension

  rpc :ListCustomDimensions,
      Google.Analytics.Admin.V1beta.ListCustomDimensionsRequest,
      Google.Analytics.Admin.V1beta.ListCustomDimensionsResponse

  rpc :ArchiveCustomDimension,
      Google.Analytics.Admin.V1beta.ArchiveCustomDimensionRequest,
      Google.Protobuf.Empty

  rpc :GetCustomDimension,
      Google.Analytics.Admin.V1beta.GetCustomDimensionRequest,
      Google.Analytics.Admin.V1beta.CustomDimension

  rpc :CreateCustomMetric,
      Google.Analytics.Admin.V1beta.CreateCustomMetricRequest,
      Google.Analytics.Admin.V1beta.CustomMetric

  rpc :UpdateCustomMetric,
      Google.Analytics.Admin.V1beta.UpdateCustomMetricRequest,
      Google.Analytics.Admin.V1beta.CustomMetric

  rpc :ListCustomMetrics,
      Google.Analytics.Admin.V1beta.ListCustomMetricsRequest,
      Google.Analytics.Admin.V1beta.ListCustomMetricsResponse

  rpc :ArchiveCustomMetric,
      Google.Analytics.Admin.V1beta.ArchiveCustomMetricRequest,
      Google.Protobuf.Empty

  rpc :GetCustomMetric,
      Google.Analytics.Admin.V1beta.GetCustomMetricRequest,
      Google.Analytics.Admin.V1beta.CustomMetric

  rpc :GetDataRetentionSettings,
      Google.Analytics.Admin.V1beta.GetDataRetentionSettingsRequest,
      Google.Analytics.Admin.V1beta.DataRetentionSettings

  rpc :UpdateDataRetentionSettings,
      Google.Analytics.Admin.V1beta.UpdateDataRetentionSettingsRequest,
      Google.Analytics.Admin.V1beta.DataRetentionSettings

  rpc :CreateDataStream,
      Google.Analytics.Admin.V1beta.CreateDataStreamRequest,
      Google.Analytics.Admin.V1beta.DataStream

  rpc :DeleteDataStream,
      Google.Analytics.Admin.V1beta.DeleteDataStreamRequest,
      Google.Protobuf.Empty

  rpc :UpdateDataStream,
      Google.Analytics.Admin.V1beta.UpdateDataStreamRequest,
      Google.Analytics.Admin.V1beta.DataStream

  rpc :ListDataStreams,
      Google.Analytics.Admin.V1beta.ListDataStreamsRequest,
      Google.Analytics.Admin.V1beta.ListDataStreamsResponse

  rpc :GetDataStream,
      Google.Analytics.Admin.V1beta.GetDataStreamRequest,
      Google.Analytics.Admin.V1beta.DataStream

  rpc :RunAccessReport,
      Google.Analytics.Admin.V1beta.RunAccessReportRequest,
      Google.Analytics.Admin.V1beta.RunAccessReportResponse
end

defmodule Google.Analytics.Admin.V1beta.AnalyticsAdminService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Analytics.Admin.V1beta.AnalyticsAdminService.Service
end
