defmodule Google.Cloud.Security.Privateca.V1beta1.CreateCertificateRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          certificate_id: String.t(),
          certificate: Google.Cloud.Security.Privateca.V1beta1.Certificate.t() | nil,
          request_id: String.t()
        }

  defstruct parent: "",
            certificate_id: "",
            certificate: nil,
            request_id: ""

  field :parent, 1, type: :string, deprecated: false
  field :certificate_id, 2, type: :string, json_name: "certificateId", deprecated: false

  field :certificate, 3,
    type: Google.Cloud.Security.Privateca.V1beta1.Certificate,
    deprecated: false

  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
end
defmodule Google.Cloud.Security.Privateca.V1beta1.GetCertificateRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Security.Privateca.V1beta1.ListCertificatesRequest do
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
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
end
defmodule Google.Cloud.Security.Privateca.V1beta1.ListCertificatesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          certificates: [Google.Cloud.Security.Privateca.V1beta1.Certificate.t()],
          next_page_token: String.t(),
          unreachable: [String.t()]
        }

  defstruct certificates: [],
            next_page_token: "",
            unreachable: []

  field :certificates, 1,
    repeated: true,
    type: Google.Cloud.Security.Privateca.V1beta1.Certificate

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end
defmodule Google.Cloud.Security.Privateca.V1beta1.RevokeCertificateRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          reason: Google.Cloud.Security.Privateca.V1beta1.RevocationReason.t(),
          request_id: String.t()
        }

  defstruct name: "",
            reason: :REVOCATION_REASON_UNSPECIFIED,
            request_id: ""

  field :name, 1, type: :string, deprecated: false

  field :reason, 2,
    type: Google.Cloud.Security.Privateca.V1beta1.RevocationReason,
    enum: true,
    deprecated: false

  field :request_id, 3, type: :string, json_name: "requestId", deprecated: false
end
defmodule Google.Cloud.Security.Privateca.V1beta1.UpdateCertificateRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          certificate: Google.Cloud.Security.Privateca.V1beta1.Certificate.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil,
          request_id: String.t()
        }

  defstruct certificate: nil,
            update_mask: nil,
            request_id: ""

  field :certificate, 1,
    type: Google.Cloud.Security.Privateca.V1beta1.Certificate,
    deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :request_id, 3, type: :string, json_name: "requestId", deprecated: false
end
defmodule Google.Cloud.Security.Privateca.V1beta1.ActivateCertificateAuthorityRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          pem_ca_certificate: String.t(),
          subordinate_config: Google.Cloud.Security.Privateca.V1beta1.SubordinateConfig.t() | nil,
          request_id: String.t()
        }

  defstruct name: "",
            pem_ca_certificate: "",
            subordinate_config: nil,
            request_id: ""

  field :name, 1, type: :string, deprecated: false
  field :pem_ca_certificate, 2, type: :string, json_name: "pemCaCertificate", deprecated: false

  field :subordinate_config, 3,
    type: Google.Cloud.Security.Privateca.V1beta1.SubordinateConfig,
    json_name: "subordinateConfig",
    deprecated: false

  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
end
defmodule Google.Cloud.Security.Privateca.V1beta1.CreateCertificateAuthorityRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          certificate_authority_id: String.t(),
          certificate_authority:
            Google.Cloud.Security.Privateca.V1beta1.CertificateAuthority.t() | nil,
          request_id: String.t()
        }

  defstruct parent: "",
            certificate_authority_id: "",
            certificate_authority: nil,
            request_id: ""

  field :parent, 1, type: :string, deprecated: false

  field :certificate_authority_id, 2,
    type: :string,
    json_name: "certificateAuthorityId",
    deprecated: false

  field :certificate_authority, 3,
    type: Google.Cloud.Security.Privateca.V1beta1.CertificateAuthority,
    json_name: "certificateAuthority",
    deprecated: false

  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
end
defmodule Google.Cloud.Security.Privateca.V1beta1.DisableCertificateAuthorityRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          request_id: String.t()
        }

  defstruct name: "",
            request_id: ""

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
end
defmodule Google.Cloud.Security.Privateca.V1beta1.EnableCertificateAuthorityRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          request_id: String.t()
        }

  defstruct name: "",
            request_id: ""

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
end
defmodule Google.Cloud.Security.Privateca.V1beta1.FetchCertificateAuthorityCsrRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Security.Privateca.V1beta1.FetchCertificateAuthorityCsrResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          pem_csr: String.t()
        }

  defstruct pem_csr: ""

  field :pem_csr, 1, type: :string, json_name: "pemCsr", deprecated: false
end
defmodule Google.Cloud.Security.Privateca.V1beta1.GetCertificateAuthorityRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Security.Privateca.V1beta1.ListCertificateAuthoritiesRequest do
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
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
end
defmodule Google.Cloud.Security.Privateca.V1beta1.ListCertificateAuthoritiesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          certificate_authorities: [
            Google.Cloud.Security.Privateca.V1beta1.CertificateAuthority.t()
          ],
          next_page_token: String.t(),
          unreachable: [String.t()]
        }

  defstruct certificate_authorities: [],
            next_page_token: "",
            unreachable: []

  field :certificate_authorities, 1,
    repeated: true,
    type: Google.Cloud.Security.Privateca.V1beta1.CertificateAuthority,
    json_name: "certificateAuthorities"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end
defmodule Google.Cloud.Security.Privateca.V1beta1.RestoreCertificateAuthorityRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          request_id: String.t()
        }

  defstruct name: "",
            request_id: ""

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
end
defmodule Google.Cloud.Security.Privateca.V1beta1.ScheduleDeleteCertificateAuthorityRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          request_id: String.t()
        }

  defstruct name: "",
            request_id: ""

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
end
defmodule Google.Cloud.Security.Privateca.V1beta1.UpdateCertificateAuthorityRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          certificate_authority:
            Google.Cloud.Security.Privateca.V1beta1.CertificateAuthority.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil,
          request_id: String.t()
        }

  defstruct certificate_authority: nil,
            update_mask: nil,
            request_id: ""

  field :certificate_authority, 1,
    type: Google.Cloud.Security.Privateca.V1beta1.CertificateAuthority,
    json_name: "certificateAuthority",
    deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :request_id, 3, type: :string, json_name: "requestId", deprecated: false
end
defmodule Google.Cloud.Security.Privateca.V1beta1.GetCertificateRevocationListRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Security.Privateca.V1beta1.ListCertificateRevocationListsRequest do
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
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
end
defmodule Google.Cloud.Security.Privateca.V1beta1.ListCertificateRevocationListsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          certificate_revocation_lists: [
            Google.Cloud.Security.Privateca.V1beta1.CertificateRevocationList.t()
          ],
          next_page_token: String.t(),
          unreachable: [String.t()]
        }

  defstruct certificate_revocation_lists: [],
            next_page_token: "",
            unreachable: []

  field :certificate_revocation_lists, 1,
    repeated: true,
    type: Google.Cloud.Security.Privateca.V1beta1.CertificateRevocationList,
    json_name: "certificateRevocationLists"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end
defmodule Google.Cloud.Security.Privateca.V1beta1.UpdateCertificateRevocationListRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          certificate_revocation_list:
            Google.Cloud.Security.Privateca.V1beta1.CertificateRevocationList.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil,
          request_id: String.t()
        }

  defstruct certificate_revocation_list: nil,
            update_mask: nil,
            request_id: ""

  field :certificate_revocation_list, 1,
    type: Google.Cloud.Security.Privateca.V1beta1.CertificateRevocationList,
    json_name: "certificateRevocationList",
    deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :request_id, 3, type: :string, json_name: "requestId", deprecated: false
end
defmodule Google.Cloud.Security.Privateca.V1beta1.GetReusableConfigRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Security.Privateca.V1beta1.ListReusableConfigsRequest do
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
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
end
defmodule Google.Cloud.Security.Privateca.V1beta1.ListReusableConfigsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          reusable_configs: [Google.Cloud.Security.Privateca.V1beta1.ReusableConfig.t()],
          next_page_token: String.t(),
          unreachable: [String.t()]
        }

  defstruct reusable_configs: [],
            next_page_token: "",
            unreachable: []

  field :reusable_configs, 1,
    repeated: true,
    type: Google.Cloud.Security.Privateca.V1beta1.ReusableConfig,
    json_name: "reusableConfigs"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end
defmodule Google.Cloud.Security.Privateca.V1beta1.OperationMetadata do
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

  field :create_time, 1,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :end_time, 2, type: Google.Protobuf.Timestamp, json_name: "endTime", deprecated: false
  field :target, 3, type: :string, deprecated: false
  field :verb, 4, type: :string, deprecated: false
  field :status_message, 5, type: :string, json_name: "statusMessage", deprecated: false

  field :requested_cancellation, 6,
    type: :bool,
    json_name: "requestedCancellation",
    deprecated: false

  field :api_version, 7, type: :string, json_name: "apiVersion", deprecated: false
end
defmodule Google.Cloud.Security.Privateca.V1beta1.CertificateAuthorityService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.security.privateca.v1beta1.CertificateAuthorityService"

  rpc :CreateCertificate,
      Google.Cloud.Security.Privateca.V1beta1.CreateCertificateRequest,
      Google.Cloud.Security.Privateca.V1beta1.Certificate

  rpc :GetCertificate,
      Google.Cloud.Security.Privateca.V1beta1.GetCertificateRequest,
      Google.Cloud.Security.Privateca.V1beta1.Certificate

  rpc :ListCertificates,
      Google.Cloud.Security.Privateca.V1beta1.ListCertificatesRequest,
      Google.Cloud.Security.Privateca.V1beta1.ListCertificatesResponse

  rpc :RevokeCertificate,
      Google.Cloud.Security.Privateca.V1beta1.RevokeCertificateRequest,
      Google.Cloud.Security.Privateca.V1beta1.Certificate

  rpc :UpdateCertificate,
      Google.Cloud.Security.Privateca.V1beta1.UpdateCertificateRequest,
      Google.Cloud.Security.Privateca.V1beta1.Certificate

  rpc :ActivateCertificateAuthority,
      Google.Cloud.Security.Privateca.V1beta1.ActivateCertificateAuthorityRequest,
      Google.Longrunning.Operation

  rpc :CreateCertificateAuthority,
      Google.Cloud.Security.Privateca.V1beta1.CreateCertificateAuthorityRequest,
      Google.Longrunning.Operation

  rpc :DisableCertificateAuthority,
      Google.Cloud.Security.Privateca.V1beta1.DisableCertificateAuthorityRequest,
      Google.Longrunning.Operation

  rpc :EnableCertificateAuthority,
      Google.Cloud.Security.Privateca.V1beta1.EnableCertificateAuthorityRequest,
      Google.Longrunning.Operation

  rpc :FetchCertificateAuthorityCsr,
      Google.Cloud.Security.Privateca.V1beta1.FetchCertificateAuthorityCsrRequest,
      Google.Cloud.Security.Privateca.V1beta1.FetchCertificateAuthorityCsrResponse

  rpc :GetCertificateAuthority,
      Google.Cloud.Security.Privateca.V1beta1.GetCertificateAuthorityRequest,
      Google.Cloud.Security.Privateca.V1beta1.CertificateAuthority

  rpc :ListCertificateAuthorities,
      Google.Cloud.Security.Privateca.V1beta1.ListCertificateAuthoritiesRequest,
      Google.Cloud.Security.Privateca.V1beta1.ListCertificateAuthoritiesResponse

  rpc :RestoreCertificateAuthority,
      Google.Cloud.Security.Privateca.V1beta1.RestoreCertificateAuthorityRequest,
      Google.Longrunning.Operation

  rpc :ScheduleDeleteCertificateAuthority,
      Google.Cloud.Security.Privateca.V1beta1.ScheduleDeleteCertificateAuthorityRequest,
      Google.Longrunning.Operation

  rpc :UpdateCertificateAuthority,
      Google.Cloud.Security.Privateca.V1beta1.UpdateCertificateAuthorityRequest,
      Google.Longrunning.Operation

  rpc :GetCertificateRevocationList,
      Google.Cloud.Security.Privateca.V1beta1.GetCertificateRevocationListRequest,
      Google.Cloud.Security.Privateca.V1beta1.CertificateRevocationList

  rpc :ListCertificateRevocationLists,
      Google.Cloud.Security.Privateca.V1beta1.ListCertificateRevocationListsRequest,
      Google.Cloud.Security.Privateca.V1beta1.ListCertificateRevocationListsResponse

  rpc :UpdateCertificateRevocationList,
      Google.Cloud.Security.Privateca.V1beta1.UpdateCertificateRevocationListRequest,
      Google.Longrunning.Operation

  rpc :GetReusableConfig,
      Google.Cloud.Security.Privateca.V1beta1.GetReusableConfigRequest,
      Google.Cloud.Security.Privateca.V1beta1.ReusableConfig

  rpc :ListReusableConfigs,
      Google.Cloud.Security.Privateca.V1beta1.ListReusableConfigsRequest,
      Google.Cloud.Security.Privateca.V1beta1.ListReusableConfigsResponse
end

defmodule Google.Cloud.Security.Privateca.V1beta1.CertificateAuthorityService.Stub do
  @moduledoc false
  use GRPC.Stub,
    service: Google.Cloud.Security.Privateca.V1beta1.CertificateAuthorityService.Service
end
