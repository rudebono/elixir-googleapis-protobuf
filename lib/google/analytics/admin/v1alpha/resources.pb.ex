defmodule Google.Analytics.Admin.V1alpha.MaximumUserAccess do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :MAXIMUM_USER_ACCESS_UNSPECIFIED
          | :NO_ACCESS
          | :READ_AND_ANALYZE
          | :EDITOR_WITHOUT_LINK_MANAGEMENT
          | :EDITOR_INCLUDING_LINK_MANAGEMENT

  field :MAXIMUM_USER_ACCESS_UNSPECIFIED, 0

  field :NO_ACCESS, 1

  field :READ_AND_ANALYZE, 2

  field :EDITOR_WITHOUT_LINK_MANAGEMENT, 3

  field :EDITOR_INCLUDING_LINK_MANAGEMENT, 4
end

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
  field :create_time, 2, type: Google.Protobuf.Timestamp
  field :update_time, 3, type: Google.Protobuf.Timestamp
  field :display_name, 4, type: :string
  field :region_code, 5, type: :string
  field :deleted, 6, type: :bool
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
    :delete_time,
    :expire_time
  ]

  field :name, 1, type: :string
  field :create_time, 3, type: Google.Protobuf.Timestamp
  field :update_time, 4, type: Google.Protobuf.Timestamp
  field :parent, 2, type: :string
  field :display_name, 5, type: :string
  field :industry_category, 6, type: Google.Analytics.Admin.V1alpha.IndustryCategory, enum: true
  field :time_zone, 7, type: :string
  field :currency_code, 8, type: :string
  field :delete_time, 11, type: Google.Protobuf.Timestamp
  field :expire_time, 12, type: Google.Protobuf.Timestamp
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
  field :firebase_app_id, 2, type: :string
  field :create_time, 3, type: Google.Protobuf.Timestamp
  field :update_time, 4, type: Google.Protobuf.Timestamp
  field :package_name, 5, type: :string
  field :display_name, 6, type: :string
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
  field :firebase_app_id, 2, type: :string
  field :create_time, 3, type: Google.Protobuf.Timestamp
  field :update_time, 4, type: Google.Protobuf.Timestamp
  field :bundle_id, 5, type: :string
  field :display_name, 6, type: :string
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
  field :measurement_id, 2, type: :string
  field :firebase_app_id, 3, type: :string
  field :create_time, 4, type: Google.Protobuf.Timestamp
  field :update_time, 5, type: Google.Protobuf.Timestamp
  field :default_uri, 6, type: :string
  field :display_name, 7, type: :string
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
  field :email_address, 2, type: :string
  field :direct_roles, 3, repeated: true, type: :string
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
  field :email_address, 2, type: :string
  field :direct_roles, 3, repeated: true, type: :string
  field :effective_roles, 4, repeated: true, type: :string
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
  field :stream_enabled, 2, type: :bool
  field :page_views_enabled, 3, type: :bool
  field :scrolls_enabled, 4, type: :bool
  field :outbound_clicks_enabled, 5, type: :bool
  field :site_search_enabled, 7, type: :bool
  field :video_engagement_enabled, 9, type: :bool
  field :file_downloads_enabled, 10, type: :bool
  field :page_loads_enabled, 12, type: :bool
  field :page_changes_enabled, 13, type: :bool
  field :search_query_parameter, 16, type: :string
  field :uri_query_parameter, 17, type: :string
end

defmodule Google.Analytics.Admin.V1alpha.FirebaseLink do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          project: String.t(),
          create_time: Google.Protobuf.Timestamp.t() | nil,
          maximum_user_access: Google.Analytics.Admin.V1alpha.MaximumUserAccess.t()
        }

  defstruct [:name, :project, :create_time, :maximum_user_access]

  field :name, 1, type: :string
  field :project, 2, type: :string
  field :create_time, 3, type: Google.Protobuf.Timestamp

  field :maximum_user_access, 4,
    type: Google.Analytics.Admin.V1alpha.MaximumUserAccess,
    enum: true
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
end

defmodule Google.Analytics.Admin.V1alpha.GoogleAdsLink do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          customer_id: String.t(),
          can_manage_clients: boolean,
          ads_personalization_enabled: Google.Protobuf.BoolValue.t() | nil,
          email_address: String.t(),
          create_time: Google.Protobuf.Timestamp.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct [
    :name,
    :customer_id,
    :can_manage_clients,
    :ads_personalization_enabled,
    :email_address,
    :create_time,
    :update_time
  ]

  field :name, 1, type: :string
  field :customer_id, 3, type: :string
  field :can_manage_clients, 4, type: :bool
  field :ads_personalization_enabled, 5, type: Google.Protobuf.BoolValue
  field :email_address, 6, type: :string
  field :create_time, 7, type: Google.Protobuf.Timestamp
  field :update_time, 8, type: Google.Protobuf.Timestamp
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
  field :sharing_with_google_support_enabled, 2, type: :bool
  field :sharing_with_google_assigned_sales_enabled, 3, type: :bool
  field :sharing_with_google_any_sales_enabled, 4, type: :bool
  field :sharing_with_google_products_enabled, 5, type: :bool
  field :sharing_with_others_enabled, 6, type: :bool
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
  field :display_name, 3, type: :string

  field :property_summaries, 4,
    repeated: true,
    type: Google.Analytics.Admin.V1alpha.PropertySummary
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
  field :display_name, 2, type: :string
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
  field :display_name, 2, type: :string
  field :secret_value, 3, type: :string
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
  field :change_time, 2, type: Google.Protobuf.Timestamp
  field :actor_type, 3, type: Google.Analytics.Admin.V1alpha.ActorType, enum: true
  field :user_actor_email, 4, type: :string
  field :changes_filtered, 5, type: :bool
  field :changes, 6, repeated: true, type: Google.Analytics.Admin.V1alpha.ChangeHistoryChange
end

defmodule Google.Analytics.Admin.V1alpha.ChangeHistoryChange.ChangeHistoryResource do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource: {atom, any}
        }

  defstruct [:resource]

  oneof :resource, 0
  field :account, 1, type: Google.Analytics.Admin.V1alpha.Account, oneof: 0
  field :property, 2, type: Google.Analytics.Admin.V1alpha.Property, oneof: 0
  field :web_data_stream, 3, type: Google.Analytics.Admin.V1alpha.WebDataStream, oneof: 0

  field :android_app_data_stream, 4,
    type: Google.Analytics.Admin.V1alpha.AndroidAppDataStream,
    oneof: 0

  field :ios_app_data_stream, 5, type: Google.Analytics.Admin.V1alpha.IosAppDataStream, oneof: 0
  field :firebase_link, 6, type: Google.Analytics.Admin.V1alpha.FirebaseLink, oneof: 0
  field :google_ads_link, 7, type: Google.Analytics.Admin.V1alpha.GoogleAdsLink, oneof: 0

  field :google_signals_settings, 8,
    type: Google.Analytics.Admin.V1alpha.GoogleSignalsSettings,
    oneof: 0

  field :conversion_event, 11, type: Google.Analytics.Admin.V1alpha.ConversionEvent, oneof: 0

  field :measurement_protocol_secret, 12,
    type: Google.Analytics.Admin.V1alpha.MeasurementProtocolSecret,
    oneof: 0

  field :custom_dimension, 13, type: Google.Analytics.Admin.V1alpha.CustomDimension, oneof: 0
  field :custom_metric, 14, type: Google.Analytics.Admin.V1alpha.CustomMetric, oneof: 0
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
    type: Google.Analytics.Admin.V1alpha.ChangeHistoryChange.ChangeHistoryResource

  field :resource_after_change, 4,
    type: Google.Analytics.Admin.V1alpha.ChangeHistoryChange.ChangeHistoryResource
end

defmodule Google.Analytics.Admin.V1alpha.ConversionEvent do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          event_name: String.t(),
          create_time: Google.Protobuf.Timestamp.t() | nil,
          is_deletable: boolean
        }

  defstruct [:name, :event_name, :create_time, :is_deletable]

  field :name, 1, type: :string
  field :event_name, 2, type: :string
  field :create_time, 3, type: Google.Protobuf.Timestamp
  field :is_deletable, 4, type: :bool
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
  field :parameter_name, 2, type: :string
  field :display_name, 3, type: :string
  field :description, 4, type: :string
  field :scope, 5, type: Google.Analytics.Admin.V1alpha.CustomDimension.DimensionScope, enum: true
  field :disallow_ads_personalization, 6, type: :bool
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
  field :parameter_name, 2, type: :string
  field :display_name, 3, type: :string
  field :description, 4, type: :string

  field :measurement_unit, 5,
    type: Google.Analytics.Admin.V1alpha.CustomMetric.MeasurementUnit,
    enum: true

  field :scope, 6, type: Google.Analytics.Admin.V1alpha.CustomMetric.MetricScope, enum: true
end
