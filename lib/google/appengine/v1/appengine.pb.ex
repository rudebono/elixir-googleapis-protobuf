defmodule Google.Appengine.V1.VersionView do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :BASIC | :FULL

  field :BASIC, 0

  field :FULL, 1
end

defmodule Google.Appengine.V1.AuthorizedCertificateView do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :BASIC_CERTIFICATE | :FULL_CERTIFICATE

  field :BASIC_CERTIFICATE, 0

  field :FULL_CERTIFICATE, 1
end

defmodule Google.Appengine.V1.DomainOverrideStrategy do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :UNSPECIFIED_DOMAIN_OVERRIDE_STRATEGY | :STRICT | :OVERRIDE

  field :UNSPECIFIED_DOMAIN_OVERRIDE_STRATEGY, 0

  field :STRICT, 1

  field :OVERRIDE, 2
end

defmodule Google.Appengine.V1.GetApplicationRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Appengine.V1.CreateApplicationRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          application: Google.Appengine.V1.Application.t() | nil
        }

  defstruct [:application]

  field :application, 2, type: Google.Appengine.V1.Application
end

defmodule Google.Appengine.V1.UpdateApplicationRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          application: Google.Appengine.V1.Application.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:name, :application, :update_mask]

  field :name, 1, type: :string
  field :application, 2, type: Google.Appengine.V1.Application
  field :update_mask, 3, type: Google.Protobuf.FieldMask
end

defmodule Google.Appengine.V1.RepairApplicationRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Appengine.V1.ListServicesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct [:parent, :page_size, :page_token]

  field :parent, 1, type: :string
  field :page_size, 2, type: :int32
  field :page_token, 3, type: :string
end

defmodule Google.Appengine.V1.ListServicesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          services: [Google.Appengine.V1.Service.t()],
          next_page_token: String.t()
        }

  defstruct [:services, :next_page_token]

  field :services, 1, repeated: true, type: Google.Appengine.V1.Service
  field :next_page_token, 2, type: :string
end

defmodule Google.Appengine.V1.GetServiceRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Appengine.V1.UpdateServiceRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          service: Google.Appengine.V1.Service.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil,
          migrate_traffic: boolean
        }

  defstruct [:name, :service, :update_mask, :migrate_traffic]

  field :name, 1, type: :string
  field :service, 2, type: Google.Appengine.V1.Service
  field :update_mask, 3, type: Google.Protobuf.FieldMask
  field :migrate_traffic, 4, type: :bool
end

defmodule Google.Appengine.V1.DeleteServiceRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Appengine.V1.ListVersionsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          view: Google.Appengine.V1.VersionView.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct [:parent, :view, :page_size, :page_token]

  field :parent, 1, type: :string
  field :view, 2, type: Google.Appengine.V1.VersionView, enum: true
  field :page_size, 3, type: :int32
  field :page_token, 4, type: :string
end

defmodule Google.Appengine.V1.ListVersionsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          versions: [Google.Appengine.V1.Version.t()],
          next_page_token: String.t()
        }

  defstruct [:versions, :next_page_token]

  field :versions, 1, repeated: true, type: Google.Appengine.V1.Version
  field :next_page_token, 2, type: :string
end

defmodule Google.Appengine.V1.GetVersionRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          view: Google.Appengine.V1.VersionView.t()
        }

  defstruct [:name, :view]

  field :name, 1, type: :string
  field :view, 2, type: Google.Appengine.V1.VersionView, enum: true
end

defmodule Google.Appengine.V1.CreateVersionRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          version: Google.Appengine.V1.Version.t() | nil
        }

  defstruct [:parent, :version]

  field :parent, 1, type: :string
  field :version, 2, type: Google.Appengine.V1.Version
end

defmodule Google.Appengine.V1.UpdateVersionRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          version: Google.Appengine.V1.Version.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:name, :version, :update_mask]

  field :name, 1, type: :string
  field :version, 2, type: Google.Appengine.V1.Version
  field :update_mask, 3, type: Google.Protobuf.FieldMask
end

defmodule Google.Appengine.V1.DeleteVersionRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Appengine.V1.ListInstancesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct [:parent, :page_size, :page_token]

  field :parent, 1, type: :string
  field :page_size, 2, type: :int32
  field :page_token, 3, type: :string
end

defmodule Google.Appengine.V1.ListInstancesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          instances: [Google.Appengine.V1.Instance.t()],
          next_page_token: String.t()
        }

  defstruct [:instances, :next_page_token]

  field :instances, 1, repeated: true, type: Google.Appengine.V1.Instance
  field :next_page_token, 2, type: :string
end

defmodule Google.Appengine.V1.GetInstanceRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Appengine.V1.DeleteInstanceRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Appengine.V1.DebugInstanceRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          ssh_key: String.t()
        }

  defstruct [:name, :ssh_key]

  field :name, 1, type: :string
  field :ssh_key, 2, type: :string
end

defmodule Google.Appengine.V1.ListIngressRulesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t(),
          matching_address: String.t()
        }

  defstruct [:parent, :page_size, :page_token, :matching_address]

  field :parent, 1, type: :string
  field :page_size, 2, type: :int32
  field :page_token, 3, type: :string
  field :matching_address, 4, type: :string
end

defmodule Google.Appengine.V1.ListIngressRulesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          ingress_rules: [Google.Appengine.V1.FirewallRule.t()],
          next_page_token: String.t()
        }

  defstruct [:ingress_rules, :next_page_token]

  field :ingress_rules, 1, repeated: true, type: Google.Appengine.V1.FirewallRule
  field :next_page_token, 2, type: :string
end

defmodule Google.Appengine.V1.BatchUpdateIngressRulesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          ingress_rules: [Google.Appengine.V1.FirewallRule.t()]
        }

  defstruct [:name, :ingress_rules]

  field :name, 1, type: :string
  field :ingress_rules, 2, repeated: true, type: Google.Appengine.V1.FirewallRule
end

defmodule Google.Appengine.V1.BatchUpdateIngressRulesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          ingress_rules: [Google.Appengine.V1.FirewallRule.t()]
        }

  defstruct [:ingress_rules]

  field :ingress_rules, 1, repeated: true, type: Google.Appengine.V1.FirewallRule
end

defmodule Google.Appengine.V1.CreateIngressRuleRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          rule: Google.Appengine.V1.FirewallRule.t() | nil
        }

  defstruct [:parent, :rule]

  field :parent, 1, type: :string
  field :rule, 2, type: Google.Appengine.V1.FirewallRule
end

defmodule Google.Appengine.V1.GetIngressRuleRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Appengine.V1.UpdateIngressRuleRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          rule: Google.Appengine.V1.FirewallRule.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:name, :rule, :update_mask]

  field :name, 1, type: :string
  field :rule, 2, type: Google.Appengine.V1.FirewallRule
  field :update_mask, 3, type: Google.Protobuf.FieldMask
end

defmodule Google.Appengine.V1.DeleteIngressRuleRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Appengine.V1.ListAuthorizedDomainsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct [:parent, :page_size, :page_token]

  field :parent, 1, type: :string
  field :page_size, 2, type: :int32
  field :page_token, 3, type: :string
end

defmodule Google.Appengine.V1.ListAuthorizedDomainsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          domains: [Google.Appengine.V1.AuthorizedDomain.t()],
          next_page_token: String.t()
        }

  defstruct [:domains, :next_page_token]

  field :domains, 1, repeated: true, type: Google.Appengine.V1.AuthorizedDomain
  field :next_page_token, 2, type: :string
end

defmodule Google.Appengine.V1.ListAuthorizedCertificatesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          view: Google.Appengine.V1.AuthorizedCertificateView.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct [:parent, :view, :page_size, :page_token]

  field :parent, 1, type: :string
  field :view, 4, type: Google.Appengine.V1.AuthorizedCertificateView, enum: true
  field :page_size, 2, type: :int32
  field :page_token, 3, type: :string
end

defmodule Google.Appengine.V1.ListAuthorizedCertificatesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          certificates: [Google.Appengine.V1.AuthorizedCertificate.t()],
          next_page_token: String.t()
        }

  defstruct [:certificates, :next_page_token]

  field :certificates, 1, repeated: true, type: Google.Appengine.V1.AuthorizedCertificate
  field :next_page_token, 2, type: :string
end

defmodule Google.Appengine.V1.GetAuthorizedCertificateRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          view: Google.Appengine.V1.AuthorizedCertificateView.t()
        }

  defstruct [:name, :view]

  field :name, 1, type: :string
  field :view, 2, type: Google.Appengine.V1.AuthorizedCertificateView, enum: true
end

defmodule Google.Appengine.V1.CreateAuthorizedCertificateRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          certificate: Google.Appengine.V1.AuthorizedCertificate.t() | nil
        }

  defstruct [:parent, :certificate]

  field :parent, 1, type: :string
  field :certificate, 2, type: Google.Appengine.V1.AuthorizedCertificate
end

defmodule Google.Appengine.V1.UpdateAuthorizedCertificateRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          certificate: Google.Appengine.V1.AuthorizedCertificate.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:name, :certificate, :update_mask]

  field :name, 1, type: :string
  field :certificate, 2, type: Google.Appengine.V1.AuthorizedCertificate
  field :update_mask, 3, type: Google.Protobuf.FieldMask
end

defmodule Google.Appengine.V1.DeleteAuthorizedCertificateRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Appengine.V1.ListDomainMappingsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct [:parent, :page_size, :page_token]

  field :parent, 1, type: :string
  field :page_size, 2, type: :int32
  field :page_token, 3, type: :string
end

defmodule Google.Appengine.V1.ListDomainMappingsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          domain_mappings: [Google.Appengine.V1.DomainMapping.t()],
          next_page_token: String.t()
        }

  defstruct [:domain_mappings, :next_page_token]

  field :domain_mappings, 1, repeated: true, type: Google.Appengine.V1.DomainMapping
  field :next_page_token, 2, type: :string
end

defmodule Google.Appengine.V1.GetDomainMappingRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Appengine.V1.CreateDomainMappingRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          domain_mapping: Google.Appengine.V1.DomainMapping.t() | nil,
          override_strategy: Google.Appengine.V1.DomainOverrideStrategy.t()
        }

  defstruct [:parent, :domain_mapping, :override_strategy]

  field :parent, 1, type: :string
  field :domain_mapping, 2, type: Google.Appengine.V1.DomainMapping
  field :override_strategy, 4, type: Google.Appengine.V1.DomainOverrideStrategy, enum: true
end

defmodule Google.Appengine.V1.UpdateDomainMappingRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          domain_mapping: Google.Appengine.V1.DomainMapping.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:name, :domain_mapping, :update_mask]

  field :name, 1, type: :string
  field :domain_mapping, 2, type: Google.Appengine.V1.DomainMapping
  field :update_mask, 3, type: Google.Protobuf.FieldMask
end

defmodule Google.Appengine.V1.DeleteDomainMappingRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end
