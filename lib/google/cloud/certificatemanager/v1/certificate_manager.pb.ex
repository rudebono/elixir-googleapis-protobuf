defmodule Google.Cloud.Certificatemanager.V1.ServingState do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :SERVING_STATE_UNSPECIFIED | :ACTIVE | :PENDING

  field :SERVING_STATE_UNSPECIFIED, 0
  field :ACTIVE, 1
  field :PENDING, 2
end
defmodule Google.Cloud.Certificatemanager.V1.Certificate.Scope do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :DEFAULT | :EDGE_CACHE

  field :DEFAULT, 0
  field :EDGE_CACHE, 1
end
defmodule Google.Cloud.Certificatemanager.V1.Certificate.ManagedCertificate.State do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :STATE_UNSPECIFIED | :PROVISIONING | :FAILED | :ACTIVE

  field :STATE_UNSPECIFIED, 0
  field :PROVISIONING, 1
  field :FAILED, 2
  field :ACTIVE, 3
end
defmodule Google.Cloud.Certificatemanager.V1.Certificate.ManagedCertificate.ProvisioningIssue.Reason do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :REASON_UNSPECIFIED | :AUTHORIZATION_ISSUE | :RATE_LIMITED

  field :REASON_UNSPECIFIED, 0
  field :AUTHORIZATION_ISSUE, 1
  field :RATE_LIMITED, 2
end
defmodule Google.Cloud.Certificatemanager.V1.Certificate.ManagedCertificate.AuthorizationAttemptInfo.State do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :STATE_UNSPECIFIED | :AUTHORIZING | :AUTHORIZED | :FAILED

  field :STATE_UNSPECIFIED, 0
  field :AUTHORIZING, 1
  field :AUTHORIZED, 6
  field :FAILED, 7
end
defmodule Google.Cloud.Certificatemanager.V1.Certificate.ManagedCertificate.AuthorizationAttemptInfo.FailureReason do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :FAILURE_REASON_UNSPECIFIED | :CONFIG | :CAA | :RATE_LIMITED

  field :FAILURE_REASON_UNSPECIFIED, 0
  field :CONFIG, 1
  field :CAA, 2
  field :RATE_LIMITED, 3
end
defmodule Google.Cloud.Certificatemanager.V1.CertificateMapEntry.Matcher do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :MATCHER_UNSPECIFIED | :PRIMARY

  field :MATCHER_UNSPECIFIED, 0
  field :PRIMARY, 1
end
defmodule Google.Cloud.Certificatemanager.V1.ListCertificatesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t(),
          filter: String.t(),
          order_by: String.t()
        }

  defstruct parent: "",
            page_size: 0,
            page_token: "",
            filter: "",
            order_by: ""

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
  field :order_by, 5, type: :string, json_name: "orderBy"
end
defmodule Google.Cloud.Certificatemanager.V1.ListCertificatesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          certificates: [Google.Cloud.Certificatemanager.V1.Certificate.t()],
          next_page_token: String.t(),
          unreachable: [String.t()]
        }

  defstruct certificates: [],
            next_page_token: "",
            unreachable: []

  field :certificates, 1, repeated: true, type: Google.Cloud.Certificatemanager.V1.Certificate
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end
defmodule Google.Cloud.Certificatemanager.V1.GetCertificateRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Certificatemanager.V1.CreateCertificateRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          certificate_id: String.t(),
          certificate: Google.Cloud.Certificatemanager.V1.Certificate.t() | nil
        }

  defstruct parent: "",
            certificate_id: "",
            certificate: nil

  field :parent, 1, type: :string, deprecated: false
  field :certificate_id, 2, type: :string, json_name: "certificateId", deprecated: false
  field :certificate, 3, type: Google.Cloud.Certificatemanager.V1.Certificate, deprecated: false
end
defmodule Google.Cloud.Certificatemanager.V1.UpdateCertificateRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          certificate: Google.Cloud.Certificatemanager.V1.Certificate.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct certificate: nil,
            update_mask: nil

  field :certificate, 1, type: Google.Cloud.Certificatemanager.V1.Certificate, deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end
defmodule Google.Cloud.Certificatemanager.V1.DeleteCertificateRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Certificatemanager.V1.ListCertificateMapsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t(),
          filter: String.t(),
          order_by: String.t()
        }

  defstruct parent: "",
            page_size: 0,
            page_token: "",
            filter: "",
            order_by: ""

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
  field :order_by, 5, type: :string, json_name: "orderBy"
end
defmodule Google.Cloud.Certificatemanager.V1.ListCertificateMapsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          certificate_maps: [Google.Cloud.Certificatemanager.V1.CertificateMap.t()],
          next_page_token: String.t(),
          unreachable: [String.t()]
        }

  defstruct certificate_maps: [],
            next_page_token: "",
            unreachable: []

  field :certificate_maps, 1,
    repeated: true,
    type: Google.Cloud.Certificatemanager.V1.CertificateMap,
    json_name: "certificateMaps"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end
defmodule Google.Cloud.Certificatemanager.V1.GetCertificateMapRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Certificatemanager.V1.CreateCertificateMapRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          certificate_map_id: String.t(),
          certificate_map: Google.Cloud.Certificatemanager.V1.CertificateMap.t() | nil
        }

  defstruct parent: "",
            certificate_map_id: "",
            certificate_map: nil

  field :parent, 1, type: :string, deprecated: false
  field :certificate_map_id, 2, type: :string, json_name: "certificateMapId", deprecated: false

  field :certificate_map, 3,
    type: Google.Cloud.Certificatemanager.V1.CertificateMap,
    json_name: "certificateMap",
    deprecated: false
end
defmodule Google.Cloud.Certificatemanager.V1.UpdateCertificateMapRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          certificate_map: Google.Cloud.Certificatemanager.V1.CertificateMap.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct certificate_map: nil,
            update_mask: nil

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Certificatemanager.V1.ListCertificateMapEntriesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t(),
          filter: String.t(),
          order_by: String.t()
        }

  defstruct parent: "",
            page_size: 0,
            page_token: "",
            filter: "",
            order_by: ""

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
  field :order_by, 5, type: :string, json_name: "orderBy"
end
defmodule Google.Cloud.Certificatemanager.V1.ListCertificateMapEntriesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          certificate_map_entries: [Google.Cloud.Certificatemanager.V1.CertificateMapEntry.t()],
          next_page_token: String.t(),
          unreachable: [String.t()]
        }

  defstruct certificate_map_entries: [],
            next_page_token: "",
            unreachable: []

  field :certificate_map_entries, 1,
    repeated: true,
    type: Google.Cloud.Certificatemanager.V1.CertificateMapEntry,
    json_name: "certificateMapEntries"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end
defmodule Google.Cloud.Certificatemanager.V1.GetCertificateMapEntryRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Certificatemanager.V1.CreateCertificateMapEntryRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          certificate_map_entry_id: String.t(),
          certificate_map_entry: Google.Cloud.Certificatemanager.V1.CertificateMapEntry.t() | nil
        }

  defstruct parent: "",
            certificate_map_entry_id: "",
            certificate_map_entry: nil

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          certificate_map_entry: Google.Cloud.Certificatemanager.V1.CertificateMapEntry.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct certificate_map_entry: nil,
            update_mask: nil

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Certificatemanager.V1.ListDnsAuthorizationsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t(),
          filter: String.t(),
          order_by: String.t()
        }

  defstruct parent: "",
            page_size: 0,
            page_token: "",
            filter: "",
            order_by: ""

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
  field :order_by, 5, type: :string, json_name: "orderBy"
end
defmodule Google.Cloud.Certificatemanager.V1.ListDnsAuthorizationsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          dns_authorizations: [Google.Cloud.Certificatemanager.V1.DnsAuthorization.t()],
          next_page_token: String.t(),
          unreachable: [String.t()]
        }

  defstruct dns_authorizations: [],
            next_page_token: "",
            unreachable: []

  field :dns_authorizations, 1,
    repeated: true,
    type: Google.Cloud.Certificatemanager.V1.DnsAuthorization,
    json_name: "dnsAuthorizations"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end
defmodule Google.Cloud.Certificatemanager.V1.GetDnsAuthorizationRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Certificatemanager.V1.CreateDnsAuthorizationRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          dns_authorization_id: String.t(),
          dns_authorization: Google.Cloud.Certificatemanager.V1.DnsAuthorization.t() | nil
        }

  defstruct parent: "",
            dns_authorization_id: "",
            dns_authorization: nil

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          dns_authorization: Google.Cloud.Certificatemanager.V1.DnsAuthorization.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct dns_authorization: nil,
            update_mask: nil

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Certificatemanager.V1.OperationMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          create_time: Google.Protobuf.Timestamp.t() | nil,
          end_time: Google.Protobuf.Timestamp.t() | nil,
          target: String.t(),
          verb: String.t(),
          status_message: String.t(),
          requested_cancellation: boolean,
          api_version: String.t()
        }

  defstruct create_time: nil,
            end_time: nil,
            target: "",
            verb: "",
            status_message: "",
            requested_cancellation: false,
            api_version: ""

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          pem_certificate: String.t(),
          pem_private_key: String.t()
        }

  defstruct pem_certificate: "",
            pem_private_key: ""

  field :pem_certificate, 1, type: :string, json_name: "pemCertificate", deprecated: false
  field :pem_private_key, 2, type: :string, json_name: "pemPrivateKey", deprecated: false
end
defmodule Google.Cloud.Certificatemanager.V1.Certificate.ManagedCertificate.ProvisioningIssue do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          reason:
            Google.Cloud.Certificatemanager.V1.Certificate.ManagedCertificate.ProvisioningIssue.Reason.t(),
          details: String.t()
        }

  defstruct reason: :REASON_UNSPECIFIED,
            details: ""

  field :reason, 1,
    type:
      Google.Cloud.Certificatemanager.V1.Certificate.ManagedCertificate.ProvisioningIssue.Reason,
    enum: true

  field :details, 2, type: :string
end
defmodule Google.Cloud.Certificatemanager.V1.Certificate.ManagedCertificate.AuthorizationAttemptInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          domain: String.t(),
          state:
            Google.Cloud.Certificatemanager.V1.Certificate.ManagedCertificate.AuthorizationAttemptInfo.State.t(),
          failure_reason:
            Google.Cloud.Certificatemanager.V1.Certificate.ManagedCertificate.AuthorizationAttemptInfo.FailureReason.t(),
          details: String.t()
        }

  defstruct domain: "",
            state: :STATE_UNSPECIFIED,
            failure_reason: :FAILURE_REASON_UNSPECIFIED,
            details: ""

  field :domain, 1, type: :string

  field :state, 2,
    type:
      Google.Cloud.Certificatemanager.V1.Certificate.ManagedCertificate.AuthorizationAttemptInfo.State,
    enum: true

  field :failure_reason, 3,
    type:
      Google.Cloud.Certificatemanager.V1.Certificate.ManagedCertificate.AuthorizationAttemptInfo.FailureReason,
    json_name: "failureReason",
    enum: true,
    deprecated: false

  field :details, 4, type: :string
end
defmodule Google.Cloud.Certificatemanager.V1.Certificate.ManagedCertificate do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          domains: [String.t()],
          dns_authorizations: [String.t()],
          state: Google.Cloud.Certificatemanager.V1.Certificate.ManagedCertificate.State.t(),
          provisioning_issue:
            Google.Cloud.Certificatemanager.V1.Certificate.ManagedCertificate.ProvisioningIssue.t()
            | nil,
          authorization_attempt_info: [
            Google.Cloud.Certificatemanager.V1.Certificate.ManagedCertificate.AuthorizationAttemptInfo.t()
          ]
        }

  defstruct domains: [],
            dns_authorizations: [],
            state: :STATE_UNSPECIFIED,
            provisioning_issue: nil,
            authorization_attempt_info: []

  field :domains, 1, repeated: true, type: :string, deprecated: false

  field :dns_authorizations, 2,
    repeated: true,
    type: :string,
    json_name: "dnsAuthorizations",
    deprecated: false

  field :state, 4,
    type: Google.Cloud.Certificatemanager.V1.Certificate.ManagedCertificate.State,
    enum: true,
    deprecated: false

  field :provisioning_issue, 3,
    type: Google.Cloud.Certificatemanager.V1.Certificate.ManagedCertificate.ProvisioningIssue,
    json_name: "provisioningIssue"

  field :authorization_attempt_info, 5,
    repeated: true,
    type:
      Google.Cloud.Certificatemanager.V1.Certificate.ManagedCertificate.AuthorizationAttemptInfo,
    json_name: "authorizationAttemptInfo",
    deprecated: false
end
defmodule Google.Cloud.Certificatemanager.V1.Certificate.LabelsEntry do
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
defmodule Google.Cloud.Certificatemanager.V1.Certificate do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          type:
            {:self_managed,
             Google.Cloud.Certificatemanager.V1.Certificate.SelfManagedCertificate.t() | nil}
            | {:managed,
               Google.Cloud.Certificatemanager.V1.Certificate.ManagedCertificate.t() | nil},
          name: String.t(),
          description: String.t(),
          create_time: Google.Protobuf.Timestamp.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil,
          labels: %{String.t() => String.t()},
          san_dnsnames: [String.t()],
          pem_certificate: String.t(),
          expire_time: Google.Protobuf.Timestamp.t() | nil,
          scope: Google.Cloud.Certificatemanager.V1.Certificate.Scope.t()
        }

  defstruct type: nil,
            name: "",
            description: "",
            create_time: nil,
            update_time: nil,
            labels: %{},
            san_dnsnames: [],
            pem_certificate: "",
            expire_time: nil,
            scope: :DEFAULT

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          ip_address: String.t(),
          ports: [non_neg_integer]
        }

  defstruct ip_address: "",
            ports: []

  field :ip_address, 1, type: :string, json_name: "ipAddress"
  field :ports, 3, repeated: true, type: :uint32
end
defmodule Google.Cloud.Certificatemanager.V1.CertificateMap.GclbTarget do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          target_proxy: {:target_https_proxy, String.t()} | {:target_ssl_proxy, String.t()},
          ip_configs: [Google.Cloud.Certificatemanager.V1.CertificateMap.GclbTarget.IpConfig.t()]
        }

  defstruct target_proxy: nil,
            ip_configs: []

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
    json_name: "ipConfigs"
end
defmodule Google.Cloud.Certificatemanager.V1.CertificateMap.LabelsEntry do
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
defmodule Google.Cloud.Certificatemanager.V1.CertificateMap do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          description: String.t(),
          create_time: Google.Protobuf.Timestamp.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil,
          labels: %{String.t() => String.t()},
          gclb_targets: [Google.Cloud.Certificatemanager.V1.CertificateMap.GclbTarget.t()]
        }

  defstruct name: "",
            description: "",
            create_time: nil,
            update_time: nil,
            labels: %{},
            gclb_targets: []

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
defmodule Google.Cloud.Certificatemanager.V1.CertificateMapEntry do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          match:
            {:hostname, String.t()}
            | {:matcher, Google.Cloud.Certificatemanager.V1.CertificateMapEntry.Matcher.t()},
          name: String.t(),
          description: String.t(),
          create_time: Google.Protobuf.Timestamp.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil,
          labels: %{String.t() => String.t()},
          certificates: [String.t()],
          state: Google.Cloud.Certificatemanager.V1.ServingState.t()
        }

  defstruct match: nil,
            name: "",
            description: "",
            create_time: nil,
            update_time: nil,
            labels: %{},
            certificates: [],
            state: :SERVING_STATE_UNSPECIFIED

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          type: String.t(),
          data: String.t()
        }

  defstruct name: "",
            type: "",
            data: ""

  field :name, 1, type: :string, deprecated: false
  field :type, 2, type: :string, deprecated: false
  field :data, 3, type: :string, deprecated: false
end
defmodule Google.Cloud.Certificatemanager.V1.DnsAuthorization.LabelsEntry do
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
defmodule Google.Cloud.Certificatemanager.V1.DnsAuthorization do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          create_time: Google.Protobuf.Timestamp.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil,
          labels: %{String.t() => String.t()},
          description: String.t(),
          domain: String.t(),
          dns_resource_record:
            Google.Cloud.Certificatemanager.V1.DnsAuthorization.DnsResourceRecord.t() | nil
        }

  defstruct name: "",
            create_time: nil,
            update_time: nil,
            labels: %{},
            description: "",
            domain: "",
            dns_resource_record: nil

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
  use GRPC.Service, name: "google.cloud.certificatemanager.v1.CertificateManager"

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
end

defmodule Google.Cloud.Certificatemanager.V1.CertificateManager.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Certificatemanager.V1.CertificateManager.Service
end
