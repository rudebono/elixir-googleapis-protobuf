defmodule Google.Cloud.Channel.V1.Customer.CustomerAttestationState do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :CUSTOMER_ATTESTATION_STATE_UNSPECIFIED, 0
  field :EXEMPT, 1
  field :NON_EXEMPT_AND_INFO_VERIFIED, 2
end

defmodule Google.Cloud.Channel.V1.Customer do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :org_display_name, 2, type: :string, json_name: "orgDisplayName", deprecated: false

  field :org_postal_address, 3,
    type: Google.Type.PostalAddress,
    json_name: "orgPostalAddress",
    deprecated: false

  field :primary_contact_info, 4,
    type: Google.Cloud.Channel.V1.ContactInfo,
    json_name: "primaryContactInfo"

  field :alternate_email, 5, type: :string, json_name: "alternateEmail"
  field :domain, 6, type: :string, deprecated: false

  field :create_time, 7,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 8,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :cloud_identity_id, 9, type: :string, json_name: "cloudIdentityId", deprecated: false
  field :language_code, 10, type: :string, json_name: "languageCode", deprecated: false

  field :cloud_identity_info, 12,
    type: Google.Cloud.Channel.V1.CloudIdentityInfo,
    json_name: "cloudIdentityInfo",
    deprecated: false

  field :channel_partner_id, 13, type: :string, json_name: "channelPartnerId"
  field :correlation_id, 14, type: :string, json_name: "correlationId", deprecated: false

  field :customer_attestation_state, 16,
    type: Google.Cloud.Channel.V1.Customer.CustomerAttestationState,
    json_name: "customerAttestationState",
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Channel.V1.ContactInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :first_name, 1, type: :string, json_name: "firstName"
  field :last_name, 2, type: :string, json_name: "lastName"
  field :display_name, 4, type: :string, json_name: "displayName", deprecated: false
  field :email, 5, type: :string
  field :title, 6, type: :string, deprecated: false
  field :phone, 7, type: :string
end
