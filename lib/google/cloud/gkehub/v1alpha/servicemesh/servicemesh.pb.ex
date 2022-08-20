defmodule Google.Cloud.Gkehub.Servicemesh.V1alpha.AnalysisMessageBase.Level do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :LEVEL_UNSPECIFIED, 0
  field :ERROR, 3
  field :WARNING, 8
  field :INFO, 12
end

defmodule Google.Cloud.Gkehub.Servicemesh.V1alpha.FeatureState do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :analysis_messages, 1,
    repeated: true,
    type: Google.Cloud.Gkehub.Servicemesh.V1alpha.AnalysisMessage,
    json_name: "analysisMessages",
    deprecated: false
end

defmodule Google.Cloud.Gkehub.Servicemesh.V1alpha.MembershipState do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :analysis_messages, 1,
    repeated: true,
    type: Google.Cloud.Gkehub.Servicemesh.V1alpha.AnalysisMessage,
    json_name: "analysisMessages",
    deprecated: false
end

defmodule Google.Cloud.Gkehub.Servicemesh.V1alpha.AnalysisMessageBase.Type do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :display_name, 1, type: :string, json_name: "displayName"
  field :code, 2, type: :string
end

defmodule Google.Cloud.Gkehub.Servicemesh.V1alpha.AnalysisMessageBase do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :type, 1, type: Google.Cloud.Gkehub.Servicemesh.V1alpha.AnalysisMessageBase.Type

  field :level, 2,
    type: Google.Cloud.Gkehub.Servicemesh.V1alpha.AnalysisMessageBase.Level,
    enum: true

  field :documentation_url, 3, type: :string, json_name: "documentationUrl"
end

defmodule Google.Cloud.Gkehub.Servicemesh.V1alpha.AnalysisMessage do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :message_base, 1,
    type: Google.Cloud.Gkehub.Servicemesh.V1alpha.AnalysisMessageBase,
    json_name: "messageBase"

  field :description, 2, type: :string
  field :resource_paths, 3, repeated: true, type: :string, json_name: "resourcePaths"
  field :args, 4, type: Google.Protobuf.Struct
end