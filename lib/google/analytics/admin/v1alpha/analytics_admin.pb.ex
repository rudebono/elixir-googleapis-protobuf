defmodule Google.Analytics.Admin.V1alpha.GetAccountRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Analytics.Admin.V1alpha.ListAccountsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          page_size: integer,
          page_token: String.t(),
          show_deleted: boolean
        }

  defstruct [:page_size, :page_token, :show_deleted]

  field :page_size, 1, type: :int32
  field :page_token, 2, type: :string
  field :show_deleted, 3, type: :bool
end

defmodule Google.Analytics.Admin.V1alpha.ListAccountsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          accounts: [Google.Analytics.Admin.V1alpha.Account.t()],
          next_page_token: String.t()
        }

  defstruct [:accounts, :next_page_token]

  field :accounts, 1, repeated: true, type: Google.Analytics.Admin.V1alpha.Account
  field :next_page_token, 2, type: :string
end

defmodule Google.Analytics.Admin.V1alpha.DeleteAccountRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Analytics.Admin.V1alpha.UpdateAccountRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          account: Google.Analytics.Admin.V1alpha.Account.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:account, :update_mask]

  field :account, 1, type: Google.Analytics.Admin.V1alpha.Account
  field :update_mask, 2, type: Google.Protobuf.FieldMask
end

defmodule Google.Analytics.Admin.V1alpha.ProvisionAccountTicketRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          account: Google.Analytics.Admin.V1alpha.Account.t() | nil,
          redirect_uri: String.t()
        }

  defstruct [:account, :redirect_uri]

  field :account, 1, type: Google.Analytics.Admin.V1alpha.Account
  field :redirect_uri, 2, type: :string
end

defmodule Google.Analytics.Admin.V1alpha.ProvisionAccountTicketResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          account_ticket_id: String.t()
        }

  defstruct [:account_ticket_id]

  field :account_ticket_id, 1, type: :string
end

defmodule Google.Analytics.Admin.V1alpha.GetPropertyRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Analytics.Admin.V1alpha.ListPropertiesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          filter: String.t(),
          page_size: integer,
          page_token: String.t(),
          show_deleted: boolean
        }

  defstruct [:filter, :page_size, :page_token, :show_deleted]

  field :filter, 1, type: :string
  field :page_size, 2, type: :int32
  field :page_token, 3, type: :string
  field :show_deleted, 4, type: :bool
end

defmodule Google.Analytics.Admin.V1alpha.ListPropertiesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          properties: [Google.Analytics.Admin.V1alpha.Property.t()],
          next_page_token: String.t()
        }

  defstruct [:properties, :next_page_token]

  field :properties, 1, repeated: true, type: Google.Analytics.Admin.V1alpha.Property
  field :next_page_token, 2, type: :string
end

defmodule Google.Analytics.Admin.V1alpha.UpdatePropertyRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          property: Google.Analytics.Admin.V1alpha.Property.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:property, :update_mask]

  field :property, 1, type: Google.Analytics.Admin.V1alpha.Property
  field :update_mask, 2, type: Google.Protobuf.FieldMask
end

defmodule Google.Analytics.Admin.V1alpha.CreatePropertyRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          property: Google.Analytics.Admin.V1alpha.Property.t() | nil
        }

  defstruct [:property]

  field :property, 1, type: Google.Analytics.Admin.V1alpha.Property
end

defmodule Google.Analytics.Admin.V1alpha.DeletePropertyRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Analytics.Admin.V1alpha.GetUserLinkRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Analytics.Admin.V1alpha.BatchGetUserLinksRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          names: [String.t()]
        }

  defstruct [:parent, :names]

  field :parent, 1, type: :string
  field :names, 2, repeated: true, type: :string
end

defmodule Google.Analytics.Admin.V1alpha.BatchGetUserLinksResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          user_links: [Google.Analytics.Admin.V1alpha.UserLink.t()]
        }

  defstruct [:user_links]

  field :user_links, 1, repeated: true, type: Google.Analytics.Admin.V1alpha.UserLink
end

defmodule Google.Analytics.Admin.V1alpha.ListUserLinksRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct [:parent, :page_size, :page_token]

  field :parent, 1, type: :string
  field :page_size, 2, type: :int32
  field :page_token, 3, type: :string
end

defmodule Google.Analytics.Admin.V1alpha.ListUserLinksResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          user_links: [Google.Analytics.Admin.V1alpha.UserLink.t()],
          next_page_token: String.t()
        }

  defstruct [:user_links, :next_page_token]

  field :user_links, 1, repeated: true, type: Google.Analytics.Admin.V1alpha.UserLink
  field :next_page_token, 2, type: :string
end

defmodule Google.Analytics.Admin.V1alpha.AuditUserLinksRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct [:parent, :page_size, :page_token]

  field :parent, 1, type: :string
  field :page_size, 2, type: :int32
  field :page_token, 3, type: :string
end

defmodule Google.Analytics.Admin.V1alpha.AuditUserLinksResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          user_links: [Google.Analytics.Admin.V1alpha.AuditUserLink.t()],
          next_page_token: String.t()
        }

  defstruct [:user_links, :next_page_token]

  field :user_links, 1, repeated: true, type: Google.Analytics.Admin.V1alpha.AuditUserLink
  field :next_page_token, 2, type: :string
end

defmodule Google.Analytics.Admin.V1alpha.CreateUserLinkRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          notify_new_user: boolean,
          user_link: Google.Analytics.Admin.V1alpha.UserLink.t() | nil
        }

  defstruct [:parent, :notify_new_user, :user_link]

  field :parent, 1, type: :string
  field :notify_new_user, 2, type: :bool
  field :user_link, 3, type: Google.Analytics.Admin.V1alpha.UserLink
end

defmodule Google.Analytics.Admin.V1alpha.BatchCreateUserLinksRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          notify_new_users: boolean,
          requests: [Google.Analytics.Admin.V1alpha.CreateUserLinkRequest.t()]
        }

  defstruct [:parent, :notify_new_users, :requests]

  field :parent, 1, type: :string
  field :notify_new_users, 2, type: :bool
  field :requests, 3, repeated: true, type: Google.Analytics.Admin.V1alpha.CreateUserLinkRequest
end

defmodule Google.Analytics.Admin.V1alpha.BatchCreateUserLinksResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          user_links: [Google.Analytics.Admin.V1alpha.UserLink.t()]
        }

  defstruct [:user_links]

  field :user_links, 1, repeated: true, type: Google.Analytics.Admin.V1alpha.UserLink
end

defmodule Google.Analytics.Admin.V1alpha.UpdateUserLinkRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          user_link: Google.Analytics.Admin.V1alpha.UserLink.t() | nil
        }

  defstruct [:user_link]

  field :user_link, 1, type: Google.Analytics.Admin.V1alpha.UserLink
end

defmodule Google.Analytics.Admin.V1alpha.BatchUpdateUserLinksRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          requests: [Google.Analytics.Admin.V1alpha.UpdateUserLinkRequest.t()]
        }

  defstruct [:parent, :requests]

  field :parent, 1, type: :string
  field :requests, 2, repeated: true, type: Google.Analytics.Admin.V1alpha.UpdateUserLinkRequest
end

defmodule Google.Analytics.Admin.V1alpha.BatchUpdateUserLinksResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          user_links: [Google.Analytics.Admin.V1alpha.UserLink.t()]
        }

  defstruct [:user_links]

  field :user_links, 1, repeated: true, type: Google.Analytics.Admin.V1alpha.UserLink
end

defmodule Google.Analytics.Admin.V1alpha.DeleteUserLinkRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Analytics.Admin.V1alpha.BatchDeleteUserLinksRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          requests: [Google.Analytics.Admin.V1alpha.DeleteUserLinkRequest.t()]
        }

  defstruct [:parent, :requests]

  field :parent, 1, type: :string
  field :requests, 2, repeated: true, type: Google.Analytics.Admin.V1alpha.DeleteUserLinkRequest
end

defmodule Google.Analytics.Admin.V1alpha.GetWebDataStreamRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Analytics.Admin.V1alpha.DeleteWebDataStreamRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Analytics.Admin.V1alpha.UpdateWebDataStreamRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          web_data_stream: Google.Analytics.Admin.V1alpha.WebDataStream.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:web_data_stream, :update_mask]

  field :web_data_stream, 1, type: Google.Analytics.Admin.V1alpha.WebDataStream
  field :update_mask, 2, type: Google.Protobuf.FieldMask
end

defmodule Google.Analytics.Admin.V1alpha.CreateWebDataStreamRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          web_data_stream: Google.Analytics.Admin.V1alpha.WebDataStream.t() | nil,
          parent: String.t()
        }

  defstruct [:web_data_stream, :parent]

  field :web_data_stream, 1, type: Google.Analytics.Admin.V1alpha.WebDataStream
  field :parent, 2, type: :string
end

defmodule Google.Analytics.Admin.V1alpha.ListWebDataStreamsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct [:parent, :page_size, :page_token]

  field :parent, 1, type: :string
  field :page_size, 2, type: :int32
  field :page_token, 3, type: :string
end

defmodule Google.Analytics.Admin.V1alpha.ListWebDataStreamsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          web_data_streams: [Google.Analytics.Admin.V1alpha.WebDataStream.t()],
          next_page_token: String.t()
        }

  defstruct [:web_data_streams, :next_page_token]

  field :web_data_streams, 1, repeated: true, type: Google.Analytics.Admin.V1alpha.WebDataStream
  field :next_page_token, 2, type: :string
end

defmodule Google.Analytics.Admin.V1alpha.GetIosAppDataStreamRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Analytics.Admin.V1alpha.DeleteIosAppDataStreamRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Analytics.Admin.V1alpha.UpdateIosAppDataStreamRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          ios_app_data_stream: Google.Analytics.Admin.V1alpha.IosAppDataStream.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:ios_app_data_stream, :update_mask]

  field :ios_app_data_stream, 1, type: Google.Analytics.Admin.V1alpha.IosAppDataStream
  field :update_mask, 2, type: Google.Protobuf.FieldMask
end

defmodule Google.Analytics.Admin.V1alpha.ListIosAppDataStreamsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct [:parent, :page_size, :page_token]

  field :parent, 1, type: :string
  field :page_size, 2, type: :int32
  field :page_token, 3, type: :string
end

defmodule Google.Analytics.Admin.V1alpha.ListIosAppDataStreamsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          ios_app_data_streams: [Google.Analytics.Admin.V1alpha.IosAppDataStream.t()],
          next_page_token: String.t()
        }

  defstruct [:ios_app_data_streams, :next_page_token]

  field :ios_app_data_streams, 1,
    repeated: true,
    type: Google.Analytics.Admin.V1alpha.IosAppDataStream

  field :next_page_token, 2, type: :string
end

defmodule Google.Analytics.Admin.V1alpha.GetAndroidAppDataStreamRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Analytics.Admin.V1alpha.DeleteAndroidAppDataStreamRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Analytics.Admin.V1alpha.UpdateAndroidAppDataStreamRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          android_app_data_stream: Google.Analytics.Admin.V1alpha.AndroidAppDataStream.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:android_app_data_stream, :update_mask]

  field :android_app_data_stream, 1, type: Google.Analytics.Admin.V1alpha.AndroidAppDataStream
  field :update_mask, 2, type: Google.Protobuf.FieldMask
end

defmodule Google.Analytics.Admin.V1alpha.ListAndroidAppDataStreamsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct [:parent, :page_size, :page_token]

  field :parent, 1, type: :string
  field :page_size, 2, type: :int32
  field :page_token, 3, type: :string
end

defmodule Google.Analytics.Admin.V1alpha.ListAndroidAppDataStreamsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          android_app_data_streams: [Google.Analytics.Admin.V1alpha.AndroidAppDataStream.t()],
          next_page_token: String.t()
        }

  defstruct [:android_app_data_streams, :next_page_token]

  field :android_app_data_streams, 1,
    repeated: true,
    type: Google.Analytics.Admin.V1alpha.AndroidAppDataStream

  field :next_page_token, 2, type: :string
end

defmodule Google.Analytics.Admin.V1alpha.GetEnhancedMeasurementSettingsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Analytics.Admin.V1alpha.UpdateEnhancedMeasurementSettingsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          enhanced_measurement_settings:
            Google.Analytics.Admin.V1alpha.EnhancedMeasurementSettings.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:enhanced_measurement_settings, :update_mask]

  field :enhanced_measurement_settings, 1,
    type: Google.Analytics.Admin.V1alpha.EnhancedMeasurementSettings

  field :update_mask, 2, type: Google.Protobuf.FieldMask
end

defmodule Google.Analytics.Admin.V1alpha.CreateFirebaseLinkRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          firebase_link: Google.Analytics.Admin.V1alpha.FirebaseLink.t() | nil
        }

  defstruct [:parent, :firebase_link]

  field :parent, 1, type: :string
  field :firebase_link, 2, type: Google.Analytics.Admin.V1alpha.FirebaseLink
end

defmodule Google.Analytics.Admin.V1alpha.UpdateFirebaseLinkRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          firebase_link: Google.Analytics.Admin.V1alpha.FirebaseLink.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:firebase_link, :update_mask]

  field :firebase_link, 1, type: Google.Analytics.Admin.V1alpha.FirebaseLink
  field :update_mask, 2, type: Google.Protobuf.FieldMask
end

defmodule Google.Analytics.Admin.V1alpha.DeleteFirebaseLinkRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Analytics.Admin.V1alpha.ListFirebaseLinksRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct [:parent, :page_size, :page_token]

  field :parent, 1, type: :string
  field :page_size, 2, type: :int32
  field :page_token, 3, type: :string
end

defmodule Google.Analytics.Admin.V1alpha.ListFirebaseLinksResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          firebase_links: [Google.Analytics.Admin.V1alpha.FirebaseLink.t()],
          next_page_token: String.t()
        }

  defstruct [:firebase_links, :next_page_token]

  field :firebase_links, 1, repeated: true, type: Google.Analytics.Admin.V1alpha.FirebaseLink
  field :next_page_token, 2, type: :string
end

defmodule Google.Analytics.Admin.V1alpha.GetGlobalSiteTagRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Analytics.Admin.V1alpha.CreateGoogleAdsLinkRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          google_ads_link: Google.Analytics.Admin.V1alpha.GoogleAdsLink.t() | nil
        }

  defstruct [:parent, :google_ads_link]

  field :parent, 1, type: :string
  field :google_ads_link, 2, type: Google.Analytics.Admin.V1alpha.GoogleAdsLink
end

defmodule Google.Analytics.Admin.V1alpha.UpdateGoogleAdsLinkRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          google_ads_link: Google.Analytics.Admin.V1alpha.GoogleAdsLink.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:google_ads_link, :update_mask]

  field :google_ads_link, 1, type: Google.Analytics.Admin.V1alpha.GoogleAdsLink
  field :update_mask, 2, type: Google.Protobuf.FieldMask
end

defmodule Google.Analytics.Admin.V1alpha.DeleteGoogleAdsLinkRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Analytics.Admin.V1alpha.ListGoogleAdsLinksRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct [:parent, :page_size, :page_token]

  field :parent, 1, type: :string
  field :page_size, 2, type: :int32
  field :page_token, 3, type: :string
end

defmodule Google.Analytics.Admin.V1alpha.ListGoogleAdsLinksResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          google_ads_links: [Google.Analytics.Admin.V1alpha.GoogleAdsLink.t()],
          next_page_token: String.t()
        }

  defstruct [:google_ads_links, :next_page_token]

  field :google_ads_links, 1, repeated: true, type: Google.Analytics.Admin.V1alpha.GoogleAdsLink
  field :next_page_token, 2, type: :string
end

defmodule Google.Analytics.Admin.V1alpha.GetDataSharingSettingsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Analytics.Admin.V1alpha.ListAccountSummariesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          page_size: integer,
          page_token: String.t()
        }

  defstruct [:page_size, :page_token]

  field :page_size, 1, type: :int32
  field :page_token, 2, type: :string
end

defmodule Google.Analytics.Admin.V1alpha.ListAccountSummariesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          account_summaries: [Google.Analytics.Admin.V1alpha.AccountSummary.t()],
          next_page_token: String.t()
        }

  defstruct [:account_summaries, :next_page_token]

  field :account_summaries, 1, repeated: true, type: Google.Analytics.Admin.V1alpha.AccountSummary
  field :next_page_token, 2, type: :string
end

defmodule Google.Analytics.Admin.V1alpha.SearchChangeHistoryEventsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          account: String.t(),
          property: String.t(),
          resource_type: [[Google.Analytics.Admin.V1alpha.ChangeHistoryResourceType.t()]],
          action: [[Google.Analytics.Admin.V1alpha.ActionType.t()]],
          actor_email: [String.t()],
          earliest_change_time: Google.Protobuf.Timestamp.t() | nil,
          latest_change_time: Google.Protobuf.Timestamp.t() | nil,
          page_size: integer,
          page_token: String.t()
        }

  defstruct [
    :account,
    :property,
    :resource_type,
    :action,
    :actor_email,
    :earliest_change_time,
    :latest_change_time,
    :page_size,
    :page_token
  ]

  field :account, 1, type: :string
  field :property, 2, type: :string

  field :resource_type, 3,
    repeated: true,
    type: Google.Analytics.Admin.V1alpha.ChangeHistoryResourceType,
    enum: true

  field :action, 4, repeated: true, type: Google.Analytics.Admin.V1alpha.ActionType, enum: true
  field :actor_email, 5, repeated: true, type: :string
  field :earliest_change_time, 6, type: Google.Protobuf.Timestamp
  field :latest_change_time, 7, type: Google.Protobuf.Timestamp
  field :page_size, 8, type: :int32
  field :page_token, 9, type: :string
end

defmodule Google.Analytics.Admin.V1alpha.SearchChangeHistoryEventsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          change_history_events: [Google.Analytics.Admin.V1alpha.ChangeHistoryEvent.t()],
          next_page_token: String.t()
        }

  defstruct [:change_history_events, :next_page_token]

  field :change_history_events, 1,
    repeated: true,
    type: Google.Analytics.Admin.V1alpha.ChangeHistoryEvent

  field :next_page_token, 2, type: :string
end
