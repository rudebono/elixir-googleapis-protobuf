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

  defstruct [
    :name,
    :org_display_name,
    :org_postal_address,
    :primary_contact_info,
    :alternate_email,
    :domain,
    :create_time,
    :update_time,
    :cloud_identity_id,
    :language_code,
    :cloud_identity_info,
    :channel_partner_id
  ]

  field :name, 1, type: :string
  field :org_display_name, 2, type: :string
  field :org_postal_address, 3, type: Google.Type.PostalAddress
  field :primary_contact_info, 4, type: Google.Cloud.Channel.V1.ContactInfo
  field :alternate_email, 5, type: :string
  field :domain, 6, type: :string
  field :create_time, 7, type: Google.Protobuf.Timestamp
  field :update_time, 8, type: Google.Protobuf.Timestamp
  field :cloud_identity_id, 9, type: :string
  field :language_code, 10, type: :string
  field :cloud_identity_info, 12, type: Google.Cloud.Channel.V1.CloudIdentityInfo
  field :channel_partner_id, 13, type: :string
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

  defstruct [:first_name, :last_name, :display_name, :email, :title, :phone]

  field :first_name, 1, type: :string
  field :last_name, 2, type: :string
  field :display_name, 4, type: :string
  field :email, 5, type: :string
  field :title, 6, type: :string
  field :phone, 7, type: :string
end
