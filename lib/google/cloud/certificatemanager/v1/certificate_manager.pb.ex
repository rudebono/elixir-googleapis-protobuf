defmodule Google.Cloud.Certificatemanager.V1.ServingState do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :SERVING_STATE_UNSPECIFIED, 0
  field :ACTIVE, 1
  field :PENDING, 2
end

defmodule Google.Cloud.Certificatemanager.V1.Certificate.Scope do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :DEFAULT, 0
  field :EDGE_CACHE, 1
end

defmodule Google.Cloud.Certificatemanager.V1.Certificate.ManagedCertificate.State do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :PROVISIONING, 1
  field :FAILED, 2
  field :ACTIVE, 3
end

defmodule Google.Cloud.Certificatemanager.V1.Certificate.ManagedCertificate.ProvisioningIssue.Reason do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :REASON_UNSPECIFIED, 0
  field :AUTHORIZATION_ISSUE, 1
  field :RATE_LIMITED, 2
end

defmodule Google.Cloud.Certificatemanager.V1.Certificate.ManagedCertificate.AuthorizationAttemptInfo.State do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :AUTHORIZING, 1
  field :AUTHORIZED, 6
  field :FAILED, 7
end

defmodule Google.Cloud.Certificatemanager.V1.Certificate.ManagedCertificate.AuthorizationAttemptInfo.FailureReason do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :FAILURE_REASON_UNSPECIFIED, 0
  field :CONFIG, 1
  field :CAA, 2
  field :RATE_LIMITED, 3
end

defmodule Google.Cloud.Certificatemanager.V1.CertificateMapEntry.Matcher do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :MATCHER_UNSPECIFIED, 0
  field :PRIMARY, 1
end

defmodule Google.Cloud.Certificatemanager.V1.ListCertificatesRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
  field :order_by, 5, type: :string, json_name: "orderBy"
end

defmodule Google.Cloud.Certificatemanager.V1.ListCertificatesResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :certificates, 1, repeated: true, type: Google.Cloud.Certificatemanager.V1.Certificate
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Certificatemanager.V1.GetCertificateRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Certificatemanager.V1.CreateCertificateRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :certificate_id, 2, type: :string, json_name: "certificateId", deprecated: false
  field :certificate, 3, type: Google.Cloud.Certificatemanager.V1.Certificate, deprecated: false
end

defmodule Google.Cloud.Certificatemanager.V1.UpdateCertificateRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :certificate, 1, type: Google.Cloud.Certificatemanager.V1.Certificate, deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Cloud.Certificatemanager.V1.DeleteCertificateRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Certificatemanager.V1.ListCertificateMapsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
  field :order_by, 5, type: :string, json_name: "orderBy"
end

defmodule Google.Cloud.Certificatemanager.V1.ListCertificateMapsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :certificate_maps, 1,
    repeated: true,
    type: Google.Cloud.Certificatemanager.V1.CertificateMap,
    json_name: "certificateMaps"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Certificatemanager.V1.GetCertificateMapRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Certificatemanager.V1.CreateCertificateMapRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :certificate_map_id, 2, type: :string, json_name: "certificateMapId", deprecated: false

  field :certificate_map, 3,
    type: Google.Cloud.Certificatemanager.V1.CertificateMap,
    json_name: "certificateMap",
    deprecated: false
end

defmodule Google.Cloud.Certificatemanager.V1.UpdateCertificateMapRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :certificate_map, 1,
    type: Google.Cloud.Certificatemanager.V1.CertificateMap,
    json_name: "certificateMap",
    deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Cloud.Certificatemanager.V1.DeleteCertificateMapRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Certificatemanager.V1.ListCertificateMapEntriesRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
  field :order_by, 5, type: :string, json_name: "orderBy"
end

defmodule Google.Cloud.Certificatemanager.V1.ListCertificateMapEntriesResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :certificate_map_entries, 1,
    repeated: true,
    type: Google.Cloud.Certificatemanager.V1.CertificateMapEntry,
    json_name: "certificateMapEntries"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Certificatemanager.V1.GetCertificateMapEntryRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Certificatemanager.V1.CreateCertificateMapEntryRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :certificate_map_entry_id, 2,
    type: :string,
    json_name: "certificateMapEntryId",
    deprecated: false

  field :certificate_map_entry, 3,
    type: Google.Cloud.Certificatemanager.V1.CertificateMapEntry,
    json_name: "certificateMapEntry",
    deprecated: false
end

defmodule Google.Cloud.Certificatemanager.V1.UpdateCertificateMapEntryRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :certificate_map_entry, 1,
    type: Google.Cloud.Certificatemanager.V1.CertificateMapEntry,
    json_name: "certificateMapEntry",
    deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Cloud.Certificatemanager.V1.DeleteCertificateMapEntryRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Certificatemanager.V1.ListDnsAuthorizationsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
  field :order_by, 5, type: :string, json_name: "orderBy"
end

defmodule Google.Cloud.Certificatemanager.V1.ListDnsAuthorizationsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :dns_authorizations, 1,
    repeated: true,
    type: Google.Cloud.Certificatemanager.V1.DnsAuthorization,
    json_name: "dnsAuthorizations"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Certificatemanager.V1.GetDnsAuthorizationRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Certificatemanager.V1.CreateDnsAuthorizationRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :dns_authorization_id, 2,
    type: :string,
    json_name: "dnsAuthorizationId",
    deprecated: false

  field :dns_authorization, 3,
    type: Google.Cloud.Certificatemanager.V1.DnsAuthorization,
    json_name: "dnsAuthorization",
    deprecated: false
end

defmodule Google.Cloud.Certificatemanager.V1.UpdateDnsAuthorizationRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :dns_authorization, 1,
    type: Google.Cloud.Certificatemanager.V1.DnsAuthorization,
    json_name: "dnsAuthorization",
    deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Cloud.Certificatemanager.V1.DeleteDnsAuthorizationRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Certificatemanager.V1.OperationMetadata do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :create_time, 1, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :end_time, 2, type: Google.Protobuf.Timestamp, json_name: "endTime"
  field :target, 3, type: :string
  field :verb, 4, type: :string
  field :status_message, 5, type: :string, json_name: "statusMessage"
  field :requested_cancellation, 6, type: :bool, json_name: "requestedCancellation"
  field :api_version, 7, type: :string, json_name: "apiVersion"
end

defmodule Google.Cloud.Certificatemanager.V1.Certificate.SelfManagedCertificate do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :pem_certificate, 1, type: :string, json_name: "pemCertificate", deprecated: false
  field :pem_private_key, 2, type: :string, json_name: "pemPrivateKey", deprecated: false
end

defmodule Google.Cloud.Certificatemanager.V1.Certificate.ManagedCertificate.ProvisioningIssue do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :reason, 1,
    type:
      Google.Cloud.Certificatemanager.V1.Certificate.ManagedCertificate.ProvisioningIssue.Reason,
    enum: true,
    deprecated: false

  field :details, 2, type: :string, deprecated: false
end

defmodule Google.Cloud.Certificatemanager.V1.Certificate.ManagedCertificate.AuthorizationAttemptInfo do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :domain, 1, type: :string

  field :state, 2,
    type:
      Google.Cloud.Certificatemanager.V1.Certificate.ManagedCertificate.AuthorizationAttemptInfo.State,
    enum: true,
    deprecated: false

  field :failure_reason, 3,
    type:
      Google.Cloud.Certificatemanager.V1.Certificate.ManagedCertificate.AuthorizationAttemptInfo.FailureReason,
    json_name: "failureReason",
    enum: true,
    deprecated: false

  field :details, 4, type: :string, deprecated: false
end

defmodule Google.Cloud.Certificatemanager.V1.Certificate.ManagedCertificate do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :domains, 1, repeated: true, type: :string, deprecated: false

  field :dns_authorizations, 2,
    repeated: true,
    type: :string,
    json_name: "dnsAuthorizations",
    deprecated: false

  field :issuance_config, 6, type: :string, json_name: "issuanceConfig", deprecated: false

  field :state, 4,
    type: Google.Cloud.Certificatemanager.V1.Certificate.ManagedCertificate.State,
    enum: true,
    deprecated: false

  field :provisioning_issue, 3,
    type: Google.Cloud.Certificatemanager.V1.Certificate.ManagedCertificate.ProvisioningIssue,
    json_name: "provisioningIssue",
    deprecated: false

  field :authorization_attempt_info, 5,
    repeated: true,
    type:
      Google.Cloud.Certificatemanager.V1.Certificate.ManagedCertificate.AuthorizationAttemptInfo,
    json_name: "authorizationAttemptInfo",
    deprecated: false
end

defmodule Google.Cloud.Certificatemanager.V1.Certificate.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Certificatemanager.V1.Certificate do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :type, 0

  field :name, 1, type: :string
  field :description, 8, type: :string

  field :create_time, 2,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :labels, 4,
    repeated: true,
    type: Google.Cloud.Certificatemanager.V1.Certificate.LabelsEntry,
    map: true

  field :self_managed, 5,
    type: Google.Cloud.Certificatemanager.V1.Certificate.SelfManagedCertificate,
    json_name: "selfManaged",
    oneof: 0

  field :managed, 11,
    type: Google.Cloud.Certificatemanager.V1.Certificate.ManagedCertificate,
    oneof: 0

  field :san_dnsnames, 6,
    repeated: true,
    type: :string,
    json_name: "sanDnsnames",
    deprecated: false

  field :pem_certificate, 9, type: :string, json_name: "pemCertificate", deprecated: false

  field :expire_time, 7,
    type: Google.Protobuf.Timestamp,
    json_name: "expireTime",
    deprecated: false

  field :scope, 12,
    type: Google.Cloud.Certificatemanager.V1.Certificate.Scope,
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Certificatemanager.V1.CertificateMap.GclbTarget.IpConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :ip_address, 1, type: :string, json_name: "ipAddress", deprecated: false
  field :ports, 3, repeated: true, type: :uint32, deprecated: false
end

defmodule Google.Cloud.Certificatemanager.V1.CertificateMap.GclbTarget do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :target_proxy, 0

  field :target_https_proxy, 1,
    type: :string,
    json_name: "targetHttpsProxy",
    oneof: 0,
    deprecated: false

  field :target_ssl_proxy, 3,
    type: :string,
    json_name: "targetSslProxy",
    oneof: 0,
    deprecated: false

  field :ip_configs, 2,
    repeated: true,
    type: Google.Cloud.Certificatemanager.V1.CertificateMap.GclbTarget.IpConfig,
    json_name: "ipConfigs",
    deprecated: false
end

defmodule Google.Cloud.Certificatemanager.V1.CertificateMap.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Certificatemanager.V1.CertificateMap do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string
  field :description, 5, type: :string

  field :create_time, 2,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 6,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :labels, 3,
    repeated: true,
    type: Google.Cloud.Certificatemanager.V1.CertificateMap.LabelsEntry,
    map: true

  field :gclb_targets, 4,
    repeated: true,
    type: Google.Cloud.Certificatemanager.V1.CertificateMap.GclbTarget,
    json_name: "gclbTargets",
    deprecated: false
end

defmodule Google.Cloud.Certificatemanager.V1.CertificateMapEntry.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Certificatemanager.V1.CertificateMapEntry do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :match, 0

  field :name, 1, type: :string
  field :description, 9, type: :string

  field :create_time, 2,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :labels, 4,
    repeated: true,
    type: Google.Cloud.Certificatemanager.V1.CertificateMapEntry.LabelsEntry,
    map: true

  field :hostname, 5, type: :string, oneof: 0

  field :matcher, 10,
    type: Google.Cloud.Certificatemanager.V1.CertificateMapEntry.Matcher,
    enum: true,
    oneof: 0

  field :certificates, 7, repeated: true, type: :string, deprecated: false

  field :state, 8,
    type: Google.Cloud.Certificatemanager.V1.ServingState,
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Certificatemanager.V1.DnsAuthorization.DnsResourceRecord do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :type, 2, type: :string, deprecated: false
  field :data, 3, type: :string, deprecated: false
end

defmodule Google.Cloud.Certificatemanager.V1.DnsAuthorization.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Certificatemanager.V1.DnsAuthorization do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string

  field :create_time, 2,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :labels, 4,
    repeated: true,
    type: Google.Cloud.Certificatemanager.V1.DnsAuthorization.LabelsEntry,
    map: true

  field :description, 5, type: :string
  field :domain, 6, type: :string, deprecated: false

  field :dns_resource_record, 10,
    type: Google.Cloud.Certificatemanager.V1.DnsAuthorization.DnsResourceRecord,
    json_name: "dnsResourceRecord",
    deprecated: false
end

defmodule Google.Cloud.Certificatemanager.V1.CertificateManager.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.cloud.certificatemanager.v1.CertificateManager",
    protoc_gen_elixir_version: "0.11.0"

  rpc :ListCertificates,
      Google.Cloud.Certificatemanager.V1.ListCertificatesRequest,
      Google.Cloud.Certificatemanager.V1.ListCertificatesResponse

  rpc :GetCertificate,
      Google.Cloud.Certificatemanager.V1.GetCertificateRequest,
      Google.Cloud.Certificatemanager.V1.Certificate

  rpc :CreateCertificate,
      Google.Cloud.Certificatemanager.V1.CreateCertificateRequest,
      Google.Longrunning.Operation

  rpc :UpdateCertificate,
      Google.Cloud.Certificatemanager.V1.UpdateCertificateRequest,
      Google.Longrunning.Operation

  rpc :DeleteCertificate,
      Google.Cloud.Certificatemanager.V1.DeleteCertificateRequest,
      Google.Longrunning.Operation

  rpc :ListCertificateMaps,
      Google.Cloud.Certificatemanager.V1.ListCertificateMapsRequest,
      Google.Cloud.Certificatemanager.V1.ListCertificateMapsResponse

  rpc :GetCertificateMap,
      Google.Cloud.Certificatemanager.V1.GetCertificateMapRequest,
      Google.Cloud.Certificatemanager.V1.CertificateMap

  rpc :CreateCertificateMap,
      Google.Cloud.Certificatemanager.V1.CreateCertificateMapRequest,
      Google.Longrunning.Operation

  rpc :UpdateCertificateMap,
      Google.Cloud.Certificatemanager.V1.UpdateCertificateMapRequest,
      Google.Longrunning.Operation

  rpc :DeleteCertificateMap,
      Google.Cloud.Certificatemanager.V1.DeleteCertificateMapRequest,
      Google.Longrunning.Operation

  rpc :ListCertificateMapEntries,
      Google.Cloud.Certificatemanager.V1.ListCertificateMapEntriesRequest,
      Google.Cloud.Certificatemanager.V1.ListCertificateMapEntriesResponse

  rpc :GetCertificateMapEntry,
      Google.Cloud.Certificatemanager.V1.GetCertificateMapEntryRequest,
      Google.Cloud.Certificatemanager.V1.CertificateMapEntry

  rpc :CreateCertificateMapEntry,
      Google.Cloud.Certificatemanager.V1.CreateCertificateMapEntryRequest,
      Google.Longrunning.Operation

  rpc :UpdateCertificateMapEntry,
      Google.Cloud.Certificatemanager.V1.UpdateCertificateMapEntryRequest,
      Google.Longrunning.Operation

  rpc :DeleteCertificateMapEntry,
      Google.Cloud.Certificatemanager.V1.DeleteCertificateMapEntryRequest,
      Google.Longrunning.Operation

  rpc :ListDnsAuthorizations,
      Google.Cloud.Certificatemanager.V1.ListDnsAuthorizationsRequest,
      Google.Cloud.Certificatemanager.V1.ListDnsAuthorizationsResponse

  rpc :GetDnsAuthorization,
      Google.Cloud.Certificatemanager.V1.GetDnsAuthorizationRequest,
      Google.Cloud.Certificatemanager.V1.DnsAuthorization

  rpc :CreateDnsAuthorization,
      Google.Cloud.Certificatemanager.V1.CreateDnsAuthorizationRequest,
      Google.Longrunning.Operation

  rpc :UpdateDnsAuthorization,
      Google.Cloud.Certificatemanager.V1.UpdateDnsAuthorizationRequest,
      Google.Longrunning.Operation

  rpc :DeleteDnsAuthorization,
      Google.Cloud.Certificatemanager.V1.DeleteDnsAuthorizationRequest,
      Google.Longrunning.Operation

  rpc :ListCertificateIssuanceConfigs,
      Google.Cloud.Certificatemanager.V1.ListCertificateIssuanceConfigsRequest,
      Google.Cloud.Certificatemanager.V1.ListCertificateIssuanceConfigsResponse

  rpc :GetCertificateIssuanceConfig,
      Google.Cloud.Certificatemanager.V1.GetCertificateIssuanceConfigRequest,
      Google.Cloud.Certificatemanager.V1.CertificateIssuanceConfig

  rpc :CreateCertificateIssuanceConfig,
      Google.Cloud.Certificatemanager.V1.CreateCertificateIssuanceConfigRequest,
      Google.Longrunning.Operation

  rpc :DeleteCertificateIssuanceConfig,
      Google.Cloud.Certificatemanager.V1.DeleteCertificateIssuanceConfigRequest,
      Google.Longrunning.Operation
end

defmodule Google.Cloud.Certificatemanager.V1.CertificateManager.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Certificatemanager.V1.CertificateManager.Service
end