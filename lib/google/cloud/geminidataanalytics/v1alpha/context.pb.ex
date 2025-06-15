defmodule Google.Cloud.Geminidataanalytics.V1alpha.Context do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :system_instruction, 1, type: :string, json_name: "systemInstruction", deprecated: false

  field :datasource_references, 7,
    type: Google.Cloud.Geminidataanalytics.V1alpha.DatasourceReferences,
    json_name: "datasourceReferences",
    deprecated: false

  field :options, 3,
    type: Google.Cloud.Geminidataanalytics.V1alpha.ConversationOptions,
    deprecated: false
end

defmodule Google.Cloud.Geminidataanalytics.V1alpha.ConversationOptions do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :chart, 1, type: Google.Cloud.Geminidataanalytics.V1alpha.ChartOptions, deprecated: false

  field :analysis, 2,
    type: Google.Cloud.Geminidataanalytics.V1alpha.AnalysisOptions,
    deprecated: false
end

defmodule Google.Cloud.Geminidataanalytics.V1alpha.ChartOptions.ImageOptions.NoImage do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3
end

defmodule Google.Cloud.Geminidataanalytics.V1alpha.ChartOptions.ImageOptions.SvgOptions do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3
end

defmodule Google.Cloud.Geminidataanalytics.V1alpha.ChartOptions.ImageOptions do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :kind, 0

  field :no_image, 1,
    type: Google.Cloud.Geminidataanalytics.V1alpha.ChartOptions.ImageOptions.NoImage,
    json_name: "noImage",
    oneof: 0

  field :svg, 2,
    type: Google.Cloud.Geminidataanalytics.V1alpha.ChartOptions.ImageOptions.SvgOptions,
    oneof: 0
end

defmodule Google.Cloud.Geminidataanalytics.V1alpha.ChartOptions do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :image, 1,
    type: Google.Cloud.Geminidataanalytics.V1alpha.ChartOptions.ImageOptions,
    deprecated: false
end

defmodule Google.Cloud.Geminidataanalytics.V1alpha.AnalysisOptions.Python do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :enabled, 1, type: :bool, deprecated: false
end

defmodule Google.Cloud.Geminidataanalytics.V1alpha.AnalysisOptions do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :python, 1,
    type: Google.Cloud.Geminidataanalytics.V1alpha.AnalysisOptions.Python,
    deprecated: false
end
