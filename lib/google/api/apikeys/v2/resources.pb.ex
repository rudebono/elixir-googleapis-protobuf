defmodule Google.Api.Apikeys.V2.Key.AnnotationsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end
defmodule Google.Api.Apikeys.V2.Key do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :uid, 5, type: :string, deprecated: false
  field :display_name, 2, type: :string, json_name: "displayName"
  field :key_string, 3, type: :string, json_name: "keyString", deprecated: false

  field :create_time, 4,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 6,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :delete_time, 7,
    type: Google.Protobuf.Timestamp,
    json_name: "deleteTime",
    deprecated: false

  field :annotations, 8,
    repeated: true,
    type: Google.Api.Apikeys.V2.Key.AnnotationsEntry,
    map: true

  field :restrictions, 9, type: Google.Api.Apikeys.V2.Restrictions
  field :etag, 11, type: :string, deprecated: false
end
defmodule Google.Api.Apikeys.V2.Restrictions do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  oneof :client_restrictions, 0

  field :browser_key_restrictions, 1,
    type: Google.Api.Apikeys.V2.BrowserKeyRestrictions,
    json_name: "browserKeyRestrictions",
    oneof: 0

  field :server_key_restrictions, 2,
    type: Google.Api.Apikeys.V2.ServerKeyRestrictions,
    json_name: "serverKeyRestrictions",
    oneof: 0

  field :android_key_restrictions, 3,
    type: Google.Api.Apikeys.V2.AndroidKeyRestrictions,
    json_name: "androidKeyRestrictions",
    oneof: 0

  field :ios_key_restrictions, 4,
    type: Google.Api.Apikeys.V2.IosKeyRestrictions,
    json_name: "iosKeyRestrictions",
    oneof: 0

  field :api_targets, 5,
    repeated: true,
    type: Google.Api.Apikeys.V2.ApiTarget,
    json_name: "apiTargets"
end
defmodule Google.Api.Apikeys.V2.BrowserKeyRestrictions do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :allowed_referrers, 1, repeated: true, type: :string, json_name: "allowedReferrers"
end
defmodule Google.Api.Apikeys.V2.ServerKeyRestrictions do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :allowed_ips, 1, repeated: true, type: :string, json_name: "allowedIps"
end
defmodule Google.Api.Apikeys.V2.AndroidKeyRestrictions do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :allowed_applications, 1,
    repeated: true,
    type: Google.Api.Apikeys.V2.AndroidApplication,
    json_name: "allowedApplications"
end
defmodule Google.Api.Apikeys.V2.AndroidApplication do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :sha1_fingerprint, 1, type: :string, json_name: "sha1Fingerprint"
  field :package_name, 2, type: :string, json_name: "packageName"
end
defmodule Google.Api.Apikeys.V2.IosKeyRestrictions do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :allowed_bundle_ids, 1, repeated: true, type: :string, json_name: "allowedBundleIds"
end
defmodule Google.Api.Apikeys.V2.ApiTarget do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :service, 1, type: :string
  field :methods, 2, repeated: true, type: :string, deprecated: false
end
