defmodule Google.Appengine.V1.VersionView do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :BASIC, 0
  field :FULL, 1
end

defmodule Google.Appengine.V1.AuthorizedCertificateView do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :BASIC_CERTIFICATE, 0
  field :FULL_CERTIFICATE, 1
end

defmodule Google.Appengine.V1.DomainOverrideStrategy do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :UNSPECIFIED_DOMAIN_OVERRIDE_STRATEGY, 0
  field :STRICT, 1
  field :OVERRIDE, 2
end

defmodule Google.Appengine.V1.GetApplicationRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string
end

defmodule Google.Appengine.V1.CreateApplicationRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :application, 2, type: Google.Appengine.V1.Application
end

defmodule Google.Appengine.V1.UpdateApplicationRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string
  field :application, 2, type: Google.Appengine.V1.Application
  field :update_mask, 3, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end

defmodule Google.Appengine.V1.RepairApplicationRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string
end

defmodule Google.Appengine.V1.ListServicesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Appengine.V1.ListServicesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :services, 1, repeated: true, type: Google.Appengine.V1.Service
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Appengine.V1.GetServiceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string
end

defmodule Google.Appengine.V1.UpdateServiceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string
  field :service, 2, type: Google.Appengine.V1.Service
  field :update_mask, 3, type: Google.Protobuf.FieldMask, json_name: "updateMask"
  field :migrate_traffic, 4, type: :bool, json_name: "migrateTraffic"
end

defmodule Google.Appengine.V1.DeleteServiceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string
end

defmodule Google.Appengine.V1.ListVersionsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string
  field :view, 2, type: Google.Appengine.V1.VersionView, enum: true
  field :page_size, 3, type: :int32, json_name: "pageSize"
  field :page_token, 4, type: :string, json_name: "pageToken"
end

defmodule Google.Appengine.V1.ListVersionsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :versions, 1, repeated: true, type: Google.Appengine.V1.Version
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Appengine.V1.GetVersionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string
  field :view, 2, type: Google.Appengine.V1.VersionView, enum: true
end

defmodule Google.Appengine.V1.CreateVersionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string
  field :version, 2, type: Google.Appengine.V1.Version
end

defmodule Google.Appengine.V1.UpdateVersionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string
  field :version, 2, type: Google.Appengine.V1.Version
  field :update_mask, 3, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end

defmodule Google.Appengine.V1.DeleteVersionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string
end

defmodule Google.Appengine.V1.ListInstancesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Appengine.V1.ListInstancesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :instances, 1, repeated: true, type: Google.Appengine.V1.Instance
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Appengine.V1.GetInstanceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string
end

defmodule Google.Appengine.V1.DeleteInstanceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string
end

defmodule Google.Appengine.V1.DebugInstanceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string
  field :ssh_key, 2, type: :string, json_name: "sshKey"
end

defmodule Google.Appengine.V1.ListIngressRulesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :matching_address, 4, type: :string, json_name: "matchingAddress"
end

defmodule Google.Appengine.V1.ListIngressRulesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :ingress_rules, 1,
    repeated: true,
    type: Google.Appengine.V1.FirewallRule,
    json_name: "ingressRules"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Appengine.V1.BatchUpdateIngressRulesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string

  field :ingress_rules, 2,
    repeated: true,
    type: Google.Appengine.V1.FirewallRule,
    json_name: "ingressRules"
end

defmodule Google.Appengine.V1.BatchUpdateIngressRulesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :ingress_rules, 1,
    repeated: true,
    type: Google.Appengine.V1.FirewallRule,
    json_name: "ingressRules"
end

defmodule Google.Appengine.V1.CreateIngressRuleRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string
  field :rule, 2, type: Google.Appengine.V1.FirewallRule
end

defmodule Google.Appengine.V1.GetIngressRuleRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string
end

defmodule Google.Appengine.V1.UpdateIngressRuleRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string
  field :rule, 2, type: Google.Appengine.V1.FirewallRule
  field :update_mask, 3, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end

defmodule Google.Appengine.V1.DeleteIngressRuleRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string
end

defmodule Google.Appengine.V1.ListAuthorizedDomainsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Appengine.V1.ListAuthorizedDomainsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :domains, 1, repeated: true, type: Google.Appengine.V1.AuthorizedDomain
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Appengine.V1.ListAuthorizedCertificatesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string
  field :view, 4, type: Google.Appengine.V1.AuthorizedCertificateView, enum: true
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Appengine.V1.ListAuthorizedCertificatesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :certificates, 1, repeated: true, type: Google.Appengine.V1.AuthorizedCertificate
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Appengine.V1.GetAuthorizedCertificateRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string
  field :view, 2, type: Google.Appengine.V1.AuthorizedCertificateView, enum: true
end

defmodule Google.Appengine.V1.CreateAuthorizedCertificateRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string
  field :certificate, 2, type: Google.Appengine.V1.AuthorizedCertificate
end

defmodule Google.Appengine.V1.UpdateAuthorizedCertificateRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string
  field :certificate, 2, type: Google.Appengine.V1.AuthorizedCertificate
  field :update_mask, 3, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end

defmodule Google.Appengine.V1.DeleteAuthorizedCertificateRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string
end

defmodule Google.Appengine.V1.ListDomainMappingsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Appengine.V1.ListDomainMappingsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :domain_mappings, 1,
    repeated: true,
    type: Google.Appengine.V1.DomainMapping,
    json_name: "domainMappings"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Appengine.V1.GetDomainMappingRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string
end

defmodule Google.Appengine.V1.CreateDomainMappingRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string
  field :domain_mapping, 2, type: Google.Appengine.V1.DomainMapping, json_name: "domainMapping"

  field :override_strategy, 4,
    type: Google.Appengine.V1.DomainOverrideStrategy,
    json_name: "overrideStrategy",
    enum: true
end

defmodule Google.Appengine.V1.UpdateDomainMappingRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string
  field :domain_mapping, 2, type: Google.Appengine.V1.DomainMapping, json_name: "domainMapping"
  field :update_mask, 3, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end

defmodule Google.Appengine.V1.DeleteDomainMappingRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string
end

defmodule Google.Appengine.V1.Applications.Service do
  @moduledoc false

  use GRPC.Service, name: "google.appengine.v1.Applications", protoc_gen_elixir_version: "0.12.0"

  rpc :GetApplication, Google.Appengine.V1.GetApplicationRequest, Google.Appengine.V1.Application

  rpc :CreateApplication,
      Google.Appengine.V1.CreateApplicationRequest,
      Google.Longrunning.Operation

  rpc :UpdateApplication,
      Google.Appengine.V1.UpdateApplicationRequest,
      Google.Longrunning.Operation

  rpc :RepairApplication,
      Google.Appengine.V1.RepairApplicationRequest,
      Google.Longrunning.Operation
end

defmodule Google.Appengine.V1.Applications.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Appengine.V1.Applications.Service
end

defmodule Google.Appengine.V1.Services.Service do
  @moduledoc false

  use GRPC.Service, name: "google.appengine.v1.Services", protoc_gen_elixir_version: "0.12.0"

  rpc :ListServices,
      Google.Appengine.V1.ListServicesRequest,
      Google.Appengine.V1.ListServicesResponse

  rpc :GetService, Google.Appengine.V1.GetServiceRequest, Google.Appengine.V1.Service

  rpc :UpdateService, Google.Appengine.V1.UpdateServiceRequest, Google.Longrunning.Operation

  rpc :DeleteService, Google.Appengine.V1.DeleteServiceRequest, Google.Longrunning.Operation
end

defmodule Google.Appengine.V1.Services.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Appengine.V1.Services.Service
end

defmodule Google.Appengine.V1.Versions.Service do
  @moduledoc false

  use GRPC.Service, name: "google.appengine.v1.Versions", protoc_gen_elixir_version: "0.12.0"

  rpc :ListVersions,
      Google.Appengine.V1.ListVersionsRequest,
      Google.Appengine.V1.ListVersionsResponse

  rpc :GetVersion, Google.Appengine.V1.GetVersionRequest, Google.Appengine.V1.Version

  rpc :CreateVersion, Google.Appengine.V1.CreateVersionRequest, Google.Longrunning.Operation

  rpc :UpdateVersion, Google.Appengine.V1.UpdateVersionRequest, Google.Longrunning.Operation

  rpc :DeleteVersion, Google.Appengine.V1.DeleteVersionRequest, Google.Longrunning.Operation
end

defmodule Google.Appengine.V1.Versions.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Appengine.V1.Versions.Service
end

defmodule Google.Appengine.V1.Instances.Service do
  @moduledoc false

  use GRPC.Service, name: "google.appengine.v1.Instances", protoc_gen_elixir_version: "0.12.0"

  rpc :ListInstances,
      Google.Appengine.V1.ListInstancesRequest,
      Google.Appengine.V1.ListInstancesResponse

  rpc :GetInstance, Google.Appengine.V1.GetInstanceRequest, Google.Appengine.V1.Instance

  rpc :DeleteInstance, Google.Appengine.V1.DeleteInstanceRequest, Google.Longrunning.Operation

  rpc :DebugInstance, Google.Appengine.V1.DebugInstanceRequest, Google.Longrunning.Operation
end

defmodule Google.Appengine.V1.Instances.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Appengine.V1.Instances.Service
end

defmodule Google.Appengine.V1.Firewall.Service do
  @moduledoc false

  use GRPC.Service, name: "google.appengine.v1.Firewall", protoc_gen_elixir_version: "0.12.0"

  rpc :ListIngressRules,
      Google.Appengine.V1.ListIngressRulesRequest,
      Google.Appengine.V1.ListIngressRulesResponse

  rpc :BatchUpdateIngressRules,
      Google.Appengine.V1.BatchUpdateIngressRulesRequest,
      Google.Appengine.V1.BatchUpdateIngressRulesResponse

  rpc :CreateIngressRule,
      Google.Appengine.V1.CreateIngressRuleRequest,
      Google.Appengine.V1.FirewallRule

  rpc :GetIngressRule, Google.Appengine.V1.GetIngressRuleRequest, Google.Appengine.V1.FirewallRule

  rpc :UpdateIngressRule,
      Google.Appengine.V1.UpdateIngressRuleRequest,
      Google.Appengine.V1.FirewallRule

  rpc :DeleteIngressRule, Google.Appengine.V1.DeleteIngressRuleRequest, Google.Protobuf.Empty
end

defmodule Google.Appengine.V1.Firewall.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Appengine.V1.Firewall.Service
end

defmodule Google.Appengine.V1.AuthorizedDomains.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.appengine.v1.AuthorizedDomains",
    protoc_gen_elixir_version: "0.12.0"

  rpc :ListAuthorizedDomains,
      Google.Appengine.V1.ListAuthorizedDomainsRequest,
      Google.Appengine.V1.ListAuthorizedDomainsResponse
end

defmodule Google.Appengine.V1.AuthorizedDomains.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Appengine.V1.AuthorizedDomains.Service
end

defmodule Google.Appengine.V1.AuthorizedCertificates.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.appengine.v1.AuthorizedCertificates",
    protoc_gen_elixir_version: "0.12.0"

  rpc :ListAuthorizedCertificates,
      Google.Appengine.V1.ListAuthorizedCertificatesRequest,
      Google.Appengine.V1.ListAuthorizedCertificatesResponse

  rpc :GetAuthorizedCertificate,
      Google.Appengine.V1.GetAuthorizedCertificateRequest,
      Google.Appengine.V1.AuthorizedCertificate

  rpc :CreateAuthorizedCertificate,
      Google.Appengine.V1.CreateAuthorizedCertificateRequest,
      Google.Appengine.V1.AuthorizedCertificate

  rpc :UpdateAuthorizedCertificate,
      Google.Appengine.V1.UpdateAuthorizedCertificateRequest,
      Google.Appengine.V1.AuthorizedCertificate

  rpc :DeleteAuthorizedCertificate,
      Google.Appengine.V1.DeleteAuthorizedCertificateRequest,
      Google.Protobuf.Empty
end

defmodule Google.Appengine.V1.AuthorizedCertificates.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Appengine.V1.AuthorizedCertificates.Service
end

defmodule Google.Appengine.V1.DomainMappings.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.appengine.v1.DomainMappings",
    protoc_gen_elixir_version: "0.12.0"

  rpc :ListDomainMappings,
      Google.Appengine.V1.ListDomainMappingsRequest,
      Google.Appengine.V1.ListDomainMappingsResponse

  rpc :GetDomainMapping,
      Google.Appengine.V1.GetDomainMappingRequest,
      Google.Appengine.V1.DomainMapping

  rpc :CreateDomainMapping,
      Google.Appengine.V1.CreateDomainMappingRequest,
      Google.Longrunning.Operation

  rpc :UpdateDomainMapping,
      Google.Appengine.V1.UpdateDomainMappingRequest,
      Google.Longrunning.Operation

  rpc :DeleteDomainMapping,
      Google.Appengine.V1.DeleteDomainMappingRequest,
      Google.Longrunning.Operation
end

defmodule Google.Appengine.V1.DomainMappings.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Appengine.V1.DomainMappings.Service
end