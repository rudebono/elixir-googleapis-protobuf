defmodule Google.Ads.Datamanager.V1.EventSource do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :EVENT_SOURCE_UNSPECIFIED, 0
  field :WEB, 1
  field :APP, 2
  field :IN_STORE, 3
  field :PHONE, 4
  field :OTHER, 5
end

defmodule Google.Ads.Datamanager.V1.Event do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :destination_references, 1,
    repeated: true,
    type: :string,
    json_name: "destinationReferences",
    deprecated: false

  field :transaction_id, 2, type: :string, json_name: "transactionId", deprecated: false

  field :event_timestamp, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "eventTimestamp",
    deprecated: false

  field :last_updated_timestamp, 4,
    type: Google.Protobuf.Timestamp,
    json_name: "lastUpdatedTimestamp",
    deprecated: false

  field :user_data, 5,
    type: Google.Ads.Datamanager.V1.UserData,
    json_name: "userData",
    deprecated: false

  field :consent, 6, type: Google.Ads.Datamanager.V1.Consent, deprecated: false

  field :ad_identifiers, 7,
    type: Google.Ads.Datamanager.V1.AdIdentifiers,
    json_name: "adIdentifiers",
    deprecated: false

  field :currency, 8, type: :string, deprecated: false
  field :conversion_value, 9, type: :double, json_name: "conversionValue", deprecated: false

  field :event_source, 10,
    type: Google.Ads.Datamanager.V1.EventSource,
    json_name: "eventSource",
    enum: true,
    deprecated: false

  field :event_device_info, 11,
    type: Google.Ads.Datamanager.V1.DeviceInfo,
    json_name: "eventDeviceInfo",
    deprecated: false

  field :cart_data, 12,
    type: Google.Ads.Datamanager.V1.CartData,
    json_name: "cartData",
    deprecated: false

  field :custom_variables, 13,
    repeated: true,
    type: Google.Ads.Datamanager.V1.CustomVariable,
    json_name: "customVariables",
    deprecated: false

  field :experimental_fields, 14,
    repeated: true,
    type: Google.Ads.Datamanager.V1.ExperimentalField,
    json_name: "experimentalFields",
    deprecated: false

  field :user_properties, 15,
    type: Google.Ads.Datamanager.V1.UserProperties,
    json_name: "userProperties",
    deprecated: false
end

defmodule Google.Ads.Datamanager.V1.AdIdentifiers do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :session_attributes, 1, type: :string, json_name: "sessionAttributes", deprecated: false
  field :gclid, 2, type: :string, deprecated: false
  field :gbraid, 3, type: :string, deprecated: false
  field :wbraid, 4, type: :string, deprecated: false

  field :landing_page_device_info, 5,
    type: Google.Ads.Datamanager.V1.DeviceInfo,
    json_name: "landingPageDeviceInfo",
    deprecated: false
end

defmodule Google.Ads.Datamanager.V1.CustomVariable do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :variable, 1, type: :string, deprecated: false
  field :value, 2, type: :string, deprecated: false

  field :destination_references, 3,
    repeated: true,
    type: :string,
    json_name: "destinationReferences",
    deprecated: false
end
