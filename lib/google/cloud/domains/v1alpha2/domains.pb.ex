defmodule Google.Cloud.Domains.V1alpha2.ContactPrivacy do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :CONTACT_PRIVACY_UNSPECIFIED
          | :PUBLIC_CONTACT_DATA
          | :PRIVATE_CONTACT_DATA
          | :REDACTED_CONTACT_DATA

  field :CONTACT_PRIVACY_UNSPECIFIED, 0

  field :PUBLIC_CONTACT_DATA, 1

  field :PRIVATE_CONTACT_DATA, 2

  field :REDACTED_CONTACT_DATA, 3
end

defmodule Google.Cloud.Domains.V1alpha2.DomainNotice do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :DOMAIN_NOTICE_UNSPECIFIED | :HSTS_PRELOADED

  field :DOMAIN_NOTICE_UNSPECIFIED, 0

  field :HSTS_PRELOADED, 1
end

defmodule Google.Cloud.Domains.V1alpha2.ContactNotice do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :CONTACT_NOTICE_UNSPECIFIED | :PUBLIC_CONTACT_DATA_ACKNOWLEDGEMENT

  field :CONTACT_NOTICE_UNSPECIFIED, 0

  field :PUBLIC_CONTACT_DATA_ACKNOWLEDGEMENT, 1
end

defmodule Google.Cloud.Domains.V1alpha2.TransferLockState do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :TRANSFER_LOCK_STATE_UNSPECIFIED | :UNLOCKED | :LOCKED

  field :TRANSFER_LOCK_STATE_UNSPECIFIED, 0

  field :UNLOCKED, 1

  field :LOCKED, 2
end

defmodule Google.Cloud.Domains.V1alpha2.Registration.State do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :STATE_UNSPECIFIED
          | :REGISTRATION_PENDING
          | :REGISTRATION_FAILED
          | :ACTIVE
          | :SUSPENDED
          | :EXPORTED

  field :STATE_UNSPECIFIED, 0

  field :REGISTRATION_PENDING, 1

  field :REGISTRATION_FAILED, 2

  field :ACTIVE, 6

  field :SUSPENDED, 7

  field :EXPORTED, 8
end

defmodule Google.Cloud.Domains.V1alpha2.Registration.Issue do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :ISSUE_UNSPECIFIED | :CONTACT_SUPPORT | :UNVERIFIED_EMAIL

  field :ISSUE_UNSPECIFIED, 0

  field :CONTACT_SUPPORT, 1

  field :UNVERIFIED_EMAIL, 2
end

defmodule Google.Cloud.Domains.V1alpha2.ManagementSettings.RenewalMethod do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :RENEWAL_METHOD_UNSPECIFIED | :AUTOMATIC_RENEWAL | :MANUAL_RENEWAL

  field :RENEWAL_METHOD_UNSPECIFIED, 0

  field :AUTOMATIC_RENEWAL, 1

  field :MANUAL_RENEWAL, 2
end

defmodule Google.Cloud.Domains.V1alpha2.DnsSettings.DsState do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :DS_STATE_UNSPECIFIED | :DS_RECORDS_UNPUBLISHED | :DS_RECORDS_PUBLISHED

  field :DS_STATE_UNSPECIFIED, 0

  field :DS_RECORDS_UNPUBLISHED, 1

  field :DS_RECORDS_PUBLISHED, 2
end

defmodule Google.Cloud.Domains.V1alpha2.DnsSettings.DsRecord.Algorithm do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :ALGORITHM_UNSPECIFIED
          | :DSA
          | :ECC
          | :RSASHA1
          | :DSANSEC3SHA1
          | :RSASHA1NSEC3SHA1
          | :RSASHA256
          | :RSASHA512
          | :ECCGOST
          | :ECDSAP256SHA256
          | :ECDSAP384SHA384
          | :ED25519
          | :ED448

  field :ALGORITHM_UNSPECIFIED, 0

  field :DSA, 3

  field :ECC, 4

  field :RSASHA1, 5

  field :DSANSEC3SHA1, 6

  field :RSASHA1NSEC3SHA1, 7

  field :RSASHA256, 8

  field :RSASHA512, 10

  field :ECCGOST, 12

  field :ECDSAP256SHA256, 13

  field :ECDSAP384SHA384, 14

  field :ED25519, 15

  field :ED448, 16
end

defmodule Google.Cloud.Domains.V1alpha2.DnsSettings.DsRecord.DigestType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :DIGEST_TYPE_UNSPECIFIED | :SHA1 | :SHA256 | :GOST3411 | :SHA384

  field :DIGEST_TYPE_UNSPECIFIED, 0

  field :SHA1, 1

  field :SHA256, 2

  field :GOST3411, 3

  field :SHA384, 4
end

defmodule Google.Cloud.Domains.V1alpha2.RegisterParameters.Availability do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :AVAILABILITY_UNSPECIFIED
          | :AVAILABLE
          | :UNAVAILABLE
          | :UNSUPPORTED
          | :UNKNOWN

  field :AVAILABILITY_UNSPECIFIED, 0

  field :AVAILABLE, 1

  field :UNAVAILABLE, 2

  field :UNSUPPORTED, 3

  field :UNKNOWN, 4
end

defmodule Google.Cloud.Domains.V1alpha2.Registration.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Domains.V1alpha2.Registration do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          domain_name: String.t(),
          create_time: Google.Protobuf.Timestamp.t() | nil,
          expire_time: Google.Protobuf.Timestamp.t() | nil,
          state: Google.Cloud.Domains.V1alpha2.Registration.State.t(),
          issues: [[Google.Cloud.Domains.V1alpha2.Registration.Issue.t()]],
          labels: %{String.t() => String.t()},
          management_settings: Google.Cloud.Domains.V1alpha2.ManagementSettings.t() | nil,
          dns_settings: Google.Cloud.Domains.V1alpha2.DnsSettings.t() | nil,
          contact_settings: Google.Cloud.Domains.V1alpha2.ContactSettings.t() | nil,
          pending_contact_settings: Google.Cloud.Domains.V1alpha2.ContactSettings.t() | nil,
          supported_privacy: [[Google.Cloud.Domains.V1alpha2.ContactPrivacy.t()]]
        }

  defstruct [
    :name,
    :domain_name,
    :create_time,
    :expire_time,
    :state,
    :issues,
    :labels,
    :management_settings,
    :dns_settings,
    :contact_settings,
    :pending_contact_settings,
    :supported_privacy
  ]

  field :name, 1, type: :string
  field :domain_name, 2, type: :string
  field :create_time, 3, type: Google.Protobuf.Timestamp
  field :expire_time, 6, type: Google.Protobuf.Timestamp
  field :state, 7, type: Google.Cloud.Domains.V1alpha2.Registration.State, enum: true

  field :issues, 8,
    repeated: true,
    type: Google.Cloud.Domains.V1alpha2.Registration.Issue,
    enum: true

  field :labels, 9,
    repeated: true,
    type: Google.Cloud.Domains.V1alpha2.Registration.LabelsEntry,
    map: true

  field :management_settings, 10, type: Google.Cloud.Domains.V1alpha2.ManagementSettings
  field :dns_settings, 11, type: Google.Cloud.Domains.V1alpha2.DnsSettings
  field :contact_settings, 12, type: Google.Cloud.Domains.V1alpha2.ContactSettings
  field :pending_contact_settings, 13, type: Google.Cloud.Domains.V1alpha2.ContactSettings

  field :supported_privacy, 14,
    repeated: true,
    type: Google.Cloud.Domains.V1alpha2.ContactPrivacy,
    enum: true
end

defmodule Google.Cloud.Domains.V1alpha2.ManagementSettings do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          renewal_method: Google.Cloud.Domains.V1alpha2.ManagementSettings.RenewalMethod.t(),
          transfer_lock_state: Google.Cloud.Domains.V1alpha2.TransferLockState.t()
        }

  defstruct [:renewal_method, :transfer_lock_state]

  field :renewal_method, 3,
    type: Google.Cloud.Domains.V1alpha2.ManagementSettings.RenewalMethod,
    enum: true

  field :transfer_lock_state, 4, type: Google.Cloud.Domains.V1alpha2.TransferLockState, enum: true
end

defmodule Google.Cloud.Domains.V1alpha2.DnsSettings.CustomDns do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name_servers: [String.t()],
          ds_records: [Google.Cloud.Domains.V1alpha2.DnsSettings.DsRecord.t()]
        }

  defstruct [:name_servers, :ds_records]

  field :name_servers, 1, repeated: true, type: :string
  field :ds_records, 2, repeated: true, type: Google.Cloud.Domains.V1alpha2.DnsSettings.DsRecord
end

defmodule Google.Cloud.Domains.V1alpha2.DnsSettings.GoogleDomainsDns do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name_servers: [String.t()],
          ds_state: Google.Cloud.Domains.V1alpha2.DnsSettings.DsState.t(),
          ds_records: [Google.Cloud.Domains.V1alpha2.DnsSettings.DsRecord.t()]
        }

  defstruct [:name_servers, :ds_state, :ds_records]

  field :name_servers, 1, repeated: true, type: :string
  field :ds_state, 2, type: Google.Cloud.Domains.V1alpha2.DnsSettings.DsState, enum: true
  field :ds_records, 3, repeated: true, type: Google.Cloud.Domains.V1alpha2.DnsSettings.DsRecord
end

defmodule Google.Cloud.Domains.V1alpha2.DnsSettings.DsRecord do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          key_tag: integer,
          algorithm: Google.Cloud.Domains.V1alpha2.DnsSettings.DsRecord.Algorithm.t(),
          digest_type: Google.Cloud.Domains.V1alpha2.DnsSettings.DsRecord.DigestType.t(),
          digest: String.t()
        }

  defstruct [:key_tag, :algorithm, :digest_type, :digest]

  field :key_tag, 1, type: :int32

  field :algorithm, 2,
    type: Google.Cloud.Domains.V1alpha2.DnsSettings.DsRecord.Algorithm,
    enum: true

  field :digest_type, 3,
    type: Google.Cloud.Domains.V1alpha2.DnsSettings.DsRecord.DigestType,
    enum: true

  field :digest, 4, type: :string
end

defmodule Google.Cloud.Domains.V1alpha2.DnsSettings.GlueRecord do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          host_name: String.t(),
          ipv4_addresses: [String.t()],
          ipv6_addresses: [String.t()]
        }

  defstruct [:host_name, :ipv4_addresses, :ipv6_addresses]

  field :host_name, 1, type: :string
  field :ipv4_addresses, 2, repeated: true, type: :string
  field :ipv6_addresses, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Domains.V1alpha2.DnsSettings do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          dns_provider: {atom, any},
          glue_records: [Google.Cloud.Domains.V1alpha2.DnsSettings.GlueRecord.t()]
        }

  defstruct [:dns_provider, :glue_records]

  oneof :dns_provider, 0
  field :custom_dns, 1, type: Google.Cloud.Domains.V1alpha2.DnsSettings.CustomDns, oneof: 0

  field :google_domains_dns, 2,
    type: Google.Cloud.Domains.V1alpha2.DnsSettings.GoogleDomainsDns,
    oneof: 0

  field :glue_records, 4,
    repeated: true,
    type: Google.Cloud.Domains.V1alpha2.DnsSettings.GlueRecord
end

defmodule Google.Cloud.Domains.V1alpha2.ContactSettings.Contact do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          postal_address: Google.Type.PostalAddress.t() | nil,
          email: String.t(),
          phone_number: String.t(),
          fax_number: String.t()
        }

  defstruct [:postal_address, :email, :phone_number, :fax_number]

  field :postal_address, 1, type: Google.Type.PostalAddress
  field :email, 2, type: :string
  field :phone_number, 3, type: :string
  field :fax_number, 4, type: :string
end

defmodule Google.Cloud.Domains.V1alpha2.ContactSettings do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          privacy: Google.Cloud.Domains.V1alpha2.ContactPrivacy.t(),
          registrant_contact: Google.Cloud.Domains.V1alpha2.ContactSettings.Contact.t() | nil,
          admin_contact: Google.Cloud.Domains.V1alpha2.ContactSettings.Contact.t() | nil,
          technical_contact: Google.Cloud.Domains.V1alpha2.ContactSettings.Contact.t() | nil
        }

  defstruct [:privacy, :registrant_contact, :admin_contact, :technical_contact]

  field :privacy, 1, type: Google.Cloud.Domains.V1alpha2.ContactPrivacy, enum: true
  field :registrant_contact, 2, type: Google.Cloud.Domains.V1alpha2.ContactSettings.Contact
  field :admin_contact, 3, type: Google.Cloud.Domains.V1alpha2.ContactSettings.Contact
  field :technical_contact, 4, type: Google.Cloud.Domains.V1alpha2.ContactSettings.Contact
end

defmodule Google.Cloud.Domains.V1alpha2.SearchDomainsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          query: String.t(),
          location: String.t()
        }

  defstruct [:query, :location]

  field :query, 1, type: :string
  field :location, 2, type: :string
end

defmodule Google.Cloud.Domains.V1alpha2.SearchDomainsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          register_parameters: [Google.Cloud.Domains.V1alpha2.RegisterParameters.t()]
        }

  defstruct [:register_parameters]

  field :register_parameters, 1,
    repeated: true,
    type: Google.Cloud.Domains.V1alpha2.RegisterParameters
end

defmodule Google.Cloud.Domains.V1alpha2.RetrieveRegisterParametersRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          domain_name: String.t(),
          location: String.t()
        }

  defstruct [:domain_name, :location]

  field :domain_name, 1, type: :string
  field :location, 2, type: :string
end

defmodule Google.Cloud.Domains.V1alpha2.RetrieveRegisterParametersResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          register_parameters: Google.Cloud.Domains.V1alpha2.RegisterParameters.t() | nil
        }

  defstruct [:register_parameters]

  field :register_parameters, 1, type: Google.Cloud.Domains.V1alpha2.RegisterParameters
end

defmodule Google.Cloud.Domains.V1alpha2.RegisterDomainRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          registration: Google.Cloud.Domains.V1alpha2.Registration.t() | nil,
          domain_notices: [[Google.Cloud.Domains.V1alpha2.DomainNotice.t()]],
          contact_notices: [[Google.Cloud.Domains.V1alpha2.ContactNotice.t()]],
          yearly_price: Google.Type.Money.t() | nil,
          validate_only: boolean
        }

  defstruct [
    :parent,
    :registration,
    :domain_notices,
    :contact_notices,
    :yearly_price,
    :validate_only
  ]

  field :parent, 1, type: :string
  field :registration, 2, type: Google.Cloud.Domains.V1alpha2.Registration

  field :domain_notices, 3,
    repeated: true,
    type: Google.Cloud.Domains.V1alpha2.DomainNotice,
    enum: true

  field :contact_notices, 4,
    repeated: true,
    type: Google.Cloud.Domains.V1alpha2.ContactNotice,
    enum: true

  field :yearly_price, 5, type: Google.Type.Money
  field :validate_only, 6, type: :bool
end

defmodule Google.Cloud.Domains.V1alpha2.ListRegistrationsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t(),
          filter: String.t()
        }

  defstruct [:parent, :page_size, :page_token, :filter]

  field :parent, 1, type: :string
  field :page_size, 2, type: :int32
  field :page_token, 3, type: :string
  field :filter, 4, type: :string
end

defmodule Google.Cloud.Domains.V1alpha2.ListRegistrationsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          registrations: [Google.Cloud.Domains.V1alpha2.Registration.t()],
          next_page_token: String.t()
        }

  defstruct [:registrations, :next_page_token]

  field :registrations, 1, repeated: true, type: Google.Cloud.Domains.V1alpha2.Registration
  field :next_page_token, 2, type: :string
end

defmodule Google.Cloud.Domains.V1alpha2.GetRegistrationRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Domains.V1alpha2.UpdateRegistrationRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          registration: Google.Cloud.Domains.V1alpha2.Registration.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:registration, :update_mask]

  field :registration, 1, type: Google.Cloud.Domains.V1alpha2.Registration
  field :update_mask, 2, type: Google.Protobuf.FieldMask
end

defmodule Google.Cloud.Domains.V1alpha2.ConfigureManagementSettingsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          registration: String.t(),
          management_settings: Google.Cloud.Domains.V1alpha2.ManagementSettings.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:registration, :management_settings, :update_mask]

  field :registration, 1, type: :string
  field :management_settings, 2, type: Google.Cloud.Domains.V1alpha2.ManagementSettings
  field :update_mask, 3, type: Google.Protobuf.FieldMask
end

defmodule Google.Cloud.Domains.V1alpha2.ConfigureDnsSettingsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          registration: String.t(),
          dns_settings: Google.Cloud.Domains.V1alpha2.DnsSettings.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil,
          validate_only: boolean
        }

  defstruct [:registration, :dns_settings, :update_mask, :validate_only]

  field :registration, 1, type: :string
  field :dns_settings, 2, type: Google.Cloud.Domains.V1alpha2.DnsSettings
  field :update_mask, 3, type: Google.Protobuf.FieldMask
  field :validate_only, 4, type: :bool
end

defmodule Google.Cloud.Domains.V1alpha2.ConfigureContactSettingsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          registration: String.t(),
          contact_settings: Google.Cloud.Domains.V1alpha2.ContactSettings.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil,
          contact_notices: [[Google.Cloud.Domains.V1alpha2.ContactNotice.t()]],
          validate_only: boolean
        }

  defstruct [:registration, :contact_settings, :update_mask, :contact_notices, :validate_only]

  field :registration, 1, type: :string
  field :contact_settings, 2, type: Google.Cloud.Domains.V1alpha2.ContactSettings
  field :update_mask, 3, type: Google.Protobuf.FieldMask

  field :contact_notices, 4,
    repeated: true,
    type: Google.Cloud.Domains.V1alpha2.ContactNotice,
    enum: true

  field :validate_only, 5, type: :bool
end

defmodule Google.Cloud.Domains.V1alpha2.ExportRegistrationRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Domains.V1alpha2.DeleteRegistrationRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Domains.V1alpha2.RetrieveAuthorizationCodeRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          registration: String.t()
        }

  defstruct [:registration]

  field :registration, 1, type: :string
end

defmodule Google.Cloud.Domains.V1alpha2.ResetAuthorizationCodeRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          registration: String.t()
        }

  defstruct [:registration]

  field :registration, 1, type: :string
end

defmodule Google.Cloud.Domains.V1alpha2.RegisterParameters do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          domain_name: String.t(),
          availability: Google.Cloud.Domains.V1alpha2.RegisterParameters.Availability.t(),
          supported_privacy: [[Google.Cloud.Domains.V1alpha2.ContactPrivacy.t()]],
          domain_notices: [[Google.Cloud.Domains.V1alpha2.DomainNotice.t()]],
          yearly_price: Google.Type.Money.t() | nil
        }

  defstruct [:domain_name, :availability, :supported_privacy, :domain_notices, :yearly_price]

  field :domain_name, 1, type: :string

  field :availability, 2,
    type: Google.Cloud.Domains.V1alpha2.RegisterParameters.Availability,
    enum: true

  field :supported_privacy, 3,
    repeated: true,
    type: Google.Cloud.Domains.V1alpha2.ContactPrivacy,
    enum: true

  field :domain_notices, 4,
    repeated: true,
    type: Google.Cloud.Domains.V1alpha2.DomainNotice,
    enum: true

  field :yearly_price, 5, type: Google.Type.Money
end

defmodule Google.Cloud.Domains.V1alpha2.AuthorizationCode do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          code: String.t()
        }

  defstruct [:code]

  field :code, 1, type: :string
end

defmodule Google.Cloud.Domains.V1alpha2.OperationMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          create_time: Google.Protobuf.Timestamp.t() | nil,
          end_time: Google.Protobuf.Timestamp.t() | nil,
          target: String.t(),
          verb: String.t(),
          status_detail: String.t(),
          api_version: String.t()
        }

  defstruct [:create_time, :end_time, :target, :verb, :status_detail, :api_version]

  field :create_time, 1, type: Google.Protobuf.Timestamp
  field :end_time, 2, type: Google.Protobuf.Timestamp
  field :target, 3, type: :string
  field :verb, 4, type: :string
  field :status_detail, 5, type: :string
  field :api_version, 6, type: :string
end
