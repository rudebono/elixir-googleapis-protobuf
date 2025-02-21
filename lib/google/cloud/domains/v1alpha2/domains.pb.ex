defmodule Google.Cloud.Domains.V1alpha2.ContactPrivacy do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :CONTACT_PRIVACY_UNSPECIFIED, 0
  field :PUBLIC_CONTACT_DATA, 1
  field :PRIVATE_CONTACT_DATA, 2
  field :REDACTED_CONTACT_DATA, 3
end

defmodule Google.Cloud.Domains.V1alpha2.DomainNotice do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :DOMAIN_NOTICE_UNSPECIFIED, 0
  field :HSTS_PRELOADED, 1
end

defmodule Google.Cloud.Domains.V1alpha2.ContactNotice do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :CONTACT_NOTICE_UNSPECIFIED, 0
  field :PUBLIC_CONTACT_DATA_ACKNOWLEDGEMENT, 1
end

defmodule Google.Cloud.Domains.V1alpha2.TransferLockState do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :TRANSFER_LOCK_STATE_UNSPECIFIED, 0
  field :UNLOCKED, 1
  field :LOCKED, 2
end

defmodule Google.Cloud.Domains.V1alpha2.Registration.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :REGISTRATION_PENDING, 1
  field :REGISTRATION_FAILED, 2
  field :TRANSFER_PENDING, 3
  field :TRANSFER_FAILED, 4
  field :ACTIVE, 6
  field :SUSPENDED, 7
  field :EXPORTED, 8
end

defmodule Google.Cloud.Domains.V1alpha2.Registration.Issue do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :ISSUE_UNSPECIFIED, 0
  field :CONTACT_SUPPORT, 1
  field :UNVERIFIED_EMAIL, 2
end

defmodule Google.Cloud.Domains.V1alpha2.ManagementSettings.RenewalMethod do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :RENEWAL_METHOD_UNSPECIFIED, 0
  field :AUTOMATIC_RENEWAL, 1
  field :MANUAL_RENEWAL, 2
end

defmodule Google.Cloud.Domains.V1alpha2.DnsSettings.DsState do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :DS_STATE_UNSPECIFIED, 0
  field :DS_RECORDS_UNPUBLISHED, 1
  field :DS_RECORDS_PUBLISHED, 2
end

defmodule Google.Cloud.Domains.V1alpha2.DnsSettings.DsRecord.Algorithm do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

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

defmodule Google.Cloud.Domains.V1alpha2.DnsSettings.DsRecord.DigestType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :DIGEST_TYPE_UNSPECIFIED, 0
  field :SHA1, 1
  field :SHA256, 2
  field :GOST3411, 3
  field :SHA384, 4
end

defmodule Google.Cloud.Domains.V1alpha2.RegisterParameters.Availability do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :AVAILABILITY_UNSPECIFIED, 0
  field :AVAILABLE, 1
  field :UNAVAILABLE, 2
  field :UNSUPPORTED, 3
  field :UNKNOWN, 4
end

defmodule Google.Cloud.Domains.V1alpha2.Registration.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Domains.V1alpha2.Registration do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

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
    type: Google.Cloud.Domains.V1alpha2.Registration.State,
    enum: true,
    deprecated: false

  field :issues, 8,
    repeated: true,
    type: Google.Cloud.Domains.V1alpha2.Registration.Issue,
    enum: true,
    deprecated: false

  field :labels, 9,
    repeated: true,
    type: Google.Cloud.Domains.V1alpha2.Registration.LabelsEntry,
    map: true

  field :management_settings, 10,
    type: Google.Cloud.Domains.V1alpha2.ManagementSettings,
    json_name: "managementSettings"

  field :dns_settings, 11,
    type: Google.Cloud.Domains.V1alpha2.DnsSettings,
    json_name: "dnsSettings"

  field :contact_settings, 12,
    type: Google.Cloud.Domains.V1alpha2.ContactSettings,
    json_name: "contactSettings",
    deprecated: false

  field :pending_contact_settings, 13,
    type: Google.Cloud.Domains.V1alpha2.ContactSettings,
    json_name: "pendingContactSettings",
    deprecated: false

  field :supported_privacy, 14,
    repeated: true,
    type: Google.Cloud.Domains.V1alpha2.ContactPrivacy,
    json_name: "supportedPrivacy",
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Domains.V1alpha2.ManagementSettings do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :renewal_method, 3,
    type: Google.Cloud.Domains.V1alpha2.ManagementSettings.RenewalMethod,
    json_name: "renewalMethod",
    enum: true,
    deprecated: false

  field :transfer_lock_state, 4,
    type: Google.Cloud.Domains.V1alpha2.TransferLockState,
    json_name: "transferLockState",
    enum: true
end

defmodule Google.Cloud.Domains.V1alpha2.DnsSettings.CustomDns do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name_servers, 1,
    repeated: true,
    type: :string,
    json_name: "nameServers",
    deprecated: false

  field :ds_records, 2,
    repeated: true,
    type: Google.Cloud.Domains.V1alpha2.DnsSettings.DsRecord,
    json_name: "dsRecords"
end

defmodule Google.Cloud.Domains.V1alpha2.DnsSettings.GoogleDomainsDns do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name_servers, 1,
    repeated: true,
    type: :string,
    json_name: "nameServers",
    deprecated: false

  field :ds_state, 2,
    type: Google.Cloud.Domains.V1alpha2.DnsSettings.DsState,
    json_name: "dsState",
    enum: true,
    deprecated: false

  field :ds_records, 3,
    repeated: true,
    type: Google.Cloud.Domains.V1alpha2.DnsSettings.DsRecord,
    json_name: "dsRecords",
    deprecated: false
end

defmodule Google.Cloud.Domains.V1alpha2.DnsSettings.DsRecord do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key_tag, 1, type: :int32, json_name: "keyTag"

  field :algorithm, 2,
    type: Google.Cloud.Domains.V1alpha2.DnsSettings.DsRecord.Algorithm,
    enum: true

  field :digest_type, 3,
    type: Google.Cloud.Domains.V1alpha2.DnsSettings.DsRecord.DigestType,
    json_name: "digestType",
    enum: true

  field :digest, 4, type: :string
end

defmodule Google.Cloud.Domains.V1alpha2.DnsSettings.GlueRecord do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :host_name, 1, type: :string, json_name: "hostName", deprecated: false
  field :ipv4_addresses, 2, repeated: true, type: :string, json_name: "ipv4Addresses"
  field :ipv6_addresses, 3, repeated: true, type: :string, json_name: "ipv6Addresses"
end

defmodule Google.Cloud.Domains.V1alpha2.DnsSettings do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :dns_provider, 0

  field :custom_dns, 1,
    type: Google.Cloud.Domains.V1alpha2.DnsSettings.CustomDns,
    json_name: "customDns",
    oneof: 0

  field :google_domains_dns, 2,
    type: Google.Cloud.Domains.V1alpha2.DnsSettings.GoogleDomainsDns,
    json_name: "googleDomainsDns",
    oneof: 0

  field :glue_records, 4,
    repeated: true,
    type: Google.Cloud.Domains.V1alpha2.DnsSettings.GlueRecord,
    json_name: "glueRecords"
end

defmodule Google.Cloud.Domains.V1alpha2.ContactSettings.Contact do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :postal_address, 1,
    type: Google.Type.PostalAddress,
    json_name: "postalAddress",
    deprecated: false

  field :email, 2, type: :string, deprecated: false
  field :phone_number, 3, type: :string, json_name: "phoneNumber", deprecated: false
  field :fax_number, 4, type: :string, json_name: "faxNumber"
end

defmodule Google.Cloud.Domains.V1alpha2.ContactSettings do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :privacy, 1,
    type: Google.Cloud.Domains.V1alpha2.ContactPrivacy,
    enum: true,
    deprecated: false

  field :registrant_contact, 2,
    type: Google.Cloud.Domains.V1alpha2.ContactSettings.Contact,
    json_name: "registrantContact",
    deprecated: false

  field :admin_contact, 3,
    type: Google.Cloud.Domains.V1alpha2.ContactSettings.Contact,
    json_name: "adminContact",
    deprecated: false

  field :technical_contact, 4,
    type: Google.Cloud.Domains.V1alpha2.ContactSettings.Contact,
    json_name: "technicalContact",
    deprecated: false
end

defmodule Google.Cloud.Domains.V1alpha2.SearchDomainsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :query, 1, type: :string, deprecated: false
  field :location, 2, type: :string, deprecated: false
end

defmodule Google.Cloud.Domains.V1alpha2.SearchDomainsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :register_parameters, 1,
    repeated: true,
    type: Google.Cloud.Domains.V1alpha2.RegisterParameters,
    json_name: "registerParameters"
end

defmodule Google.Cloud.Domains.V1alpha2.RetrieveRegisterParametersRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :domain_name, 1, type: :string, json_name: "domainName", deprecated: false
  field :location, 2, type: :string, deprecated: false
end

defmodule Google.Cloud.Domains.V1alpha2.RetrieveRegisterParametersResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :register_parameters, 1,
    type: Google.Cloud.Domains.V1alpha2.RegisterParameters,
    json_name: "registerParameters"
end

defmodule Google.Cloud.Domains.V1alpha2.RegisterDomainRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :registration, 2, type: Google.Cloud.Domains.V1alpha2.Registration, deprecated: false

  field :domain_notices, 3,
    repeated: true,
    type: Google.Cloud.Domains.V1alpha2.DomainNotice,
    json_name: "domainNotices",
    enum: true

  field :contact_notices, 4,
    repeated: true,
    type: Google.Cloud.Domains.V1alpha2.ContactNotice,
    json_name: "contactNotices",
    enum: true

  field :yearly_price, 5, type: Google.Type.Money, json_name: "yearlyPrice", deprecated: false
  field :validate_only, 6, type: :bool, json_name: "validateOnly"
end

defmodule Google.Cloud.Domains.V1alpha2.RetrieveTransferParametersRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :domain_name, 1, type: :string, json_name: "domainName", deprecated: false
  field :location, 2, type: :string, deprecated: false
end

defmodule Google.Cloud.Domains.V1alpha2.RetrieveTransferParametersResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :transfer_parameters, 1,
    type: Google.Cloud.Domains.V1alpha2.TransferParameters,
    json_name: "transferParameters"
end

defmodule Google.Cloud.Domains.V1alpha2.TransferDomainRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :registration, 2, type: Google.Cloud.Domains.V1alpha2.Registration, deprecated: false

  field :contact_notices, 3,
    repeated: true,
    type: Google.Cloud.Domains.V1alpha2.ContactNotice,
    json_name: "contactNotices",
    enum: true

  field :yearly_price, 4, type: Google.Type.Money, json_name: "yearlyPrice", deprecated: false

  field :authorization_code, 5,
    type: Google.Cloud.Domains.V1alpha2.AuthorizationCode,
    json_name: "authorizationCode"

  field :validate_only, 6, type: :bool, json_name: "validateOnly"
end

defmodule Google.Cloud.Domains.V1alpha2.ListRegistrationsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
end

defmodule Google.Cloud.Domains.V1alpha2.ListRegistrationsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :registrations, 1, repeated: true, type: Google.Cloud.Domains.V1alpha2.Registration
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Domains.V1alpha2.GetRegistrationRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Domains.V1alpha2.UpdateRegistrationRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :registration, 1, type: Google.Cloud.Domains.V1alpha2.Registration

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Cloud.Domains.V1alpha2.ConfigureManagementSettingsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :registration, 1, type: :string, deprecated: false

  field :management_settings, 2,
    type: Google.Cloud.Domains.V1alpha2.ManagementSettings,
    json_name: "managementSettings"

  field :update_mask, 3,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Cloud.Domains.V1alpha2.ConfigureDnsSettingsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :registration, 1, type: :string, deprecated: false

  field :dns_settings, 2,
    type: Google.Cloud.Domains.V1alpha2.DnsSettings,
    json_name: "dnsSettings"

  field :update_mask, 3,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :validate_only, 4, type: :bool, json_name: "validateOnly"
end

defmodule Google.Cloud.Domains.V1alpha2.ConfigureContactSettingsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :registration, 1, type: :string, deprecated: false

  field :contact_settings, 2,
    type: Google.Cloud.Domains.V1alpha2.ContactSettings,
    json_name: "contactSettings"

  field :update_mask, 3,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :contact_notices, 4,
    repeated: true,
    type: Google.Cloud.Domains.V1alpha2.ContactNotice,
    json_name: "contactNotices",
    enum: true

  field :validate_only, 5, type: :bool, json_name: "validateOnly"
end

defmodule Google.Cloud.Domains.V1alpha2.ExportRegistrationRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Domains.V1alpha2.DeleteRegistrationRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Domains.V1alpha2.RetrieveAuthorizationCodeRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :registration, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Domains.V1alpha2.ResetAuthorizationCodeRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :registration, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Domains.V1alpha2.RegisterParameters do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :domain_name, 1, type: :string, json_name: "domainName"

  field :availability, 2,
    type: Google.Cloud.Domains.V1alpha2.RegisterParameters.Availability,
    enum: true

  field :supported_privacy, 3,
    repeated: true,
    type: Google.Cloud.Domains.V1alpha2.ContactPrivacy,
    json_name: "supportedPrivacy",
    enum: true

  field :domain_notices, 4,
    repeated: true,
    type: Google.Cloud.Domains.V1alpha2.DomainNotice,
    json_name: "domainNotices",
    enum: true

  field :yearly_price, 5, type: Google.Type.Money, json_name: "yearlyPrice"
end

defmodule Google.Cloud.Domains.V1alpha2.TransferParameters do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :domain_name, 1, type: :string, json_name: "domainName"
  field :current_registrar, 2, type: :string, json_name: "currentRegistrar"
  field :name_servers, 3, repeated: true, type: :string, json_name: "nameServers"

  field :transfer_lock_state, 4,
    type: Google.Cloud.Domains.V1alpha2.TransferLockState,
    json_name: "transferLockState",
    enum: true

  field :supported_privacy, 5,
    repeated: true,
    type: Google.Cloud.Domains.V1alpha2.ContactPrivacy,
    json_name: "supportedPrivacy",
    enum: true

  field :yearly_price, 6, type: Google.Type.Money, json_name: "yearlyPrice"
end

defmodule Google.Cloud.Domains.V1alpha2.AuthorizationCode do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :code, 1, type: :string
end

defmodule Google.Cloud.Domains.V1alpha2.OperationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :create_time, 1, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :end_time, 2, type: Google.Protobuf.Timestamp, json_name: "endTime"
  field :target, 3, type: :string
  field :verb, 4, type: :string
  field :status_detail, 5, type: :string, json_name: "statusDetail"
  field :api_version, 6, type: :string, json_name: "apiVersion"
end

defmodule Google.Cloud.Domains.V1alpha2.Domains.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.domains.v1alpha2.Domains",
    protoc_gen_elixir_version: "0.14.1"

  rpc :SearchDomains,
      Google.Cloud.Domains.V1alpha2.SearchDomainsRequest,
      Google.Cloud.Domains.V1alpha2.SearchDomainsResponse

  rpc :RetrieveRegisterParameters,
      Google.Cloud.Domains.V1alpha2.RetrieveRegisterParametersRequest,
      Google.Cloud.Domains.V1alpha2.RetrieveRegisterParametersResponse

  rpc :RegisterDomain,
      Google.Cloud.Domains.V1alpha2.RegisterDomainRequest,
      Google.Longrunning.Operation

  rpc :RetrieveTransferParameters,
      Google.Cloud.Domains.V1alpha2.RetrieveTransferParametersRequest,
      Google.Cloud.Domains.V1alpha2.RetrieveTransferParametersResponse

  rpc :TransferDomain,
      Google.Cloud.Domains.V1alpha2.TransferDomainRequest,
      Google.Longrunning.Operation

  rpc :ListRegistrations,
      Google.Cloud.Domains.V1alpha2.ListRegistrationsRequest,
      Google.Cloud.Domains.V1alpha2.ListRegistrationsResponse

  rpc :GetRegistration,
      Google.Cloud.Domains.V1alpha2.GetRegistrationRequest,
      Google.Cloud.Domains.V1alpha2.Registration

  rpc :UpdateRegistration,
      Google.Cloud.Domains.V1alpha2.UpdateRegistrationRequest,
      Google.Longrunning.Operation

  rpc :ConfigureManagementSettings,
      Google.Cloud.Domains.V1alpha2.ConfigureManagementSettingsRequest,
      Google.Longrunning.Operation

  rpc :ConfigureDnsSettings,
      Google.Cloud.Domains.V1alpha2.ConfigureDnsSettingsRequest,
      Google.Longrunning.Operation

  rpc :ConfigureContactSettings,
      Google.Cloud.Domains.V1alpha2.ConfigureContactSettingsRequest,
      Google.Longrunning.Operation

  rpc :ExportRegistration,
      Google.Cloud.Domains.V1alpha2.ExportRegistrationRequest,
      Google.Longrunning.Operation

  rpc :DeleteRegistration,
      Google.Cloud.Domains.V1alpha2.DeleteRegistrationRequest,
      Google.Longrunning.Operation

  rpc :RetrieveAuthorizationCode,
      Google.Cloud.Domains.V1alpha2.RetrieveAuthorizationCodeRequest,
      Google.Cloud.Domains.V1alpha2.AuthorizationCode

  rpc :ResetAuthorizationCode,
      Google.Cloud.Domains.V1alpha2.ResetAuthorizationCodeRequest,
      Google.Cloud.Domains.V1alpha2.AuthorizationCode
end

defmodule Google.Cloud.Domains.V1alpha2.Domains.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Domains.V1alpha2.Domains.Service
end
