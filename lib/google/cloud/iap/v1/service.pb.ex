defmodule Google.Cloud.Iap.V1.GetIapSettingsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Iap.V1.UpdateIapSettingsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          iap_settings: Google.Cloud.Iap.V1.IapSettings.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct iap_settings: nil,
            update_mask: nil

  field :iap_settings, 1,
    type: Google.Cloud.Iap.V1.IapSettings,
    json_name: "iapSettings",
    deprecated: false

  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end
defmodule Google.Cloud.Iap.V1.IapSettings do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          access_settings: Google.Cloud.Iap.V1.AccessSettings.t() | nil,
          application_settings: Google.Cloud.Iap.V1.ApplicationSettings.t() | nil
        }

  defstruct name: "",
            access_settings: nil,
            application_settings: nil

  field :name, 1, type: :string, deprecated: false
  field :access_settings, 5, type: Google.Cloud.Iap.V1.AccessSettings, json_name: "accessSettings"

  field :application_settings, 6,
    type: Google.Cloud.Iap.V1.ApplicationSettings,
    json_name: "applicationSettings"
end
defmodule Google.Cloud.Iap.V1.AccessSettings do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          gcip_settings: Google.Cloud.Iap.V1.GcipSettings.t() | nil,
          cors_settings: Google.Cloud.Iap.V1.CorsSettings.t() | nil,
          oauth_settings: Google.Cloud.Iap.V1.OAuthSettings.t() | nil
        }

  defstruct gcip_settings: nil,
            cors_settings: nil,
            oauth_settings: nil

  field :gcip_settings, 1, type: Google.Cloud.Iap.V1.GcipSettings, json_name: "gcipSettings"
  field :cors_settings, 2, type: Google.Cloud.Iap.V1.CorsSettings, json_name: "corsSettings"
  field :oauth_settings, 3, type: Google.Cloud.Iap.V1.OAuthSettings, json_name: "oauthSettings"
end
defmodule Google.Cloud.Iap.V1.GcipSettings do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          tenant_ids: [String.t()],
          login_page_uri: Google.Protobuf.StringValue.t() | nil
        }

  defstruct tenant_ids: [],
            login_page_uri: nil

  field :tenant_ids, 1, repeated: true, type: :string, json_name: "tenantIds"
  field :login_page_uri, 2, type: Google.Protobuf.StringValue, json_name: "loginPageUri"
end
defmodule Google.Cloud.Iap.V1.CorsSettings do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          allow_http_options: Google.Protobuf.BoolValue.t() | nil
        }

  defstruct allow_http_options: nil

  field :allow_http_options, 1, type: Google.Protobuf.BoolValue, json_name: "allowHttpOptions"
end
defmodule Google.Cloud.Iap.V1.OAuthSettings do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          login_hint: Google.Protobuf.StringValue.t() | nil
        }

  defstruct login_hint: nil

  field :login_hint, 2, type: Google.Protobuf.StringValue, json_name: "loginHint"
end
defmodule Google.Cloud.Iap.V1.ApplicationSettings do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          csm_settings: Google.Cloud.Iap.V1.CsmSettings.t() | nil,
          access_denied_page_settings: Google.Cloud.Iap.V1.AccessDeniedPageSettings.t() | nil,
          cookie_domain: Google.Protobuf.StringValue.t() | nil
        }

  defstruct csm_settings: nil,
            access_denied_page_settings: nil,
            cookie_domain: nil

  field :csm_settings, 1, type: Google.Cloud.Iap.V1.CsmSettings, json_name: "csmSettings"

  field :access_denied_page_settings, 2,
    type: Google.Cloud.Iap.V1.AccessDeniedPageSettings,
    json_name: "accessDeniedPageSettings"

  field :cookie_domain, 3, type: Google.Protobuf.StringValue, json_name: "cookieDomain"
end
defmodule Google.Cloud.Iap.V1.CsmSettings do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          rctoken_aud: Google.Protobuf.StringValue.t() | nil
        }

  defstruct rctoken_aud: nil

  field :rctoken_aud, 1, type: Google.Protobuf.StringValue, json_name: "rctokenAud"
end
defmodule Google.Cloud.Iap.V1.AccessDeniedPageSettings do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          access_denied_page_uri: Google.Protobuf.StringValue.t() | nil,
          generate_troubleshooting_uri: Google.Protobuf.BoolValue.t() | nil
        }

  defstruct access_denied_page_uri: nil,
            generate_troubleshooting_uri: nil

  field :access_denied_page_uri, 1,
    type: Google.Protobuf.StringValue,
    json_name: "accessDeniedPageUri"

  field :generate_troubleshooting_uri, 2,
    type: Google.Protobuf.BoolValue,
    json_name: "generateTroubleshootingUri"
end
defmodule Google.Cloud.Iap.V1.ListBrandsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t()
        }

  defstruct parent: ""

  field :parent, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Iap.V1.ListBrandsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          brands: [Google.Cloud.Iap.V1.Brand.t()]
        }

  defstruct brands: []

  field :brands, 1, repeated: true, type: Google.Cloud.Iap.V1.Brand
end
defmodule Google.Cloud.Iap.V1.CreateBrandRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          brand: Google.Cloud.Iap.V1.Brand.t() | nil
        }

  defstruct parent: "",
            brand: nil

  field :parent, 1, type: :string, deprecated: false
  field :brand, 2, type: Google.Cloud.Iap.V1.Brand, deprecated: false
end
defmodule Google.Cloud.Iap.V1.GetBrandRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Iap.V1.ListIdentityAwareProxyClientsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct parent: "",
            page_size: 0,
            page_token: ""

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end
defmodule Google.Cloud.Iap.V1.ListIdentityAwareProxyClientsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          identity_aware_proxy_clients: [Google.Cloud.Iap.V1.IdentityAwareProxyClient.t()],
          next_page_token: String.t()
        }

  defstruct identity_aware_proxy_clients: [],
            next_page_token: ""

  field :identity_aware_proxy_clients, 1,
    repeated: true,
    type: Google.Cloud.Iap.V1.IdentityAwareProxyClient,
    json_name: "identityAwareProxyClients"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Google.Cloud.Iap.V1.CreateIdentityAwareProxyClientRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          identity_aware_proxy_client: Google.Cloud.Iap.V1.IdentityAwareProxyClient.t() | nil
        }

  defstruct parent: "",
            identity_aware_proxy_client: nil

  field :parent, 1, type: :string, deprecated: false

  field :identity_aware_proxy_client, 2,
    type: Google.Cloud.Iap.V1.IdentityAwareProxyClient,
    json_name: "identityAwareProxyClient",
    deprecated: false
end
defmodule Google.Cloud.Iap.V1.GetIdentityAwareProxyClientRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Iap.V1.ResetIdentityAwareProxyClientSecretRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Iap.V1.DeleteIdentityAwareProxyClientRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Iap.V1.Brand do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          support_email: String.t(),
          application_title: String.t(),
          org_internal_only: boolean
        }

  defstruct name: "",
            support_email: "",
            application_title: "",
            org_internal_only: false

  field :name, 1, type: :string, deprecated: false
  field :support_email, 2, type: :string, json_name: "supportEmail"
  field :application_title, 3, type: :string, json_name: "applicationTitle"
  field :org_internal_only, 4, type: :bool, json_name: "orgInternalOnly", deprecated: false
end
defmodule Google.Cloud.Iap.V1.IdentityAwareProxyClient do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          secret: String.t(),
          display_name: String.t()
        }

  defstruct name: "",
            secret: "",
            display_name: ""

  field :name, 1, type: :string, deprecated: false
  field :secret, 2, type: :string, deprecated: false
  field :display_name, 3, type: :string, json_name: "displayName"
end
defmodule Google.Cloud.Iap.V1.IdentityAwareProxyAdminService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.iap.v1.IdentityAwareProxyAdminService"

  rpc :SetIamPolicy, Google.Iam.V1.SetIamPolicyRequest, Google.Iam.V1.Policy

  rpc :GetIamPolicy, Google.Iam.V1.GetIamPolicyRequest, Google.Iam.V1.Policy

  rpc :TestIamPermissions,
      Google.Iam.V1.TestIamPermissionsRequest,
      Google.Iam.V1.TestIamPermissionsResponse

  rpc :GetIapSettings, Google.Cloud.Iap.V1.GetIapSettingsRequest, Google.Cloud.Iap.V1.IapSettings

  rpc :UpdateIapSettings,
      Google.Cloud.Iap.V1.UpdateIapSettingsRequest,
      Google.Cloud.Iap.V1.IapSettings
end

defmodule Google.Cloud.Iap.V1.IdentityAwareProxyAdminService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Iap.V1.IdentityAwareProxyAdminService.Service
end
defmodule Google.Cloud.Iap.V1.IdentityAwareProxyOAuthService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.iap.v1.IdentityAwareProxyOAuthService"

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
