defmodule Google.Appengine.V1beta.VersionView do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :BASIC | :FULL

  field :BASIC, 0

  field :FULL, 1
end

defmodule Google.Appengine.V1beta.AuthorizedCertificateView do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :BASIC_CERTIFICATE | :FULL_CERTIFICATE

  field :BASIC_CERTIFICATE, 0

  field :FULL_CERTIFICATE, 1
end

defmodule Google.Appengine.V1beta.DomainOverrideStrategy do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :UNSPECIFIED_DOMAIN_OVERRIDE_STRATEGY | :STRICT | :OVERRIDE

  field :UNSPECIFIED_DOMAIN_OVERRIDE_STRATEGY, 0

  field :STRICT, 1

  field :OVERRIDE, 2
end

defmodule Google.Appengine.V1beta.GetApplicationRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Appengine.V1beta.CreateApplicationRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          application: Google.Appengine.V1beta.Application.t() | nil
        }

  defstruct [:application]

  field :application, 2, type: Google.Appengine.V1beta.Application
end

defmodule Google.Appengine.V1beta.UpdateApplicationRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          application: Google.Appengine.V1beta.Application.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:name, :application, :update_mask]

  field :name, 1, type: :string
  field :application, 2, type: Google.Appengine.V1beta.Application
  field :update_mask, 3, type: Google.Protobuf.FieldMask
end

defmodule Google.Appengine.V1beta.RepairApplicationRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Appengine.V1beta.ListServicesRequest do
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

defmodule Google.Appengine.V1beta.ListServicesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          services: [Google.Appengine.V1beta.Service.t()],
          next_page_token: String.t()
        }

  defstruct [:services, :next_page_token]

  field :services, 1, repeated: true, type: Google.Appengine.V1beta.Service
  field :next_page_token, 2, type: :string
end

defmodule Google.Appengine.V1beta.GetServiceRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Appengine.V1beta.UpdateServiceRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          service: Google.Appengine.V1beta.Service.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil,
          migrate_traffic: boolean
        }

  defstruct [:name, :service, :update_mask, :migrate_traffic]

  field :name, 1, type: :string
  field :service, 2, type: Google.Appengine.V1beta.Service
  field :update_mask, 3, type: Google.Protobuf.FieldMask
  field :migrate_traffic, 4, type: :bool
end

defmodule Google.Appengine.V1beta.DeleteServiceRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Appengine.V1beta.ListVersionsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          view: Google.Appengine.V1beta.VersionView.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct [:parent, :view, :page_size, :page_token]

  field :parent, 1, type: :string
  field :view, 2, type: Google.Appengine.V1beta.VersionView, enum: true
  field :page_size, 3, type: :int32
  field :page_token, 4, type: :string
end

defmodule Google.Appengine.V1beta.ListVersionsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          versions: [Google.Appengine.V1beta.Version.t()],
          next_page_token: String.t()
        }

  defstruct [:versions, :next_page_token]

  field :versions, 1, repeated: true, type: Google.Appengine.V1beta.Version
  field :next_page_token, 2, type: :string
end

defmodule Google.Appengine.V1beta.GetVersionRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          view: Google.Appengine.V1beta.VersionView.t()
        }

  defstruct [:name, :view]

  field :name, 1, type: :string
  field :view, 2, type: Google.Appengine.V1beta.VersionView, enum: true
end

defmodule Google.Appengine.V1beta.CreateVersionRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          version: Google.Appengine.V1beta.Version.t() | nil
        }

  defstruct [:parent, :version]

  field :parent, 1, type: :string
  field :version, 2, type: Google.Appengine.V1beta.Version
end

defmodule Google.Appengine.V1beta.UpdateVersionRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          version: Google.Appengine.V1beta.Version.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:name, :version, :update_mask]

  field :name, 1, type: :string
  field :version, 2, type: Google.Appengine.V1beta.Version
  field :update_mask, 3, type: Google.Protobuf.FieldMask
end

defmodule Google.Appengine.V1beta.DeleteVersionRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Appengine.V1beta.ListInstancesRequest do
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

defmodule Google.Appengine.V1beta.ListInstancesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          instances: [Google.Appengine.V1beta.Instance.t()],
          next_page_token: String.t()
        }

  defstruct [:instances, :next_page_token]

  field :instances, 1, repeated: true, type: Google.Appengine.V1beta.Instance
  field :next_page_token, 2, type: :string
end

defmodule Google.Appengine.V1beta.GetInstanceRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Appengine.V1beta.DeleteInstanceRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Appengine.V1beta.DebugInstanceRequest do
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

defmodule Google.Appengine.V1beta.ListIngressRulesRequest do
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

defmodule Google.Appengine.V1beta.ListIngressRulesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          ingress_rules: [Google.Appengine.V1beta.FirewallRule.t()],
          next_page_token: String.t()
        }

  defstruct [:ingress_rules, :next_page_token]

  field :ingress_rules, 1, repeated: true, type: Google.Appengine.V1beta.FirewallRule
  field :next_page_token, 2, type: :string
end

defmodule Google.Appengine.V1beta.BatchUpdateIngressRulesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          ingress_rules: [Google.Appengine.V1beta.FirewallRule.t()]
        }

  defstruct [:name, :ingress_rules]

  field :name, 1, type: :string
  field :ingress_rules, 2, repeated: true, type: Google.Appengine.V1beta.FirewallRule
end

defmodule Google.Appengine.V1beta.BatchUpdateIngressRulesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          ingress_rules: [Google.Appengine.V1beta.FirewallRule.t()]
        }

  defstruct [:ingress_rules]

  field :ingress_rules, 1, repeated: true, type: Google.Appengine.V1beta.FirewallRule
end

defmodule Google.Appengine.V1beta.CreateIngressRuleRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          rule: Google.Appengine.V1beta.FirewallRule.t() | nil
        }

  defstruct [:parent, :rule]

  field :parent, 1, type: :string
  field :rule, 2, type: Google.Appengine.V1beta.FirewallRule
end

defmodule Google.Appengine.V1beta.GetIngressRuleRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Appengine.V1beta.UpdateIngressRuleRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          rule: Google.Appengine.V1beta.FirewallRule.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:name, :rule, :update_mask]

  field :name, 1, type: :string
  field :rule, 2, type: Google.Appengine.V1beta.FirewallRule
  field :update_mask, 3, type: Google.Protobuf.FieldMask
end

defmodule Google.Appengine.V1beta.DeleteIngressRuleRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Appengine.V1beta.ListAuthorizedDomainsRequest do
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

defmodule Google.Appengine.V1beta.ListAuthorizedDomainsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          domains: [Google.Appengine.V1beta.AuthorizedDomain.t()],
          next_page_token: String.t()
        }

  defstruct [:domains, :next_page_token]

  field :domains, 1, repeated: true, type: Google.Appengine.V1beta.AuthorizedDomain
  field :next_page_token, 2, type: :string
end

defmodule Google.Appengine.V1beta.ListAuthorizedCertificatesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          view: Google.Appengine.V1beta.AuthorizedCertificateView.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct [:parent, :view, :page_size, :page_token]

  field :parent, 1, type: :string
  field :view, 4, type: Google.Appengine.V1beta.AuthorizedCertificateView, enum: true
  field :page_size, 2, type: :int32
  field :page_token, 3, type: :string
end

defmodule Google.Appengine.V1beta.ListAuthorizedCertificatesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          certificates: [Google.Appengine.V1beta.AuthorizedCertificate.t()],
          next_page_token: String.t()
        }

  defstruct [:certificates, :next_page_token]

  field :certificates, 1, repeated: true, type: Google.Appengine.V1beta.AuthorizedCertificate
  field :next_page_token, 2, type: :string
end

defmodule Google.Appengine.V1beta.GetAuthorizedCertificateRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          view: Google.Appengine.V1beta.AuthorizedCertificateView.t()
        }

  defstruct [:name, :view]

  field :name, 1, type: :string
  field :view, 2, type: Google.Appengine.V1beta.AuthorizedCertificateView, enum: true
end

defmodule Google.Appengine.V1beta.CreateAuthorizedCertificateRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          certificate: Google.Appengine.V1beta.AuthorizedCertificate.t() | nil
        }

  defstruct [:parent, :certificate]

  field :parent, 1, type: :string
  field :certificate, 2, type: Google.Appengine.V1beta.AuthorizedCertificate
end

defmodule Google.Appengine.V1beta.UpdateAuthorizedCertificateRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          certificate: Google.Appengine.V1beta.AuthorizedCertificate.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:name, :certificate, :update_mask]

  field :name, 1, type: :string
  field :certificate, 2, type: Google.Appengine.V1beta.AuthorizedCertificate
  field :update_mask, 3, type: Google.Protobuf.FieldMask
end

defmodule Google.Appengine.V1beta.DeleteAuthorizedCertificateRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Appengine.V1beta.ListDomainMappingsRequest do
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

defmodule Google.Appengine.V1beta.ListDomainMappingsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          domain_mappings: [Google.Appengine.V1beta.DomainMapping.t()],
          next_page_token: String.t()
        }

  defstruct [:domain_mappings, :next_page_token]

  field :domain_mappings, 1, repeated: true, type: Google.Appengine.V1beta.DomainMapping
  field :next_page_token, 2, type: :string
end

defmodule Google.Appengine.V1beta.GetDomainMappingRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Appengine.V1beta.CreateDomainMappingRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          domain_mapping: Google.Appengine.V1beta.DomainMapping.t() | nil,
          override_strategy: Google.Appengine.V1beta.DomainOverrideStrategy.t()
        }

  defstruct [:parent, :domain_mapping, :override_strategy]

  field :parent, 1, type: :string
  field :domain_mapping, 2, type: Google.Appengine.V1beta.DomainMapping
  field :override_strategy, 4, type: Google.Appengine.V1beta.DomainOverrideStrategy, enum: true
end

defmodule Google.Appengine.V1beta.UpdateDomainMappingRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          domain_mapping: Google.Appengine.V1beta.DomainMapping.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:name, :domain_mapping, :update_mask]

  field :name, 1, type: :string
  field :domain_mapping, 2, type: Google.Appengine.V1beta.DomainMapping
  field :update_mask, 3, type: Google.Protobuf.FieldMask
end

defmodule Google.Appengine.V1beta.DeleteDomainMappingRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end
