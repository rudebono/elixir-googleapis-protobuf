defmodule Google.Appengine.V1.Application.ServingStatus do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :UNSPECIFIED | :SERVING | :USER_DISABLED | :SYSTEM_DISABLED

  field :UNSPECIFIED, 0
  field :SERVING, 1
  field :USER_DISABLED, 2
  field :SYSTEM_DISABLED, 3
end

defmodule Google.Appengine.V1.Application.DatabaseType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :DATABASE_TYPE_UNSPECIFIED
          | :CLOUD_DATASTORE
          | :CLOUD_FIRESTORE
          | :CLOUD_DATASTORE_COMPATIBILITY

  field :DATABASE_TYPE_UNSPECIFIED, 0
  field :CLOUD_DATASTORE, 1
  field :CLOUD_FIRESTORE, 2
  field :CLOUD_DATASTORE_COMPATIBILITY, 3
end

defmodule Google.Appengine.V1.Application.IdentityAwareProxy do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          enabled: boolean,
          oauth2_client_id: String.t(),
          oauth2_client_secret: String.t(),
          oauth2_client_secret_sha256: String.t()
        }

  defstruct [:enabled, :oauth2_client_id, :oauth2_client_secret, :oauth2_client_secret_sha256]

  field :enabled, 1, type: :bool
  field :oauth2_client_id, 2, type: :string, json_name: "oauth2ClientId"
  field :oauth2_client_secret, 3, type: :string, json_name: "oauth2ClientSecret"
  field :oauth2_client_secret_sha256, 4, type: :string, json_name: "oauth2ClientSecretSha256"

  def transform_module(), do: nil
end

defmodule Google.Appengine.V1.Application.FeatureSettings do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          split_health_checks: boolean,
          use_container_optimized_os: boolean
        }

  defstruct [:split_health_checks, :use_container_optimized_os]

  field :split_health_checks, 1, type: :bool, json_name: "splitHealthChecks"
  field :use_container_optimized_os, 2, type: :bool, json_name: "useContainerOptimizedOs"

  def transform_module(), do: nil
end

defmodule Google.Appengine.V1.Application do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          id: String.t(),
          dispatch_rules: [Google.Appengine.V1.UrlDispatchRule.t()],
          auth_domain: String.t(),
          location_id: String.t(),
          code_bucket: String.t(),
          default_cookie_expiration: Google.Protobuf.Duration.t() | nil,
          serving_status: Google.Appengine.V1.Application.ServingStatus.t(),
          default_hostname: String.t(),
          default_bucket: String.t(),
          iap: Google.Appengine.V1.Application.IdentityAwareProxy.t() | nil,
          gcr_domain: String.t(),
          database_type: Google.Appengine.V1.Application.DatabaseType.t(),
          feature_settings: Google.Appengine.V1.Application.FeatureSettings.t() | nil
        }

  defstruct [
    :name,
    :id,
    :dispatch_rules,
    :auth_domain,
    :location_id,
    :code_bucket,
    :default_cookie_expiration,
    :serving_status,
    :default_hostname,
    :default_bucket,
    :iap,
    :gcr_domain,
    :database_type,
    :feature_settings
  ]

  field :name, 1, type: :string
  field :id, 2, type: :string

  field :dispatch_rules, 3,
    repeated: true,
    type: Google.Appengine.V1.UrlDispatchRule,
    json_name: "dispatchRules"

  field :auth_domain, 6, type: :string, json_name: "authDomain"
  field :location_id, 7, type: :string, json_name: "locationId"
  field :code_bucket, 8, type: :string, json_name: "codeBucket"

  field :default_cookie_expiration, 9,
    type: Google.Protobuf.Duration,
    json_name: "defaultCookieExpiration"

  field :serving_status, 10,
    type: Google.Appengine.V1.Application.ServingStatus,
    enum: true,
    json_name: "servingStatus"

  field :default_hostname, 11, type: :string, json_name: "defaultHostname"
  field :default_bucket, 12, type: :string, json_name: "defaultBucket"
  field :iap, 14, type: Google.Appengine.V1.Application.IdentityAwareProxy
  field :gcr_domain, 16, type: :string, json_name: "gcrDomain"

  field :database_type, 17,
    type: Google.Appengine.V1.Application.DatabaseType,
    enum: true,
    json_name: "databaseType"

  field :feature_settings, 18,
    type: Google.Appengine.V1.Application.FeatureSettings,
    json_name: "featureSettings"

  def transform_module(), do: nil
end

defmodule Google.Appengine.V1.UrlDispatchRule do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          domain: String.t(),
          path: String.t(),
          service: String.t()
        }

  defstruct [:domain, :path, :service]

  field :domain, 1, type: :string
  field :path, 2, type: :string
  field :service, 3, type: :string

  def transform_module(), do: nil
end
