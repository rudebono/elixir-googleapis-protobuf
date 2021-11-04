defmodule Google.Analytics.Admin.V1alpha.IndustryCategory do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :INDUSTRY_CATEGORY_UNSPECIFIED
          | :AUTOMOTIVE
          | :BUSINESS_AND_INDUSTRIAL_MARKETS
          | :FINANCE
          | :HEALTHCARE
          | :TECHNOLOGY
          | :TRAVEL
          | :OTHER
          | :ARTS_AND_ENTERTAINMENT
          | :BEAUTY_AND_FITNESS
          | :BOOKS_AND_LITERATURE
          | :FOOD_AND_DRINK
          | :GAMES
          | :HOBBIES_AND_LEISURE
          | :HOME_AND_GARDEN
          | :INTERNET_AND_TELECOM
          | :LAW_AND_GOVERNMENT
          | :NEWS
          | :ONLINE_COMMUNITIES
          | :PEOPLE_AND_SOCIETY
          | :PETS_AND_ANIMALS
          | :REAL_ESTATE
          | :REFERENCE
          | :SCIENCE
          | :SPORTS
          | :JOBS_AND_EDUCATION
          | :SHOPPING

  field :INDUSTRY_CATEGORY_UNSPECIFIED, 0
  field :AUTOMOTIVE, 1
  field :BUSINESS_AND_INDUSTRIAL_MARKETS, 2
  field :FINANCE, 3
  field :HEALTHCARE, 4
  field :TECHNOLOGY, 5
  field :TRAVEL, 6
  field :OTHER, 7
  field :ARTS_AND_ENTERTAINMENT, 8
  field :BEAUTY_AND_FITNESS, 9
  field :BOOKS_AND_LITERATURE, 10
  field :FOOD_AND_DRINK, 11
  field :GAMES, 12
  field :HOBBIES_AND_LEISURE, 13
  field :HOME_AND_GARDEN, 14
  field :INTERNET_AND_TELECOM, 15
  field :LAW_AND_GOVERNMENT, 16
  field :NEWS, 17
  field :ONLINE_COMMUNITIES, 18
  field :PEOPLE_AND_SOCIETY, 19
  field :PETS_AND_ANIMALS, 20
  field :REAL_ESTATE, 21
  field :REFERENCE, 22
  field :SCIENCE, 23
  field :SPORTS, 24
  field :JOBS_AND_EDUCATION, 25
  field :SHOPPING, 26
end

defmodule Google.Analytics.Admin.V1alpha.ServiceLevel do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :SERVICE_LEVEL_UNSPECIFIED
          | :GOOGLE_ANALYTICS_STANDARD
          | :GOOGLE_ANALYTICS_360

  field :SERVICE_LEVEL_UNSPECIFIED, 0
  field :GOOGLE_ANALYTICS_STANDARD, 1
  field :GOOGLE_ANALYTICS_360, 2
end

defmodule Google.Analytics.Admin.V1alpha.ActorType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :ACTOR_TYPE_UNSPECIFIED | :USER | :SYSTEM | :SUPPORT

  field :ACTOR_TYPE_UNSPECIFIED, 0
  field :USER, 1
  field :SYSTEM, 2
  field :SUPPORT, 3
end

defmodule Google.Analytics.Admin.V1alpha.ActionType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :ACTION_TYPE_UNSPECIFIED | :CREATED | :UPDATED | :DELETED

  field :ACTION_TYPE_UNSPECIFIED, 0
  field :CREATED, 1
  field :UPDATED, 2
  field :DELETED, 3
end

defmodule Google.Analytics.Admin.V1alpha.ChangeHistoryResourceType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :CHANGE_HISTORY_RESOURCE_TYPE_UNSPECIFIED
          | :ACCOUNT
          | :PROPERTY
          | :WEB_DATA_STREAM
          | :ANDROID_APP_DATA_STREAM
          | :IOS_APP_DATA_STREAM
          | :FIREBASE_LINK
          | :GOOGLE_ADS_LINK
          | :GOOGLE_SIGNALS_SETTINGS
          | :CONVERSION_EVENT
          | :MEASUREMENT_PROTOCOL_SECRET
          | :CUSTOM_DIMENSION
          | :CUSTOM_METRIC
          | :DATA_RETENTION_SETTINGS

  field :CHANGE_HISTORY_RESOURCE_TYPE_UNSPECIFIED, 0
  field :ACCOUNT, 1
  field :PROPERTY, 2
  field :WEB_DATA_STREAM, 3
  field :ANDROID_APP_DATA_STREAM, 4
  field :IOS_APP_DATA_STREAM, 5
  field :FIREBASE_LINK, 6
  field :GOOGLE_ADS_LINK, 7
  field :GOOGLE_SIGNALS_SETTINGS, 8
  field :CONVERSION_EVENT, 9
  field :MEASUREMENT_PROTOCOL_SECRET, 10
  field :CUSTOM_DIMENSION, 11
  field :CUSTOM_METRIC, 12
  field :DATA_RETENTION_SETTINGS, 13
end

defmodule Google.Analytics.Admin.V1alpha.GoogleSignalsState do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :GOOGLE_SIGNALS_STATE_UNSPECIFIED
          | :GOOGLE_SIGNALS_ENABLED
          | :GOOGLE_SIGNALS_DISABLED

  field :GOOGLE_SIGNALS_STATE_UNSPECIFIED, 0
  field :GOOGLE_SIGNALS_ENABLED, 1
  field :GOOGLE_SIGNALS_DISABLED, 2
end

defmodule Google.Analytics.Admin.V1alpha.GoogleSignalsConsent do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :GOOGLE_SIGNALS_CONSENT_UNSPECIFIED
          | :GOOGLE_SIGNALS_CONSENT_CONSENTED
          | :GOOGLE_SIGNALS_CONSENT_NOT_CONSENTED

  field :GOOGLE_SIGNALS_CONSENT_UNSPECIFIED, 0
  field :GOOGLE_SIGNALS_CONSENT_CONSENTED, 2
  field :GOOGLE_SIGNALS_CONSENT_NOT_CONSENTED, 1
end

defmodule Google.Analytics.Admin.V1alpha.LinkProposalInitiatingProduct do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :LINK_PROPOSAL_INITIATING_PRODUCT_UNSPECIFIED
          | :GOOGLE_ANALYTICS
          | :LINKED_PRODUCT

  field :LINK_PROPOSAL_INITIATING_PRODUCT_UNSPECIFIED, 0
  field :GOOGLE_ANALYTICS, 1
  field :LINKED_PRODUCT, 2
end

defmodule Google.Analytics.Admin.V1alpha.LinkProposalState do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :LINK_PROPOSAL_STATE_UNSPECIFIED
          | :AWAITING_REVIEW_FROM_GOOGLE_ANALYTICS
          | :AWAITING_REVIEW_FROM_LINKED_PRODUCT
          | :WITHDRAWN
          | :DECLINED
          | :EXPIRED
          | :OBSOLETE

  field :LINK_PROPOSAL_STATE_UNSPECIFIED, 0
  field :AWAITING_REVIEW_FROM_GOOGLE_ANALYTICS, 1
  field :AWAITING_REVIEW_FROM_LINKED_PRODUCT, 2
  field :WITHDRAWN, 3
  field :DECLINED, 4
  field :EXPIRED, 5
  field :OBSOLETE, 6
end

defmodule Google.Analytics.Admin.V1alpha.CustomDimension.DimensionScope do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :DIMENSION_SCOPE_UNSPECIFIED | :EVENT | :USER

  field :DIMENSION_SCOPE_UNSPECIFIED, 0
  field :EVENT, 1
  field :USER, 2
end

defmodule Google.Analytics.Admin.V1alpha.CustomMetric.MeasurementUnit do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :MEASUREMENT_UNIT_UNSPECIFIED
          | :STANDARD
          | :CURRENCY
          | :FEET
          | :METERS
          | :KILOMETERS
          | :MILES
          | :MILLISECONDS
          | :SECONDS
          | :MINUTES
          | :HOURS

  field :MEASUREMENT_UNIT_UNSPECIFIED, 0
  field :STANDARD, 1
  field :CURRENCY, 2
  field :FEET, 3
  field :METERS, 4
  field :KILOMETERS, 5
  field :MILES, 6
  field :MILLISECONDS, 7
  field :SECONDS, 8
  field :MINUTES, 9
  field :HOURS, 10
end

defmodule Google.Analytics.Admin.V1alpha.CustomMetric.MetricScope do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :METRIC_SCOPE_UNSPECIFIED | :EVENT

  field :METRIC_SCOPE_UNSPECIFIED, 0
  field :EVENT, 1
end

defmodule Google.Analytics.Admin.V1alpha.DataRetentionSettings.RetentionDuration do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :RETENTION_DURATION_UNSPECIFIED
          | :TWO_MONTHS
          | :FOURTEEN_MONTHS
          | :TWENTY_SIX_MONTHS
          | :THIRTY_EIGHT_MONTHS
          | :FIFTY_MONTHS

  field :RETENTION_DURATION_UNSPECIFIED, 0
  field :TWO_MONTHS, 1
  field :FOURTEEN_MONTHS, 3
  field :TWENTY_SIX_MONTHS, 4
  field :THIRTY_EIGHT_MONTHS, 5
  field :FIFTY_MONTHS, 6
end

defmodule Google.Analytics.Admin.V1alpha.Account do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          create_time: Google.Protobuf.Timestamp.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil,
          display_name: String.t(),
          region_code: String.t(),
          deleted: boolean
        }

  defstruct [:name, :create_time, :update_time, :display_name, :region_code, :deleted]

  field :name, 1, type: :string
  field :create_time, 2, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :update_time, 3, type: Google.Protobuf.Timestamp, json_name: "updateTime"
  field :display_name, 4, type: :string, json_name: "displayName"
  field :region_code, 5, type: :string, json_name: "regionCode"
  field :deleted, 6, type: :bool

  def transform_module(), do: nil
end

defmodule Google.Analytics.Admin.V1alpha.Property do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          create_time: Google.Protobuf.Timestamp.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil,
          parent: String.t(),
          display_name: String.t(),
          industry_category: Google.Analytics.Admin.V1alpha.IndustryCategory.t(),
          time_zone: String.t(),
          currency_code: String.t(),
          service_level: Google.Analytics.Admin.V1alpha.ServiceLevel.t(),
          delete_time: Google.Protobuf.Timestamp.t() | nil,
          expire_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct [
    :name,
    :create_time,
    :update_time,
    :parent,
    :display_name,
    :industry_category,
    :time_zone,
    :currency_code,
    :service_level,
    :delete_time,
    :expire_time
  ]

  field :name, 1, type: :string
  field :create_time, 3, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :update_time, 4, type: Google.Protobuf.Timestamp, json_name: "updateTime"
  field :parent, 2, type: :string
  field :display_name, 5, type: :string, json_name: "displayName"

  field :industry_category, 6,
    type: Google.Analytics.Admin.V1alpha.IndustryCategory,
    enum: true,
    json_name: "industryCategory"

  field :time_zone, 7, type: :string, json_name: "timeZone"
  field :currency_code, 8, type: :string, json_name: "currencyCode"

  field :service_level, 10,
    type: Google.Analytics.Admin.V1alpha.ServiceLevel,
    enum: true,
    json_name: "serviceLevel"

  field :delete_time, 11, type: Google.Protobuf.Timestamp, json_name: "deleteTime"
  field :expire_time, 12, type: Google.Protobuf.Timestamp, json_name: "expireTime"

  def transform_module(), do: nil
end

defmodule Google.Analytics.Admin.V1alpha.AndroidAppDataStream do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          firebase_app_id: String.t(),
          create_time: Google.Protobuf.Timestamp.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil,
          package_name: String.t(),
          display_name: String.t()
        }

  defstruct [:name, :firebase_app_id, :create_time, :update_time, :package_name, :display_name]

  field :name, 1, type: :string
  field :firebase_app_id, 2, type: :string, json_name: "firebaseAppId"
  field :create_time, 3, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :update_time, 4, type: Google.Protobuf.Timestamp, json_name: "updateTime"
  field :package_name, 5, type: :string, json_name: "packageName"
  field :display_name, 6, type: :string, json_name: "displayName"

  def transform_module(), do: nil
end

defmodule Google.Analytics.Admin.V1alpha.IosAppDataStream do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          firebase_app_id: String.t(),
          create_time: Google.Protobuf.Timestamp.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil,
          bundle_id: String.t(),
          display_name: String.t()
        }

  defstruct [:name, :firebase_app_id, :create_time, :update_time, :bundle_id, :display_name]

  field :name, 1, type: :string
  field :firebase_app_id, 2, type: :string, json_name: "firebaseAppId"
  field :create_time, 3, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :update_time, 4, type: Google.Protobuf.Timestamp, json_name: "updateTime"
  field :bundle_id, 5, type: :string, json_name: "bundleId"
  field :display_name, 6, type: :string, json_name: "displayName"

  def transform_module(), do: nil
end

defmodule Google.Analytics.Admin.V1alpha.WebDataStream do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          measurement_id: String.t(),
          firebase_app_id: String.t(),
          create_time: Google.Protobuf.Timestamp.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil,
          default_uri: String.t(),
          display_name: String.t()
        }

  defstruct [
    :name,
    :measurement_id,
    :firebase_app_id,
    :create_time,
    :update_time,
    :default_uri,
    :display_name
  ]

  field :name, 1, type: :string
  field :measurement_id, 2, type: :string, json_name: "measurementId"
  field :firebase_app_id, 3, type: :string, json_name: "firebaseAppId"
  field :create_time, 4, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :update_time, 5, type: Google.Protobuf.Timestamp, json_name: "updateTime"
  field :default_uri, 6, type: :string, json_name: "defaultUri"
  field :display_name, 7, type: :string, json_name: "displayName"

  def transform_module(), do: nil
end

defmodule Google.Analytics.Admin.V1alpha.UserLink do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          email_address: String.t(),
          direct_roles: [String.t()]
        }

  defstruct [:name, :email_address, :direct_roles]

  field :name, 1, type: :string
  field :email_address, 2, type: :string, json_name: "emailAddress"
  field :direct_roles, 3, repeated: true, type: :string, json_name: "directRoles"

  def transform_module(), do: nil
end

defmodule Google.Analytics.Admin.V1alpha.AuditUserLink do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          email_address: String.t(),
          direct_roles: [String.t()],
          effective_roles: [String.t()]
        }

  defstruct [:name, :email_address, :direct_roles, :effective_roles]

  field :name, 1, type: :string
  field :email_address, 2, type: :string, json_name: "emailAddress"
  field :direct_roles, 3, repeated: true, type: :string, json_name: "directRoles"
  field :effective_roles, 4, repeated: true, type: :string, json_name: "effectiveRoles"

  def transform_module(), do: nil
end

defmodule Google.Analytics.Admin.V1alpha.EnhancedMeasurementSettings do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          stream_enabled: boolean,
          page_views_enabled: boolean,
          scrolls_enabled: boolean,
          outbound_clicks_enabled: boolean,
          site_search_enabled: boolean,
          video_engagement_enabled: boolean,
          file_downloads_enabled: boolean,
          page_loads_enabled: boolean,
          page_changes_enabled: boolean,
          search_query_parameter: String.t(),
          uri_query_parameter: String.t()
        }

  defstruct [
    :name,
    :stream_enabled,
    :page_views_enabled,
    :scrolls_enabled,
    :outbound_clicks_enabled,
    :site_search_enabled,
    :video_engagement_enabled,
    :file_downloads_enabled,
    :page_loads_enabled,
    :page_changes_enabled,
    :search_query_parameter,
    :uri_query_parameter
  ]

  field :name, 1, type: :string
  field :stream_enabled, 2, type: :bool, json_name: "streamEnabled"
  field :page_views_enabled, 3, type: :bool, json_name: "pageViewsEnabled"
  field :scrolls_enabled, 4, type: :bool, json_name: "scrollsEnabled"
  field :outbound_clicks_enabled, 5, type: :bool, json_name: "outboundClicksEnabled"
  field :site_search_enabled, 7, type: :bool, json_name: "siteSearchEnabled"
  field :video_engagement_enabled, 9, type: :bool, json_name: "videoEngagementEnabled"
  field :file_downloads_enabled, 10, type: :bool, json_name: "fileDownloadsEnabled"
  field :page_loads_enabled, 12, type: :bool, json_name: "pageLoadsEnabled"
  field :page_changes_enabled, 13, type: :bool, json_name: "pageChangesEnabled"
  field :search_query_parameter, 16, type: :string, json_name: "searchQueryParameter"
  field :uri_query_parameter, 17, type: :string, json_name: "uriQueryParameter"

  def transform_module(), do: nil
end

defmodule Google.Analytics.Admin.V1alpha.FirebaseLink do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          project: String.t(),
          create_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct [:name, :project, :create_time]

  field :name, 1, type: :string
  field :project, 2, type: :string
  field :create_time, 3, type: Google.Protobuf.Timestamp, json_name: "createTime"

  def transform_module(), do: nil
end

defmodule Google.Analytics.Admin.V1alpha.GlobalSiteTag do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          snippet: String.t()
        }

  defstruct [:name, :snippet]

  field :name, 1, type: :string
  field :snippet, 2, type: :string

  def transform_module(), do: nil
end

defmodule Google.Analytics.Admin.V1alpha.GoogleAdsLink do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          customer_id: String.t(),
          can_manage_clients: boolean,
          ads_personalization_enabled: Google.Protobuf.BoolValue.t() | nil,
          create_time: Google.Protobuf.Timestamp.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil,
          creator_email_address: String.t()
        }

  defstruct [
    :name,
    :customer_id,
    :can_manage_clients,
    :ads_personalization_enabled,
    :create_time,
    :update_time,
    :creator_email_address
  ]

  field :name, 1, type: :string
  field :customer_id, 3, type: :string, json_name: "customerId"
  field :can_manage_clients, 4, type: :bool, json_name: "canManageClients"

  field :ads_personalization_enabled, 5,
    type: Google.Protobuf.BoolValue,
    json_name: "adsPersonalizationEnabled"

  field :create_time, 7, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :update_time, 8, type: Google.Protobuf.Timestamp, json_name: "updateTime"
  field :creator_email_address, 9, type: :string, json_name: "creatorEmailAddress"

  def transform_module(), do: nil
end

defmodule Google.Analytics.Admin.V1alpha.DataSharingSettings do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          sharing_with_google_support_enabled: boolean,
          sharing_with_google_assigned_sales_enabled: boolean,
          sharing_with_google_any_sales_enabled: boolean,
          sharing_with_google_products_enabled: boolean,
          sharing_with_others_enabled: boolean
        }

  defstruct [
    :name,
    :sharing_with_google_support_enabled,
    :sharing_with_google_assigned_sales_enabled,
    :sharing_with_google_any_sales_enabled,
    :sharing_with_google_products_enabled,
    :sharing_with_others_enabled
  ]

  field :name, 1, type: :string

  field :sharing_with_google_support_enabled, 2,
    type: :bool,
    json_name: "sharingWithGoogleSupportEnabled"

  field :sharing_with_google_assigned_sales_enabled, 3,
    type: :bool,
    json_name: "sharingWithGoogleAssignedSalesEnabled"

  field :sharing_with_google_any_sales_enabled, 4,
    type: :bool,
    json_name: "sharingWithGoogleAnySalesEnabled"

  field :sharing_with_google_products_enabled, 5,
    type: :bool,
    json_name: "sharingWithGoogleProductsEnabled"

  field :sharing_with_others_enabled, 6, type: :bool, json_name: "sharingWithOthersEnabled"

  def transform_module(), do: nil
end

defmodule Google.Analytics.Admin.V1alpha.AccountSummary do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          account: String.t(),
          display_name: String.t(),
          property_summaries: [Google.Analytics.Admin.V1alpha.PropertySummary.t()]
        }

  defstruct [:name, :account, :display_name, :property_summaries]

  field :name, 1, type: :string
  field :account, 2, type: :string
  field :display_name, 3, type: :string, json_name: "displayName"

  field :property_summaries, 4,
    repeated: true,
    type: Google.Analytics.Admin.V1alpha.PropertySummary,
    json_name: "propertySummaries"

  def transform_module(), do: nil
end

defmodule Google.Analytics.Admin.V1alpha.PropertySummary do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          property: String.t(),
          display_name: String.t()
        }

  defstruct [:property, :display_name]

  field :property, 1, type: :string
  field :display_name, 2, type: :string, json_name: "displayName"

  def transform_module(), do: nil
end

defmodule Google.Analytics.Admin.V1alpha.MeasurementProtocolSecret do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          display_name: String.t(),
          secret_value: String.t()
        }

  defstruct [:name, :display_name, :secret_value]

  field :name, 1, type: :string
  field :display_name, 2, type: :string, json_name: "displayName"
  field :secret_value, 3, type: :string, json_name: "secretValue"

  def transform_module(), do: nil
end

defmodule Google.Analytics.Admin.V1alpha.ChangeHistoryEvent do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          id: String.t(),
          change_time: Google.Protobuf.Timestamp.t() | nil,
          actor_type: Google.Analytics.Admin.V1alpha.ActorType.t(),
          user_actor_email: String.t(),
          changes_filtered: boolean,
          changes: [Google.Analytics.Admin.V1alpha.ChangeHistoryChange.t()]
        }

  defstruct [:id, :change_time, :actor_type, :user_actor_email, :changes_filtered, :changes]

  field :id, 1, type: :string
  field :change_time, 2, type: Google.Protobuf.Timestamp, json_name: "changeTime"

  field :actor_type, 3,
    type: Google.Analytics.Admin.V1alpha.ActorType,
    enum: true,
    json_name: "actorType"

  field :user_actor_email, 4, type: :string, json_name: "userActorEmail"
  field :changes_filtered, 5, type: :bool, json_name: "changesFiltered"
  field :changes, 6, repeated: true, type: Google.Analytics.Admin.V1alpha.ChangeHistoryChange

  def transform_module(), do: nil
end

defmodule Google.Analytics.Admin.V1alpha.ChangeHistoryChange.ChangeHistoryResource do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource:
            {:account, Google.Analytics.Admin.V1alpha.Account.t() | nil}
            | {:property, Google.Analytics.Admin.V1alpha.Property.t() | nil}
            | {:web_data_stream, Google.Analytics.Admin.V1alpha.WebDataStream.t() | nil}
            | {:android_app_data_stream,
               Google.Analytics.Admin.V1alpha.AndroidAppDataStream.t() | nil}
            | {:ios_app_data_stream, Google.Analytics.Admin.V1alpha.IosAppDataStream.t() | nil}
            | {:firebase_link, Google.Analytics.Admin.V1alpha.FirebaseLink.t() | nil}
            | {:google_ads_link, Google.Analytics.Admin.V1alpha.GoogleAdsLink.t() | nil}
            | {:google_signals_settings,
               Google.Analytics.Admin.V1alpha.GoogleSignalsSettings.t() | nil}
            | {:display_video_360_advertiser_link,
               Google.Analytics.Admin.V1alpha.DisplayVideo360AdvertiserLink.t() | nil}
            | {:display_video_360_advertiser_link_proposal,
               Google.Analytics.Admin.V1alpha.DisplayVideo360AdvertiserLinkProposal.t() | nil}
            | {:conversion_event, Google.Analytics.Admin.V1alpha.ConversionEvent.t() | nil}
            | {:measurement_protocol_secret,
               Google.Analytics.Admin.V1alpha.MeasurementProtocolSecret.t() | nil}
            | {:custom_dimension, Google.Analytics.Admin.V1alpha.CustomDimension.t() | nil}
            | {:custom_metric, Google.Analytics.Admin.V1alpha.CustomMetric.t() | nil}
            | {:data_retention_settings,
               Google.Analytics.Admin.V1alpha.DataRetentionSettings.t() | nil}
        }

  defstruct [:resource]

  oneof :resource, 0

  field :account, 1, type: Google.Analytics.Admin.V1alpha.Account, oneof: 0
  field :property, 2, type: Google.Analytics.Admin.V1alpha.Property, oneof: 0

  field :web_data_stream, 3,
    type: Google.Analytics.Admin.V1alpha.WebDataStream,
    json_name: "webDataStream",
    oneof: 0

  field :android_app_data_stream, 4,
    type: Google.Analytics.Admin.V1alpha.AndroidAppDataStream,
    json_name: "androidAppDataStream",
    oneof: 0

  field :ios_app_data_stream, 5,
    type: Google.Analytics.Admin.V1alpha.IosAppDataStream,
    json_name: "iosAppDataStream",
    oneof: 0

  field :firebase_link, 6,
    type: Google.Analytics.Admin.V1alpha.FirebaseLink,
    json_name: "firebaseLink",
    oneof: 0

  field :google_ads_link, 7,
    type: Google.Analytics.Admin.V1alpha.GoogleAdsLink,
    json_name: "googleAdsLink",
    oneof: 0

  field :google_signals_settings, 8,
    type: Google.Analytics.Admin.V1alpha.GoogleSignalsSettings,
    json_name: "googleSignalsSettings",
    oneof: 0

  field :display_video_360_advertiser_link, 9,
    type: Google.Analytics.Admin.V1alpha.DisplayVideo360AdvertiserLink,
    json_name: "displayVideo360AdvertiserLink",
    oneof: 0

  field :display_video_360_advertiser_link_proposal, 10,
    type: Google.Analytics.Admin.V1alpha.DisplayVideo360AdvertiserLinkProposal,
    json_name: "displayVideo360AdvertiserLinkProposal",
    oneof: 0

  field :conversion_event, 11,
    type: Google.Analytics.Admin.V1alpha.ConversionEvent,
    json_name: "conversionEvent",
    oneof: 0

  field :measurement_protocol_secret, 12,
    type: Google.Analytics.Admin.V1alpha.MeasurementProtocolSecret,
    json_name: "measurementProtocolSecret",
    oneof: 0

  field :custom_dimension, 13,
    type: Google.Analytics.Admin.V1alpha.CustomDimension,
    json_name: "customDimension",
    oneof: 0

  field :custom_metric, 14,
    type: Google.Analytics.Admin.V1alpha.CustomMetric,
    json_name: "customMetric",
    oneof: 0

  field :data_retention_settings, 15,
    type: Google.Analytics.Admin.V1alpha.DataRetentionSettings,
    json_name: "dataRetentionSettings",
    oneof: 0

  def transform_module(), do: nil
end

defmodule Google.Analytics.Admin.V1alpha.ChangeHistoryChange do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource: String.t(),
          action: Google.Analytics.Admin.V1alpha.ActionType.t(),
          resource_before_change:
            Google.Analytics.Admin.V1alpha.ChangeHistoryChange.ChangeHistoryResource.t() | nil,
          resource_after_change:
            Google.Analytics.Admin.V1alpha.ChangeHistoryChange.ChangeHistoryResource.t() | nil
        }

  defstruct [:resource, :action, :resource_before_change, :resource_after_change]

  field :resource, 1, type: :string
  field :action, 2, type: Google.Analytics.Admin.V1alpha.ActionType, enum: true

  field :resource_before_change, 3,
    type: Google.Analytics.Admin.V1alpha.ChangeHistoryChange.ChangeHistoryResource,
    json_name: "resourceBeforeChange"

  field :resource_after_change, 4,
    type: Google.Analytics.Admin.V1alpha.ChangeHistoryChange.ChangeHistoryResource,
    json_name: "resourceAfterChange"

  def transform_module(), do: nil
end

defmodule Google.Analytics.Admin.V1alpha.DisplayVideo360AdvertiserLink do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          advertiser_id: String.t(),
          advertiser_display_name: String.t(),
          ads_personalization_enabled: Google.Protobuf.BoolValue.t() | nil,
          campaign_data_sharing_enabled: Google.Protobuf.BoolValue.t() | nil,
          cost_data_sharing_enabled: Google.Protobuf.BoolValue.t() | nil
        }

  defstruct [
    :name,
    :advertiser_id,
    :advertiser_display_name,
    :ads_personalization_enabled,
    :campaign_data_sharing_enabled,
    :cost_data_sharing_enabled
  ]

  field :name, 1, type: :string
  field :advertiser_id, 2, type: :string, json_name: "advertiserId"
  field :advertiser_display_name, 3, type: :string, json_name: "advertiserDisplayName"

  field :ads_personalization_enabled, 4,
    type: Google.Protobuf.BoolValue,
    json_name: "adsPersonalizationEnabled"

  field :campaign_data_sharing_enabled, 5,
    type: Google.Protobuf.BoolValue,
    json_name: "campaignDataSharingEnabled"

  field :cost_data_sharing_enabled, 6,
    type: Google.Protobuf.BoolValue,
    json_name: "costDataSharingEnabled"

  def transform_module(), do: nil
end

defmodule Google.Analytics.Admin.V1alpha.DisplayVideo360AdvertiserLinkProposal do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          advertiser_id: String.t(),
          link_proposal_status_details:
            Google.Analytics.Admin.V1alpha.LinkProposalStatusDetails.t() | nil,
          advertiser_display_name: String.t(),
          validation_email: String.t(),
          ads_personalization_enabled: Google.Protobuf.BoolValue.t() | nil,
          campaign_data_sharing_enabled: Google.Protobuf.BoolValue.t() | nil,
          cost_data_sharing_enabled: Google.Protobuf.BoolValue.t() | nil
        }

  defstruct [
    :name,
    :advertiser_id,
    :link_proposal_status_details,
    :advertiser_display_name,
    :validation_email,
    :ads_personalization_enabled,
    :campaign_data_sharing_enabled,
    :cost_data_sharing_enabled
  ]

  field :name, 1, type: :string
  field :advertiser_id, 2, type: :string, json_name: "advertiserId"

  field :link_proposal_status_details, 3,
    type: Google.Analytics.Admin.V1alpha.LinkProposalStatusDetails,
    json_name: "linkProposalStatusDetails"

  field :advertiser_display_name, 4, type: :string, json_name: "advertiserDisplayName"
  field :validation_email, 5, type: :string, json_name: "validationEmail"

  field :ads_personalization_enabled, 6,
    type: Google.Protobuf.BoolValue,
    json_name: "adsPersonalizationEnabled"

  field :campaign_data_sharing_enabled, 7,
    type: Google.Protobuf.BoolValue,
    json_name: "campaignDataSharingEnabled"

  field :cost_data_sharing_enabled, 8,
    type: Google.Protobuf.BoolValue,
    json_name: "costDataSharingEnabled"

  def transform_module(), do: nil
end

defmodule Google.Analytics.Admin.V1alpha.LinkProposalStatusDetails do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          link_proposal_initiating_product:
            Google.Analytics.Admin.V1alpha.LinkProposalInitiatingProduct.t(),
          requestor_email: String.t(),
          link_proposal_state: Google.Analytics.Admin.V1alpha.LinkProposalState.t()
        }

  defstruct [:link_proposal_initiating_product, :requestor_email, :link_proposal_state]

  field :link_proposal_initiating_product, 1,
    type: Google.Analytics.Admin.V1alpha.LinkProposalInitiatingProduct,
    enum: true,
    json_name: "linkProposalInitiatingProduct"

  field :requestor_email, 2, type: :string, json_name: "requestorEmail"

  field :link_proposal_state, 3,
    type: Google.Analytics.Admin.V1alpha.LinkProposalState,
    enum: true,
    json_name: "linkProposalState"

  def transform_module(), do: nil
end

defmodule Google.Analytics.Admin.V1alpha.ConversionEvent do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          event_name: String.t(),
          create_time: Google.Protobuf.Timestamp.t() | nil,
          deletable: boolean,
          custom: boolean
        }

  defstruct [:name, :event_name, :create_time, :deletable, :custom]

  field :name, 1, type: :string
  field :event_name, 2, type: :string, json_name: "eventName"
  field :create_time, 3, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :deletable, 4, type: :bool
  field :custom, 5, type: :bool

  def transform_module(), do: nil
end

defmodule Google.Analytics.Admin.V1alpha.GoogleSignalsSettings do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          state: Google.Analytics.Admin.V1alpha.GoogleSignalsState.t(),
          consent: Google.Analytics.Admin.V1alpha.GoogleSignalsConsent.t()
        }

  defstruct [:name, :state, :consent]

  field :name, 1, type: :string
  field :state, 3, type: Google.Analytics.Admin.V1alpha.GoogleSignalsState, enum: true
  field :consent, 4, type: Google.Analytics.Admin.V1alpha.GoogleSignalsConsent, enum: true

  def transform_module(), do: nil
end

defmodule Google.Analytics.Admin.V1alpha.CustomDimension do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          parameter_name: String.t(),
          display_name: String.t(),
          description: String.t(),
          scope: Google.Analytics.Admin.V1alpha.CustomDimension.DimensionScope.t(),
          disallow_ads_personalization: boolean
        }

  defstruct [
    :name,
    :parameter_name,
    :display_name,
    :description,
    :scope,
    :disallow_ads_personalization
  ]

  field :name, 1, type: :string
  field :parameter_name, 2, type: :string, json_name: "parameterName"
  field :display_name, 3, type: :string, json_name: "displayName"
  field :description, 4, type: :string
  field :scope, 5, type: Google.Analytics.Admin.V1alpha.CustomDimension.DimensionScope, enum: true
  field :disallow_ads_personalization, 6, type: :bool, json_name: "disallowAdsPersonalization"

  def transform_module(), do: nil
end

defmodule Google.Analytics.Admin.V1alpha.CustomMetric do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          parameter_name: String.t(),
          display_name: String.t(),
          description: String.t(),
          measurement_unit: Google.Analytics.Admin.V1alpha.CustomMetric.MeasurementUnit.t(),
          scope: Google.Analytics.Admin.V1alpha.CustomMetric.MetricScope.t()
        }

  defstruct [:name, :parameter_name, :display_name, :description, :measurement_unit, :scope]

  field :name, 1, type: :string
  field :parameter_name, 2, type: :string, json_name: "parameterName"
  field :display_name, 3, type: :string, json_name: "displayName"
  field :description, 4, type: :string

  field :measurement_unit, 5,
    type: Google.Analytics.Admin.V1alpha.CustomMetric.MeasurementUnit,
    enum: true,
    json_name: "measurementUnit"

  field :scope, 6, type: Google.Analytics.Admin.V1alpha.CustomMetric.MetricScope, enum: true

  def transform_module(), do: nil
end

defmodule Google.Analytics.Admin.V1alpha.DataRetentionSettings do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          event_data_retention:
            Google.Analytics.Admin.V1alpha.DataRetentionSettings.RetentionDuration.t(),
          reset_user_data_on_new_activity: boolean
        }

  defstruct [:name, :event_data_retention, :reset_user_data_on_new_activity]

  field :name, 1, type: :string

  field :event_data_retention, 2,
    type: Google.Analytics.Admin.V1alpha.DataRetentionSettings.RetentionDuration,
    enum: true,
    json_name: "eventDataRetention"

  field :reset_user_data_on_new_activity, 3, type: :bool, json_name: "resetUserDataOnNewActivity"

  def transform_module(), do: nil
end
