defmodule Google.Cloud.Apigeeregistry.V1.Api.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end
defmodule Google.Cloud.Apigeeregistry.V1.Api.AnnotationsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end
defmodule Google.Cloud.Apigeeregistry.V1.Api do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :name, 1, type: :string
  field :display_name, 2, type: :string, json_name: "displayName"
  field :description, 3, type: :string

  field :create_time, 4,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 5,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :availability, 6, type: :string
  field :recommended_version, 7, type: :string, json_name: "recommendedVersion", deprecated: false

  field :recommended_deployment, 8,
    type: :string,
    json_name: "recommendedDeployment",
    deprecated: false

  field :labels, 9,
    repeated: true,
    type: Google.Cloud.Apigeeregistry.V1.Api.LabelsEntry,
    map: true

  field :annotations, 10,
    repeated: true,
    type: Google.Cloud.Apigeeregistry.V1.Api.AnnotationsEntry,
    map: true
end
defmodule Google.Cloud.Apigeeregistry.V1.ApiVersion.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end
defmodule Google.Cloud.Apigeeregistry.V1.ApiVersion.AnnotationsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end
defmodule Google.Cloud.Apigeeregistry.V1.ApiVersion do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :name, 1, type: :string
  field :display_name, 2, type: :string, json_name: "displayName"
  field :description, 3, type: :string

  field :create_time, 4,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 5,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :state, 6, type: :string

  field :labels, 7,
    repeated: true,
    type: Google.Cloud.Apigeeregistry.V1.ApiVersion.LabelsEntry,
    map: true

  field :annotations, 8,
    repeated: true,
    type: Google.Cloud.Apigeeregistry.V1.ApiVersion.AnnotationsEntry,
    map: true
end
defmodule Google.Cloud.Apigeeregistry.V1.ApiSpec.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end
defmodule Google.Cloud.Apigeeregistry.V1.ApiSpec.AnnotationsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end
defmodule Google.Cloud.Apigeeregistry.V1.ApiSpec do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :name, 1, type: :string
  field :filename, 2, type: :string
  field :description, 3, type: :string
  field :revision_id, 4, type: :string, json_name: "revisionId", deprecated: false

  field :create_time, 5,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :revision_create_time, 6,
    type: Google.Protobuf.Timestamp,
    json_name: "revisionCreateTime",
    deprecated: false

  field :revision_update_time, 7,
    type: Google.Protobuf.Timestamp,
    json_name: "revisionUpdateTime",
    deprecated: false

  field :mime_type, 8, type: :string, json_name: "mimeType"
  field :size_bytes, 9, type: :int32, json_name: "sizeBytes", deprecated: false
  field :hash, 10, type: :string, deprecated: false
  field :source_uri, 11, type: :string, json_name: "sourceUri"
  field :contents, 12, type: :bytes, deprecated: false

  field :labels, 14,
    repeated: true,
    type: Google.Cloud.Apigeeregistry.V1.ApiSpec.LabelsEntry,
    map: true

  field :annotations, 15,
    repeated: true,
    type: Google.Cloud.Apigeeregistry.V1.ApiSpec.AnnotationsEntry,
    map: true
end
defmodule Google.Cloud.Apigeeregistry.V1.ApiDeployment.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end
defmodule Google.Cloud.Apigeeregistry.V1.ApiDeployment.AnnotationsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end
defmodule Google.Cloud.Apigeeregistry.V1.ApiDeployment do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :name, 1, type: :string
  field :display_name, 2, type: :string, json_name: "displayName"
  field :description, 3, type: :string
  field :revision_id, 4, type: :string, json_name: "revisionId", deprecated: false

  field :create_time, 5,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :revision_create_time, 6,
    type: Google.Protobuf.Timestamp,
    json_name: "revisionCreateTime",
    deprecated: false

  field :revision_update_time, 7,
    type: Google.Protobuf.Timestamp,
    json_name: "revisionUpdateTime",
    deprecated: false

  field :api_spec_revision, 8, type: :string, json_name: "apiSpecRevision", deprecated: false
  field :endpoint_uri, 9, type: :string, json_name: "endpointUri"
  field :external_channel_uri, 10, type: :string, json_name: "externalChannelUri"
  field :intended_audience, 11, type: :string, json_name: "intendedAudience"
  field :access_guidance, 12, type: :string, json_name: "accessGuidance"

  field :labels, 14,
    repeated: true,
    type: Google.Cloud.Apigeeregistry.V1.ApiDeployment.LabelsEntry,
    map: true

  field :annotations, 15,
    repeated: true,
    type: Google.Cloud.Apigeeregistry.V1.ApiDeployment.AnnotationsEntry,
    map: true
end
defmodule Google.Cloud.Apigeeregistry.V1.Artifact do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :name, 1, type: :string

  field :create_time, 2,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :mime_type, 4, type: :string, json_name: "mimeType"
  field :size_bytes, 5, type: :int32, json_name: "sizeBytes", deprecated: false
  field :hash, 6, type: :string, deprecated: false
  field :contents, 7, type: :bytes, deprecated: false
end
