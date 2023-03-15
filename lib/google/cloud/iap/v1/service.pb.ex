defmodule Google.Cloud.Iap.V1.ReauthSettings.Method do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :METHOD_UNSPECIFIED, 0
  field :LOGIN, 1
  field :PASSWORD, 2
  field :SECURE_KEY, 3
  field :ENROLLED_SECOND_FACTORS, 4
end

defmodule Google.Cloud.Iap.V1.ReauthSettings.PolicyType do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :POLICY_TYPE_UNSPECIFIED, 0
  field :MINIMUM, 1
  field :DEFAULT, 2
end

defmodule Google.Cloud.Iap.V1.AttributePropagationSettings.OutputCredentials do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :OUTPUT_CREDENTIALS_UNSPECIFIED, 0
  field :HEADER, 1
  field :JWT, 2
  field :RCTOKEN, 3
end

defmodule Google.Cloud.Iap.V1.ListTunnelDestGroupsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Cloud.Iap.V1.ListTunnelDestGroupsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :tunnel_dest_groups, 1,
    repeated: true,
    type: Google.Cloud.Iap.V1.TunnelDestGroup,
    json_name: "tunnelDestGroups"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Iap.V1.CreateTunnelDestGroupRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :tunnel_dest_group, 2,
    type: Google.Cloud.Iap.V1.TunnelDestGroup,
    json_name: "tunnelDestGroup",
    deprecated: false

  field :tunnel_dest_group_id, 3, type: :string, json_name: "tunnelDestGroupId", deprecated: false
end

defmodule Google.Cloud.Iap.V1.GetTunnelDestGroupRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Iap.V1.DeleteTunnelDestGroupRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Iap.V1.UpdateTunnelDestGroupRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :tunnel_dest_group, 1,
    type: Google.Cloud.Iap.V1.TunnelDestGroup,
    json_name: "tunnelDestGroup",
    deprecated: false

  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end

defmodule Google.Cloud.Iap.V1.TunnelDestGroup do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :cidrs, 2, repeated: true, type: :string, deprecated: false
  field :fqdns, 3, repeated: true, type: :string, deprecated: false
end

defmodule Google.Cloud.Iap.V1.GetIapSettingsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Iap.V1.UpdateIapSettingsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :iap_settings, 1,
    type: Google.Cloud.Iap.V1.IapSettings,
    json_name: "iapSettings",
    deprecated: false

  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end

defmodule Google.Cloud.Iap.V1.IapSettings do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :access_settings, 5, type: Google.Cloud.Iap.V1.AccessSettings, json_name: "accessSettings"

  field :application_settings, 6,
    type: Google.Cloud.Iap.V1.ApplicationSettings,
    json_name: "applicationSettings"
end

defmodule Google.Cloud.Iap.V1.AccessSettings do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :gcip_settings, 1, type: Google.Cloud.Iap.V1.GcipSettings, json_name: "gcipSettings"
  field :cors_settings, 2, type: Google.Cloud.Iap.V1.CorsSettings, json_name: "corsSettings"
  field :oauth_settings, 3, type: Google.Cloud.Iap.V1.OAuthSettings, json_name: "oauthSettings"
  field :reauth_settings, 6, type: Google.Cloud.Iap.V1.ReauthSettings, json_name: "reauthSettings"

  field :allowed_domains_settings, 7,
    type: Google.Cloud.Iap.V1.AllowedDomainsSettings,
    json_name: "allowedDomainsSettings"
end

defmodule Google.Cloud.Iap.V1.GcipSettings do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :tenant_ids, 1, repeated: true, type: :string, json_name: "tenantIds"
  field :login_page_uri, 2, type: Google.Protobuf.StringValue, json_name: "loginPageUri"
end

defmodule Google.Cloud.Iap.V1.CorsSettings do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :allow_http_options, 1, type: Google.Protobuf.BoolValue, json_name: "allowHttpOptions"
end

defmodule Google.Cloud.Iap.V1.OAuthSettings do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :login_hint, 2, type: Google.Protobuf.StringValue, json_name: "loginHint"
end

defmodule Google.Cloud.Iap.V1.ReauthSettings do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :method, 1, type: Google.Cloud.Iap.V1.ReauthSettings.Method, enum: true
  field :max_age, 2, type: Google.Protobuf.Duration, json_name: "maxAge"

  field :policy_type, 3,
    type: Google.Cloud.Iap.V1.ReauthSettings.PolicyType,
    json_name: "policyType",
    enum: true
end

defmodule Google.Cloud.Iap.V1.AllowedDomainsSettings do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :enable, 1, proto3_optional: true, type: :bool
  field :domains, 2, repeated: true, type: :string
end

defmodule Google.Cloud.Iap.V1.ApplicationSettings do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :csm_settings, 1, type: Google.Cloud.Iap.V1.CsmSettings, json_name: "csmSettings"

  field :access_denied_page_settings, 2,
    type: Google.Cloud.Iap.V1.AccessDeniedPageSettings,
    json_name: "accessDeniedPageSettings"

  field :cookie_domain, 3, type: Google.Protobuf.StringValue, json_name: "cookieDomain"

  field :attribute_propagation_settings, 4,
    type: Google.Cloud.Iap.V1.AttributePropagationSettings,
    json_name: "attributePropagationSettings"
end

defmodule Google.Cloud.Iap.V1.CsmSettings do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :rctoken_aud, 1, type: Google.Protobuf.StringValue, json_name: "rctokenAud"
end

defmodule Google.Cloud.Iap.V1.AccessDeniedPageSettings do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :access_denied_page_uri, 1,
    type: Google.Protobuf.StringValue,
    json_name: "accessDeniedPageUri"

  field :generate_troubleshooting_uri, 2,
    type: Google.Protobuf.BoolValue,
    json_name: "generateTroubleshootingUri"

  field :remediation_token_generation_enabled, 3,
    proto3_optional: true,
    type: Google.Protobuf.BoolValue,
    json_name: "remediationTokenGenerationEnabled"
end

defmodule Google.Cloud.Iap.V1.AttributePropagationSettings do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :expression, 1, proto3_optional: true, type: :string

  field :output_credentials, 2,
    repeated: true,
    type: Google.Cloud.Iap.V1.AttributePropagationSettings.OutputCredentials,
    json_name: "outputCredentials",
    enum: true

  field :enable, 3, proto3_optional: true, type: :bool
end

defmodule Google.Cloud.Iap.V1.ListBrandsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Iap.V1.ListBrandsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :brands, 1, repeated: true, type: Google.Cloud.Iap.V1.Brand
end

defmodule Google.Cloud.Iap.V1.CreateBrandRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :brand, 2, type: Google.Cloud.Iap.V1.Brand, deprecated: false
end

defmodule Google.Cloud.Iap.V1.GetBrandRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Iap.V1.ListIdentityAwareProxyClientsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Cloud.Iap.V1.ListIdentityAwareProxyClientsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :identity_aware_proxy_clients, 1,
    repeated: true,
    type: Google.Cloud.Iap.V1.IdentityAwareProxyClient,
    json_name: "identityAwareProxyClients"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Iap.V1.CreateIdentityAwareProxyClientRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :identity_aware_proxy_client, 2,
    type: Google.Cloud.Iap.V1.IdentityAwareProxyClient,
    json_name: "identityAwareProxyClient",
    deprecated: false
end

defmodule Google.Cloud.Iap.V1.GetIdentityAwareProxyClientRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Iap.V1.ResetIdentityAwareProxyClientSecretRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Iap.V1.DeleteIdentityAwareProxyClientRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Iap.V1.Brand do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :support_email, 2, type: :string, json_name: "supportEmail"
  field :application_title, 3, type: :string, json_name: "applicationTitle"
  field :org_internal_only, 4, type: :bool, json_name: "orgInternalOnly", deprecated: false
end

defmodule Google.Cloud.Iap.V1.IdentityAwareProxyClient do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :secret, 2, type: :string, deprecated: false
  field :display_name, 3, type: :string, json_name: "displayName"
end

defmodule Google.Cloud.Iap.V1.IdentityAwareProxyAdminService.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.cloud.iap.v1.IdentityAwareProxyAdminService",
    protoc_gen_elixir_version: "0.11.0"

  rpc :SetIamPolicy, Google.Iam.V1.SetIamPolicyRequest, Google.Iam.V1.Policy

  rpc :GetIamPolicy, Google.Iam.V1.GetIamPolicyRequest, Google.Iam.V1.Policy

  rpc :TestIamPermissions,
      Google.Iam.V1.TestIamPermissionsRequest,
      Google.Iam.V1.TestIamPermissionsResponse

  rpc :GetIapSettings, Google.Cloud.Iap.V1.GetIapSettingsRequest, Google.Cloud.Iap.V1.IapSettings

  rpc :UpdateIapSettings,
      Google.Cloud.Iap.V1.UpdateIapSettingsRequest,
      Google.Cloud.Iap.V1.IapSettings

  rpc :ListTunnelDestGroups,
      Google.Cloud.Iap.V1.ListTunnelDestGroupsRequest,
      Google.Cloud.Iap.V1.ListTunnelDestGroupsResponse

  rpc :CreateTunnelDestGroup,
      Google.Cloud.Iap.V1.CreateTunnelDestGroupRequest,
      Google.Cloud.Iap.V1.TunnelDestGroup

  rpc :GetTunnelDestGroup,
      Google.Cloud.Iap.V1.GetTunnelDestGroupRequest,
      Google.Cloud.Iap.V1.TunnelDestGroup

  rpc :DeleteTunnelDestGroup,
      Google.Cloud.Iap.V1.DeleteTunnelDestGroupRequest,
      Google.Protobuf.Empty

  rpc :UpdateTunnelDestGroup,
      Google.Cloud.Iap.V1.UpdateTunnelDestGroupRequest,
      Google.Cloud.Iap.V1.TunnelDestGroup
end

defmodule Google.Cloud.Iap.V1.IdentityAwareProxyAdminService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Iap.V1.IdentityAwareProxyAdminService.Service
end

defmodule Google.Cloud.Iap.V1.IdentityAwareProxyOAuthService.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.cloud.iap.v1.IdentityAwareProxyOAuthService",
    protoc_gen_elixir_version: "0.11.0"

  rpc :ListBrands, Google.Cloud.Iap.V1.ListBrandsRequest, Google.Cloud.Iap.V1.ListBrandsResponse

  rpc :CreateBrand, Google.Cloud.Iap.V1.CreateBrandRequest, Google.Cloud.Iap.V1.Brand

  rpc :GetBrand, Google.Cloud.Iap.V1.GetBrandRequest, Google.Cloud.Iap.V1.Brand

  rpc :CreateIdentityAwareProxyClient,
      Google.Cloud.Iap.V1.CreateIdentityAwareProxyClientRequest,
      Google.Cloud.Iap.V1.IdentityAwareProxyClient

  rpc :ListIdentityAwareProxyClients,
      Google.Cloud.Iap.V1.ListIdentityAwareProxyClientsRequest,
      Google.Cloud.Iap.V1.ListIdentityAwareProxyClientsResponse

  rpc :GetIdentityAwareProxyClient,
      Google.Cloud.Iap.V1.GetIdentityAwareProxyClientRequest,
      Google.Cloud.Iap.V1.IdentityAwareProxyClient

  rpc :ResetIdentityAwareProxyClientSecret,
      Google.Cloud.Iap.V1.ResetIdentityAwareProxyClientSecretRequest,
      Google.Cloud.Iap.V1.IdentityAwareProxyClient

  rpc :DeleteIdentityAwareProxyClient,
      Google.Cloud.Iap.V1.DeleteIdentityAwareProxyClientRequest,
      Google.Protobuf.Empty
end

defmodule Google.Cloud.Iap.V1.IdentityAwareProxyOAuthService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Iap.V1.IdentityAwareProxyOAuthService.Service
end