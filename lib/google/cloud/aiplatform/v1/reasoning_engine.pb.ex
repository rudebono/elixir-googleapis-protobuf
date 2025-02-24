defmodule Google.Cloud.Aiplatform.V1.ReasoningEngineSpec.PackageSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :pickle_object_gcs_uri, 1,
    type: :string,
    json_name: "pickleObjectGcsUri",
    deprecated: false

  field :dependency_files_gcs_uri, 2,
    type: :string,
    json_name: "dependencyFilesGcsUri",
    deprecated: false

  field :requirements_gcs_uri, 3,
    type: :string,
    json_name: "requirementsGcsUri",
    deprecated: false

  field :python_version, 4, type: :string, json_name: "pythonVersion", deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.ReasoningEngineSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :package_spec, 2,
    type: Google.Cloud.Aiplatform.V1.ReasoningEngineSpec.PackageSpec,
    json_name: "packageSpec",
    deprecated: false

  field :class_methods, 3,
    repeated: true,
    type: Google.Protobuf.Struct,
    json_name: "classMethods",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.ReasoningEngine do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :display_name, 2, type: :string, json_name: "displayName", deprecated: false
  field :description, 7, type: :string, deprecated: false
  field :spec, 3, type: Google.Cloud.Aiplatform.V1.ReasoningEngineSpec, deprecated: false

  field :create_time, 4,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 5,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :etag, 6, type: :string, deprecated: false
end
