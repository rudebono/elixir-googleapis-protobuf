defmodule Google.Analytics.Admin.V1alpha.RunAccessReportRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :entity, 1, type: :string
  field :dimensions, 2, repeated: true, type: Google.Analytics.Admin.V1alpha.AccessDimension
  field :metrics, 3, repeated: true, type: Google.Analytics.Admin.V1alpha.AccessMetric

  field :date_ranges, 4,
    repeated: true,
    type: Google.Analytics.Admin.V1alpha.AccessDateRange,
    json_name: "dateRanges"

  field :dimension_filter, 5,
    type: Google.Analytics.Admin.V1alpha.AccessFilterExpression,
    json_name: "dimensionFilter"

  field :metric_filter, 6,
    type: Google.Analytics.Admin.V1alpha.AccessFilterExpression,
    json_name: "metricFilter"

  field :offset, 7, type: :int64
  field :limit, 8, type: :int64
  field :time_zone, 9, type: :string, json_name: "timeZone"

  field :order_bys, 10,
    repeated: true,
    type: Google.Analytics.Admin.V1alpha.AccessOrderBy,
    json_name: "orderBys"

  field :return_entity_quota, 11, type: :bool, json_name: "returnEntityQuota"
end

defmodule Google.Analytics.Admin.V1alpha.RunAccessReportResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :dimension_headers, 1,
    repeated: true,
    type: Google.Analytics.Admin.V1alpha.AccessDimensionHeader,
    json_name: "dimensionHeaders"

  field :metric_headers, 2,
    repeated: true,
    type: Google.Analytics.Admin.V1alpha.AccessMetricHeader,
    json_name: "metricHeaders"

  field :rows, 3, repeated: true, type: Google.Analytics.Admin.V1alpha.AccessRow
  field :row_count, 4, type: :int32, json_name: "rowCount"
  field :quota, 5, type: Google.Analytics.Admin.V1alpha.AccessQuota
end

defmodule Google.Analytics.Admin.V1alpha.GetAccountRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Analytics.Admin.V1alpha.ListAccountsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :page_size, 1, type: :int32, json_name: "pageSize"
  field :page_token, 2, type: :string, json_name: "pageToken"
  field :show_deleted, 3, type: :bool, json_name: "showDeleted"
end

defmodule Google.Analytics.Admin.V1alpha.ListAccountsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :accounts, 1, repeated: true, type: Google.Analytics.Admin.V1alpha.Account
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Analytics.Admin.V1alpha.DeleteAccountRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Analytics.Admin.V1alpha.UpdateAccountRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :account, 1, type: Google.Analytics.Admin.V1alpha.Account, deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Analytics.Admin.V1alpha.ProvisionAccountTicketRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :account, 1, type: Google.Analytics.Admin.V1alpha.Account
  field :redirect_uri, 2, type: :string, json_name: "redirectUri"
end

defmodule Google.Analytics.Admin.V1alpha.ProvisionAccountTicketResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :account_ticket_id, 1, type: :string, json_name: "accountTicketId"
end

defmodule Google.Analytics.Admin.V1alpha.GetPropertyRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Analytics.Admin.V1alpha.ListPropertiesRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :filter, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :show_deleted, 4, type: :bool, json_name: "showDeleted"
end

defmodule Google.Analytics.Admin.V1alpha.ListPropertiesResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :properties, 1, repeated: true, type: Google.Analytics.Admin.V1alpha.Property
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Analytics.Admin.V1alpha.UpdatePropertyRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :property, 1, type: Google.Analytics.Admin.V1alpha.Property, deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Analytics.Admin.V1alpha.CreatePropertyRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :property, 1, type: Google.Analytics.Admin.V1alpha.Property, deprecated: false
end

defmodule Google.Analytics.Admin.V1alpha.DeletePropertyRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Analytics.Admin.V1alpha.GetUserLinkRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Analytics.Admin.V1alpha.BatchGetUserLinksRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :names, 2, repeated: true, type: :string, deprecated: false
end

defmodule Google.Analytics.Admin.V1alpha.BatchGetUserLinksResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :user_links, 1,
    repeated: true,
    type: Google.Analytics.Admin.V1alpha.UserLink,
    json_name: "userLinks"
end

defmodule Google.Analytics.Admin.V1alpha.ListUserLinksRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Analytics.Admin.V1alpha.ListUserLinksResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :user_links, 1,
    repeated: true,
    type: Google.Analytics.Admin.V1alpha.UserLink,
    json_name: "userLinks"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Analytics.Admin.V1alpha.AuditUserLinksRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Analytics.Admin.V1alpha.AuditUserLinksResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :user_links, 1,
    repeated: true,
    type: Google.Analytics.Admin.V1alpha.AuditUserLink,
    json_name: "userLinks"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Analytics.Admin.V1alpha.CreateUserLinkRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :notify_new_user, 2, type: :bool, json_name: "notifyNewUser", deprecated: false

  field :user_link, 3,
    type: Google.Analytics.Admin.V1alpha.UserLink,
    json_name: "userLink",
    deprecated: false
end

defmodule Google.Analytics.Admin.V1alpha.BatchCreateUserLinksRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :notify_new_users, 2, type: :bool, json_name: "notifyNewUsers", deprecated: false

  field :requests, 3,
    repeated: true,
    type: Google.Analytics.Admin.V1alpha.CreateUserLinkRequest,
    deprecated: false
end

defmodule Google.Analytics.Admin.V1alpha.BatchCreateUserLinksResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :user_links, 1,
    repeated: true,
    type: Google.Analytics.Admin.V1alpha.UserLink,
    json_name: "userLinks"
end

defmodule Google.Analytics.Admin.V1alpha.UpdateUserLinkRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :user_link, 1,
    type: Google.Analytics.Admin.V1alpha.UserLink,
    json_name: "userLink",
    deprecated: false
end

defmodule Google.Analytics.Admin.V1alpha.BatchUpdateUserLinksRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :requests, 2,
    repeated: true,
    type: Google.Analytics.Admin.V1alpha.UpdateUserLinkRequest,
    deprecated: false
end

defmodule Google.Analytics.Admin.V1alpha.BatchUpdateUserLinksResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :user_links, 1,
    repeated: true,
    type: Google.Analytics.Admin.V1alpha.UserLink,
    json_name: "userLinks"
end

defmodule Google.Analytics.Admin.V1alpha.DeleteUserLinkRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Analytics.Admin.V1alpha.BatchDeleteUserLinksRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :requests, 2,
    repeated: true,
    type: Google.Analytics.Admin.V1alpha.DeleteUserLinkRequest,
    deprecated: false
end

defmodule Google.Analytics.Admin.V1alpha.CreateFirebaseLinkRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :firebase_link, 2,
    type: Google.Analytics.Admin.V1alpha.FirebaseLink,
    json_name: "firebaseLink",
    deprecated: false
end

defmodule Google.Analytics.Admin.V1alpha.DeleteFirebaseLinkRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Analytics.Admin.V1alpha.ListFirebaseLinksRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Analytics.Admin.V1alpha.ListFirebaseLinksResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :firebase_links, 1,
    repeated: true,
    type: Google.Analytics.Admin.V1alpha.FirebaseLink,
    json_name: "firebaseLinks"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Analytics.Admin.V1alpha.GetGlobalSiteTagRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Analytics.Admin.V1alpha.CreateGoogleAdsLinkRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :google_ads_link, 2,
    type: Google.Analytics.Admin.V1alpha.GoogleAdsLink,
    json_name: "googleAdsLink",
    deprecated: false
end

defmodule Google.Analytics.Admin.V1alpha.UpdateGoogleAdsLinkRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :google_ads_link, 1,
    type: Google.Analytics.Admin.V1alpha.GoogleAdsLink,
    json_name: "googleAdsLink"

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Analytics.Admin.V1alpha.DeleteGoogleAdsLinkRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Analytics.Admin.V1alpha.ListGoogleAdsLinksRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Analytics.Admin.V1alpha.ListGoogleAdsLinksResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :google_ads_links, 1,
    repeated: true,
    type: Google.Analytics.Admin.V1alpha.GoogleAdsLink,
    json_name: "googleAdsLinks"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Analytics.Admin.V1alpha.GetDataSharingSettingsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Analytics.Admin.V1alpha.ListAccountSummariesRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :page_size, 1, type: :int32, json_name: "pageSize"
  field :page_token, 2, type: :string, json_name: "pageToken"
end

defmodule Google.Analytics.Admin.V1alpha.ListAccountSummariesResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :account_summaries, 1,
    repeated: true,
    type: Google.Analytics.Admin.V1alpha.AccountSummary,
    json_name: "accountSummaries"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Analytics.Admin.V1alpha.AcknowledgeUserDataCollectionRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :property, 1, type: :string, deprecated: false
  field :acknowledgement, 2, type: :string, deprecated: false
end

defmodule Google.Analytics.Admin.V1alpha.AcknowledgeUserDataCollectionResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3
end

defmodule Google.Analytics.Admin.V1alpha.SearchChangeHistoryEventsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :account, 1, type: :string, deprecated: false
  field :property, 2, type: :string, deprecated: false

  field :resource_type, 3,
    repeated: true,
    type: Google.Analytics.Admin.V1alpha.ChangeHistoryResourceType,
    json_name: "resourceType",
    enum: true,
    deprecated: false

  field :action, 4,
    repeated: true,
    type: Google.Analytics.Admin.V1alpha.ActionType,
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

defmodule Google.Analytics.Admin.V1alpha.SearchChangeHistoryEventsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :change_history_events, 1,
    repeated: true,
    type: Google.Analytics.Admin.V1alpha.ChangeHistoryEvent,
    json_name: "changeHistoryEvents"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Analytics.Admin.V1alpha.GetMeasurementProtocolSecretRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Analytics.Admin.V1alpha.CreateMeasurementProtocolSecretRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :measurement_protocol_secret, 2,
    type: Google.Analytics.Admin.V1alpha.MeasurementProtocolSecret,
    json_name: "measurementProtocolSecret",
    deprecated: false
end

defmodule Google.Analytics.Admin.V1alpha.DeleteMeasurementProtocolSecretRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Analytics.Admin.V1alpha.UpdateMeasurementProtocolSecretRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :measurement_protocol_secret, 1,
    type: Google.Analytics.Admin.V1alpha.MeasurementProtocolSecret,
    json_name: "measurementProtocolSecret",
    deprecated: false

  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end

defmodule Google.Analytics.Admin.V1alpha.ListMeasurementProtocolSecretsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Analytics.Admin.V1alpha.ListMeasurementProtocolSecretsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :measurement_protocol_secrets, 1,
    repeated: true,
    type: Google.Analytics.Admin.V1alpha.MeasurementProtocolSecret,
    json_name: "measurementProtocolSecrets"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Analytics.Admin.V1alpha.GetGoogleSignalsSettingsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Analytics.Admin.V1alpha.UpdateGoogleSignalsSettingsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :google_signals_settings, 1,
    type: Google.Analytics.Admin.V1alpha.GoogleSignalsSettings,
    json_name: "googleSignalsSettings",
    deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Analytics.Admin.V1alpha.CreateConversionEventRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :conversion_event, 1,
    type: Google.Analytics.Admin.V1alpha.ConversionEvent,
    json_name: "conversionEvent",
    deprecated: false

  field :parent, 2, type: :string, deprecated: false
end

defmodule Google.Analytics.Admin.V1alpha.GetConversionEventRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Analytics.Admin.V1alpha.DeleteConversionEventRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Analytics.Admin.V1alpha.ListConversionEventsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Analytics.Admin.V1alpha.ListConversionEventsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :conversion_events, 1,
    repeated: true,
    type: Google.Analytics.Admin.V1alpha.ConversionEvent,
    json_name: "conversionEvents"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Analytics.Admin.V1alpha.GetDisplayVideo360AdvertiserLinkRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Analytics.Admin.V1alpha.ListDisplayVideo360AdvertiserLinksRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Analytics.Admin.V1alpha.ListDisplayVideo360AdvertiserLinksResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :display_video_360_advertiser_links, 1,
    repeated: true,
    type: Google.Analytics.Admin.V1alpha.DisplayVideo360AdvertiserLink,
    json_name: "displayVideo360AdvertiserLinks"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Analytics.Admin.V1alpha.CreateDisplayVideo360AdvertiserLinkRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :display_video_360_advertiser_link, 2,
    type: Google.Analytics.Admin.V1alpha.DisplayVideo360AdvertiserLink,
    json_name: "displayVideo360AdvertiserLink",
    deprecated: false
end

defmodule Google.Analytics.Admin.V1alpha.DeleteDisplayVideo360AdvertiserLinkRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Analytics.Admin.V1alpha.UpdateDisplayVideo360AdvertiserLinkRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :display_video_360_advertiser_link, 1,
    type: Google.Analytics.Admin.V1alpha.DisplayVideo360AdvertiserLink,
    json_name: "displayVideo360AdvertiserLink"

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Analytics.Admin.V1alpha.GetDisplayVideo360AdvertiserLinkProposalRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Analytics.Admin.V1alpha.ListDisplayVideo360AdvertiserLinkProposalsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Analytics.Admin.V1alpha.ListDisplayVideo360AdvertiserLinkProposalsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :display_video_360_advertiser_link_proposals, 1,
    repeated: true,
    type: Google.Analytics.Admin.V1alpha.DisplayVideo360AdvertiserLinkProposal,
    json_name: "displayVideo360AdvertiserLinkProposals"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Analytics.Admin.V1alpha.CreateDisplayVideo360AdvertiserLinkProposalRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :display_video_360_advertiser_link_proposal, 2,
    type: Google.Analytics.Admin.V1alpha.DisplayVideo360AdvertiserLinkProposal,
    json_name: "displayVideo360AdvertiserLinkProposal",
    deprecated: false
end

defmodule Google.Analytics.Admin.V1alpha.DeleteDisplayVideo360AdvertiserLinkProposalRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Analytics.Admin.V1alpha.ApproveDisplayVideo360AdvertiserLinkProposalRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Analytics.Admin.V1alpha.ApproveDisplayVideo360AdvertiserLinkProposalResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :display_video_360_advertiser_link, 1,
    type: Google.Analytics.Admin.V1alpha.DisplayVideo360AdvertiserLink,
    json_name: "displayVideo360AdvertiserLink"
end

defmodule Google.Analytics.Admin.V1alpha.CancelDisplayVideo360AdvertiserLinkProposalRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Analytics.Admin.V1alpha.GetSearchAds360LinkRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Analytics.Admin.V1alpha.ListSearchAds360LinksRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Analytics.Admin.V1alpha.ListSearchAds360LinksResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :search_ads_360_links, 1,
    repeated: true,
    type: Google.Analytics.Admin.V1alpha.SearchAds360Link,
    json_name: "searchAds360Links"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Analytics.Admin.V1alpha.CreateSearchAds360LinkRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :search_ads_360_link, 2,
    type: Google.Analytics.Admin.V1alpha.SearchAds360Link,
    json_name: "searchAds360Link",
    deprecated: false
end

defmodule Google.Analytics.Admin.V1alpha.DeleteSearchAds360LinkRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Analytics.Admin.V1alpha.UpdateSearchAds360LinkRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :search_ads_360_link, 1,
    type: Google.Analytics.Admin.V1alpha.SearchAds360Link,
    json_name: "searchAds360Link"

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Analytics.Admin.V1alpha.CreateCustomDimensionRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :custom_dimension, 2,
    type: Google.Analytics.Admin.V1alpha.CustomDimension,
    json_name: "customDimension",
    deprecated: false
end

defmodule Google.Analytics.Admin.V1alpha.UpdateCustomDimensionRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :custom_dimension, 1,
    type: Google.Analytics.Admin.V1alpha.CustomDimension,
    json_name: "customDimension"

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Analytics.Admin.V1alpha.ListCustomDimensionsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Analytics.Admin.V1alpha.ListCustomDimensionsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :custom_dimensions, 1,
    repeated: true,
    type: Google.Analytics.Admin.V1alpha.CustomDimension,
    json_name: "customDimensions"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Analytics.Admin.V1alpha.ArchiveCustomDimensionRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Analytics.Admin.V1alpha.GetCustomDimensionRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Analytics.Admin.V1alpha.CreateCustomMetricRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :custom_metric, 2,
    type: Google.Analytics.Admin.V1alpha.CustomMetric,
    json_name: "customMetric",
    deprecated: false
end

defmodule Google.Analytics.Admin.V1alpha.UpdateCustomMetricRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :custom_metric, 1,
    type: Google.Analytics.Admin.V1alpha.CustomMetric,
    json_name: "customMetric"

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Analytics.Admin.V1alpha.ListCustomMetricsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Analytics.Admin.V1alpha.ListCustomMetricsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :custom_metrics, 1,
    repeated: true,
    type: Google.Analytics.Admin.V1alpha.CustomMetric,
    json_name: "customMetrics"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Analytics.Admin.V1alpha.ArchiveCustomMetricRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Analytics.Admin.V1alpha.GetCustomMetricRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Analytics.Admin.V1alpha.GetDataRetentionSettingsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Analytics.Admin.V1alpha.UpdateDataRetentionSettingsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :data_retention_settings, 1,
    type: Google.Analytics.Admin.V1alpha.DataRetentionSettings,
    json_name: "dataRetentionSettings",
    deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Analytics.Admin.V1alpha.CreateDataStreamRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :data_stream, 2,
    type: Google.Analytics.Admin.V1alpha.DataStream,
    json_name: "dataStream",
    deprecated: false
end

defmodule Google.Analytics.Admin.V1alpha.DeleteDataStreamRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Analytics.Admin.V1alpha.UpdateDataStreamRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :data_stream, 1, type: Google.Analytics.Admin.V1alpha.DataStream, json_name: "dataStream"

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Analytics.Admin.V1alpha.ListDataStreamsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Analytics.Admin.V1alpha.ListDataStreamsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :data_streams, 1,
    repeated: true,
    type: Google.Analytics.Admin.V1alpha.DataStream,
    json_name: "dataStreams"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Analytics.Admin.V1alpha.GetDataStreamRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Analytics.Admin.V1alpha.GetAudienceRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Analytics.Admin.V1alpha.ListAudiencesRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Analytics.Admin.V1alpha.ListAudiencesResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :audiences, 1, repeated: true, type: Google.Analytics.Admin.V1alpha.Audience
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Analytics.Admin.V1alpha.CreateAudienceRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :audience, 2, type: Google.Analytics.Admin.V1alpha.Audience, deprecated: false
end

defmodule Google.Analytics.Admin.V1alpha.UpdateAudienceRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :audience, 1, type: Google.Analytics.Admin.V1alpha.Audience, deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Analytics.Admin.V1alpha.ArchiveAudienceRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Analytics.Admin.V1alpha.GetAttributionSettingsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Analytics.Admin.V1alpha.UpdateAttributionSettingsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :attribution_settings, 1,
    type: Google.Analytics.Admin.V1alpha.AttributionSettings,
    json_name: "attributionSettings",
    deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Analytics.Admin.V1alpha.SetAutomatedGa4ConfigurationOptOutRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :property, 1, type: :string, deprecated: false
  field :opt_out, 2, type: :bool, json_name: "optOut"
end

defmodule Google.Analytics.Admin.V1alpha.SetAutomatedGa4ConfigurationOptOutResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3
end

defmodule Google.Analytics.Admin.V1alpha.FetchAutomatedGa4ConfigurationOptOutRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :property, 1, type: :string, deprecated: false
end

defmodule Google.Analytics.Admin.V1alpha.FetchAutomatedGa4ConfigurationOptOutResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :opt_out, 1, type: :bool, json_name: "optOut"
end

defmodule Google.Analytics.Admin.V1alpha.GetBigQueryLinkRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Analytics.Admin.V1alpha.ListBigQueryLinksRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Analytics.Admin.V1alpha.ListBigQueryLinksResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :bigquery_links, 1,
    repeated: true,
    type: Google.Analytics.Admin.V1alpha.BigQueryLink,
    json_name: "bigqueryLinks"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Analytics.Admin.V1alpha.AnalyticsAdminService.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.analytics.admin.v1alpha.AnalyticsAdminService",
    protoc_gen_elixir_version: "0.11.0"

  rpc :GetAccount,
      Google.Analytics.Admin.V1alpha.GetAccountRequest,
      Google.Analytics.Admin.V1alpha.Account

  rpc :ListAccounts,
      Google.Analytics.Admin.V1alpha.ListAccountsRequest,
      Google.Analytics.Admin.V1alpha.ListAccountsResponse

  rpc :DeleteAccount, Google.Analytics.Admin.V1alpha.DeleteAccountRequest, Google.Protobuf.Empty

  rpc :UpdateAccount,
      Google.Analytics.Admin.V1alpha.UpdateAccountRequest,
      Google.Analytics.Admin.V1alpha.Account

  rpc :ProvisionAccountTicket,
      Google.Analytics.Admin.V1alpha.ProvisionAccountTicketRequest,
      Google.Analytics.Admin.V1alpha.ProvisionAccountTicketResponse

  rpc :ListAccountSummaries,
      Google.Analytics.Admin.V1alpha.ListAccountSummariesRequest,
      Google.Analytics.Admin.V1alpha.ListAccountSummariesResponse

  rpc :GetProperty,
      Google.Analytics.Admin.V1alpha.GetPropertyRequest,
      Google.Analytics.Admin.V1alpha.Property

  rpc :ListProperties,
      Google.Analytics.Admin.V1alpha.ListPropertiesRequest,
      Google.Analytics.Admin.V1alpha.ListPropertiesResponse

  rpc :CreateProperty,
      Google.Analytics.Admin.V1alpha.CreatePropertyRequest,
      Google.Analytics.Admin.V1alpha.Property

  rpc :DeleteProperty,
      Google.Analytics.Admin.V1alpha.DeletePropertyRequest,
      Google.Analytics.Admin.V1alpha.Property

  rpc :UpdateProperty,
      Google.Analytics.Admin.V1alpha.UpdatePropertyRequest,
      Google.Analytics.Admin.V1alpha.Property

  rpc :GetUserLink,
      Google.Analytics.Admin.V1alpha.GetUserLinkRequest,
      Google.Analytics.Admin.V1alpha.UserLink

  rpc :BatchGetUserLinks,
      Google.Analytics.Admin.V1alpha.BatchGetUserLinksRequest,
      Google.Analytics.Admin.V1alpha.BatchGetUserLinksResponse

  rpc :ListUserLinks,
      Google.Analytics.Admin.V1alpha.ListUserLinksRequest,
      Google.Analytics.Admin.V1alpha.ListUserLinksResponse

  rpc :AuditUserLinks,
      Google.Analytics.Admin.V1alpha.AuditUserLinksRequest,
      Google.Analytics.Admin.V1alpha.AuditUserLinksResponse

  rpc :CreateUserLink,
      Google.Analytics.Admin.V1alpha.CreateUserLinkRequest,
      Google.Analytics.Admin.V1alpha.UserLink

  rpc :BatchCreateUserLinks,
      Google.Analytics.Admin.V1alpha.BatchCreateUserLinksRequest,
      Google.Analytics.Admin.V1alpha.BatchCreateUserLinksResponse

  rpc :UpdateUserLink,
      Google.Analytics.Admin.V1alpha.UpdateUserLinkRequest,
      Google.Analytics.Admin.V1alpha.UserLink

  rpc :BatchUpdateUserLinks,
      Google.Analytics.Admin.V1alpha.BatchUpdateUserLinksRequest,
      Google.Analytics.Admin.V1alpha.BatchUpdateUserLinksResponse

  rpc :DeleteUserLink, Google.Analytics.Admin.V1alpha.DeleteUserLinkRequest, Google.Protobuf.Empty

  rpc :BatchDeleteUserLinks,
      Google.Analytics.Admin.V1alpha.BatchDeleteUserLinksRequest,
      Google.Protobuf.Empty

  rpc :CreateFirebaseLink,
      Google.Analytics.Admin.V1alpha.CreateFirebaseLinkRequest,
      Google.Analytics.Admin.V1alpha.FirebaseLink

  rpc :DeleteFirebaseLink,
      Google.Analytics.Admin.V1alpha.DeleteFirebaseLinkRequest,
      Google.Protobuf.Empty

  rpc :ListFirebaseLinks,
      Google.Analytics.Admin.V1alpha.ListFirebaseLinksRequest,
      Google.Analytics.Admin.V1alpha.ListFirebaseLinksResponse

  rpc :GetGlobalSiteTag,
      Google.Analytics.Admin.V1alpha.GetGlobalSiteTagRequest,
      Google.Analytics.Admin.V1alpha.GlobalSiteTag

  rpc :CreateGoogleAdsLink,
      Google.Analytics.Admin.V1alpha.CreateGoogleAdsLinkRequest,
      Google.Analytics.Admin.V1alpha.GoogleAdsLink

  rpc :UpdateGoogleAdsLink,
      Google.Analytics.Admin.V1alpha.UpdateGoogleAdsLinkRequest,
      Google.Analytics.Admin.V1alpha.GoogleAdsLink

  rpc :DeleteGoogleAdsLink,
      Google.Analytics.Admin.V1alpha.DeleteGoogleAdsLinkRequest,
      Google.Protobuf.Empty

  rpc :ListGoogleAdsLinks,
      Google.Analytics.Admin.V1alpha.ListGoogleAdsLinksRequest,
      Google.Analytics.Admin.V1alpha.ListGoogleAdsLinksResponse

  rpc :GetDataSharingSettings,
      Google.Analytics.Admin.V1alpha.GetDataSharingSettingsRequest,
      Google.Analytics.Admin.V1alpha.DataSharingSettings

  rpc :GetMeasurementProtocolSecret,
      Google.Analytics.Admin.V1alpha.GetMeasurementProtocolSecretRequest,
      Google.Analytics.Admin.V1alpha.MeasurementProtocolSecret

  rpc :ListMeasurementProtocolSecrets,
      Google.Analytics.Admin.V1alpha.ListMeasurementProtocolSecretsRequest,
      Google.Analytics.Admin.V1alpha.ListMeasurementProtocolSecretsResponse

  rpc :CreateMeasurementProtocolSecret,
      Google.Analytics.Admin.V1alpha.CreateMeasurementProtocolSecretRequest,
      Google.Analytics.Admin.V1alpha.MeasurementProtocolSecret

  rpc :DeleteMeasurementProtocolSecret,
      Google.Analytics.Admin.V1alpha.DeleteMeasurementProtocolSecretRequest,
      Google.Protobuf.Empty

  rpc :UpdateMeasurementProtocolSecret,
      Google.Analytics.Admin.V1alpha.UpdateMeasurementProtocolSecretRequest,
      Google.Analytics.Admin.V1alpha.MeasurementProtocolSecret

  rpc :AcknowledgeUserDataCollection,
      Google.Analytics.Admin.V1alpha.AcknowledgeUserDataCollectionRequest,
      Google.Analytics.Admin.V1alpha.AcknowledgeUserDataCollectionResponse

  rpc :SearchChangeHistoryEvents,
      Google.Analytics.Admin.V1alpha.SearchChangeHistoryEventsRequest,
      Google.Analytics.Admin.V1alpha.SearchChangeHistoryEventsResponse

  rpc :GetGoogleSignalsSettings,
      Google.Analytics.Admin.V1alpha.GetGoogleSignalsSettingsRequest,
      Google.Analytics.Admin.V1alpha.GoogleSignalsSettings

  rpc :UpdateGoogleSignalsSettings,
      Google.Analytics.Admin.V1alpha.UpdateGoogleSignalsSettingsRequest,
      Google.Analytics.Admin.V1alpha.GoogleSignalsSettings

  rpc :CreateConversionEvent,
      Google.Analytics.Admin.V1alpha.CreateConversionEventRequest,
      Google.Analytics.Admin.V1alpha.ConversionEvent

  rpc :GetConversionEvent,
      Google.Analytics.Admin.V1alpha.GetConversionEventRequest,
      Google.Analytics.Admin.V1alpha.ConversionEvent

  rpc :DeleteConversionEvent,
      Google.Analytics.Admin.V1alpha.DeleteConversionEventRequest,
      Google.Protobuf.Empty

  rpc :ListConversionEvents,
      Google.Analytics.Admin.V1alpha.ListConversionEventsRequest,
      Google.Analytics.Admin.V1alpha.ListConversionEventsResponse

  rpc :GetDisplayVideo360AdvertiserLink,
      Google.Analytics.Admin.V1alpha.GetDisplayVideo360AdvertiserLinkRequest,
      Google.Analytics.Admin.V1alpha.DisplayVideo360AdvertiserLink

  rpc :ListDisplayVideo360AdvertiserLinks,
      Google.Analytics.Admin.V1alpha.ListDisplayVideo360AdvertiserLinksRequest,
      Google.Analytics.Admin.V1alpha.ListDisplayVideo360AdvertiserLinksResponse

  rpc :CreateDisplayVideo360AdvertiserLink,
      Google.Analytics.Admin.V1alpha.CreateDisplayVideo360AdvertiserLinkRequest,
      Google.Analytics.Admin.V1alpha.DisplayVideo360AdvertiserLink

  rpc :DeleteDisplayVideo360AdvertiserLink,
      Google.Analytics.Admin.V1alpha.DeleteDisplayVideo360AdvertiserLinkRequest,
      Google.Protobuf.Empty

  rpc :UpdateDisplayVideo360AdvertiserLink,
      Google.Analytics.Admin.V1alpha.UpdateDisplayVideo360AdvertiserLinkRequest,
      Google.Analytics.Admin.V1alpha.DisplayVideo360AdvertiserLink

  rpc :GetDisplayVideo360AdvertiserLinkProposal,
      Google.Analytics.Admin.V1alpha.GetDisplayVideo360AdvertiserLinkProposalRequest,
      Google.Analytics.Admin.V1alpha.DisplayVideo360AdvertiserLinkProposal

  rpc :ListDisplayVideo360AdvertiserLinkProposals,
      Google.Analytics.Admin.V1alpha.ListDisplayVideo360AdvertiserLinkProposalsRequest,
      Google.Analytics.Admin.V1alpha.ListDisplayVideo360AdvertiserLinkProposalsResponse

  rpc :CreateDisplayVideo360AdvertiserLinkProposal,
      Google.Analytics.Admin.V1alpha.CreateDisplayVideo360AdvertiserLinkProposalRequest,
      Google.Analytics.Admin.V1alpha.DisplayVideo360AdvertiserLinkProposal

  rpc :DeleteDisplayVideo360AdvertiserLinkProposal,
      Google.Analytics.Admin.V1alpha.DeleteDisplayVideo360AdvertiserLinkProposalRequest,
      Google.Protobuf.Empty

  rpc :ApproveDisplayVideo360AdvertiserLinkProposal,
      Google.Analytics.Admin.V1alpha.ApproveDisplayVideo360AdvertiserLinkProposalRequest,
      Google.Analytics.Admin.V1alpha.ApproveDisplayVideo360AdvertiserLinkProposalResponse

  rpc :CancelDisplayVideo360AdvertiserLinkProposal,
      Google.Analytics.Admin.V1alpha.CancelDisplayVideo360AdvertiserLinkProposalRequest,
      Google.Analytics.Admin.V1alpha.DisplayVideo360AdvertiserLinkProposal

  rpc :CreateCustomDimension,
      Google.Analytics.Admin.V1alpha.CreateCustomDimensionRequest,
      Google.Analytics.Admin.V1alpha.CustomDimension

  rpc :UpdateCustomDimension,
      Google.Analytics.Admin.V1alpha.UpdateCustomDimensionRequest,
      Google.Analytics.Admin.V1alpha.CustomDimension

  rpc :ListCustomDimensions,
      Google.Analytics.Admin.V1alpha.ListCustomDimensionsRequest,
      Google.Analytics.Admin.V1alpha.ListCustomDimensionsResponse

  rpc :ArchiveCustomDimension,
      Google.Analytics.Admin.V1alpha.ArchiveCustomDimensionRequest,
      Google.Protobuf.Empty

  rpc :GetCustomDimension,
      Google.Analytics.Admin.V1alpha.GetCustomDimensionRequest,
      Google.Analytics.Admin.V1alpha.CustomDimension

  rpc :CreateCustomMetric,
      Google.Analytics.Admin.V1alpha.CreateCustomMetricRequest,
      Google.Analytics.Admin.V1alpha.CustomMetric

  rpc :UpdateCustomMetric,
      Google.Analytics.Admin.V1alpha.UpdateCustomMetricRequest,
      Google.Analytics.Admin.V1alpha.CustomMetric

  rpc :ListCustomMetrics,
      Google.Analytics.Admin.V1alpha.ListCustomMetricsRequest,
      Google.Analytics.Admin.V1alpha.ListCustomMetricsResponse

  rpc :ArchiveCustomMetric,
      Google.Analytics.Admin.V1alpha.ArchiveCustomMetricRequest,
      Google.Protobuf.Empty

  rpc :GetCustomMetric,
      Google.Analytics.Admin.V1alpha.GetCustomMetricRequest,
      Google.Analytics.Admin.V1alpha.CustomMetric

  rpc :GetDataRetentionSettings,
      Google.Analytics.Admin.V1alpha.GetDataRetentionSettingsRequest,
      Google.Analytics.Admin.V1alpha.DataRetentionSettings

  rpc :UpdateDataRetentionSettings,
      Google.Analytics.Admin.V1alpha.UpdateDataRetentionSettingsRequest,
      Google.Analytics.Admin.V1alpha.DataRetentionSettings

  rpc :CreateDataStream,
      Google.Analytics.Admin.V1alpha.CreateDataStreamRequest,
      Google.Analytics.Admin.V1alpha.DataStream

  rpc :DeleteDataStream,
      Google.Analytics.Admin.V1alpha.DeleteDataStreamRequest,
      Google.Protobuf.Empty

  rpc :UpdateDataStream,
      Google.Analytics.Admin.V1alpha.UpdateDataStreamRequest,
      Google.Analytics.Admin.V1alpha.DataStream

  rpc :ListDataStreams,
      Google.Analytics.Admin.V1alpha.ListDataStreamsRequest,
      Google.Analytics.Admin.V1alpha.ListDataStreamsResponse

  rpc :GetDataStream,
      Google.Analytics.Admin.V1alpha.GetDataStreamRequest,
      Google.Analytics.Admin.V1alpha.DataStream

  rpc :GetAudience,
      Google.Analytics.Admin.V1alpha.GetAudienceRequest,
      Google.Analytics.Admin.V1alpha.Audience

  rpc :ListAudiences,
      Google.Analytics.Admin.V1alpha.ListAudiencesRequest,
      Google.Analytics.Admin.V1alpha.ListAudiencesResponse

  rpc :CreateAudience,
      Google.Analytics.Admin.V1alpha.CreateAudienceRequest,
      Google.Analytics.Admin.V1alpha.Audience

  rpc :UpdateAudience,
      Google.Analytics.Admin.V1alpha.UpdateAudienceRequest,
      Google.Analytics.Admin.V1alpha.Audience

  rpc :ArchiveAudience,
      Google.Analytics.Admin.V1alpha.ArchiveAudienceRequest,
      Google.Protobuf.Empty

  rpc :GetSearchAds360Link,
      Google.Analytics.Admin.V1alpha.GetSearchAds360LinkRequest,
      Google.Analytics.Admin.V1alpha.SearchAds360Link

  rpc :ListSearchAds360Links,
      Google.Analytics.Admin.V1alpha.ListSearchAds360LinksRequest,
      Google.Analytics.Admin.V1alpha.ListSearchAds360LinksResponse

  rpc :CreateSearchAds360Link,
      Google.Analytics.Admin.V1alpha.CreateSearchAds360LinkRequest,
      Google.Analytics.Admin.V1alpha.SearchAds360Link

  rpc :DeleteSearchAds360Link,
      Google.Analytics.Admin.V1alpha.DeleteSearchAds360LinkRequest,
      Google.Protobuf.Empty

  rpc :UpdateSearchAds360Link,
      Google.Analytics.Admin.V1alpha.UpdateSearchAds360LinkRequest,
      Google.Analytics.Admin.V1alpha.SearchAds360Link

  rpc :GetAttributionSettings,
      Google.Analytics.Admin.V1alpha.GetAttributionSettingsRequest,
      Google.Analytics.Admin.V1alpha.AttributionSettings

  rpc :UpdateAttributionSettings,
      Google.Analytics.Admin.V1alpha.UpdateAttributionSettingsRequest,
      Google.Analytics.Admin.V1alpha.AttributionSettings

  rpc :RunAccessReport,
      Google.Analytics.Admin.V1alpha.RunAccessReportRequest,
      Google.Analytics.Admin.V1alpha.RunAccessReportResponse

  rpc :SetAutomatedGa4ConfigurationOptOut,
      Google.Analytics.Admin.V1alpha.SetAutomatedGa4ConfigurationOptOutRequest,
      Google.Analytics.Admin.V1alpha.SetAutomatedGa4ConfigurationOptOutResponse

  rpc :FetchAutomatedGa4ConfigurationOptOut,
      Google.Analytics.Admin.V1alpha.FetchAutomatedGa4ConfigurationOptOutRequest,
      Google.Analytics.Admin.V1alpha.FetchAutomatedGa4ConfigurationOptOutResponse

  rpc :GetBigQueryLink,
      Google.Analytics.Admin.V1alpha.GetBigQueryLinkRequest,
      Google.Analytics.Admin.V1alpha.BigQueryLink

  rpc :ListBigQueryLinks,
      Google.Analytics.Admin.V1alpha.ListBigQueryLinksRequest,
      Google.Analytics.Admin.V1alpha.ListBigQueryLinksResponse
end

defmodule Google.Analytics.Admin.V1alpha.AnalyticsAdminService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Analytics.Admin.V1alpha.AnalyticsAdminService.Service
end