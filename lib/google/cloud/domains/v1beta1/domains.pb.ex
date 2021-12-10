defmodule Google.Cloud.Domains.V1beta1.ContactPrivacy do
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
defmodule Google.Cloud.Domains.V1beta1.DomainNotice do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :DOMAIN_NOTICE_UNSPECIFIED | :HSTS_PRELOADED

  field :DOMAIN_NOTICE_UNSPECIFIED, 0
  field :HSTS_PRELOADED, 1
end
defmodule Google.Cloud.Domains.V1beta1.ContactNotice do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :CONTACT_NOTICE_UNSPECIFIED | :PUBLIC_CONTACT_DATA_ACKNOWLEDGEMENT

  field :CONTACT_NOTICE_UNSPECIFIED, 0
  field :PUBLIC_CONTACT_DATA_ACKNOWLEDGEMENT, 1
end
defmodule Google.Cloud.Domains.V1beta1.TransferLockState do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :TRANSFER_LOCK_STATE_UNSPECIFIED | :UNLOCKED | :LOCKED

  field :TRANSFER_LOCK_STATE_UNSPECIFIED, 0
  field :UNLOCKED, 1
  field :LOCKED, 2
end
defmodule Google.Cloud.Domains.V1beta1.Registration.State do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :STATE_UNSPECIFIED
          | :REGISTRATION_PENDING
          | :REGISTRATION_FAILED
          | :TRANSFER_PENDING
          | :TRANSFER_FAILED
          | :ACTIVE
          | :SUSPENDED
          | :EXPORTED

  field :STATE_UNSPECIFIED, 0
  field :REGISTRATION_PENDING, 1
  field :REGISTRATION_FAILED, 2
  field :TRANSFER_PENDING, 3
  field :TRANSFER_FAILED, 4
  field :ACTIVE, 6
  field :SUSPENDED, 7
  field :EXPORTED, 8
end
defmodule Google.Cloud.Domains.V1beta1.Registration.Issue do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :ISSUE_UNSPECIFIED | :CONTACT_SUPPORT | :UNVERIFIED_EMAIL

  field :ISSUE_UNSPECIFIED, 0
  field :CONTACT_SUPPORT, 1
  field :UNVERIFIED_EMAIL, 2
end
defmodule Google.Cloud.Domains.V1beta1.ManagementSettings.RenewalMethod do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :RENEWAL_METHOD_UNSPECIFIED | :AUTOMATIC_RENEWAL | :MANUAL_RENEWAL

  field :RENEWAL_METHOD_UNSPECIFIED, 0
  field :AUTOMATIC_RENEWAL, 1
  field :MANUAL_RENEWAL, 2
end
defmodule Google.Cloud.Domains.V1beta1.DnsSettings.DsState do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :DS_STATE_UNSPECIFIED | :DS_RECORDS_UNPUBLISHED | :DS_RECORDS_PUBLISHED

  field :DS_STATE_UNSPECIFIED, 0
  field :DS_RECORDS_UNPUBLISHED, 1
  field :DS_RECORDS_PUBLISHED, 2
end
defmodule Google.Cloud.Domains.V1beta1.DnsSettings.DsRecord.Algorithm do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :ALGORITHM_UNSPECIFIED
          | :RSAMD5
          | :DH
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
          | :INDIRECT
          | :PRIVATEDNS
          | :PRIVATEOID

  field :ALGORITHM_UNSPECIFIED, 0
  field :RSAMD5, 1
  field :DH, 2
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
  field :INDIRECT, 252
  field :PRIVATEDNS, 253
  field :PRIVATEOID, 254
end
defmodule Google.Cloud.Domains.V1beta1.DnsSettings.DsRecord.DigestType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :DIGEST_TYPE_UNSPECIFIED | :SHA1 | :SHA256 | :GOST3411 | :SHA384

  field :DIGEST_TYPE_UNSPECIFIED, 0
  field :SHA1, 1
  field :SHA256, 2
  field :GOST3411, 3
  field :SHA384, 4
end
defmodule Google.Cloud.Domains.V1beta1.RegisterParameters.Availability do
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
defmodule Google.Cloud.Domains.V1beta1.Registration.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct key: "",
            value: ""

  field :key, 1, type: :string
  field :value, 2, type: :string
end
defmodule Google.Cloud.Domains.V1beta1.Registration do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          domain_name: String.t(),
          create_time: Google.Protobuf.Timestamp.t() | nil,
          expire_time: Google.Protobuf.Timestamp.t() | nil,
          state: Google.Cloud.Domains.V1beta1.Registration.State.t(),
          issues: [Google.Cloud.Domains.V1beta1.Registration.Issue.t()],
          labels: %{String.t() => String.t()},
          management_settings: Google.Cloud.Domains.V1beta1.ManagementSettings.t() | nil,
          dns_settings: Google.Cloud.Domains.V1beta1.DnsSettings.t() | nil,
          contact_settings: Google.Cloud.Domains.V1beta1.ContactSettings.t() | nil,
          pending_contact_settings: Google.Cloud.Domains.V1beta1.ContactSettings.t() | nil,
          supported_privacy: [Google.Cloud.Domains.V1beta1.ContactPrivacy.t()]
        }

  defstruct name: "",
            domain_name: "",
            create_time: nil,
            expire_time: nil,
            state: :STATE_UNSPECIFIED,
            issues: [],
            labels: %{},
            management_settings: nil,
            dns_settings: nil,
            contact_settings: nil,
            pending_contact_settings: nil,
            supported_privacy: []

  field :name, 1, type: :string, deprecated: false
  field :domain_name, 2, type: :string, json_name: "domainName", deprecated: false

  field :create_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :expire_time, 6,
    type: Google.Protobuf.Timestamp,
    json_name: "expireTime",
    deprecated: false

  field :state, 7,
    type: Google.Cloud.Domains.V1beta1.Registration.State,
    enum: true,
    deprecated: false

  field :issues, 8,
    repeated: true,
    type: Google.Cloud.Domains.V1beta1.Registration.Issue,
    enum: true,
    deprecated: false

  field :labels, 9,
    repeated: true,
    type: Google.Cloud.Domains.V1beta1.Registration.LabelsEntry,
    map: true

  field :management_settings, 10,
    type: Google.Cloud.Domains.V1beta1.ManagementSettings,
    json_name: "managementSettings"

  field :dns_settings, 11,
    type: Google.Cloud.Domains.V1beta1.DnsSettings,
    json_name: "dnsSettings"

  field :contact_settings, 12,
    type: Google.Cloud.Domains.V1beta1.ContactSettings,
    json_name: "contactSettings",
    deprecated: false

  field :pending_contact_settings, 13,
    type: Google.Cloud.Domains.V1beta1.ContactSettings,
    json_name: "pendingContactSettings",
    deprecated: false

  field :supported_privacy, 14,
    repeated: true,
    type: Google.Cloud.Domains.V1beta1.ContactPrivacy,
    json_name: "supportedPrivacy",
    enum: true,
    deprecated: false
end
defmodule Google.Cloud.Domains.V1beta1.ManagementSettings do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          renewal_method: Google.Cloud.Domains.V1beta1.ManagementSettings.RenewalMethod.t(),
          transfer_lock_state: Google.Cloud.Domains.V1beta1.TransferLockState.t()
        }

  defstruct renewal_method: :RENEWAL_METHOD_UNSPECIFIED,
            transfer_lock_state: :TRANSFER_LOCK_STATE_UNSPECIFIED

  field :renewal_method, 3,
    type: Google.Cloud.Domains.V1beta1.ManagementSettings.RenewalMethod,
    json_name: "renewalMethod",
    enum: true,
    deprecated: false

  field :transfer_lock_state, 4,
    type: Google.Cloud.Domains.V1beta1.TransferLockState,
    json_name: "transferLockState",
    enum: true
end
defmodule Google.Cloud.Domains.V1beta1.DnsSettings.CustomDns do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name_servers: [String.t()],
          ds_records: [Google.Cloud.Domains.V1beta1.DnsSettings.DsRecord.t()]
        }

  defstruct name_servers: [],
            ds_records: []

  field :name_servers, 1,
    repeated: true,
    type: :string,
    json_name: "nameServers",
    deprecated: false

  field :ds_records, 2,
    repeated: true,
    type: Google.Cloud.Domains.V1beta1.DnsSettings.DsRecord,
    json_name: "dsRecords"
end
defmodule Google.Cloud.Domains.V1beta1.DnsSettings.GoogleDomainsDns do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name_servers: [String.t()],
          ds_state: Google.Cloud.Domains.V1beta1.DnsSettings.DsState.t(),
          ds_records: [Google.Cloud.Domains.V1beta1.DnsSettings.DsRecord.t()]
        }

  defstruct name_servers: [],
            ds_state: :DS_STATE_UNSPECIFIED,
            ds_records: []

  field :name_servers, 1,
    repeated: true,
    type: :string,
    json_name: "nameServers",
    deprecated: false

  field :ds_state, 2,
    type: Google.Cloud.Domains.V1beta1.DnsSettings.DsState,
    json_name: "dsState",
    enum: true,
    deprecated: false

  field :ds_records, 3,
    repeated: true,
    type: Google.Cloud.Domains.V1beta1.DnsSettings.DsRecord,
    json_name: "dsRecords",
    deprecated: false
end
defmodule Google.Cloud.Domains.V1beta1.DnsSettings.DsRecord do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          key_tag: integer,
          algorithm: Google.Cloud.Domains.V1beta1.DnsSettings.DsRecord.Algorithm.t(),
          digest_type: Google.Cloud.Domains.V1beta1.DnsSettings.DsRecord.DigestType.t(),
          digest: String.t()
        }

  defstruct key_tag: 0,
            algorithm: :ALGORITHM_UNSPECIFIED,
            digest_type: :DIGEST_TYPE_UNSPECIFIED,
            digest: ""

  field :key_tag, 1, type: :int32, json_name: "keyTag"

  field :algorithm, 2,
    type: Google.Cloud.Domains.V1beta1.DnsSettings.DsRecord.Algorithm,
    enum: true

  field :digest_type, 3,
    type: Google.Cloud.Domains.V1beta1.DnsSettings.DsRecord.DigestType,
    json_name: "digestType",
    enum: true

  field :digest, 4, type: :string
end
defmodule Google.Cloud.Domains.V1beta1.DnsSettings.GlueRecord do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          host_name: String.t(),
          ipv4_addresses: [String.t()],
          ipv6_addresses: [String.t()]
        }

  defstruct host_name: "",
            ipv4_addresses: [],
            ipv6_addresses: []

  field :host_name, 1, type: :string, json_name: "hostName", deprecated: false
  field :ipv4_addresses, 2, repeated: true, type: :string, json_name: "ipv4Addresses"
  field :ipv6_addresses, 3, repeated: true, type: :string, json_name: "ipv6Addresses"
end
defmodule Google.Cloud.Domains.V1beta1.DnsSettings do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          dns_provider:
            {:custom_dns, Google.Cloud.Domains.V1beta1.DnsSettings.CustomDns.t() | nil}
            | {:google_domains_dns,
               Google.Cloud.Domains.V1beta1.DnsSettings.GoogleDomainsDns.t() | nil},
          glue_records: [Google.Cloud.Domains.V1beta1.DnsSettings.GlueRecord.t()]
        }

  defstruct dns_provider: nil,
            glue_records: []

  oneof :dns_provider, 0

  field :custom_dns, 1,
    type: Google.Cloud.Domains.V1beta1.DnsSettings.CustomDns,
    json_name: "customDns",
    oneof: 0

  field :google_domains_dns, 2,
    type: Google.Cloud.Domains.V1beta1.DnsSettings.GoogleDomainsDns,
    json_name: "googleDomainsDns",
    oneof: 0

  field :glue_records, 4,
    repeated: true,
    type: Google.Cloud.Domains.V1beta1.DnsSettings.GlueRecord,
    json_name: "glueRecords"
end
defmodule Google.Cloud.Domains.V1beta1.ContactSettings.Contact do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          postal_address: Google.Type.PostalAddress.t() | nil,
          email: String.t(),
          phone_number: String.t(),
          fax_number: String.t()
        }

  defstruct postal_address: nil,
            email: "",
            phone_number: "",
            fax_number: ""

  field :postal_address, 1,
    type: Google.Type.PostalAddress,
    json_name: "postalAddress",
    deprecated: false

  field :email, 2, type: :string, deprecated: false
  field :phone_number, 3, type: :string, json_name: "phoneNumber", deprecated: false
  field :fax_number, 4, type: :string, json_name: "faxNumber"
end
defmodule Google.Cloud.Domains.V1beta1.ContactSettings do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          privacy: Google.Cloud.Domains.V1beta1.ContactPrivacy.t(),
          registrant_contact: Google.Cloud.Domains.V1beta1.ContactSettings.Contact.t() | nil,
          admin_contact: Google.Cloud.Domains.V1beta1.ContactSettings.Contact.t() | nil,
          technical_contact: Google.Cloud.Domains.V1beta1.ContactSettings.Contact.t() | nil
        }

  defstruct privacy: :CONTACT_PRIVACY_UNSPECIFIED,
            registrant_contact: nil,
            admin_contact: nil,
            technical_contact: nil

  field :privacy, 1,
    type: Google.Cloud.Domains.V1beta1.ContactPrivacy,
    enum: true,
    deprecated: false

  field :registrant_contact, 2,
    type: Google.Cloud.Domains.V1beta1.ContactSettings.Contact,
    json_name: "registrantContact",
    deprecated: false

  field :admin_contact, 3,
    type: Google.Cloud.Domains.V1beta1.ContactSettings.Contact,
    json_name: "adminContact",
    deprecated: false

  field :technical_contact, 4,
    type: Google.Cloud.Domains.V1beta1.ContactSettings.Contact,
    json_name: "technicalContact",
    deprecated: false
end
defmodule Google.Cloud.Domains.V1beta1.SearchDomainsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          query: String.t(),
          location: String.t()
        }

  defstruct query: "",
            location: ""

  field :query, 1, type: :string, deprecated: false
  field :location, 2, type: :string, deprecated: false
end
defmodule Google.Cloud.Domains.V1beta1.SearchDomainsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          register_parameters: [Google.Cloud.Domains.V1beta1.RegisterParameters.t()]
        }

  defstruct register_parameters: []

  field :register_parameters, 1,
    repeated: true,
    type: Google.Cloud.Domains.V1beta1.RegisterParameters,
    json_name: "registerParameters"
end
defmodule Google.Cloud.Domains.V1beta1.RetrieveRegisterParametersRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          domain_name: String.t(),
          location: String.t()
        }

  defstruct domain_name: "",
            location: ""

  field :domain_name, 1, type: :string, json_name: "domainName", deprecated: false
  field :location, 2, type: :string, deprecated: false
end
defmodule Google.Cloud.Domains.V1beta1.RetrieveRegisterParametersResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          register_parameters: Google.Cloud.Domains.V1beta1.RegisterParameters.t() | nil
        }

  defstruct register_parameters: nil

  field :register_parameters, 1,
    type: Google.Cloud.Domains.V1beta1.RegisterParameters,
    json_name: "registerParameters"
end
defmodule Google.Cloud.Domains.V1beta1.RegisterDomainRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          registration: Google.Cloud.Domains.V1beta1.Registration.t() | nil,
          domain_notices: [Google.Cloud.Domains.V1beta1.DomainNotice.t()],
          contact_notices: [Google.Cloud.Domains.V1beta1.ContactNotice.t()],
          yearly_price: Google.Type.Money.t() | nil,
          validate_only: boolean
        }

  defstruct parent: "",
            registration: nil,
            domain_notices: [],
            contact_notices: [],
            yearly_price: nil,
            validate_only: false

  field :parent, 1, type: :string, deprecated: false
  field :registration, 2, type: Google.Cloud.Domains.V1beta1.Registration, deprecated: false

  field :domain_notices, 3,
    repeated: true,
    type: Google.Cloud.Domains.V1beta1.DomainNotice,
    json_name: "domainNotices",
    enum: true

  field :contact_notices, 4,
    repeated: true,
    type: Google.Cloud.Domains.V1beta1.ContactNotice,
    json_name: "contactNotices",
    enum: true

  field :yearly_price, 5, type: Google.Type.Money, json_name: "yearlyPrice", deprecated: false
  field :validate_only, 6, type: :bool, json_name: "validateOnly"
end
defmodule Google.Cloud.Domains.V1beta1.RetrieveTransferParametersRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          domain_name: String.t(),
          location: String.t()
        }

  defstruct domain_name: "",
            location: ""

  field :domain_name, 1, type: :string, json_name: "domainName", deprecated: false
  field :location, 2, type: :string, deprecated: false
end
defmodule Google.Cloud.Domains.V1beta1.RetrieveTransferParametersResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          transfer_parameters: Google.Cloud.Domains.V1beta1.TransferParameters.t() | nil
        }

  defstruct transfer_parameters: nil

  field :transfer_parameters, 1,
    type: Google.Cloud.Domains.V1beta1.TransferParameters,
    json_name: "transferParameters"
end
defmodule Google.Cloud.Domains.V1beta1.TransferDomainRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          registration: Google.Cloud.Domains.V1beta1.Registration.t() | nil,
          contact_notices: [Google.Cloud.Domains.V1beta1.ContactNotice.t()],
          yearly_price: Google.Type.Money.t() | nil,
          authorization_code: Google.Cloud.Domains.V1beta1.AuthorizationCode.t() | nil,
          validate_only: boolean
        }

  defstruct parent: "",
            registration: nil,
            contact_notices: [],
            yearly_price: nil,
            authorization_code: nil,
            validate_only: false

  field :parent, 1, type: :string, deprecated: false
  field :registration, 2, type: Google.Cloud.Domains.V1beta1.Registration, deprecated: false

  field :contact_notices, 3,
    repeated: true,
    type: Google.Cloud.Domains.V1beta1.ContactNotice,
    json_name: "contactNotices",
    enum: true

  field :yearly_price, 4, type: Google.Type.Money, json_name: "yearlyPrice", deprecated: false

  field :authorization_code, 5,
    type: Google.Cloud.Domains.V1beta1.AuthorizationCode,
    json_name: "authorizationCode"

  field :validate_only, 6, type: :bool, json_name: "validateOnly"
end
defmodule Google.Cloud.Domains.V1beta1.ListRegistrationsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t(),
          filter: String.t()
        }

  defstruct parent: "",
            page_size: 0,
            page_token: "",
            filter: ""

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
end
defmodule Google.Cloud.Domains.V1beta1.ListRegistrationsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          registrations: [Google.Cloud.Domains.V1beta1.Registration.t()],
          next_page_token: String.t()
        }

  defstruct registrations: [],
            next_page_token: ""

  field :registrations, 1, repeated: true, type: Google.Cloud.Domains.V1beta1.Registration
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Google.Cloud.Domains.V1beta1.GetRegistrationRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Domains.V1beta1.UpdateRegistrationRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          registration: Google.Cloud.Domains.V1beta1.Registration.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct registration: nil,
            update_mask: nil

  field :registration, 1, type: Google.Cloud.Domains.V1beta1.Registration

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end
defmodule Google.Cloud.Domains.V1beta1.ConfigureManagementSettingsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          registration: String.t(),
          management_settings: Google.Cloud.Domains.V1beta1.ManagementSettings.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct registration: "",
            management_settings: nil,
            update_mask: nil

  field :registration, 1, type: :string, deprecated: false

  field :management_settings, 2,
    type: Google.Cloud.Domains.V1beta1.ManagementSettings,
    json_name: "managementSettings"

  field :update_mask, 3,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end
defmodule Google.Cloud.Domains.V1beta1.ConfigureDnsSettingsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          registration: String.t(),
          dns_settings: Google.Cloud.Domains.V1beta1.DnsSettings.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil,
          validate_only: boolean
        }

  defstruct registration: "",
            dns_settings: nil,
            update_mask: nil,
            validate_only: false

  field :registration, 1, type: :string, deprecated: false
  field :dns_settings, 2, type: Google.Cloud.Domains.V1beta1.DnsSettings, json_name: "dnsSettings"

  field :update_mask, 3,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :validate_only, 4, type: :bool, json_name: "validateOnly"
end
defmodule Google.Cloud.Domains.V1beta1.ConfigureContactSettingsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          registration: String.t(),
          contact_settings: Google.Cloud.Domains.V1beta1.ContactSettings.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil,
          contact_notices: [Google.Cloud.Domains.V1beta1.ContactNotice.t()],
          validate_only: boolean
        }

  defstruct registration: "",
            contact_settings: nil,
            update_mask: nil,
            contact_notices: [],
            validate_only: false

  field :registration, 1, type: :string, deprecated: false

  field :contact_settings, 2,
    type: Google.Cloud.Domains.V1beta1.ContactSettings,
    json_name: "contactSettings"

  field :update_mask, 3,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :contact_notices, 4,
    repeated: true,
    type: Google.Cloud.Domains.V1beta1.ContactNotice,
    json_name: "contactNotices",
    enum: true

  field :validate_only, 5, type: :bool, json_name: "validateOnly"
end
defmodule Google.Cloud.Domains.V1beta1.ExportRegistrationRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Domains.V1beta1.DeleteRegistrationRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Domains.V1beta1.RetrieveAuthorizationCodeRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          registration: String.t()
        }

  defstruct registration: ""

  field :registration, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Domains.V1beta1.ResetAuthorizationCodeRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          registration: String.t()
        }

  defstruct registration: ""

  field :registration, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Domains.V1beta1.RegisterParameters do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          domain_name: String.t(),
          availability: Google.Cloud.Domains.V1beta1.RegisterParameters.Availability.t(),
          supported_privacy: [Google.Cloud.Domains.V1beta1.ContactPrivacy.t()],
          domain_notices: [Google.Cloud.Domains.V1beta1.DomainNotice.t()],
          yearly_price: Google.Type.Money.t() | nil
        }

  defstruct domain_name: "",
            availability: :AVAILABILITY_UNSPECIFIED,
            supported_privacy: [],
            domain_notices: [],
            yearly_price: nil

  field :domain_name, 1, type: :string, json_name: "domainName"

  field :availability, 2,
    type: Google.Cloud.Domains.V1beta1.RegisterParameters.Availability,
    enum: true

  field :supported_privacy, 3,
    repeated: true,
    type: Google.Cloud.Domains.V1beta1.ContactPrivacy,
    json_name: "supportedPrivacy",
    enum: true

  field :domain_notices, 4,
    repeated: true,
    type: Google.Cloud.Domains.V1beta1.DomainNotice,
    json_name: "domainNotices",
    enum: true

  field :yearly_price, 5, type: Google.Type.Money, json_name: "yearlyPrice"
end
defmodule Google.Cloud.Domains.V1beta1.TransferParameters do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          domain_name: String.t(),
          current_registrar: String.t(),
          name_servers: [String.t()],
          transfer_lock_state: Google.Cloud.Domains.V1beta1.TransferLockState.t(),
          supported_privacy: [Google.Cloud.Domains.V1beta1.ContactPrivacy.t()],
          yearly_price: Google.Type.Money.t() | nil
        }

  defstruct domain_name: "",
            current_registrar: "",
            name_servers: [],
            transfer_lock_state: :TRANSFER_LOCK_STATE_UNSPECIFIED,
            supported_privacy: [],
            yearly_price: nil

  field :domain_name, 1, type: :string, json_name: "domainName"
  field :current_registrar, 2, type: :string, json_name: "currentRegistrar"
  field :name_servers, 3, repeated: true, type: :string, json_name: "nameServers"

  field :transfer_lock_state, 4,
    type: Google.Cloud.Domains.V1beta1.TransferLockState,
    json_name: "transferLockState",
    enum: true

  field :supported_privacy, 5,
    repeated: true,
    type: Google.Cloud.Domains.V1beta1.ContactPrivacy,
    json_name: "supportedPrivacy",
    enum: true

  field :yearly_price, 6, type: Google.Type.Money, json_name: "yearlyPrice"
end
defmodule Google.Cloud.Domains.V1beta1.AuthorizationCode do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          code: String.t()
        }

  defstruct code: ""

  field :code, 1, type: :string
end
defmodule Google.Cloud.Domains.V1beta1.OperationMetadata do
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

  defstruct create_time: nil,
            end_time: nil,
            target: "",
            verb: "",
            status_detail: "",
            api_version: ""

  field :create_time, 1, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :end_time, 2, type: Google.Protobuf.Timestamp, json_name: "endTime"
  field :target, 3, type: :string
  field :verb, 4, type: :string
  field :status_detail, 5, type: :string, json_name: "statusDetail"
  field :api_version, 6, type: :string, json_name: "apiVersion"
end
defmodule Google.Cloud.Domains.V1beta1.Domains.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.domains.v1beta1.Domains"

  rpc :SearchDomains,
      Google.Cloud.Domains.V1beta1.SearchDomainsRequest,
      Google.Cloud.Domains.V1beta1.SearchDomainsResponse

  rpc :RetrieveRegisterParameters,
      Google.Cloud.Domains.V1beta1.RetrieveRegisterParametersRequest,
      Google.Cloud.Domains.V1beta1.RetrieveRegisterParametersResponse

  rpc :RegisterDomain,
      Google.Cloud.Domains.V1beta1.RegisterDomainRequest,
      Google.Longrunning.Operation

  rpc :RetrieveTransferParameters,
      Google.Cloud.Domains.V1beta1.RetrieveTransferParametersRequest,
      Google.Cloud.Domains.V1beta1.RetrieveTransferParametersResponse

  rpc :TransferDomain,
      Google.Cloud.Domains.V1beta1.TransferDomainRequest,
      Google.Longrunning.Operation

  rpc :ListRegistrations,
      Google.Cloud.Domains.V1beta1.ListRegistrationsRequest,
      Google.Cloud.Domains.V1beta1.ListRegistrationsResponse

  rpc :GetRegistration,
      Google.Cloud.Domains.V1beta1.GetRegistrationRequest,
      Google.Cloud.Domains.V1beta1.Registration

  rpc :UpdateRegistration,
      Google.Cloud.Domains.V1beta1.UpdateRegistrationRequest,
      Google.Longrunning.Operation

  rpc :ConfigureManagementSettings,
      Google.Cloud.Domains.V1beta1.ConfigureManagementSettingsRequest,
      Google.Longrunning.Operation

  rpc :ConfigureDnsSettings,
      Google.Cloud.Domains.V1beta1.ConfigureDnsSettingsRequest,
      Google.Longrunning.Operation

  rpc :ConfigureContactSettings,
      Google.Cloud.Domains.V1beta1.ConfigureContactSettingsRequest,
      Google.Longrunning.Operation

  rpc :ExportRegistration,
      Google.Cloud.Domains.V1beta1.ExportRegistrationRequest,
      Google.Longrunning.Operation

  rpc :DeleteRegistration,
      Google.Cloud.Domains.V1beta1.DeleteRegistrationRequest,
      Google.Longrunning.Operation

  rpc :RetrieveAuthorizationCode,
      Google.Cloud.Domains.V1beta1.RetrieveAuthorizationCodeRequest,
      Google.Cloud.Domains.V1beta1.AuthorizationCode

  rpc :ResetAuthorizationCode,
      Google.Cloud.Domains.V1beta1.ResetAuthorizationCodeRequest,
      Google.Cloud.Domains.V1beta1.AuthorizationCode
end

defmodule Google.Cloud.Domains.V1beta1.Domains.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Domains.V1beta1.Domains.Service
end
