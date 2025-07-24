defmodule Google.Cloud.Apihub.V1.GetStyleGuideRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Apihub.V1.UpdateStyleGuideRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :style_guide, 1,
    type: Google.Cloud.Apihub.V1.StyleGuide,
    json_name: "styleGuide",
    deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Cloud.Apihub.V1.GetStyleGuideContentsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Apihub.V1.LintSpecRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Apihub.V1.StyleGuideContents do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :contents, 1, type: :bytes, deprecated: false
  field :mime_type, 2, type: :string, json_name: "mimeType", deprecated: false
end

defmodule Google.Cloud.Apihub.V1.StyleGuide do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :linter, 2, type: Google.Cloud.Apihub.V1.Linter, enum: true, deprecated: false
  field :contents, 3, type: Google.Cloud.Apihub.V1.StyleGuideContents, deprecated: false
end

defmodule Google.Cloud.Apihub.V1.LintingService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.apihub.v1.LintingService",
    protoc_gen_elixir_version: "0.15.0"

  rpc :GetStyleGuide,
      Google.Cloud.Apihub.V1.GetStyleGuideRequest,
      Google.Cloud.Apihub.V1.StyleGuide

  rpc :UpdateStyleGuide,
      Google.Cloud.Apihub.V1.UpdateStyleGuideRequest,
      Google.Cloud.Apihub.V1.StyleGuide

  rpc :GetStyleGuideContents,
      Google.Cloud.Apihub.V1.GetStyleGuideContentsRequest,
      Google.Cloud.Apihub.V1.StyleGuideContents

  rpc :LintSpec, Google.Cloud.Apihub.V1.LintSpecRequest, Google.Protobuf.Empty
end

defmodule Google.Cloud.Apihub.V1.LintingService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Apihub.V1.LintingService.Service
end
