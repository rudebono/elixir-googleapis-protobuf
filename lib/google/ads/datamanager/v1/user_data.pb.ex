defmodule Google.Ads.Datamanager.V1.UserData do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :user_identifiers, 1,
    repeated: true,
    type: Google.Ads.Datamanager.V1.UserIdentifier,
    json_name: "userIdentifiers",
    deprecated: false
end

defmodule Google.Ads.Datamanager.V1.UserIdentifier do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :identifier, 0

  field :email_address, 1, type: :string, json_name: "emailAddress", oneof: 0
  field :phone_number, 2, type: :string, json_name: "phoneNumber", oneof: 0
  field :address, 3, type: Google.Ads.Datamanager.V1.AddressInfo, oneof: 0
end

defmodule Google.Ads.Datamanager.V1.AddressInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :given_name, 1, type: :string, json_name: "givenName", deprecated: false
  field :family_name, 2, type: :string, json_name: "familyName", deprecated: false
  field :region_code, 3, type: :string, json_name: "regionCode", deprecated: false
  field :postal_code, 4, type: :string, json_name: "postalCode", deprecated: false
end
