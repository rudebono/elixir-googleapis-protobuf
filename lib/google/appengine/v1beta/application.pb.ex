defmodule Google.Appengine.V1beta.Application.ServingStatus do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :UNSPECIFIED, 0
  field :SERVING, 1
  field :USER_DISABLED, 2
  field :SYSTEM_DISABLED, 3
end

defmodule Google.Appengine.V1beta.Application.DatabaseType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :DATABASE_TYPE_UNSPECIFIED, 0
  field :CLOUD_DATASTORE, 1
  field :CLOUD_FIRESTORE, 2
  field :CLOUD_DATASTORE_COMPATIBILITY, 3
end

defmodule Google.Appengine.V1beta.Application.IdentityAwareProxy do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :enabled, 1, type: :bool
  field :oauth2_client_id, 2, type: :string, json_name: "oauth2ClientId"
  field :oauth2_client_secret, 3, type: :string, json_name: "oauth2ClientSecret"
  field :oauth2_client_secret_sha256, 4, type: :string, json_name: "oauth2ClientSecretSha256"
end

defmodule Google.Appengine.V1beta.Application.FeatureSettings do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :split_health_checks, 1, type: :bool, json_name: "splitHealthChecks"
  field :use_container_optimized_os, 2, type: :bool, json_name: "useContainerOptimizedOs"
end

defmodule Google.Appengine.V1beta.Application do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string
  field :id, 2, type: :string

  field :dispatch_rules, 3,
    repeated: true,
    type: Google.Appengine.V1beta.UrlDispatchRule,
    json_name: "dispatchRules"

  field :auth_domain, 6, type: :string, json_name: "authDomain"
  field :location_id, 7, type: :string, json_name: "locationId"
  field :code_bucket, 8, type: :string, json_name: "codeBucket"

  field :default_cookie_expiration, 9,
    type: Google.Protobuf.Duration,
    json_name: "defaultCookieExpiration"

  field :serving_status, 10,
    type: Google.Appengine.V1beta.Application.ServingStatus,
    json_name: "servingStatus",
    enum: true

  field :default_hostname, 11, type: :string, json_name: "defaultHostname"
  field :default_bucket, 12, type: :string, json_name: "defaultBucket"
  field :iap, 14, type: Google.Appengine.V1beta.Application.IdentityAwareProxy
  field :gcr_domain, 16, type: :string, json_name: "gcrDomain"

  field :database_type, 17,
    type: Google.Appengine.V1beta.Application.DatabaseType,
    json_name: "databaseType",
    enum: true

  field :feature_settings, 18,
    type: Google.Appengine.V1beta.Application.FeatureSettings,
    json_name: "featureSettings"
end

defmodule Google.Appengine.V1beta.UrlDispatchRule do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :domain, 1, type: :string
  field :path, 2, type: :string
  field :service, 3, type: :string
end
