defmodule Google.Appengine.V1beta.VersionView do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :BASIC, 0
  field :FULL, 1
end

defmodule Google.Appengine.V1beta.AuthorizedCertificateView do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :BASIC_CERTIFICATE, 0
  field :FULL_CERTIFICATE, 1
end

defmodule Google.Appengine.V1beta.DomainOverrideStrategy do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :UNSPECIFIED_DOMAIN_OVERRIDE_STRATEGY, 0
  field :STRICT, 1
  field :OVERRIDE, 2
end

defmodule Google.Appengine.V1beta.GetApplicationRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string
end

defmodule Google.Appengine.V1beta.CreateApplicationRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :application, 2, type: Google.Appengine.V1beta.Application
end

defmodule Google.Appengine.V1beta.UpdateApplicationRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string
  field :application, 2, type: Google.Appengine.V1beta.Application
  field :update_mask, 3, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end

defmodule Google.Appengine.V1beta.RepairApplicationRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string
end

defmodule Google.Appengine.V1beta.ListServicesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Appengine.V1beta.ListServicesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :services, 1, repeated: true, type: Google.Appengine.V1beta.Service
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Appengine.V1beta.GetServiceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string
end

defmodule Google.Appengine.V1beta.UpdateServiceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string
  field :service, 2, type: Google.Appengine.V1beta.Service
  field :update_mask, 3, type: Google.Protobuf.FieldMask, json_name: "updateMask"
  field :migrate_traffic, 4, type: :bool, json_name: "migrateTraffic"
end

defmodule Google.Appengine.V1beta.DeleteServiceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string
end

defmodule Google.Appengine.V1beta.ListVersionsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string
  field :view, 2, type: Google.Appengine.V1beta.VersionView, enum: true
  field :page_size, 3, type: :int32, json_name: "pageSize"
  field :page_token, 4, type: :string, json_name: "pageToken"
end

defmodule Google.Appengine.V1beta.ListVersionsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :versions, 1, repeated: true, type: Google.Appengine.V1beta.Version
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Appengine.V1beta.GetVersionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string
  field :view, 2, type: Google.Appengine.V1beta.VersionView, enum: true
end

defmodule Google.Appengine.V1beta.CreateVersionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string
  field :version, 2, type: Google.Appengine.V1beta.Version
end

defmodule Google.Appengine.V1beta.UpdateVersionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string
  field :version, 2, type: Google.Appengine.V1beta.Version
  field :update_mask, 3, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end

defmodule Google.Appengine.V1beta.DeleteVersionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string
end

defmodule Google.Appengine.V1beta.ListInstancesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Appengine.V1beta.ListInstancesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :instances, 1, repeated: true, type: Google.Appengine.V1beta.Instance
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Appengine.V1beta.GetInstanceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string
end

defmodule Google.Appengine.V1beta.DeleteInstanceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string
end

defmodule Google.Appengine.V1beta.DebugInstanceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string
  field :ssh_key, 2, type: :string, json_name: "sshKey"
end

defmodule Google.Appengine.V1beta.ListIngressRulesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :matching_address, 4, type: :string, json_name: "matchingAddress"
end

defmodule Google.Appengine.V1beta.ListIngressRulesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :ingress_rules, 1,
    repeated: true,
    type: Google.Appengine.V1beta.FirewallRule,
    json_name: "ingressRules"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Appengine.V1beta.BatchUpdateIngressRulesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string

  field :ingress_rules, 2,
    repeated: true,
    type: Google.Appengine.V1beta.FirewallRule,
    json_name: "ingressRules"
end

defmodule Google.Appengine.V1beta.BatchUpdateIngressRulesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :ingress_rules, 1,
    repeated: true,
    type: Google.Appengine.V1beta.FirewallRule,
    json_name: "ingressRules"
end

defmodule Google.Appengine.V1beta.CreateIngressRuleRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string
  field :rule, 2, type: Google.Appengine.V1beta.FirewallRule
end

defmodule Google.Appengine.V1beta.GetIngressRuleRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string
end

defmodule Google.Appengine.V1beta.UpdateIngressRuleRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string
  field :rule, 2, type: Google.Appengine.V1beta.FirewallRule
  field :update_mask, 3, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end

defmodule Google.Appengine.V1beta.DeleteIngressRuleRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string
end

defmodule Google.Appengine.V1beta.ListAuthorizedDomainsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Appengine.V1beta.ListAuthorizedDomainsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :domains, 1, repeated: true, type: Google.Appengine.V1beta.AuthorizedDomain
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Appengine.V1beta.ListAuthorizedCertificatesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string
  field :view, 4, type: Google.Appengine.V1beta.AuthorizedCertificateView, enum: true
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Appengine.V1beta.ListAuthorizedCertificatesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :certificates, 1, repeated: true, type: Google.Appengine.V1beta.AuthorizedCertificate
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Appengine.V1beta.GetAuthorizedCertificateRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string
  field :view, 2, type: Google.Appengine.V1beta.AuthorizedCertificateView, enum: true
end

defmodule Google.Appengine.V1beta.CreateAuthorizedCertificateRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string
  field :certificate, 2, type: Google.Appengine.V1beta.AuthorizedCertificate
end

defmodule Google.Appengine.V1beta.UpdateAuthorizedCertificateRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string
  field :certificate, 2, type: Google.Appengine.V1beta.AuthorizedCertificate
  field :update_mask, 3, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end

defmodule Google.Appengine.V1beta.DeleteAuthorizedCertificateRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string
end

defmodule Google.Appengine.V1beta.ListDomainMappingsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Appengine.V1beta.ListDomainMappingsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :domain_mappings, 1,
    repeated: true,
    type: Google.Appengine.V1beta.DomainMapping,
    json_name: "domainMappings"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Appengine.V1beta.GetDomainMappingRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string
end

defmodule Google.Appengine.V1beta.CreateDomainMappingRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string

  field :domain_mapping, 2,
    type: Google.Appengine.V1beta.DomainMapping,
    json_name: "domainMapping"

  field :override_strategy, 4,
    type: Google.Appengine.V1beta.DomainOverrideStrategy,
    json_name: "overrideStrategy",
    enum: true
end

defmodule Google.Appengine.V1beta.UpdateDomainMappingRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string

  field :domain_mapping, 2,
    type: Google.Appengine.V1beta.DomainMapping,
    json_name: "domainMapping"

  field :update_mask, 3, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end

defmodule Google.Appengine.V1beta.DeleteDomainMappingRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string
end

defmodule Google.Appengine.V1beta.Applications.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.appengine.v1beta.Applications",
    protoc_gen_elixir_version: "0.14.1"

  rpc :GetApplication,
      Google.Appengine.V1beta.GetApplicationRequest,
      Google.Appengine.V1beta.Application

  rpc :CreateApplication,
      Google.Appengine.V1beta.CreateApplicationRequest,
      Google.Longrunning.Operation

  rpc :UpdateApplication,
      Google.Appengine.V1beta.UpdateApplicationRequest,
      Google.Longrunning.Operation

  rpc :RepairApplication,
      Google.Appengine.V1beta.RepairApplicationRequest,
      Google.Longrunning.Operation
end

defmodule Google.Appengine.V1beta.Applications.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Appengine.V1beta.Applications.Service
end

defmodule Google.Appengine.V1beta.Services.Service do
  @moduledoc false

  use GRPC.Service, name: "google.appengine.v1beta.Services", protoc_gen_elixir_version: "0.14.1"

  rpc :ListServices,
      Google.Appengine.V1beta.ListServicesRequest,
      Google.Appengine.V1beta.ListServicesResponse

  rpc :GetService, Google.Appengine.V1beta.GetServiceRequest, Google.Appengine.V1beta.Service

  rpc :UpdateService, Google.Appengine.V1beta.UpdateServiceRequest, Google.Longrunning.Operation

  rpc :DeleteService, Google.Appengine.V1beta.DeleteServiceRequest, Google.Longrunning.Operation
end

defmodule Google.Appengine.V1beta.Services.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Appengine.V1beta.Services.Service
end

defmodule Google.Appengine.V1beta.Versions.Service do
  @moduledoc false

  use GRPC.Service, name: "google.appengine.v1beta.Versions", protoc_gen_elixir_version: "0.14.1"

  rpc :ListVersions,
      Google.Appengine.V1beta.ListVersionsRequest,
      Google.Appengine.V1beta.ListVersionsResponse

  rpc :GetVersion, Google.Appengine.V1beta.GetVersionRequest, Google.Appengine.V1beta.Version

  rpc :CreateVersion, Google.Appengine.V1beta.CreateVersionRequest, Google.Longrunning.Operation

  rpc :UpdateVersion, Google.Appengine.V1beta.UpdateVersionRequest, Google.Longrunning.Operation

  rpc :DeleteVersion, Google.Appengine.V1beta.DeleteVersionRequest, Google.Longrunning.Operation
end

defmodule Google.Appengine.V1beta.Versions.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Appengine.V1beta.Versions.Service
end

defmodule Google.Appengine.V1beta.Instances.Service do
  @moduledoc false

  use GRPC.Service, name: "google.appengine.v1beta.Instances", protoc_gen_elixir_version: "0.14.1"

  rpc :ListInstances,
      Google.Appengine.V1beta.ListInstancesRequest,
      Google.Appengine.V1beta.ListInstancesResponse

  rpc :GetInstance, Google.Appengine.V1beta.GetInstanceRequest, Google.Appengine.V1beta.Instance

  rpc :DeleteInstance, Google.Appengine.V1beta.DeleteInstanceRequest, Google.Longrunning.Operation

  rpc :DebugInstance, Google.Appengine.V1beta.DebugInstanceRequest, Google.Longrunning.Operation
end

defmodule Google.Appengine.V1beta.Instances.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Appengine.V1beta.Instances.Service
end

defmodule Google.Appengine.V1beta.Firewall.Service do
  @moduledoc false

  use GRPC.Service, name: "google.appengine.v1beta.Firewall", protoc_gen_elixir_version: "0.14.1"

  rpc :ListIngressRules,
      Google.Appengine.V1beta.ListIngressRulesRequest,
      Google.Appengine.V1beta.ListIngressRulesResponse

  rpc :BatchUpdateIngressRules,
      Google.Appengine.V1beta.BatchUpdateIngressRulesRequest,
      Google.Appengine.V1beta.BatchUpdateIngressRulesResponse

  rpc :CreateIngressRule,
      Google.Appengine.V1beta.CreateIngressRuleRequest,
      Google.Appengine.V1beta.FirewallRule

  rpc :GetIngressRule,
      Google.Appengine.V1beta.GetIngressRuleRequest,
      Google.Appengine.V1beta.FirewallRule

  rpc :UpdateIngressRule,
      Google.Appengine.V1beta.UpdateIngressRuleRequest,
      Google.Appengine.V1beta.FirewallRule

  rpc :DeleteIngressRule, Google.Appengine.V1beta.DeleteIngressRuleRequest, Google.Protobuf.Empty
end

defmodule Google.Appengine.V1beta.Firewall.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Appengine.V1beta.Firewall.Service
end

defmodule Google.Appengine.V1beta.AuthorizedDomains.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.appengine.v1beta.AuthorizedDomains",
    protoc_gen_elixir_version: "0.14.1"

  rpc :ListAuthorizedDomains,
      Google.Appengine.V1beta.ListAuthorizedDomainsRequest,
      Google.Appengine.V1beta.ListAuthorizedDomainsResponse
end

defmodule Google.Appengine.V1beta.AuthorizedDomains.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Appengine.V1beta.AuthorizedDomains.Service
end

defmodule Google.Appengine.V1beta.AuthorizedCertificates.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.appengine.v1beta.AuthorizedCertificates",
    protoc_gen_elixir_version: "0.14.1"

  rpc :ListAuthorizedCertificates,
      Google.Appengine.V1beta.ListAuthorizedCertificatesRequest,
      Google.Appengine.V1beta.ListAuthorizedCertificatesResponse

  rpc :GetAuthorizedCertificate,
      Google.Appengine.V1beta.GetAuthorizedCertificateRequest,
      Google.Appengine.V1beta.AuthorizedCertificate

  rpc :CreateAuthorizedCertificate,
      Google.Appengine.V1beta.CreateAuthorizedCertificateRequest,
      Google.Appengine.V1beta.AuthorizedCertificate

  rpc :UpdateAuthorizedCertificate,
      Google.Appengine.V1beta.UpdateAuthorizedCertificateRequest,
      Google.Appengine.V1beta.AuthorizedCertificate

  rpc :DeleteAuthorizedCertificate,
      Google.Appengine.V1beta.DeleteAuthorizedCertificateRequest,
      Google.Protobuf.Empty
end

defmodule Google.Appengine.V1beta.AuthorizedCertificates.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Appengine.V1beta.AuthorizedCertificates.Service
end

defmodule Google.Appengine.V1beta.DomainMappings.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.appengine.v1beta.DomainMappings",
    protoc_gen_elixir_version: "0.14.1"

  rpc :ListDomainMappings,
      Google.Appengine.V1beta.ListDomainMappingsRequest,
      Google.Appengine.V1beta.ListDomainMappingsResponse

  rpc :GetDomainMapping,
      Google.Appengine.V1beta.GetDomainMappingRequest,
      Google.Appengine.V1beta.DomainMapping

  rpc :CreateDomainMapping,
      Google.Appengine.V1beta.CreateDomainMappingRequest,
      Google.Longrunning.Operation

  rpc :UpdateDomainMapping,
      Google.Appengine.V1beta.UpdateDomainMappingRequest,
      Google.Longrunning.Operation

  rpc :DeleteDomainMapping,
      Google.Appengine.V1beta.DeleteDomainMappingRequest,
      Google.Longrunning.Operation
end

defmodule Google.Appengine.V1beta.DomainMappings.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Appengine.V1beta.DomainMappings.Service
end
