defmodule Google.Cloud.Managedidentities.V1.OpMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          create_time: Google.Protobuf.Timestamp.t() | nil,
          end_time: Google.Protobuf.Timestamp.t() | nil,
          target: String.t(),
          verb: String.t(),
          requested_cancellation: boolean,
          api_version: String.t()
        }

  defstruct [:create_time, :end_time, :target, :verb, :requested_cancellation, :api_version]

  field :create_time, 1, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :end_time, 2, type: Google.Protobuf.Timestamp, json_name: "endTime"
  field :target, 3, type: :string
  field :verb, 4, type: :string
  field :requested_cancellation, 5, type: :bool, json_name: "requestedCancellation"
  field :api_version, 6, type: :string, json_name: "apiVersion"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Managedidentities.V1.CreateMicrosoftAdDomainRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          domain_name: String.t(),
          domain: Google.Cloud.Managedidentities.V1.Domain.t() | nil
        }

  defstruct [:parent, :domain_name, :domain]

  field :parent, 1, type: :string
  field :domain_name, 2, type: :string, json_name: "domainName"
  field :domain, 3, type: Google.Cloud.Managedidentities.V1.Domain

  def transform_module(), do: nil
end

defmodule Google.Cloud.Managedidentities.V1.ResetAdminPasswordRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Managedidentities.V1.ResetAdminPasswordResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          password: String.t()
        }

  defstruct [:password]

  field :password, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Managedidentities.V1.ListDomainsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t(),
          filter: String.t(),
          order_by: String.t()
        }

  defstruct [:parent, :page_size, :page_token, :filter, :order_by]

  field :parent, 1, type: :string
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
  field :order_by, 5, type: :string, json_name: "orderBy"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Managedidentities.V1.ListDomainsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          domains: [Google.Cloud.Managedidentities.V1.Domain.t()],
          next_page_token: String.t(),
          unreachable: [String.t()]
        }

  defstruct [:domains, :next_page_token, :unreachable]

  field :domains, 1, repeated: true, type: Google.Cloud.Managedidentities.V1.Domain
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Managedidentities.V1.GetDomainRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Managedidentities.V1.UpdateDomainRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          update_mask: Google.Protobuf.FieldMask.t() | nil,
          domain: Google.Cloud.Managedidentities.V1.Domain.t() | nil
        }

  defstruct [:update_mask, :domain]

  field :update_mask, 1, type: Google.Protobuf.FieldMask, json_name: "updateMask"
  field :domain, 2, type: Google.Cloud.Managedidentities.V1.Domain

  def transform_module(), do: nil
end

defmodule Google.Cloud.Managedidentities.V1.DeleteDomainRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Managedidentities.V1.AttachTrustRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          trust: Google.Cloud.Managedidentities.V1.Trust.t() | nil
        }

  defstruct [:name, :trust]

  field :name, 1, type: :string
  field :trust, 2, type: Google.Cloud.Managedidentities.V1.Trust

  def transform_module(), do: nil
end

defmodule Google.Cloud.Managedidentities.V1.ReconfigureTrustRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          target_domain_name: String.t(),
          target_dns_ip_addresses: [String.t()]
        }

  defstruct [:name, :target_domain_name, :target_dns_ip_addresses]

  field :name, 1, type: :string
  field :target_domain_name, 2, type: :string, json_name: "targetDomainName"

  field :target_dns_ip_addresses, 3,
    repeated: true,
    type: :string,
    json_name: "targetDnsIpAddresses"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Managedidentities.V1.DetachTrustRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          trust: Google.Cloud.Managedidentities.V1.Trust.t() | nil
        }

  defstruct [:name, :trust]

  field :name, 1, type: :string
  field :trust, 2, type: Google.Cloud.Managedidentities.V1.Trust

  def transform_module(), do: nil
end

defmodule Google.Cloud.Managedidentities.V1.ValidateTrustRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          trust: Google.Cloud.Managedidentities.V1.Trust.t() | nil
        }

  defstruct [:name, :trust]

  field :name, 1, type: :string
  field :trust, 2, type: Google.Cloud.Managedidentities.V1.Trust

  def transform_module(), do: nil
end

defmodule Google.Cloud.Managedidentities.V1.ManagedIdentitiesService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.managedidentities.v1.ManagedIdentitiesService"

  rpc :CreateMicrosoftAdDomain,
      Google.Cloud.Managedidentities.V1.CreateMicrosoftAdDomainRequest,
      Google.Longrunning.Operation

  rpc :ResetAdminPassword,
      Google.Cloud.Managedidentities.V1.ResetAdminPasswordRequest,
      Google.Cloud.Managedidentities.V1.ResetAdminPasswordResponse

  rpc :ListDomains,
      Google.Cloud.Managedidentities.V1.ListDomainsRequest,
      Google.Cloud.Managedidentities.V1.ListDomainsResponse

  rpc :GetDomain,
      Google.Cloud.Managedidentities.V1.GetDomainRequest,
      Google.Cloud.Managedidentities.V1.Domain

  rpc :UpdateDomain,
      Google.Cloud.Managedidentities.V1.UpdateDomainRequest,
      Google.Longrunning.Operation

  rpc :DeleteDomain,
      Google.Cloud.Managedidentities.V1.DeleteDomainRequest,
      Google.Longrunning.Operation

  rpc :AttachTrust,
      Google.Cloud.Managedidentities.V1.AttachTrustRequest,
      Google.Longrunning.Operation

  rpc :ReconfigureTrust,
      Google.Cloud.Managedidentities.V1.ReconfigureTrustRequest,
      Google.Longrunning.Operation

  rpc :DetachTrust,
      Google.Cloud.Managedidentities.V1.DetachTrustRequest,
      Google.Longrunning.Operation

  rpc :ValidateTrust,
      Google.Cloud.Managedidentities.V1.ValidateTrustRequest,
      Google.Longrunning.Operation
end

defmodule Google.Cloud.Managedidentities.V1.ManagedIdentitiesService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Managedidentities.V1.ManagedIdentitiesService.Service
end
