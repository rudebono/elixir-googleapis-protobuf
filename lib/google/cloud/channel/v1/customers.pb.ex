defmodule Google.Cloud.Channel.V1.Customer do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          org_display_name: String.t(),
          org_postal_address: Google.Type.PostalAddress.t() | nil,
          primary_contact_info: Google.Cloud.Channel.V1.ContactInfo.t() | nil,
          alternate_email: String.t(),
          domain: String.t(),
          create_time: Google.Protobuf.Timestamp.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil,
          cloud_identity_id: String.t(),
          language_code: String.t(),
          cloud_identity_info: Google.Cloud.Channel.V1.CloudIdentityInfo.t() | nil,
          channel_partner_id: String.t()
        }

  defstruct name: "",
            org_display_name: "",
            org_postal_address: nil,
            primary_contact_info: nil,
            alternate_email: "",
            domain: "",
            create_time: nil,
            update_time: nil,
            cloud_identity_id: "",
            language_code: "",
            cloud_identity_info: nil,
            channel_partner_id: ""

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
end
defmodule Google.Cloud.Channel.V1.ContactInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          first_name: String.t(),
          last_name: String.t(),
          display_name: String.t(),
          email: String.t(),
          title: String.t(),
          phone: String.t()
        }

  defstruct first_name: "",
            last_name: "",
            display_name: "",
            email: "",
            title: "",
            phone: ""

  field :first_name, 1, type: :string, json_name: "firstName"
  field :last_name, 2, type: :string, json_name: "lastName"
  field :display_name, 4, type: :string, json_name: "displayName", deprecated: false
  field :email, 5, type: :string
  field :title, 6, type: :string, deprecated: false
  field :phone, 7, type: :string
end
